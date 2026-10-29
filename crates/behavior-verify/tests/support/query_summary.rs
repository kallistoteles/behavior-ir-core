#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]
//! Shared semantic fixtures: expected runtime results are fixed before encoder changes.
use behavior_core::semantic::module::Module;
use behavior_verify::{Attestation, CheckKind, Profile, solver::Z3Process};
use serde_json::{Value, json};
use std::path::{Path, PathBuf};

pub fn evidence_dir() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../specs/028-query-summary-congruence/evidence")
}
pub fn frozen(name: &str) -> Value {
    serde_json::from_str(&std::fs::read_to_string(evidence_dir().join(name)).unwrap()).unwrap()
}
pub fn admit(wire: &Value) -> Module { behavior_core::admit(&wire.to_string()).unwrap() }
pub fn post_profile() -> Profile {
    Profile { checks: vec![CheckKind::Postcondition], ..Profile::default() }
}
pub fn verify(wire: &Value, profile: &Profile) -> Attestation {
    behavior_verify::verify(&admit(wire),profile,None,&Z3Process::from_env().unwrap()).unwrap()
}
pub fn loc() -> Value { json!({"file":"query-summary-congruence.beh","line":1}) }
pub fn op(name: &str, args: Vec<Value>) -> Value { json!({"op":name,"args":args,"loc":loc()}) }
pub fn integer(value: i64) -> Value { json!({"op":"lit","type":{"t":"int"},"value":value,"loc":loc()}) }
pub fn string(value: &str) -> Value { json!({"op":"lit","type":{"t":"string"},"value":value,"loc":loc()}) }
pub fn boolean(value: bool) -> Value { json!({"op":"lit","type":{"t":"bool"},"value":value,"loc":loc()}) }
pub fn field(param: &str, name: &str) -> Value { json!({"op":"field","param":param,"field":name,"loc":loc()}) }
pub fn param(name: &str) -> Value { json!({"op":"param","param":name,"loc":loc()}) }
pub fn select(entity: &str) -> Value { json!({"op":"select","entity":entity,"loc":loc()}) }
pub fn filter(query: Value, body: Value) -> Value { json!({"op":"where","args":[query],"param":"d","body":body,"loc":loc()}) }
pub fn any(query: Value, body: Value) -> Value { json!({"op":"any","args":[query],"param":"d","body":body,"loc":loc()}) }
pub fn count(query: Value) -> Value { op("count",vec![query]) }
pub fn membership(actor: Value) -> Value {
    op("and",vec![op("eq",vec![field("d","subject"),field("subject","key")]),op("eq",vec![field("d","actor"),actor])])
}
pub fn set_pre(wire: &mut Value, expression: Value) {
    wire["actions"][0]["preconditions"] = json!([{"expr":expression,"loc":loc()}]);
}
pub fn set_post(wire: &mut Value, expression: Value) {
    wire["actions"][0]["postconditions"] = json!([{"expr":expression,"loc":loc()}]);
}
pub fn obligation_id(check: &Value) -> (Value,Value,Value) {
    (check["kind"].clone(),check["action"]["hash"].clone(),check["subject"]["hash"].clone())
}
pub fn original_targets() -> Vec<(Value,Value,Value)> {
    let original=frozen("original-verification.json");
    let result=original["checks"].as_array().unwrap().iter().filter(|c| c["kind"]=="postcondition" && c["outcome"]=="inconclusive").map(obligation_id).collect::<Vec<_>>();
    assert_eq!(result.len(),2);
    result
}
pub fn without_original_freshness() -> Value {
    let mut wire=frozen("original-approval.json");
    for name in ["purchase_request_approval__approve","purchase_request_approval__reject"] {
        let action=wire["actions"].as_array_mut().unwrap().iter_mut().find(|a|a["name"]==name).unwrap();
        let conditions=action["preconditions"].as_array_mut().unwrap();
        let matches=conditions.iter().enumerate().filter_map(|(index,p)| {
            let expression=&p["expr"];
            (expression["op"]=="not" && expression["args"][0]["op"]=="any" && expression["args"][0]["args"][0]["entity"]=="PurchaseRequestApprovalDecision").then_some(index)
        }).collect::<Vec<_>>();
        assert_eq!(matches.len(),1);
        let expression=&conditions[matches[0]]["expr"]["args"][0];
        assert_eq!(expression["body"]["op"],"and");
        assert_eq!(expression["body"]["args"][0]["args"][0],json!({"op":"field","param":"d","field":"subject","loc":expression["body"]["args"][0]["args"][0]["loc"]}));
        assert_eq!(expression["body"]["args"][0]["args"][1]["field"],"id");
        assert_eq!(expression["body"]["args"][1]["args"][0]["field"],"actor");
        assert_eq!(expression["body"]["args"][1]["args"][1]["param"],"actor");
        conditions.remove(matches[0]);
    }
    wire
}
pub fn request_from_witness(counterexample: &Value) -> Value {
    json!({"action":counterexample["record"]["action"]["name"],"data_version":"verification",
        "state":counterexample["state"],"input":counterexample["input"],"context":counterexample["context"],"facts":counterexample["facts"]})
}
pub fn confirm_witnesses(module: &Module, report: &Attestation) -> usize {
    let mut count=0;
    for finding in report.findings() {
        if finding["kind"]!="postcondition" {continue;}
        let cx=&finding["counterexample"];
        let request=request_from_witness(cx);
        assert_eq!(request["facts"]["universe"].as_array().unwrap().len(),module.entities().len());
        let actual=behavior_core::evaluate(module,&request.to_string());
        assert_eq!(actual.as_json(),&cx["record"]);
        assert_eq!(actual.result(),"DENY");
        assert_eq!(actual.as_json()["reasons"][0]["code"],"POSTCONDITION_FAILED");
        count+=1;
    }
    count
}

