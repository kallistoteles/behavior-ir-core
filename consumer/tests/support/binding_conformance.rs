//! Shared test-only contracts, exclusively through the supported facade.
use behavior_engine::store::{
    InMemoryBackend, Store,
    documents::{EvidencePolicy, SeedEntity},
    store::genesis_for,
};
use behavior_engine::{admit, canonical, invocation::Snapshot, semantic::Module};
use serde_json::{Value, json};
use std::{
    collections::{BTreeMap, BTreeSet},
    path::{Path, PathBuf},
};

const CURRENT: &str = "tests/fixtures/bindings/current";
const DOMAINS: [&str; 5] = ["accounts", "invoice", "ledger", "orders", "project_margin"];
type Checked<T> = Result<T, String>;

/// A valid identical corpus must still refuse metadata resolving outside its explicit root.
#[cfg(unix)]
pub fn metadata_boundary(root: &Path) -> Checked<()> {
    let temporary = std::env::temp_dir().join(format!("core026-metadata-{}", std::process::id()));
    std::fs::create_dir(&temporary).map_err(|e| e.to_string())?;
    let result = (|| {
        for filename in ["cases.json", "worlds.json"] {
            let package = temporary.join(filename);
            let current = package.join(CURRENT);
            std::fs::create_dir_all(&current).map_err(|e| e.to_string())?;
            for domain in DOMAINS {
                for suffix in [".json", ".request.json"] {
                    let name = format!("{domain}{suffix}");
                    std::fs::copy(
                        root.join("tests/fixtures/bindings").join(&name),
                        package.join("tests/fixtures/bindings").join(name),
                    )
                    .map_err(|e| e.to_string())?;
                }
            }
            for directory in ["expectations", "requests"] {
                std::fs::create_dir(current.join(directory)).map_err(|e| e.to_string())?;
                for path in std::fs::read_dir(root.join(CURRENT).join(directory))
                    .map_err(|e| e.to_string())?
                {
                    let path = path.map_err(|e| e.to_string())?;
                    std::fs::copy(path.path(), current.join(directory).join(path.file_name()))
                        .map_err(|e| e.to_string())?;
                }
            }
            for name in ["cases.json", "worlds.json"] {
                std::fs::copy(root.join(CURRENT).join(name), current.join(name))
                    .map_err(|e| e.to_string())?;
            }
            let outside = temporary.join(format!("outside-{filename}"));
            std::fs::copy(current.join(filename), &outside).map_err(|e| e.to_string())?;
            std::fs::remove_file(current.join(filename)).map_err(|e| e.to_string())?;
            std::os::unix::fs::symlink(outside, current.join(filename))
                .map_err(|e| e.to_string())?;
            match authored_worlds(&package) {
                Err(error) if error.contains("escapes package root") => {}
                actual => {
                    return Err(format!(
                        "{filename}: expected root escape refusal, got {actual:?}"
                    ));
                }
            }
        }
        Ok(())
    })();
    std::fs::remove_dir_all(&temporary).map_err(|e| e.to_string())?;
    result
}

pub fn read(path: &Path) -> Checked<Value> {
    canonical::decode_strict(
        &std::fs::read_to_string(path).map_err(|e| format!("{}: {e}", path.display()))?,
    )
    .map_err(|e| format!("{}: {e}", path.display()))
}

pub fn exact(case: &str, expected: &Value, actual: &Value) -> Checked<()> {
    fn difference(path: &str, a: &Value, b: &Value) -> Option<String> {
        match (a, b) {
            (Value::Object(a), Value::Object(b)) => a
                .keys()
                .chain(b.keys())
                .collect::<BTreeSet<_>>()
                .into_iter()
                .find_map(|key| {
                    let p = format!("{path}/{key}");
                    match (a.get(key), b.get(key)) {
                        (Some(x), Some(y)) => difference(&p, x, y),
                        _ => Some(format!("{p}: field presence differs")),
                    }
                }),
            (Value::Array(a), Value::Array(b)) => {
                if a.len() != b.len() {
                    return Some(format!("{path}: array length differs"));
                }
                a.iter()
                    .zip(b)
                    .enumerate()
                    .find_map(|(i, (x, y))| difference(&format!("{path}/{i}"), x, y))
            }
            _ if a == b => None,
            _ => Some(format!("{path}: expected {a}, actual {b}")),
        }
    }
    if let Some(problem) = difference("", expected, actual) {
        return Err(format!("{case}: {problem}"));
    }
    let a = canonical::to_canonical_string(expected).map_err(|e| e.to_string())?;
    let b = canonical::to_canonical_string(actual).map_err(|e| e.to_string())?;
    if a != b {
        return Err(format!("{case}: canonical bytes differ"));
    }
    Ok(())
}

