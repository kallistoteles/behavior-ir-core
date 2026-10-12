//! Four actual Store replay cases for the018 determinism gate.
//! Diagnostic fixture/case arguments do not alter the official gate's defaults.

use std::error::Error;
use std::path::{Path, PathBuf};

use behavior_core::canonical::to_canonical_string;
use behavior_core::semantic::module::Module;
use behavior_store::commands::CommandStreamRequest;
use behavior_store::documents::{EvidencePolicy, SeedEntity, data_version};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, Store};
use serde_json::{Value, json};

type Result<T> = std::result::Result<T, Box<dyn Error>>;

#[derive(Clone, Copy)]
enum Boundary {
    Read,
    Invocation,
    AmbiguousRead,
}

struct Case {
    id: &'static str,
    row: &'static str,
    file: &'static str,
    original_id: &'static str,
    profile: &'static str,
    result: &'static str,
    boundary: Boundary,
    matches: bool,
}

const CASES: [Case; 4] = [
    Case {
        id: "audit016:read-v1",
        row: "audit016",
        file: "archives/audit016-wire08-v1-read.json",
        original_id: "read:sha256:f3071c1ca0e1402f032dc303f8fb52e6ff491ac622495acc8748ad275084bee3",
        profile: "behavior.read_record.v1",
        result: "EVALUATION_ERROR",
        boundary: Boundary::Read,
        matches: true,
    },
    Case {
        id: "audit016:invocation-v1",
        row: "audit016",
        file: "archives/audit016-wire08-v1-invocation.json",
        original_id: "invocation:sha256:a68e3ba9ecca66b87e0b4ec9747a1b3be8eeb548c92fa4d28f8277c89879866a",
        profile: "behavior.read_record.v1",
        result: "EVALUATION_ERROR",
        boundary: Boundary::Invocation,
        matches: true,
    },
    Case {
        id: "M08-C-D:read-v2",
        row: "M08-C-D",
        file: "records/M08-C-D.read.json",
        original_id: "read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a",
        profile: "behavior.read_record.v2",
        result: "VALUE",
        boundary: Boundary::Read,
        matches: true,
    },
    Case {
        id: "M08-C-D:duplicate-result",
        row: "M08-C-D",
        file: "records/M08-C-D.read.json",
        original_id: "read:sha256:56db30540201c2195f5cd78a6315a4a2facdf62377865b942b4efe71c82a7c0a",
        profile: "behavior.read_record.v2",
        result: "VALUE",
        boundary: Boundary::AmbiguousRead,
        matches: false,
    },
];

fn json_file(root: &Path, name: &str) -> Result<Value> {
    Ok(serde_json::from_str(&std::fs::read_to_string(
        root.join(name),
    )?)?)
}

fn setup(root: &Path, row: &str) -> Result<(Module, Store<InMemoryBackend>)> {
    let wire = std::fs::read_to_string(root.join(format!("rows/{row}/module.json")))?;
    let module = behavior_core::admit(&wire).map_err(|r| format!("module: {:?}", r.errors))?;
    let input = json_file(root, &format!("stores/{row}.json"))?;
    if input["evidence_policy"] != "none" {
        return Err("unexpected fixture evidence policy".into());
    }
    let seed: Vec<SeedEntity> = serde_json::from_value(input["seed"].clone())?;
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seed),
    )?;
    Ok((module, store))
}

