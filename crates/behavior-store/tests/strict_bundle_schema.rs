#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Current wrapper structure matches actual bundle observations. Schema cannot
//! establish digest equality, canonical semantic order or raw-key uniqueness.
mod common;

use behavior_core::semantic::module::Module;
use behavior_store::documents::CommitBundle;
use behavior_store::store::genesis_v2_for;
use behavior_store::{InMemoryBackend, Store};
use behavior_verify::governance::trusted::{EvidencePolicyV2, GovernanceCandidate};
use serde_json::{Value, json};

fn schema_python(program: &str, documents: &Value) {
    use std::io::Write;
    use std::process::{Command, Stdio};
    let prefix = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
from referencing import Registry,Resource
root=pathlib.Path('.')
registry=Registry()
for name in ('decision-record-0.7','decision-record-0.8'):
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    registry=registry.with_resource(schema['$id'],Resource.from_contents(schema))
def validator(name,definition=None):
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    if definition:
        schema.pop('oneOf');schema['$ref']='#/$defs/'+definition
    Draft202012Validator.check_schema(schema)
    return Draft202012Validator(schema,registry=registry)
documents=json.load(sys.stdin)
"#;
    let mut child = Command::new("python3")
        .args(["-c", &format!("{prefix}\n{program}")])
        .current_dir(std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../.."))
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(documents.to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

fn mixed_producer() -> (Module, CommitBundle) {
    let mut raw = common::json(&common::fixtures().join("wire/valid/accounts.json"));
    raw["ir_version"] = json!("0.7");
    let loc = json!({"file":"strict-bundle-schema.dsl","line":1});
    let field =
        |param: &str, name: &str| json!({"op":"field","param":param,"field":name,"loc":loc});
    let select = json!({"op":"select","entity":"Account","loc":loc});
    let matching = json!({"op":"where","param":"a","args":[select.clone()],"body":{"op":"eq","args":[field("a","owner"),field("customer","id")],"loc":loc},"loc":loc});
    raw["actions"] = json!([{
        "name":"mixed","params":[
            {"name":"customer","role":"state","type":{"t":"entity","name":"Customer"}},
            {"name":"new_id","role":"input","type":{"t":"id","entity":"Customer"}},
            {"name":"name","role":"input","type":{"t":"string"}}
        ],"preconditions":[
            {"expr":{"op":"eq","args":[{"op":"count","args":[matching],"loc":loc},{"op":"lit","type":{"t":"int"},"value":0,"loc":loc}],"loc":loc},"loc":loc},
            {"expr":{"op":"ge","args":[{"op":"sum","param":"a","args":[select],"body":field("a","balance"),"loc":loc},{"op":"lit","type":{"t":"nominal","name":"Money"},"value":"0","loc":loc}],"loc":loc},"loc":loc}
        ],"postconditions":[],"effects":[
            {"remove":"customer","loc":loc},
            {"create":"Customer","id":{"op":"param","param":"new_id","loc":loc},"fields":{"name":{"op":"param","param":"name","loc":loc}},"loc":loc}
        ],"loc":loc
    }]);
    let module = behavior_core::admit(&raw.to_string()).unwrap();
    let ep = EvidencePolicyV2::from_json(&common::read(
        &common::fixtures().join("governance-v2/evidence-policy-none.json"),
    ))
    .unwrap();
    let mut store = Store::create(
        InMemoryBackend::new(),
        &module,
        genesis_v2_for(&module, ep, common::accounts_seed()).unwrap(),
    )
    .unwrap();
    let evaluated = store
        .evaluate(
            &module,
            "mixed",
            &common::bind(&[("customer", "c3")]),
            &json!({"new_id":"c4","name":"New"}),
            &json!({}),
            common::T0,
            None,
        )
        .unwrap();
    assert_eq!(evaluated.record["result"], "ALLOW", "{}", evaluated.record);
    let bundle = evaluated.bundle.unwrap();
    for section in ["existence", "identities", "references", "queries", "fields"] {
        assert!(
            !bundle.read_facts[section]
                .as_array()
                .unwrap_or_else(|| panic!("missing {section}: {}", bundle.read_facts))
                .is_empty()
        );
    }
    assert_eq!(
        CommitBundle::from_json(&serde_json::to_string(&bundle).unwrap()).unwrap(),
        bundle
    );
    assert_eq!(
        bundle.governance_candidate().unwrap().as_json()["content"]["read_facts"],
        bundle.read_facts
    );
    assert_eq!(
        store
            .commit(&module, &bundle.evaluated_state, &bundle)
            .unwrap()
            .result_state
            .position,
        1
    );
    (module, bundle)
}

fn documents() -> Value {
    let (_, bundle) = mixed_producer();
    let h02 = CommitBundle::from_json(&common::read(
        &common::fixtures().join("resulting-state-validity/commands/bundle.json"),
    ))
    .unwrap();
    let h03 = CommitBundle::from_json(include_str!("../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/bundle.json")).unwrap();
    let archived: Value = serde_json::from_str(include_str!("../../../specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline/host-store/store.json")).unwrap();
    let signed = CommitBundle::from_json(&archived["records"][0]["bundle"].to_string()).unwrap();
    json!([
        {"name":"actual mixed producer","candidate":bundle.governance_candidate().unwrap().as_json(),"bundle":bundle},
        {"name":"H02 original archive07","candidate":h02.governance_candidate().unwrap().as_json(),"bundle":h02},
        {"name":"H03 captured preattachment07","candidate":h03.governance_candidate().unwrap().as_json(),"bundle":h03},
        {"name":"H03 immutable signed event07","candidate":signed.governance_candidate().unwrap().as_json(),"bundle":signed}
    ])
}

#[test]
fn mixed_runtime_producer_covers_all_five_observed_sections() {
    mixed_producer();
}

#[test]
fn wrappers_accept_actual_mixed_candidates_bundles_and_original_archives() {
    schema_python(
        r#"
for name in ('governance-v2','store-v2'):
    for entry in documents:
        for key,definition in (('candidate','candidate'),('bundle','commit_bundle')):
            check=validator(name,definition);doc=entry[key]
            assert check.is_valid(doc),(name,entry['name'],key,[str(e) for e in check.iter_errors(doc)])
"#,
        &documents(),
    );
}

#[test]
fn query_only_local_schema_controls_require_integrity_and_closed_items() {
    // A structural local control derived from actual queries, not a claim that
    // this partial document contains every historical observation for commitment.
    schema_python(
        r#"
for name in ('governance-v2','store-v2'):
    for key,definition in (('candidate','candidate'),('bundle','commit_bundle')):
        doc=copy.deepcopy(documents[0][key])
        facts=documents[0]['candidate']['content']['read_facts']
        if key=='candidate': doc['content']['read_facts']={'queries':facts['queries']}
        else: doc['read_facts']={'queries':facts['queries']}
        check=validator(name,definition)
        assert check.is_valid(doc),(name,key,'query-only positive prerequisite')
        for failure in ('missing','unknown','type','syntax'):
            bad=copy.deepcopy(doc)
            query=(bad['content']['read_facts'] if key=='candidate' else bad['read_facts'])['queries'][0]
            if failure=='missing': del query['result_hash']
            elif failure=='unknown': query['unknown_field']=True
            elif failure=='type': query['result_hash']=7
            else: query['result_hash']='not-a-hash'
            assert not check.is_valid(bad),(name,key,failure,'invalid query item must refuse')
"#,
        &documents(),
    );
}

#[test]
fn wrappers_close_every_bundle_product_and_require_all_item_fields() {
    schema_python(
        r#"
entry=documents[0]
for name in ('governance-v2','store-v2'):
    candidate=validator(name,'candidate');bundle=validator(name,'commit_bundle')
    assert candidate.is_valid(entry['candidate']),(name,'positive candidate prerequisite')
    assert bundle.is_valid(entry['bundle']),(name,'positive bundle prerequisite')
    facts=entry['candidate']['content']['read_facts']
    paths=[[],['existence',0],['identities',0],['references',0],['queries',0],['queries',0,'members',0],['fields',0]]
    # Generated count query has captured customer.id; use the nonempty member query for member checks.
    capture=next(i for i,q in enumerate(facts['queries']) if q['captures'])
    member=next(i for i,q in enumerate(facts['queries']) if q['members'])
    paths[5]=['queries',member,'members',0]
    paths.append(['queries',capture,'captures',0])
    # Incoming edge local shape control supplements the actual empty removal observation.
    edge={'entity':'Account','id':'a1','field':'owner'}
    edgefacts=copy.deepcopy(facts);edgefacts['references'][0]['incoming']=[edge]
    paths.append(['references',0,'incoming',0])
    def at(root,path):
        for key in path: root=root[key]
        return root
    for path in paths:
        original=edgefacts if path==['references',0,'incoming',0] else facts
        obj=at(original,path)
        for mutation in [('unknown',None)]+[('missing',k) for k in obj]+[('wrong',k) for k in obj]:
            changed=copy.deepcopy(original);target=at(changed,path)
            kind,key=mutation
            if kind=='unknown': target['unknown_field']=True
            elif kind=='missing': del target[key]
            else:
                if key=='value': continue # canonical JSON has several legal value types
                target[key]={}
            # Root sections are optional; requiredness applies to items.
            if not path and kind=='missing': continue
            doc=copy.deepcopy(entry['candidate']);doc['content']['read_facts']=changed
            assert not candidate.is_valid(doc),(name,path,mutation,'candidate')
            doc=copy.deepcopy(entry['bundle']);doc['read_facts']=changed
            assert not bundle.is_valid(doc),(name,path,mutation,'bundle')
    for section in facts:
        changed=copy.deepcopy(entry['candidate']);changed['content']['read_facts'][section]=None
        assert not candidate.is_valid(changed),(name,section,'null section')
"#,
        &documents(),
    );
}

#[test]
fn wrappers_preserve_empty_null_migration_and_canonical_value_shapes() {
    schema_python(
        r#"
for name in ('governance-v2','store-v2'):
    candidate=validator(name,'candidate');bundle=validator(name,'commit_bundle')
    for value in ({},{'existence':[],'identities':[],'references':[],'queries':[],'fields':[]}):
        c=copy.deepcopy(documents[0]['candidate']);c['content']['read_facts']=value
        b=copy.deepcopy(documents[0]['bundle']);b['read_facts']=value
        assert candidate.is_valid(c),(name,'empty candidate')
        assert bundle.is_valid(b),(name,'empty bundle')
    b=copy.deepcopy(documents[0]['bundle']);b['read_facts']=None
    assert bundle.is_valid(b),(name,'nullable action bundle')
    del b['read_facts'];assert bundle.is_valid(b),(name,'omitted action bundle')
    c=copy.deepcopy(documents[0]['candidate']);c['content']['read_facts']=None
    assert not candidate.is_valid(c),(name,'null candidate evidence')
    for value in (None,True,7,'exact',[None,7],{'value':None}):
        c=copy.deepcopy(documents[0]['candidate'])
        q=next(q for q in c['content']['read_facts']['queries'] if q['captures'])
        q['captures'][0]['value']=value;c['content']['read_facts']['fields'][0]['value']=value
        assert candidate.is_valid(c),(name,value,'canonical value')
    c=copy.deepcopy(documents[0]['candidate']);c['content']['read_facts']['fields'][0]['value']=0.5
    assert not candidate.is_valid(c),(name,'fractional field value')
    evidence=validator(name,'bundle_evidence')
    assert not evidence.is_valid({'universe':[]}),(name,'universe forbidden')
    schema=json.loads((root/f'schema/{name}.schema.json').read_text())
    assert schema['$defs']['candidate_content']['oneOf'][1]['properties']['read_facts']=={'const':{}},(name,'migration empty rule')
"#,
        &documents(),
    );
}

#[test]
fn wrappers_enforce_digest_syntax_but_runtime_enforces_digest_equality() {
    let (_, mut bundle) = mixed_producer();
    bundle.read_facts["queries"][0]["result_hash"] = json!(format!("sha256:{}", "00".repeat(32)));
    let mut candidate = documents()[0]["candidate"].clone();
    candidate["content"]["read_facts"] = bundle.read_facts.clone();
    candidate["transition_hash"] = json!(
        behavior_verify::hashing::document_hash(
            "behavior.candidate_transition.v2",
            &candidate["content"]
        )
        .unwrap()
    );
    let error = GovernanceCandidate::from_json(&candidate.to_string()).unwrap_err();
    assert_eq!(error.code, "INVALID_CANDIDATE");
    assert!(error.message.contains("result_hash"));
    schema_python(
        r#"
for name in ('governance-v2','store-v2'):
    check=validator(name,'candidate')
    assert check.is_valid(documents['wrong']),(name,'well-shaped wrong digest is a runtime obligation')
    original=documents['valid']['content']['read_facts']['queries'][0]['result_hash']
    for value in ('not-a-hash',original.upper(),original[:-1],original+'0',original+'\n',original.replace('a','g'),7,None):
        c=copy.deepcopy(documents['valid']);c['content']['read_facts']['queries'][0]['result_hash']=value
        assert not check.is_valid(c),(name,value,'digest syntax')
    c=copy.deepcopy(documents['valid']);del c['content']['read_facts']['queries'][0]['result_hash']
    assert not check.is_valid(c),(name,'missing digest')
"#,
        &json!({"wrong":candidate,"valid":documents()[0]["candidate"]}),
    );
}