fn within(root: &Path, relative: &Value) -> Checked<PathBuf> {
    let name = relative.as_str().ok_or("path must be a string")?;
    let path = root
        .join(name)
        .canonicalize()
        .map_err(|e| format!("{name}: {e}"))?;
    if Path::new(name).is_absolute()
        || !path.starts_with(root.canonicalize().map_err(|e| e.to_string())?)
    {
        return Err(format!("path escapes package root: {name}"));
    }
    Ok(path)
}

fn file_names(directory: &Path) -> Checked<BTreeSet<String>> {
    std::fs::read_dir(directory)
        .map_err(|e| e.to_string())?
        .map(|entry| {
            let entry = entry.map_err(|e| e.to_string())?;
            if !entry.file_type().map_err(|e| e.to_string())?.is_file() {
                return Err("unexpected corpus directory entry".into());
            }
            entry
                .file_name()
                .into_string()
                .map_err(|_| "non-UTF8 filename".into())
        })
        .collect()
}

fn corpus(root: &Path, requests: bool) -> Checked<(Value, Value)> {
    let inventory = read(&within(root, &json!(format!("{CURRENT}/cases.json")))?)?;
    let worlds = read(&within(root, &json!(format!("{CURRENT}/worlds.json")))?)?;
    if inventory["format"] != "behavior.binding_conformance.v1" {
        return Err("unsupported corpus format".into());
    }
    let modules = inventory["modules"].as_object().ok_or("modules object")?;
    if modules.keys().map(String::as_str).collect::<Vec<_>>() != DOMAINS {
        return Err("exact five-module domain required".into());
    }
    let cases = inventory["cases"].as_array().ok_or("cases array")?;
    let mut ids = BTreeSet::new();
    let mut paths = BTreeSet::new();
    let mut names = BTreeSet::new();
    for case in cases {
        let domain = case["module"].as_str().ok_or("case module")?;
        let scenario = case["scenario"].as_str().ok_or("case scenario")?;
        if !DOMAINS.contains(&domain) || !["allowed", "refused"].contains(&scenario) {
            return Err("unknown case classification".into());
        }
        let id = format!("{domain}/{scenario}");
        if case["id"] != id
            || case["world"] != id
            || case["exit_code"] != if scenario == "allowed" { 0 } else { 1 }
        {
            return Err(format!("{id}: inconsistent classification"));
        }
        if !ids.insert(id.clone()) {
            return Err(format!("duplicate case {id}"));
        }
        names.insert(format!("{domain}.{scenario}.json"));
        for key in ["request", "expected"] {
            let p = case[key].as_str().ok_or("case path")?;
            if !paths.insert(p) {
                return Err("duplicate case path".into());
            }
            if requests || key == "expected" {
                within(root, &case[key])?;
            }
        }
    }
    if ids.len() != 10
        || worlds
            .as_object()
            .ok_or("world map")?
            .keys()
            .cloned()
            .collect::<BTreeSet<_>>()
            != ids
    {
        return Err("exact ten cases/worlds required".into());
    }
    if file_names(&root.join(CURRENT).join("expectations"))? != names {
        return Err("missing/extra expectations".into());
    }
    if requests && file_names(&root.join(CURRENT).join("requests"))? != names {
        return Err("missing/extra requests".into());
    }
    Ok((inventory, worlds))
}

