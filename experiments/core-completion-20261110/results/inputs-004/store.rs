//! LocalResearch persistence. No producer value can assert prefix certification.
use crate::{
    auth::{self, Row, Work},
    gate::publication_gate,
    kernel::{self, Action, Kernel, Request, ValidBasis},
    planner::Planner,
};
use rusqlite::{Connection, OptionalExtension, TransactionBehavior, params};
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use std::{collections::BTreeMap, error::Error, fs, path::Path, time::Duration};
pub type Result<T> = std::result::Result<T, Box<dyn Error>>;
const SOURCE: &str =
    "2026-10-16 14:45:20 555e07ef33f69a0957d24d8e555b702464a131d6f1607f4c3c1e4551e8e6ca76";

#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Seed {
    pub limit: u64,
    pub live: Vec<Row>,
    pub used: Vec<String>,
}
#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Job {
    pub request: Request,
    pub proposal: kernel::Proposal,
}
struct Candidate {
    job: Job,
    before: Vec<u8>,
    after: Vec<u8>,
    receipt: Vec<u8>,
    allowed: bool,
}
pub fn digest(raw: &[u8]) -> Vec<u8> {
    auth::hash(raw, &mut Work::default()).to_vec()
}
fn bytes(value: &impl Serialize) -> Result<Vec<u8>> {
    Ok(serde_json::to_vec(value)?)
}
pub fn hook(stage: &str) -> Result<()> {
    if std::env::var("HOOK_STAGE").ok().as_deref() == Some(stage) {
        use std::io::Write;
        let ready = std::env::var("HOOK_READY")?;
        let mut f = fs::File::create_new(ready)?;
        f.write_all(stage.as_bytes())?;
        f.sync_all()?;
        loop {
            if let Ok(release) = std::env::var("HOOK_RELEASE") {
                if Path::new(&release).exists() {
                    break;
                }
            }
            std::thread::sleep(Duration::from_millis(10));
        }
    }
    Ok(())
}
pub fn connection(path: &Path) -> Result<Connection> {
    let c = Connection::open(path)?;
    c.busy_timeout(Duration::from_millis(1000))?;
    c.execute_batch("PRAGMA page_size=4096; PRAGMA journal_mode=WAL; PRAGMA synchronous=FULL; PRAGMA foreign_keys=ON; PRAGMA wal_autocheckpoint=1000;")?;
    let version: String = c.query_row("SELECT sqlite_version()", [], |r| r.get(0))?;
    let source: String = c.query_row("SELECT sqlite_source_id()", [], |r| r.get(0))?;
    if version != "3.54.1" || source != SOURCE {
        return Err("SQLiteIdentity".into());
    }
    for (pragma, expected) in [
        ("synchronous", 2),
        ("foreign_keys", 1),
        ("page_size", 4096),
        ("wal_autocheckpoint", 1000),
        ("busy_timeout", 1000),
    ] {
        let actual: i64 = c.query_row(&format!("PRAGMA {pragma}"), [], |r| r.get(0))?;
        if actual != expected {
            return Err("SQLiteSettings".into());
        }
    }
    let journal: String = c.query_row("PRAGMA journal_mode", [], |r| r.get(0))?;
    if journal != "wal" {
        return Err("SQLiteJournal".into());
    }
    c.execute_batch("CREATE TABLE IF NOT EXISTS objects(digest BLOB PRIMARY KEY, body BLOB NOT NULL);
        CREATE TABLE IF NOT EXISTS lineage(id INTEGER PRIMARY KEY CHECK(id=1), seed BLOB NOT NULL REFERENCES objects(digest), init_receipt BLOB NOT NULL REFERENCES objects(digest), head BLOB NOT NULL);
        CREATE TABLE IF NOT EXISTS requests(seq INTEGER PRIMARY KEY AUTOINCREMENT, request_id TEXT NOT NULL UNIQUE, request_digest BLOB NOT NULL, job BLOB NOT NULL REFERENCES objects(digest), receipt BLOB NOT NULL REFERENCES objects(digest));
        CREATE TABLE IF NOT EXISTS events(event_id BLOB PRIMARY KEY, request_id TEXT NOT NULL UNIQUE REFERENCES requests(request_id), parent BLOB NOT NULL, after_view BLOB NOT NULL);
        CREATE TABLE IF NOT EXISTS outbox(event_id BLOB NOT NULL REFERENCES events(event_id), ordinal INTEGER NOT NULL, payload BLOB NOT NULL, PRIMARY KEY(event_id,ordinal));")?;
    Ok(c)
}
fn put(c: &Connection, raw: &[u8]) -> Result<Vec<u8>> {
    let d = digest(raw);
    let old: Option<Vec<u8>> = c
        .query_row("SELECT body FROM objects WHERE digest=?", [&d], |r| {
            r.get(0)
        })
        .optional()?;
    match old {
        Some(old) if old != raw => return Err("ObjectCollisionOrCorruption".into()),
        Some(_) => {}
        None => {
            c.execute("INSERT INTO objects VALUES(?,?)", params![d, raw])?;
        }
    }
    Ok(d)
}
fn get(c: &Connection, d: &[u8]) -> Result<Vec<u8>> {
    let raw: Option<Vec<u8>> = c
        .query_row("SELECT body FROM objects WHERE digest=?", [d], |r| r.get(0))
        .optional()?;
    let raw = raw.ok_or("UnavailableObject")?;
    if digest(&raw) != d {
        return Err("CorruptObject".into());
    }
    Ok(raw)
}
fn sync_directory(path: &Path) -> Result<()> {
    fs::File::open(path.parent().unwrap_or(Path::new(".")))?.sync_all()?;
    Ok(())
}
pub fn initialize(path: &Path, seed: Seed, strong: bool) -> Result<Value> {
    let raw = bytes(&seed)?;
    let d = digest(&raw);
    let k = Kernel::new(seed.limit, &mut Work::default())?;
    let b = k.initialize(&seed.live, &seed.used, &mut Work::default())?;
    let receipt = bytes(
        &json!({"scope":"LocalResearch","kind":"Initialization","basis":b.view(),"seed_digest":d}),
    )?;
    let mut c = connection(path)?;
    hook("init-before-tx")?;
    let tx = c.transaction_with_behavior(TransactionBehavior::Immediate)?;
    let existing: Option<(Vec<u8>, Vec<u8>)> = tx
        .query_row(
            "SELECT seed,init_receipt FROM lineage WHERE id=1",
            [],
            |r| Ok((r.get(0)?, r.get(1)?)),
        )
        .optional()?;
    if strong {
        return Err("UnavailablePrefixCertificate".into());
    }
    if let Some((old, result)) = existing {
        if old != d {
            return Err("InitializationConflict".into());
        }
        if get(&tx, &old)? != raw {
            return Err("CorruptInitialization".into());
        }
        return Ok(serde_json::from_slice(&get(&tx, &result)?)?);
    }
    let leftovers: i64 = tx.query_row("SELECT (SELECT count(*) FROM objects)+(SELECT count(*) FROM requests)+(SELECT count(*) FROM events)+(SELECT count(*) FROM outbox)",[],|r|r.get(0))?;
    if leftovers != 0 {
        return Err("CorruptPartialInitialization".into());
    }
    put(&tx, &raw)?;
    let rd = put(&tx, &receipt)?;
    tx.execute(
        "INSERT INTO lineage VALUES(1,?,?,?)",
        params![d, rd, bytes(b.view())?],
    )?;
    hook("init-before-commit")?;
    tx.commit()?;
    hook("init-after-commit")?;
    sync_directory(path)?;
    Ok(serde_json::from_slice(&receipt)?)
}
fn request_digest(job: &Job) -> Vec<u8> {
    kernel::request_binding(&job.request, &mut Work::default()).to_vec()
}
fn existing(c: &Connection, id: &str, d: &[u8]) -> Result<Option<Value>> {
    let row: Option<(Vec<u8>, Vec<u8>)> = c
        .query_row(
            "SELECT request_digest,receipt FROM requests WHERE request_id=?",
            [id],
            |r| Ok((r.get(0)?, r.get(1)?)),
        )
        .optional()?;
    match row {
        None => Ok(None),
        Some((old, r)) if old == d => Ok(Some(serde_json::from_slice(&get(c, &r)?)?)),
        Some(_) => Err("IdReuse".into()),
    }
}
pub fn recover(path: &Path) -> Result<(Kernel, ValidBasis, BTreeMap<String, i64>)> {
    let c = connection(path)?;
    // A read snapshot prevents combining heads and rows from different commits.
    c.execute_batch("BEGIN")?;
    let (sd, head): (Vec<u8>, Vec<u8>) =
        c.query_row("SELECT seed,head FROM lineage WHERE id=1", [], |r| {
            Ok((r.get(0)?, r.get(1)?))
        })?;
    let seed: Seed = serde_json::from_slice(&get(&c, &sd)?)?;
    let k = Kernel::new(seed.limit, &mut Work::default())?;
    let mut b = k.initialize(&seed.live, &seed.used, &mut Work::default())?;
    let mut live: BTreeMap<_, _> = seed.live.into_iter().map(|r| (r.id, r.x)).collect();
    let mut stmt =
        c.prepare("SELECT request_id,request_digest,job,receipt FROM requests ORDER BY seq")?;
    let rows = stmt.query_map([], |r| {
        Ok((
            r.get::<_, String>(0)?,
            r.get::<_, Vec<u8>>(1)?,
            r.get::<_, Vec<u8>>(2)?,
            r.get::<_, Vec<u8>>(3)?,
        ))
    })?;
    let mut expected_events = 0_i64;
    let mut expected_commands = 0_i64;
    for row in rows {
        let (id, d, jd, rd) = row?;
        let job: Job = serde_json::from_slice(&get(&c, &jd)?)?;
        if job.request.request_id != id || request_digest(&job) != d {
            return Err("CorruptRequestBinding".into());
        }
        let before = bytes(b.view())?;
        let checked = k.check(&b, &job.request, &job.proposal, &mut Work::default())?;
        let receipt = make_receipt(&job, &checked.next, &checked.outcome)?;
        if get(&c, &rd)? != receipt {
            return Err("CorruptReceiptBinding".into());
        }
        if checked.outcome.result == "ALLOW" {
            expected_events = expected_events.checked_add(1).ok_or("EventCountBound")?;
            let (parent, after): (Vec<u8>, Vec<u8>) = c.query_row(
                "SELECT parent,after_view FROM events WHERE event_id=? AND request_id=?",
                params![checked.next.view().local_head.to_vec(), id],
                |r| Ok((r.get(0)?, r.get(1)?)),
            )?;
            if parent != before || after != bytes(checked.next.view())? {
                return Err("CorruptEvent".into());
            }
            let mut commands =
                c.prepare("SELECT ordinal,payload FROM outbox WHERE event_id=? ORDER BY ordinal")?;
            let actual = commands
                .query_map([checked.next.view().local_head.to_vec()], |r| {
                    Ok((r.get::<_, i64>(0)?, r.get::<_, Vec<u8>>(1)?))
                })?
                .collect::<std::result::Result<Vec<_>, _>>()?;
            if actual.len() != checked.outcome.commands.len() {
                return Err("CorruptCommands".into());
            }
            for (i, ((ordinal, raw), want)) in
                actual.iter().zip(&checked.outcome.commands).enumerate()
            {
                if *ordinal != i as i64 || *raw != bytes(want)? {
                    return Err("CorruptCommands".into());
                }
            }
            expected_commands = expected_commands
                .checked_add(i64::try_from(actual.len())?)
                .ok_or("CommandCountBound")?;
            match &job.request.operation {
                Action::Create { id } => {
                    live.insert(id.clone(), 1);
                }
                Action::Set { id, value, .. } => {
                    live.insert(id.clone(), *value);
                }
                Action::Emit => {}
            }
        }
        b = checked.next;
    }
    let (events, commands): (i64, i64) = c.query_row(
        "SELECT (SELECT count(*) FROM events),(SELECT count(*) FROM outbox)",
        [],
        |r| Ok((r.get(0)?, r.get(1)?)),
    )?;
    if head != bytes(b.view())? || events != expected_events || commands != expected_commands {
        return Err("CorruptHeadOrClosure".into());
    }
    Ok((k, b, live))
}
fn make_receipt(job: &Job, basis: &ValidBasis, outcome: &kernel::Outcome) -> Result<Vec<u8>> {
    bytes(
        &json!({"scope":"LocalResearch","request_id":job.request.request_id,"request_digest":request_digest(job),"basis":basis.view(),"outcome":outcome}),
    )
}
pub fn prepare_job(path: &Path, id: &str, operation: &str) -> Result<Job> {
    let (k, b, live) = recover(path)?;
    let op = match operation {
        "create-b" => Action::Create { id: "b".into() },
        "create-c" => Action::Create { id: "c".into() },
        "set-a-3" => Action::Set {
            id: "a".into(),
            old: *live.get("a").ok_or("MissingA")?,
            value: 3,
        },
        "set-a-0" => Action::Set {
            id: "a".into(),
            old: *live.get("a").ok_or("MissingA")?,
            value: 0,
        },
        "emit" => Action::Emit,
        _ => return Err("UnsupportedOperation".into()),
    };
    let c = connection(path)?;
    let sd: Vec<u8> = c.query_row("SELECT seed FROM lineage WHERE id=1", [], |r| r.get(0))?;
    let seed: Seed = serde_json::from_slice(&get(&c, &sd)?)?;
    let rows = live
        .into_iter()
        .map(|(id, x)| Row { id, x })
        .collect::<Vec<_>>();
    // This closed no-delete profile has used = seed.used union all current live.
    let mut used = seed.used;
    for r in &rows {
        if !used.contains(&r.id) {
            used.push(r.id.clone());
        }
    }
    let planner = Planner::new(&k, &rows, &used, &mut Work::default())?;
    let request = b.request(id, op);
    let (proposal, _) = planner.propose(&k, &request, &mut Work::default())?;
    Ok(Job { request, proposal })
}
pub fn publish(path: &Path, job: Job, strong: bool) -> Result<Value> {
    let mut c = connection(path)?;
    if strong {
        return Err("UnavailablePrefixCertificate".into());
    }
    let d = request_digest(&job);
    if let Some(original) = existing(&c, &job.request.request_id, &d)? {
        return Ok(original);
    }
    let (k, b, _) = recover(path)?;
    let checked = k
        .check(&b, &job.request, &job.proposal, &mut Work::default())
        .map_err(|e| if e == "ParentBinding" { "Conflict" } else { e })?;
    let candidate = Candidate {
        before: bytes(b.view())?,
        after: bytes(checked.next.view())?,
        receipt: make_receipt(&job, &checked.next, &checked.outcome)?,
        allowed: checked.outcome.result == "ALLOW",
        job,
    };
    hook("execute-before-tx")?;
    let tx = c.transaction_with_behavior(TransactionBehavior::Immediate)?;
    let old: Option<Vec<u8>> = tx
        .query_row(
            "SELECT request_digest FROM requests WHERE request_id=?",
            [&candidate.job.request.request_id],
            |r| r.get(0),
        )
        .optional()?;
    let head: Vec<u8> = tx.query_row("SELECT head FROM lineage WHERE id=1", [], |r| r.get(0))?;
    // proof=false is supplied by trusted code, never by the proposal.
    match publication_gate(
        old.is_some(),
        old.as_ref() == Some(&d),
        head == candidate.before,
        false,
        strong,
    ) {
        1 => {
            return existing(&tx, &candidate.job.request.request_id, &d)?
                .ok_or_else(|| "CorruptRequestIndex".into());
        }
        2 => return Err("IdReuse".into()),
        3 => return Err("Conflict".into()),
        4 => return Err("UnavailablePrefixCertificate".into()),
        0 => {}
        _ => return Err("InvalidGate".into()),
    }
    let jd = put(&tx, &bytes(&candidate.job)?)?;
    let rd = put(&tx, &candidate.receipt)?;
    tx.execute(
        "INSERT INTO requests(request_id,request_digest,job,receipt) VALUES(?,?,?,?)",
        params![candidate.job.request.request_id, d, jd, rd],
    )?;
    if candidate.allowed {
        let next: Value = serde_json::from_slice(&candidate.after)?;
        let event_id: Vec<u8> = serde_json::from_value(next["local_head"].clone())?;
        tx.execute(
            "INSERT INTO events VALUES(?,?,?,?)",
            params![
                event_id,
                candidate.job.request.request_id,
                candidate.before,
                candidate.after
            ],
        )?;
        for (i, command) in candidate.job.proposal.outcome.commands.iter().enumerate() {
            tx.execute(
                "INSERT INTO outbox VALUES(?,?,?)",
                params![event_id, i64::try_from(i)?, bytes(command)?],
            )?;
        }
        tx.execute("UPDATE lineage SET head=? WHERE id=1", [&candidate.after])?;
    }
    hook("execute-before-commit")?;
    tx.commit()?;
    hook("execute-after-commit")?;
    sync_directory(path)?;
    Ok(serde_json::from_slice(&candidate.receipt)?)
}
pub fn summary(path: &Path) -> Result<Value> {
    let (_, b, _) = recover(path)?;
    let c = connection(path)?;
    let counts: (i64,i64,i64) = c.query_row("SELECT (SELECT count(*) FROM requests),(SELECT count(*) FROM events),(SELECT count(*) FROM outbox)",[],|r|Ok((r.get(0)?,r.get(1)?,r.get(2)?)))?;
    let options = c
        .prepare("PRAGMA compile_options")?
        .query_map([], |r| r.get::<_, String>(0))?
        .collect::<std::result::Result<Vec<_>, _>>()?;
    Ok(
        json!({"scope":"LocalResearch","basis":b.view(),"requests":counts.0,"events":counts.1,"commands":counts.2,"sqlite_version":"3.54.1","sqlite_source_id":SOURCE,"compile_options":options}),
    )
}
