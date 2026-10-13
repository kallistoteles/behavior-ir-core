//! Actual Core/Store replay of the retained, reviewed Core 022 runner corpus.

use std::error::Error;
use std::path::{Path, PathBuf};

use behavior_core::canonical::{decode_strict, to_canonical_string};
use behavior_core::record::ReplayResult;
use behavior_core::semantic::module::Module;
use behavior_store::commands::CommandStreamRequest;
use behavior_store::documents::{EvidencePolicy, SeedEntity, data_version};
use behavior_store::store::genesis_for;
use behavior_store::{Backend, InMemoryBackend, RefEdge, Store};
use serde_json::{Value, json};

type Result<T> = std::result::Result<T, Box<dyn Error>>;

fn read_json(root: &Path, name: &str) -> Result<Value> {
    Ok(decode_strict(&std::fs::read_to_string(root.join(name))?)?)
}

fn text<'a>(value: &'a Value, field: &str) -> Result<&'a str> {
    value[field]
        .as_str()
        .ok_or_else(|| format!("missing string {field}").into())
}

fn setup(root: &Path) -> Result<(Module, Store<InMemoryBackend>)> {
    let setup = read_json(root, "stores/culture.json")?;
    if setup["evidence_policy"] != "none" {
        return Err("unexpected runner fixture evidence policy".into());
    }
    let repository = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../..");
    let module = behavior_core::admit(&std::fs::read_to_string(
        repository.join(text(&setup, "module")?),
    )?)
    .map_err(|errors| format!("runner module admission: {:?}", errors.errors))?;
    let seeds: Vec<SeedEntity> = serde_json::from_value(setup["seed"].clone())?;
    let store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_for(&module, EvidencePolicy::none(), seeds),
    )?;
    if setup["data_version"] != data_version(&store.store_id()?, &store.current()?) {
        return Err("runner fixture does not identify its actual Store coordinate".into());
    }
    Ok((module, store))
}

fn canonical_store(store: &Store<InMemoryBackend>) -> Result<Value> {
    let backend = store.backend();
    let head = backend.head()?.ok_or("missing Store head")?;
    if head.state_ref.position != 0 {
        return Err("the retained 022 runner corpus starts at position0".into());
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
                .ok_or("missing fixture entity")?;
            let mut incoming = backend.incoming_at(key, 0)?;
            incoming.sort();
            identities.push(json!({
                "key":key,"version_at":version,
                "version":backend.version(key, version.revision)?,
                "used":backend.used_at(key, 0)?,"removed_at":backend.removed_at(key)?,
                "incoming":incoming.iter().map(RefEdge::to_json).collect::<Vec<_>>()
            }));
        }
        entities.push(json!({"entity":entity,"keys":keys,"identities":identities}));
    }
    let history = store.history_at(0)?;
    let commands = CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":history,"through":history})
            .to_string(),
    )?;
    Ok(json!({
        "genesis":backend.genesis()?,"head":head,"state":store.state_at(0)?,
        "history":history,"schema":schema,"entities":entities,
        "record0":backend.record(0)?,"record1":backend.record(1)?,
        "commands":store.commands_since(&commands)?.as_json()
    }))
}

fn replay(
    module: &Module,
    store: &Store<InMemoryBackend>,
    boundary: &str,
    original: &str,
) -> Result<ReplayResult> {
    match boundary {
        "core_read" => Ok(behavior_core::read::replay_read(module, original)),
        "store_read" => Ok(store.replay_read(module, original)?),
        "core_invocation" => Ok(behavior_core::invocation::replay_invocation(
            module, original,
        )),
        "store_invocation" => Ok(store.replay_invocation(module, original)?),
        _ => Err(format!("unsupported runner boundary {boundary}").into()),
    }
}