fn typed_world(module: &Module, world: &Value, facts: &Value, version: &str) -> Checked<Value> {
    let map = world.as_object().ok_or("world map")?;
    if map.keys().collect::<Vec<_>>() != module.entities().keys().collect::<Vec<_>>() {
        return Err("world entity domain differs from admitted module".into());
    }
    let mut entities = Vec::new();
    for (entity, rows) in map {
        let mut ids = BTreeSet::new();
        for row in rows.as_array().ok_or("membership array")? {
            let id = row["id"]
                .as_str()
                .filter(|s| !s.is_empty())
                .ok_or("missing typed identity")?;
            if !ids.insert(id) {
                return Err(format!("duplicate {entity}#{id}"));
            }
            entities.push(json!({"entity":entity,"value":row}));
        }
    }
    let raw = json!({"format":"behavior.snapshot.v1","data_version":version,"entities":entities,"facts":facts});
    let (snapshot, errors) =
        Snapshot::decode(module, &raw.to_string()).map_err(|e| e.to_string())?;
    if !errors.is_empty() {
        return Err(format!("all-row Snapshot consistency: {errors:?}"));
    }
    let snapshot = snapshot.ok_or("missing checked Snapshot")?;
    let mut typed = json!({});
    for entity in module.entities().keys() {
        typed[entity] = json!([]);
    }
    for (key, value) in snapshot.entities() {
        if !map.contains_key(&key.entity) {
            return Err("Snapshot introduced an unauthored type".into());
        }
        typed[&key.entity]
            .as_array_mut()
            .ok_or("typed type")?
            .push(value.clone());
    }
    if snapshot.entities().len() != entities.len() {
        return Err("Snapshot introduced unauthored membership".into());
    }
    Ok(typed)
}

fn universe(world: &Value) -> Value {
    json!({"universe":world.as_object().into_iter().flatten().map(|(entity,members)| json!({"entity":entity,"members":members})).collect::<Vec<_>>()})
}

fn valid_state(module: &Module, typed: &Value) -> Checked<()> {
    let seeds: Vec<_> = typed
        .as_object()
        .ok_or("typed world")?
        .iter()
        .flat_map(|(entity, rows)| {
            rows.as_array().into_iter().flatten().map(|row| SeedEntity {
                entity: entity.clone(),
                value: row.clone(),
            })
        })
        .collect();
    let store = Store::create(
        InMemoryBackend::default(),
        module,
        genesis_for(module, EvidencePolicy::none(), seeds.clone()),
    )
    .map_err(|e| format!("Valid_B(S): {e}"))?;
    let history = store.current_history().map_err(|e| e.to_string())?;
    let exported = store
        .export_seed_at(module, &history)
        .map_err(|e| e.to_string())?;
    if exported.seed != seeds {
        return Err("validated export differs from authored typed rows".into());
    }
    Ok(())
}

fn patch(parent: &Value, record: &Value) -> Checked<Value> {
    let mut child = parent.clone();
    let mut changed = BTreeSet::new();
    for change in record["changes"].as_array().ok_or("changes array")? {
        let entity = change["entity"].as_str().ok_or("delta entity")?;
        let id = change["id"].as_str().ok_or("delta id")?;
        let field = change["field"].as_str().ok_or("delta field")?;
        if !changed.insert((entity, id, field)) {
            return Err("duplicate field delta".into());
        }
        let row = child[entity]
            .as_array_mut()
            .ok_or("delta type")?
            .iter_mut()
            .find(|r| r["id"] == id)
            .ok_or("delta row")?;
        exact("delta old", &change["old"], &row[field])?;
        row[field] = change["new"].clone();
    }
    if let Some(lifecycle) = record.get("lifecycle") {
        for effect in lifecycle.as_array().ok_or("lifecycle array")? {
            if effect["op"] != "remove" {
                return Err("unexpected lifecycle in fixed corpus".into());
            }
            let rows = child[effect["entity"].as_str().ok_or("lifecycle entity")?]
                .as_array_mut()
                .ok_or("lifecycle type")?;
            let at = rows
                .iter()
                .position(|r| r["id"] == effect["id"])
                .ok_or("lifecycle identity")?;
            exact("last value", &effect["value"], &rows[at])?;
            rows.remove(at);
        }
    }
    Ok(child)
}