pub struct RuntimeCase {
    pub name: &'static str,
    pub wire: Value,
    pub request: Value,
    pub expected_result: &'static str,
    pub expected_code: Option<&'static str>,
}

fn request(rows: Vec<Value>) -> Value {
    json!({"action":"probe","data_version":"query-summary-baseline","state":{"subject":{"id":"s","key":"s"}},
        "input":{"mid":"fresh"},"context":{"actor":"a"},"facts":{"identities":[{"entity":"Decision","id":"fresh","used":false}],
        "universe":[{"entity":"Subject","members":[{"id":"s","key":"s"}]},{"entity":"Decision","members":rows}]}})
}

pub fn runtime_cases() -> Vec<RuntimeCase> {
    let original=frozen("minimal.json");
    let existing=json!({"id":"old","subject":"s","actor":"a"});
    let mut cases=Vec::new();
    let mut add=|name,wire,request,result,code|cases.push(RuntimeCase{name,wire,request,expected_result:result,expected_code:code});
    add("matching-create",original.clone(),request(vec![]),"ALLOW",None);
    let mut wire=original.clone();
    set_post(&mut wire,op("le",vec![count(filter(select("Decision"),membership(param("actor")))),integer(0)]));
    add("parent-zero-is-not-child-zero",wire,request(vec![]),"DENY",Some("POSTCONDITION_FAILED"));
    let mut wire=original.clone();
    wire["actions"][0]["params"].as_array_mut().unwrap().push(json!({"name":"other","role":"context","type":{"t":"string"}}));
    set_post(&mut wire,op("le",vec![count(filter(select("Decision"),membership(param("other")))),integer(1)]));
    wire["actions"][0]["effects"][0]["fields"]["actor"]=param("other");
    let mut req=request(vec![json!({"id":"old","subject":"s","actor":"b"})]);req["context"]["other"]=json!("b");
    add("different-capture-values",wire.clone(),req.clone(),"DENY",Some("POSTCONDITION_FAILED"));
    wire["actions"][0]["preconditions"][0]["expr"]["args"][0]["body"]["args"][1]["args"][1]=param("other");
    req["context"]["other"]=json!("b");req["facts"]["universe"][1]["members"]=json!([]);
    add("different-capture-names-equal-values",wire,req,"ALLOW",None);
    let mut wire=original.clone();
    set_pre(&mut wire,op("not",vec![any(select("Decision"),membership(string("guard")))]));
    add("different-filter-literal",wire,request(vec![existing.clone()]),"DENY",Some("POSTCONDITION_FAILED"));
    let mut wire=original.clone();
    let mut body=membership(param("actor"));
    body["args"].as_array_mut().unwrap().push(op("eq",vec![field("d","actor"),string("guard")]));
    set_pre(&mut wire,op("not",vec![any(select("Decision"),body)]));
    add("different-filter-structure",wire,request(vec![existing.clone()]),"DENY",Some("POSTCONDITION_FAILED"));
    let mut wire=original.clone();let mut other=wire["entities"][1].clone();other["name"]=json!("OtherDecision");
    wire["entities"].as_array_mut().unwrap().push(other);
    set_pre(&mut wire,op("not",vec![any(select("OtherDecision"),membership(param("actor")))]));
    let mut req=request(vec![existing.clone()]);req["facts"]["universe"].as_array_mut().unwrap().push(json!({"entity":"OtherDecision","members":[]}));
    add("different-typed-entity-domain",wire,req,"DENY",Some("POSTCONDITION_FAILED"));
    let mut wire=original.clone();
    wire["actions"][0]["effects"][0]["fields"]["subject"]=string("new");
    wire["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"target":{"param":"subject","field":"key"},"value":string("new"),"loc":loc()}));
    add("changed-child-capture",wire,request(vec![json!({"id":"old","subject":"new","actor":"a"})]),"DENY",Some("POSTCONDITION_FAILED"));
    let mut wire=original.clone();
    wire["actions"][0]["effects"][0]["fields"]["actor"]=string("nonmatching");
    set_post(&mut wire,op("eq",vec![count(filter(select("Decision"),membership(param("actor")))),integer(0)]));
    add("nonmatching-create-has-zero-delta",wire,request(vec![]),"ALLOW",None);
    let mut wire=original.clone();
    wire["actions"][0]["params"].as_array_mut().unwrap().push(json!({"name":"existing","role":"state","type":{"t":"entity","name":"Decision"}}));
    wire["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"target":{"param":"existing","field":"actor"},"value":param("actor"),"loc":loc()}));
    let row=json!({"id":"old","subject":"s","actor":"b"});let mut req=request(vec![row.clone()]);req["state"]["existing"]=row;
    add("update-plus-create-counts-two",wire.clone(),req.clone(),"DENY",Some("POSTCONDITION_FAILED"));
    wire["actions"][0]["params"].as_array_mut().unwrap().push(json!({"name":"alias","role":"state","type":{"t":"entity","name":"Decision"}}));
    req["state"]["alias"]=req["state"]["existing"].clone();
    add("aliased-state-binding-refusal",wire,req,"INVALID_BINDING",Some("STATE_ALIAS_NOT_ALLOWED"));
    let mut wire=original.clone();
    wire["actions"][0]["params"].as_array_mut().unwrap().push(json!({"name":"existing","role":"state","type":{"t":"entity","name":"Decision"}}));
    set_pre(&mut wire,op("eq",vec![count(filter(select("Decision"),membership(param("actor")))),integer(1)]));
    set_post(&mut wire,op("eq",vec![count(filter(select("Decision"),membership(param("actor")))),integer(1)]));
    wire["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"remove":"existing","loc":loc()}));
    let mut req=request(vec![existing.clone()]);req["state"]["existing"]=existing.clone();
    req["facts"]["references"]=json!([{"entity":"Decision","id":"old","incoming":[]}]);
    add("remove-plus-create-has-zero-net-delta",wire,req,"ALLOW",None);
    let mut req=request(vec![json!({"id":"old","subject":"s","actor":"b"})]);
    req["input"]["mid"]=json!("old");req["facts"]["identities"]=json!([{"entity":"Decision","id":"old","used":true}]);
    add("used-create-identity-refused",original.clone(),req,"ENTITY_ID_ALREADY_USED",Some("ENTITY_ID_ALREADY_USED"));
    let mut wire=frozen("minimal-missing-guard-control.json");
    add("minimal-missing-guard",wire.clone(),request(vec![existing]),"DENY",Some("POSTCONDITION_FAILED"));
    wire["entities"][1]["fields"].as_array_mut().unwrap().push(json!({"name":"score","type":{"t":"int"},"loc":loc()}));
    let noop=json!({"target":{"param":"subject","field":"key"},"value":field("subject","key"),"loc":loc()});
    wire["actions"][0]["effects"]=json!([noop.clone()]);
    let danger=op("gt",vec![op("div",vec![integer(1),field("d","score")]),integer(0)]);
    set_pre(&mut wire,any(select("Decision"),danger.clone()));
    set_post(&mut wire,op("ge",vec![count(filter(select("Decision"),danger.clone())),integer(0)]));
    let healthy=json!({"id":"a","subject":"s","actor":"a","score":1});
    let broken=json!({"id":"b","subject":"s","actor":"a","score":0});
    add("any-short-circuit-does-not-certify-count",wire.clone(),request(vec![healthy.clone(),broken.clone()]),"ERROR",Some("EVALUATION_ERROR"));
    wire["actions"][0]["params"].as_array_mut().unwrap().push(json!({"name":"existing","role":"state","type":{"t":"entity","name":"Decision"}}));
    wire["actions"][0]["effects"]=json!([{"remove":"existing","loc":loc()}]);
    let mut req=request(vec![healthy,broken.clone()]);req["state"]["existing"]=broken;
    req["facts"]["references"]=json!([{"entity":"Decision","id":"b","incoming":[]}]);
    // The current runtime also evaluates the parent's filtered membership before
    // applying removal deltas: the postcondition retains that parent error.
    add("removed-erroneous-parent-member-retains-postcondition-error",wire.clone(),req,"ERROR",Some("EVALUATION_ERROR"));
    wire["actions"][0]["params"].as_array_mut().unwrap().pop();wire["actions"][0]["effects"]=json!([noop]);
    let safe=op("and",vec![boolean(false),danger]);
    set_pre(&mut wire,op("not",vec![any(select("Decision"),safe.clone())]));
    set_post(&mut wire,op("eq",vec![count(filter(select("Decision"),safe)),integer(0)]));
    add("boolean-short-circuit-preserves-error-prefix",wire.clone(),request(vec![json!({"id":"b","subject":"s","actor":"a","score":0})]),"ALLOW",None);
    let overflow=op("gt",vec![op("add",vec![field("d","score"),integer(1)]),integer(0)]);
    set_pre(&mut wire,op("not",vec![any(select("Decision"),overflow)]));
    add("partial-overflow-retains-precondition-phase",wire,request(vec![json!({"id":"b","subject":"s","actor":"a","score":i64::MAX})]),"ERROR",Some("EVALUATION_ERROR"));
    cases
}

pub fn runtime_ledger() -> Value {
    let cases=runtime_cases().into_iter().map(|case| {
        let module=admit(&case.wire);
        let record=behavior_core::evaluate(&module,&case.request.to_string());
        assert_eq!(record.result(),case.expected_result,"{}: {}",case.name,record.as_json());
        if let Some(code)=case.expected_code {assert_eq!(record.as_json()["reasons"][0]["code"],code,"{}: {}",case.name,record.as_json());}
        json!({"name":case.name,"behavior_hash":module.behavior_version(),
            "wire_hash":behavior_core::canonical::tagged_hash("core028.fixture.v1",&case.wire).unwrap(),
            "request":case.request,"expected_result":case.expected_result,"expected_code":case.expected_code,"record":record.as_json()})
    }).collect::<Vec<_>>();
    json!({"cases":cases,"context_isolation":{"owner":"single Encoder verification session; action/rule/read immutable opt-in; both migration constructors disabled",
        "classification":"verification-boundary premise; not a runtime evaluation result","assertion_execution":"pending helper/construction tests"}})
}