fn run(root: &Path, case: &Value) -> Result<Vec<Value>> {
    let id = text(case, "id")?;
    if case["fixture_status"] != "captured_baseline" || case["execution_kind"] != "replay_runner" {
        return Err(
            format!("{id}: runner requires an independently captured replay fixture").into(),
        );
    }
    let (module, store) = setup(root)?;
    let original = std::fs::read_to_string(root.join(text(case, "fixture")?))?;
    let claim = decode_strict(&original)?;
    if claim["record_id"] != case["original_record_id"]
        || claim["format"] != case["profile"]
        || claim["data_version"] != case["data_version"]
        || claim["data_version"] != data_version(&store.store_id()?, &store.current()?)
        || claim["behavior_version"] != module.behavior_version()
    {
        return Err(format!("{id}: original identity/profile/behavior/coordinate differs").into());
    }
    let result = claim
        .get("result")
        .or_else(|| claim["outcome"].get("kind"))
        .and_then(Value::as_str)
        .ok_or("missing recorded semantic outcome")?;
    let boundaries = case["boundaries"]
        .as_array()
        .ok_or("missing runner boundaries")?;
    if boundaries.is_empty() {
        return Err("runner case has no supported boundaries".into());
    }
    let before = canonical_store(&store)?;
    let mut output = Vec::new();
    for boundary in boundaries {
        let boundary = boundary
            .as_str()
            .ok_or("runner boundary must be a string")?;
        let expected = case["expected"][boundary]
            .as_bool()
            .ok_or("missing reviewed replay outcome")?;
        let actual = replay(&module, &store, boundary, &original)?;
        if actual.matches != expected
            || (actual.matches && actual.diff.is_some())
            || (!actual.matches
                && actual
                    .diff
                    .as_ref()
                    .is_none_or(|diff| diff.trim().is_empty()))
        {
            return Err(
                format!("{id}/{boundary}: unexpected actual replay result {actual:?}").into(),
            );
        }
        if canonical_store(&store)? != before {
            return Err(
                format!("{id}/{boundary}: replay changed canonical Store authority").into(),
            );
        }
        output.push(json!({
            "format":"behavior.replay_determinism_case.v1","case_id":id,
            "boundary":boundary,"origin":text(case,"origin")?,
            "record_id":claim["record_id"],"profile":claim["format"],"result":result,
            "data_version":claim["data_version"],"read_only":true,"replay":actual
        }));
    }
    Ok(output)
}

fn main() -> Result<()> {
    let mut root =
        PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures/replay/022");
    let mut selected = None;
    let mut arguments = std::env::args().skip(1);
    while let Some(argument) = arguments.next() {
        match argument.as_str() {
            "--fixture-root" => {
                root = PathBuf::from(arguments.next().ok_or("--fixture-root needs a directory")?)
            }
            "--case" => selected = Some(arguments.next().ok_or("--case needs an ID")?),
            _ => return Err(format!("unknown argument {argument}").into()),
        }
    }
    let manifest = read_json(&root, "matrix.json")?;
    let required = manifest["runner_case_ids"]
        .as_array()
        .ok_or("missing reviewed runner inventory")?;
    let cases = manifest["cases"]
        .as_array()
        .ok_or("missing reviewed cases")?;
    if required.is_empty() {
        return Err("empty reviewed runner inventory".into());
    }
    let mut seen = std::collections::BTreeSet::new();
    let mut output = Vec::new();
    for required in required {
        let id = required.as_str().ok_or("runner case ID must be a string")?;
        if !seen.insert(id) {
            return Err("duplicate reviewed runner case ID".into());
        }
        if selected.as_ref().is_some_and(|selected| selected != id) {
            continue;
        }
        let matching: Vec<_> = cases.iter().filter(|case| case["id"] == id).collect();
        if matching.len() != 1 {
            return Err(format!("{id}: missing or duplicate reviewed case").into());
        }
        output.extend(run(&root, matching[0])?);
    }
    if output.is_empty() {
        return Err("unknown or empty runner case selection".into());
    }
    // Emit accepted evidence only after all selected cases and authority checks pass.
    for item in output {
        println!("{}", to_canonical_string(&item)?);
    }
    Ok(())
}