fn proof_case(root: &Path, inventory: &Value, worlds: &Value, case: &Value) -> Checked<()> {
    let id = case["id"].as_str().ok_or("case id")?;
    let domain = case["module"].as_str().ok_or("module")?;
    let metadata = &inventory["modules"][domain];
    let path = within(root, &metadata["path"])?;
    let wire = read(&path)?;
    let module = admit(&std::fs::read_to_string(&path).map_err(|e| e.to_string())?)
        .map_err(|e| format!("admission {e:?}"))?;
    if json!(module.behavior_version()) != metadata["behavior_version"]
        || json!(behavior_engine::schema(&module).hash) != metadata["schema_hash"]
    {
        return Err("module identity differs".into());
    }
    let items: BTreeMap<_, _> = module
        .name_table()
        .iter()
        .map(|((kind, name), hash)| {
            (
                format!("{}:{name}", kind.as_str()),
                behavior_engine::semantic::types::hash_display(hash),
            )
        })
        .collect();
    exact(id, &metadata["items"], &json!(items))?;
    let expected = read(&within(root, &case["expected"])?)?;
    let world = &worlds[id];
    let parent = typed_world(
        &module,
        &world["parent"],
        &expected["facts"],
        expected["data_version"].as_str().ok_or("data version")?,
    )?;
    valid_state(&module, &parent)?;
    let child = typed_world(
        &module,
        &world["child"],
        &universe(&world["child"]),
        "proof-child",
    )?;
    valid_state(&module, &child)?;
    exact(id, &child, &patch(&parent, &expected)?)?;
    let source = read(&within(
        root,
        &json!(format!("tests/fixtures/bindings/{domain}.request.json")),
    )?)?;
    let request = &source[case["scenario"].as_str().ok_or("scenario")?];
    let action = wire["actions"]
        .as_array()
        .ok_or("actions")?
        .iter()
        .find(|a| a["name"] == request["action"])
        .ok_or("action")?;
    for param in action["params"].as_array().ok_or("params")? {
        if param["role"] != "state" {
            continue;
        }
        let name = param["name"].as_str().ok_or("state name")?;
        let entity = param["type"]["name"].as_str().ok_or("state entity")?;
        let row = &request["state"][name];
        let raw = json!({"format":"behavior.snapshot.v1","data_version":"binding-proof","entities":[{"entity":entity,"value":row}],"facts":{}});
        let (normalized, errors) =
            Snapshot::decode(&module, &raw.to_string()).map_err(|e| e.to_string())?;
        if !errors.is_empty() {
            return Err(format!("binding: {errors:?}"));
        }
        let normalized = normalized.ok_or("binding snapshot")?;
        let bound = normalized.entities().values().next().ok_or("binding row")?;
        let authored = parent[entity]
            .as_array()
            .ok_or("binding type")?
            .iter()
            .find(|x| x["id"] == row["id"])
            .ok_or("state binding absent from authored parent")?;
        exact(id, authored, bound)?;
    }
    if let Some(references) = expected["facts"]["references"].as_array() {
        for reference in references {
            let mut edges = Vec::new();
            for (entity, declaration) in module.entities() {
                for (field, target) in declaration.reference_fields() {
                    if reference["entity"] != target {
                        continue;
                    }
                    for row in parent[entity].as_array().ok_or("reference rows")? {
                        if row[field] == reference["id"] {
                            edges.push(json!({"entity":entity,"id":row["id"],"field":field}));
                        }
                    }
                }
            }
            edges.sort_by_key(|x| {
                (
                    x["entity"].to_string(),
                    x["id"].to_string(),
                    x["field"].to_string(),
                )
            });
            exact(id, &reference["incoming"], &json!(edges))?;
        }
    }
    Ok(())
}