/// These fixed inputs have only position0. Compare canonical state, history,
/// schema, versions, identity lifetime, references and committed command stream;
/// reconstructible caches may populate without acquiring semantic authority.
fn canonical_store(store: &Store<InMemoryBackend>) -> Result<Value> {
    let backend = store.backend();
    let head = backend.head()?.ok_or("missing Store head")?;
    if head.state_ref.position != 0 {
        return Err("the replay fixture must start at position0".into());
    }
    let schema = store.schema_at(&head.state_ref)?;
    let mut entities = Vec::new();
    for entity in schema.declarations.keys() {
        let mut keys = backend.keys_at(entity, 0)?;
        keys.sort();
        let mut identities = Vec::new();
        for key in &keys {
            let version = backend
                .version_at(key, 0)?
                .ok_or("missing entity version")?;
            let mut incoming = backend.incoming_at(key, 0)?;
            incoming.sort();
            identities.push(json!({
                "key":key,"version_at":version,
                "version":backend.version(key, version.revision)?,
                "used":backend.used_at(key, 0)?,"removed_at":backend.removed_at(key)?,
                "incoming":incoming.iter().map(|edge| edge.to_json()).collect::<Vec<_>>()
            }));
        }
        entities.push(json!({"entity":entity,"keys":keys,"identities":identities}));
    }
    let history = store.history_at(0)?;
    let request = CommandStreamRequest::from_json(
        &json!({
            "format":"behavior.command_stream_request.v1","after":history,"through":history
        })
        .to_string(),
    )?;
    Ok(json!({
        "genesis":backend.genesis()?,"head":head,"state":store.state_at(0)?,
        "history":history,"schema":schema,"entities":entities,
        "record0":backend.record(0)?,"record1":backend.record(1)?,
        "commands":store.commands_since(&request)?.as_json()
    }))
}

fn run(root: &Path, case: &Case) -> Result<Value> {
    let (module, store) = setup(root, case.row)?;
    let original = std::fs::read_to_string(root.join(case.file))?;
    let claim: Value = serde_json::from_str(&original)?;
    let inner = match case.boundary {
        Boundary::Invocation => &claim["outcome"]["record"],
        Boundary::Read | Boundary::AmbiguousRead => &claim,
    };
    if claim["record_id"] != case.original_id
        || inner["format"] != case.profile
        || inner["result"] != case.result
        || claim["behavior_version"] != module.behavior_version()
        || claim["data_version"] != data_version(&store.store_id()?, &store.current()?)
    {
        return Err(format!(
            "{}: original identity/profile/Store coordinate changed",
            case.id
        )
        .into());
    }
    let before = canonical_store(&store)?;
    let replay = match case.boundary {
        Boundary::Invocation => store.replay_invocation(&module, &original)?,
        Boundary::Read => store.replay_read(&module, &original)?,
        Boundary::AmbiguousRead => {
            // Retain the original last result and identity: permissive object
            // reduction would erase the contradictory first claim.
            let tail = original
                .trim()
                .strip_prefix('{')
                .ok_or("expected object evidence")?;
            let raw = format!("{{\"result\":\"EVALUATION_ERROR\",{tail}");
            if serde_json::from_str::<Value>(&raw)? != claim {
                return Err("duplicate attack did not retain the original last claim".into());
            }
            store.replay_read(&module, &raw)?
        }
    };
    if replay.matches != case.matches
        || (!replay.matches && replay.diff.as_ref().is_none_or(String::is_empty))
    {
        return Err(format!("{}: unexpected replay outcome: {:?}", case.id, replay).into());
    }
    if canonical_store(&store)? != before {
        return Err(format!("{}: replay mutated canonical Store authority", case.id).into());
    }
    let boundary = match case.boundary {
        Boundary::Invocation => "store_invocation",
        Boundary::Read | Boundary::AmbiguousRead => "store_read",
    };
    Ok(json!({
        "format":"behavior.replay_determinism_case.v1","case_id":case.id,
        "boundary":boundary,"record_id":case.original_id,"profile":case.profile,
        "result":case.result,"data_version":claim["data_version"],
        "read_only":true,"replay":replay
    }))
}

fn main() -> Result<()> {
    let mut root =
        PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures/replay/018");
    let mut selected = None;
    let mut args = std::env::args().skip(1);
    while let Some(argument) = args.next() {
        match argument.as_str() {
            "--fixture-root" => {
                root = PathBuf::from(args.next().ok_or("--fixture-root needs a directory")?)
            }
            "--case" => selected = Some(args.next().ok_or("--case needs an ID")?),
            _ => return Err(format!("unknown argument: {argument}").into()),
        }
    }
    if selected
        .as_ref()
        .is_some_and(|id| !CASES.iter().any(|case| case.id == id))
    {
        return Err("unknown replay determinism case".into());
    }
    for case in &CASES {
        if selected.as_ref().is_none_or(|id| case.id == id) {
            println!("{}", to_canonical_string(&run(&root, case)?)?);
        }
    }
    Ok(())
}
