#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Independent Draft 2020-12 validation in the pinned development environment.
mod common;

#[test]
fn new_documents_and_negative_shapes_match_their_json_schemas() {
    let program = r#"
import copy, json, pathlib
from jsonschema import Draft202012Validator
root = pathlib.Path('.')
schemas = {}
for name in ('invocation','capability-intent','snapshot','invocation-record'):
    schema = json.loads((root / f'schema/{name}-0.1.schema.json').read_text())
    Draft202012Validator.check_schema(schema)
    schemas[name] = Draft202012Validator(schema)
request = {'format':'behavior.invocation.v1','capability':'suspend_customer','bindings':{'customer':{'entity':'Customer','id':'lab:2026:42'}},'input':{},'context':{}}
intent = {k:v for k,v in request.items() if k != 'context'}
intent['format'] = 'behavior.capability_intent.v1'
for omitted in ('input','context'):
    changed = copy.deepcopy(request); changed.pop(omitted)
    assert schemas['invocation'].is_valid(changed), f'codec defaults {omitted}, schema must agree'
changed = copy.deepcopy(intent); changed.pop('input')
assert schemas['capability-intent'].is_valid(changed), 'intent codec defaults input, schema must agree'
snapshot = json.loads((root / 'tests/fixtures/invocation/snapshots/s1.json').read_text())
for name, value in [('invocation',request),('capability-intent',intent),('snapshot',snapshot)]:
    assert schemas[name].is_valid(value), f'valid {name} rejected'
    changed = copy.deepcopy(value); changed['format'] = 'wrong'
    assert not schemas[name].is_valid(changed), f'bad format accepted: {name}'
    changed = copy.deepcopy(value); changed['unexpected'] = True
    assert not schemas[name].is_valid(changed), f'unknown key accepted: {name}'
for malformed in ['c1',{'entity':'Customer','id':''},{'entity':'Customer','id':'c1','state':{}}]:
    changed = copy.deepcopy(request); changed['bindings']['customer'] = malformed
    assert not schemas['invocation'].is_valid(changed), 'malformed typed identity accepted'
for forbidden in ('context','state','targets'):
    changed = copy.deepcopy(intent); changed[forbidden] = {}
    assert not schemas['capability-intent'].is_valid(changed), f'intent accepts {forbidden}'
for path in sorted((root / 'tests/fixtures/invocation').rglob('*.json')):
    value = json.loads(path.read_text())
    tag = value.get('format') if isinstance(value,dict) else None
    if tag in {'behavior.invocation.v1','behavior.capability_intent.v1','behavior.snapshot.v1','behavior.invocation_record.v1'}:
        name = tag.removeprefix('behavior.').removesuffix('.v1').replace('_','-')
        # Refusal inputs intentionally violate a schema; valid fixtures must agree.
        if '/intents/' in str(path) and path.stem.startswith(('with_state','with_context','with_targets')):
            assert not schemas[name].is_valid(value), str(path)
        else:
            assert schemas[name].is_valid(value), f'{path}: {list(schemas[name].iter_errors(value))}'
"#;
    let output = std::process::Command::new("python3")
        .args(["-c", program])
        .current_dir(common::repo_root())
        .output()
        .unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}