pub fn authored_worlds(root: &Path) -> Checked<()> {
    let (inventory, worlds) = corpus(root, false)?;
    for case in inventory["cases"].as_array().ok_or("cases")? {
        proof_case(root, &inventory, &worlds, case).map_err(|e| format!("{}: {e}", case["id"]))?;
    }
    Ok(())
}

pub fn evaluate_corpus(root: &Path) -> Checked<()> {
    authored_worlds(root)?;
    let (inventory, _) = corpus(root, true)?;
    for case in inventory["cases"].as_array().ok_or("cases")? {
        let id = case["id"].as_str().ok_or("case id")?;
        let module = &inventory["modules"][case["module"].as_str().ok_or("module")?];
        let module = admit(
            &std::fs::read_to_string(within(root, &module["path"])?).map_err(|e| e.to_string())?,
        )
        .map_err(|e| format!("{e:?}"))?;
        let request =
            std::fs::read_to_string(within(root, &case["request"])?).map_err(|e| e.to_string())?;
        let expected = read(&within(root, &case["expected"])?)?;
        let actual = behavior_engine::evaluate(&module, &request);
        exact(id, &expected, actual.as_json())?;
        if !actual.command_intents().is_empty() {
            return Err(format!("{id}: unexpected intents"));
        }
        for field in ["commands", "semantic_profile", "refused_request"] {
            if actual.as_json().get(field).is_some() {
                return Err(format!("{id}: unexpected {field}"));
            }
        }
        exact(
            id,
            actual.as_json(),
            behavior_engine::evaluate(&module, &request).as_json(),
        )?;
        if !behavior_engine::replay(&module, &actual.to_json_string()).matches {
            return Err(format!("{id}: replay mismatch"));
        }
    }
    Ok(())
}

/// Characterization assertions over existing Core and the already implemented comparator.
/// These invalid requests bypass the positive corpus eligibility proof deliberately.
pub fn negative_controls(root: &Path) -> Checked<Value> {
    let base = read(&root.join(CURRENT).join("requests/invoice.allowed.json"))?;
    let module = admit(
        &std::fs::read_to_string(root.join("tests/fixtures/bindings/invoice.json"))
            .map_err(|e| e.to_string())?,
    )
    .map_err(|e| format!("{e:?}"))?;
    let mut omitted = base.clone();
    omitted["facts"]["universe"]
        .as_array_mut()
        .ok_or("universe")?
        .retain(|e| e["entity"] != "User");
    let mut inconsistent = base.clone();
    inconsistent["state"]["invoice"]["amount"] = json!("1");
    let mut invalid = base.clone();
    invalid["state"]["invoice"]["amount"] = json!("-1");
    for entry in invalid["facts"]["universe"]
        .as_array_mut()
        .ok_or("universe")?
    {
        if entry["entity"] == "Invoice" {
            entry["members"][0]["amount"] = json!("-1");
        }
    }
    let mut results = Vec::new();
    for (id, request, code, cause, phase) in [
        (
            "N01",
            omitted,
            "INVALID_STATE_SNAPSHOT",
            "complete universe",
            "complete type domain",
        ),
        (
            "N02",
            inconsistent,
            "INCONSISTENT_FACTS",
            "differs",
            "bound/world consistency",
        ),
        (
            "N03",
            invalid,
            "INVALID_STATE_SNAPSHOT",
            "non_negative_amount",
            "parent invariant validity",
        ),
    ] {
        let result = behavior_engine::evaluate(&module, &request.to_string());
        let record = result.as_json();
        if result.result() != "INVALID_INPUT" || record["reasons"][0]["code"] != code {
            return Err(format!("{id}: wrong actual Core refusal {record}"));
        }
        for section in ["trace", "derived", "changes"] {
            exact(id, &json!([]), &record[section])?;
        }
        if !result.command_intents().is_empty() || record.get("lifecycle").is_some() {
            return Err(format!("{id}: effects in invalid input"));
        }
        let diagnostic = result.diagnostics();
        if !diagnostic.to_string().contains(cause) {
            return Err(format!("{id}: did not reach {phase}: {diagnostic}"));
        }
        results.push(json!({"id":id,"phase":phase,"request":request,"record":record,"diagnostics":diagnostic}));
    }
    let invoice = read(&root.join(CURRENT).join("expectations/invoice.allowed.json"))?;
    let denied = read(&root.join(CURRENT).join("expectations/invoice.refused.json"))?;
    let ledger = read(&root.join(CURRENT).join("expectations/ledger.allowed.json"))?;
    let orders = read(&root.join(CURRENT).join("expectations/orders.refused.json"))?;
    let accounts = read(
        &root
            .join(CURRENT)
            .join("expectations/accounts.allowed.json"),
    )?;
    let zero_hash = json!(format!("sha256:{}", "0".repeat(64)));
    let mut mutations = Vec::new();
    for (label, source, pointer, value) in [
        ("effect new", &invoice, "/changes/0/new", json!("pending")),
        ("effect old", &invoice, "/changes/0/old", json!("approved")),
        (
            "reason",
            &denied,
            "/reasons/0/code",
            json!("POSTCONDITION_FAILED"),
        ),
        (
            "trace phase",
            &invoice,
            "/trace/0/phase",
            json!("invariant_post"),
        ),
        ("trace outcome", &invoice, "/trace/0/outcome", json!(false)),
        (
            "trace read",
            &invoice,
            "/trace/0/reads/invoice.amount",
            json!("43201.00"),
        ),
        (
            "child subject",
            &invoice,
            "/trace/7/subject/id",
            json!("1043"),
        ),
        (
            "child obligation",
            &invoice,
            "/trace/7/obligation/hash",
            zero_hash.clone(),
        ),
        (
            "child observation",
            &invoice,
            "/trace/7/observations/0/value",
            json!("43201.00"),
        ),
        (
            "derived value",
            &ledger,
            "/derived/0/value",
            json!("100.01"),
        ),
        (
            "derived hash",
            &ledger,
            "/derived/0/hash",
            zero_hash.clone(),
        ),
        (
            "parent membership",
            &invoice,
            "/facts/universe/0/members/0/amount",
            json!("43201.00"),
        ),
        (
            "query member",
            &orders,
            "/facts/queries/0/members/0/id",
            json!("o1"),
        ),
        (
            "action identity",
            &invoice,
            "/action/hash",
            zero_hash.clone(),
        ),
        (
            "behavior identity",
            &invoice,
            "/behavior_version",
            zero_hash,
        ),
        ("caller metadata", &invoice, "/data_version", json!("18343")),
        (
            "lifecycle identity",
            &accounts,
            "/lifecycle/0/id",
            json!("c3"),
        ),
    ] {
        let mut changed = source.clone();
        *changed
            .pointer_mut(pointer)
            .ok_or_else(|| format!("mutation target {pointer} absent"))? = value;
        exact(label, &source["result"], &changed["result"])?;
        let error = exact(label, source, &changed)
            .err()
            .ok_or_else(|| format!("{label}: semantic mutation accepted"))?;
        let structurally_valid =
            behavior_engine::DecisionRecord::from_json(&changed.to_string()).is_ok();
        mutations.push(
            json!({"label":label,"mismatch":error,"typed_record_accepted":structurally_valid}),
        );
    }
    let mut missing = invoice.clone();
    missing
        .as_object_mut()
        .ok_or("record")?
        .remove("git_revision");
    if exact("optional presence", &invoice, &missing).is_ok() {
        return Err("optional metadata erased".into());
    }
    let mut reordered = invoice.clone();
    reordered["trace"].as_array_mut().ok_or("trace")?.swap(0, 1);
    if exact("trace order", &invoice, &reordered).is_ok() {
        return Err("trace order erased".into());
    }
    let mut extended = invoice.clone();
    extended["commands"] = json!([]);
    if exact("additional field", &invoice, &extended).is_ok() {
        return Err("unsupported field ignored".into());
    }
    Ok(
        json!({"invalid_worlds":results,"semantic_mutations":mutations,"additional_comparator_controls":["optional presence","trace order","additional field"],"command_scope":"Absent for these legacy cases; existing real command suites cover nonempty multiplicity"}),
    )
}
