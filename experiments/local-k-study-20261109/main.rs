#![forbid(unsafe_code)]
mod auth;
mod kernel;
mod planner;

use auth::{Hash, Row, Work};
use kernel::{Action, Kernel, Outcome, Proposal, Request, ValidBasis};
use planner::Planner;
use serde_json::{Value, json};
use std::{
    collections::BTreeMap,
    fs::{self, File},
    io::Write,
    path::Path,
    time::Instant,
};

fn hex(value: Hash) -> String {
    value.iter().map(|b| format!("{b:02x}")).collect()
}
fn write(out: &mut File, value: Value) {
    writeln!(out, "{value}").unwrap();
}
fn fixture_projection(value: &Value) -> Outcome {
    Outcome {
        result: value["result"].as_str().unwrap().into(),
        reasons: serde_json::from_value(value["reasons"].clone()).unwrap(),
        changes: serde_json::from_value(value["changes"].clone()).unwrap(),
        lifecycle: value
            .get("lifecycle")
            .and_then(Value::as_array)
            .cloned()
            .unwrap_or_default(),
        commands: value["commands"]["intents"]
            .as_array()
            .unwrap()
            .iter()
            .map(|v| v["payload"].clone())
            .collect(),
    }
}
fn snapshot(
    out: &mut File,
    label: &str,
    basis: &ValidBasis,
    inventory: &BTreeMap<String, i64>,
    used: &[String],
) {
    write(
        out,
        json!({"label":label,"basis":basis.view(),"live_inventory":inventory,"used_inventory":used}),
    );
}
fn rejection(
    out: &mut File,
    name: &str,
    k: &Kernel,
    b: &ValidBasis,
    r: &Request,
    p: &Proposal,
    error: &str,
) {
    let actual = k
        .check(b, r, p, &mut Work::default())
        .err()
        .expect("fault must be rejected");
    assert_eq!(actual, error, "fault {name}");
    write(
        out,
        json!({"case":name,"status":"TargetedRejectionObserved","actual_error":actual}),
    );
}
fn initial_rejection(
    out: &mut File,
    name: &str,
    k: &Kernel,
    live: &[Row],
    used: &[String],
    error: &str,
) {
    let actual = k
        .initialize(live, used, &mut Work::default())
        .err()
        .expect("invalid initialization must fail");
    assert_eq!(actual, error);
    write(
        out,
        json!({"case":name,"status":"TargetedInitialRejectionObserved","actual_error":actual}),
    );
}
fn mutate(
    out: &mut File,
    name: &str,
    k: &Kernel,
    b: &ValidBasis,
    r: &Request,
    p: &Proposal,
    error: &str,
    f: impl FnOnce(&mut Request, &mut Proposal),
) {
    let (mut rr, mut pp) = (r.clone(), p.clone());
    f(&mut rr, &mut pp);
    rejection(out, name, k, b, &rr, &pp, error);
}

fn run_functional(directory: &Path) {
    let mut checks = File::create_new(directory.join("functional.jsonl")).unwrap();
    let mut snapshots = File::create_new(directory.join("inventories.jsonl")).unwrap();
    let mut references = File::create_new(directory.join("reference-comparison.jsonl")).unwrap();
    let k = Kernel::new(2, &mut Work::default()).unwrap();
    let live = vec![Row {
        id: "a".into(),
        x: 1,
    }];
    let used = vec!["a".to_string()];
    let mut basis = k.initialize(&live, &used, &mut Work::default()).unwrap();
    let mut planner = Planner::new(&k, &live, &used, &mut Work::default()).unwrap();
    let rows: Vec<Value> =
        include_str!("../../docs/proposals/core-next-architecture/reference-fixture.jsonl")
            .lines()
            .map(|v| serde_json::from_str(v).unwrap())
            .collect();
    assert_eq!(hex(basis.view().program), rows[0]["descriptor_sha256"]);
    let mut inventory = BTreeMap::from([("a".to_string(), 1)]);
    let mut identities = used.clone();
    snapshot(
        &mut snapshots,
        "cap2-initial",
        &basis,
        &inventory,
        &identities,
    );
    let mut saved_create = None;
    for (index, case) in rows[1..].iter().enumerate() {
        let operation = match index {
            0 => Action::Create { id: "b".into() },
            1 => Action::Set {
                id: "a".into(),
                old: 1,
                value: 3,
            },
            2 => Action::Emit,
            3 => Action::Create { id: "c".into() },
            4 => Action::Set {
                id: "a".into(),
                old: 3,
                value: 0,
            },
            5 => Action::Create { id: "b".into() },
            _ => unreachable!(),
        };
        let request = basis.request(&format!("fixture-{index}"), operation);
        let (proposal, after_planner) =
            planner.propose(&k, &request, &mut Work::default()).unwrap();
        let checked = k
            .check(&basis, &request, &proposal, &mut Work::default())
            .unwrap();
        assert_eq!(
            checked.outcome,
            fixture_projection(&case["reference_decision"])
        );
        assert_eq!(hex(basis.view().live.digest), case["before_live"]);
        assert_eq!(hex(basis.view().used.digest), case["before_used"]);
        assert_eq!(hex(checked.next.view().live.digest), case["after_live"]);
        assert_eq!(hex(checked.next.view().used.digest), case["after_used"]);
        if index == 0 {
            saved_create = Some((basis.clone(), request.clone(), proposal.clone()));
        }
        if index == 1 {
            // All faults go through the actual acceptance interface.
            let wire = serde_json::to_vec(&proposal).unwrap();
            let mut unknown = serde_json::to_value(&proposal).unwrap();
            unknown["unrecognized"] = json!(true);
            let mut trailing = wire.clone();
            trailing.push(b'x');
            let mut duplicate = b"{\"request_binding\":".to_vec();
            duplicate.extend(serde_json::to_vec(&proposal.request_binding).unwrap());
            duplicate.push(b',');
            duplicate.extend(&wire[1..]);
            for (name, raw, error) in [
                (
                    "unknown-wire-field",
                    serde_json::to_vec(&unknown).unwrap(),
                    "WireEncoding",
                ),
                ("trailing-wire-data", trailing, "WireEncoding"),
                ("duplicate-wire-field", duplicate, "WireEncoding"),
                ("oversized-wire", vec![b' '; 262_145], "WireBound"),
            ] {
                assert_eq!(kernel::decode_proposal(&raw).err().unwrap(), error);
                write(
                    &mut checks,
                    json!({"case":name,"status":"TargetedWireRejectionObserved","actual_error":error}),
                );
            }
            mutate(
                &mut checks,
                "sibling-digest",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningRoot",
                |_, p| p.paths[0].siblings[100].digest[0] ^= 1,
            );
            mutate(
                &mut checks,
                "sibling-count",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningRoot",
                |_, p| p.paths[0].siblings[100].count += 1,
            );
            mutate(
                &mut checks,
                "sibling-positive",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningRoot",
                |_, p| p.paths[0].siblings[100].positive = false,
            );
            mutate(
                &mut checks,
                "sibling-coverage",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningRoot",
                |_, p| p.paths[0].siblings[100].complete_coverage = false,
            );
            mutate(
                &mut checks,
                "leaf-key",
                &k,
                &basis,
                &request,
                &proposal,
                "LeafKey",
                |_, p| p.paths[0].leaf.as_mut().unwrap().id = "other".into(),
            );
            mutate(
                &mut checks,
                "leaf-value",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningRoot",
                |_, p| p.paths[0].leaf.as_mut().unwrap().x += 1,
            );
            mutate(
                &mut checks,
                "missing-depth",
                &k,
                &basis,
                &request,
                &proposal,
                "PathShape",
                |_, p| {
                    p.paths[0].siblings.pop();
                },
            );
            mutate(
                &mut checks,
                "extra-depth",
                &k,
                &basis,
                &request,
                &proposal,
                "PathShape",
                |_, p| {
                    let s = p.paths[0].siblings[0];
                    p.paths[0].siblings.push(s);
                },
            );
            mutate(
                &mut checks,
                "missing-opening",
                &k,
                &basis,
                &request,
                &proposal,
                "WitnessShape",
                |_, p| p.paths.clear(),
            );
            mutate(
                &mut checks,
                "wrong-opening-subject",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningSubject",
                |_, p| p.paths[0].id = "b".into(),
            );
            mutate(
                &mut checks,
                "wrong-tree-domain",
                &k,
                &basis,
                &request,
                &proposal,
                "OpeningSubject",
                |_, p| p.paths[0].kind = 2,
            );
            mutate(
                &mut checks,
                "wrong-program",
                &k,
                &basis,
                &request,
                &proposal,
                "ProgramBinding",
                |r, _| r.program[0] ^= 1,
            );
            mutate(
                &mut checks,
                "wrong-origin",
                &k,
                &basis,
                &request,
                &proposal,
                "OriginBinding",
                |r, _| r.origin[0] ^= 1,
            );
            mutate(
                &mut checks,
                "wrong-parent",
                &k,
                &basis,
                &request,
                &proposal,
                "ParentBinding",
                |r, _| r.parent[0] ^= 1,
            );
            mutate(
                &mut checks,
                "wrong-position",
                &k,
                &basis,
                &request,
                &proposal,
                "ParentBinding",
                |r, _| r.position += 1,
            );
            mutate(
                &mut checks,
                "unsupported-context",
                &k,
                &basis,
                &request,
                &proposal,
                "UnsupportedContext",
                |r, _| r.context = json!({"x":1}),
            );
            mutate(
                &mut checks,
                "wrong-request",
                &k,
                &basis,
                &request,
                &proposal,
                "RequestBinding",
                |r, _| r.request_id = "different".into(),
            );
            mutate(
                &mut checks,
                "changed-root",
                &k,
                &basis,
                &request,
                &proposal,
                "AfterRoot",
                |_, p| p.after_live.digest[0] ^= 1,
            );
            mutate(
                &mut checks,
                "changed-root-count",
                &k,
                &basis,
                &request,
                &proposal,
                "AfterRoot",
                |_, p| p.after_live.count += 1,
            );
            mutate(
                &mut checks,
                "false-denial",
                &k,
                &basis,
                &request,
                &proposal,
                "OutcomeBinding",
                |_, p| p.outcome.result = "DENY".into(),
            );
            mutate(
                &mut checks,
                "dropped-duplicate-command",
                &k,
                &basis,
                &request,
                &proposal,
                "OutcomeBinding",
                |_, p| {
                    p.outcome.commands.pop();
                },
            );
            mutate(
                &mut checks,
                "wrong-command-payload",
                &k,
                &basis,
                &request,
                &proposal,
                "OutcomeBinding",
                |_, p| p.outcome.commands[0] = json!({"kind":"other"}),
            );
            mutate(
                &mut checks,
                "wrong-change-value",
                &k,
                &basis,
                &request,
                &proposal,
                "OutcomeBinding",
                |_, p| p.outcome.changes[0]["new"] = json!(2),
            );
            let other_request = basis.request(
                "different-valid",
                Action::Set {
                    id: "a".into(),
                    old: 1,
                    value: 2,
                },
            );
            let (mut other, _) = planner
                .propose(&k, &other_request, &mut Work::default())
                .unwrap();
            k.check(&basis, &other_request, &other, &mut Work::default())
                .unwrap();
            other.request_binding = proposal.request_binding;
            rejection(
                &mut checks,
                "valid-but-unrelated-result",
                &k,
                &basis,
                &request,
                &other,
                "AfterRoot",
            );
            mutate(
                &mut checks,
                "stale-state",
                &k,
                &basis,
                &request,
                &proposal,
                "StaleInputState",
                |r, p| {
                    r.operation = Action::Set {
                        id: "a".into(),
                        old: 2,
                        value: 3,
                    };
                    p.request_binding = kernel::request_binding(r, &mut Work::default());
                },
            );
        }
        if index == 2 {
            assert_eq!(checked.next.view().live, basis.view().live);
            assert_ne!(checked.next.view().local_head, basis.view().local_head);
        }
        if checked.outcome.result != "ALLOW" {
            assert_eq!(checked.next.view().local_head, basis.view().local_head);
            mutate(
                &mut checks,
                &format!("false-allow-{index}"),
                &k,
                &basis,
                &request,
                &proposal,
                "OutcomeBinding",
                |_, p| p.outcome = Outcome::allow(),
            );
        }
        if index == 0 {
            inventory.insert("b".into(), 1);
            identities.push("b".into());
        }
        if index == 1 {
            inventory.insert("a".into(), 3);
        }
        write(
            &mut references,
            json!({"case":case["name"],"projection_equal":true,"all_four_roots_equal":true,"outcome":checked.outcome,"request":request,"before":basis.view(),"after":checked.next.view()}),
        );
        basis = checked.next;
        planner = after_planner;
        snapshot(
            &mut snapshots,
            case["name"].as_str().unwrap(),
            &basis,
            &inventory,
            &identities,
        );
    }
    let (initial, first_request, first_proposal) = saved_create.unwrap();
    rejection(
        &mut checks,
        "old-transition-replayed-at-new-head",
        &k,
        &basis,
        &first_request,
        &first_proposal,
        "ParentBinding",
    );
    let other_kernel = Kernel::new(3, &mut Work::default()).unwrap();
    rejection(
        &mut checks,
        "foreign-kernel-basis",
        &other_kernel,
        &initial,
        &first_request,
        &first_proposal,
        "ProgramBinding",
    );
    initial_rejection(
        &mut checks,
        "initial-nonpositive",
        &k,
        &[Row {
            id: "a".into(),
            x: 0,
        }],
        &used,
        "InitialPositive",
    );
    initial_rejection(
        &mut checks,
        "initial-missing-used",
        &k,
        &live,
        &[],
        "InitialLiveUsed",
    );
    initial_rejection(
        &mut checks,
        "initial-duplicate-live",
        &k,
        &[live[0].clone(), live[0].clone()],
        &used,
        "DuplicateLive",
    );
    initial_rejection(
        &mut checks,
        "initial-duplicate-used",
        &k,
        &live,
        &["a".into(), "a".into()],
        "DuplicateUsed",
    );
    initial_rejection(
        &mut checks,
        "initial-over-cap",
        &Kernel::new(0, &mut Work::default()).unwrap(),
        &live,
        &used,
        "InitialCap",
    );

    let empty = k.initialize(&[], &[], &mut Work::default()).unwrap();
    let empty_planner = Planner::new(&k, &[], &[], &mut Work::default()).unwrap();
    snapshot(
        &mut snapshots,
        "empty-initial",
        &empty,
        &BTreeMap::new(),
        &[],
    );
    let er = empty.request("empty-emit", Action::Emit);
    let (ep, _) = empty_planner
        .propose(&k, &er, &mut Work::default())
        .unwrap();
    let ec = k.check(&empty, &er, &ep, &mut Work::default()).unwrap();
    assert_eq!(ec.next.view().live.count, 0);
    assert_ne!(ec.next.view().local_head, empty.view().local_head);
    write(
        &mut checks,
        json!({"case":"empty-query-emit","status":"ExpectedAllowObserved","commands":ec.outcome.commands.len()}),
    );
    let cr = ec
        .next
        .request("empty-create", Action::Create { id: "fresh".into() });
    let (cp, _) = empty_planner
        .propose(&k, &cr, &mut Work::default())
        .unwrap();
    let cc = k.check(&ec.next, &cr, &cp, &mut Work::default()).unwrap();
    snapshot(
        &mut snapshots,
        "empty-create",
        &cc.next,
        &BTreeMap::from([("fresh".into(), 1)]),
        &["fresh".into()],
    );

    let retired = k
        .initialize(&[], &["retired".into()], &mut Work::default())
        .unwrap();
    let rp = Planner::new(&k, &[], &["retired".into()], &mut Work::default()).unwrap();
    let rr = retired.request(
        "retired-create",
        Action::Create {
            id: "retired".into(),
        },
    );
    let (proposal, _) = rp.propose(&k, &rr, &mut Work::default()).unwrap();
    let rc = k
        .check(&retired, &rr, &proposal, &mut Work::default())
        .unwrap();
    assert_eq!(rc.outcome.result, "ENTITY_ID_ALREADY_USED");
    write(
        &mut checks,
        json!({"case":"retired-id-reuse","status":"ExpectedReuseRefusalObserved"}),
    );

    // Original1000/1001 boundary, independent of the smaller cap2 example.
    let boundary_kernel = Kernel::new(1000, &mut Work::default()).unwrap();
    let rows = population(999);
    let mut used: Vec<String> = rows.iter().map(|r| r.id.clone()).collect();
    let mut inv: BTreeMap<String, i64> = rows.iter().map(|r| (r.id.clone(), r.x)).collect();
    let mut bb = boundary_kernel
        .initialize(&rows, &used, &mut Work::default())
        .unwrap();
    let mut bp = Planner::new(&boundary_kernel, &rows, &used, &mut Work::default()).unwrap();
    snapshot(&mut snapshots, "cap1000-before", &bb, &inv, &used);
    for (id, allowed) in [("entity1000", true), ("entity1001", false)] {
        let request = bb.request(id, Action::Create { id: id.into() });
        let (p, next) = bp
            .propose(&boundary_kernel, &request, &mut Work::default())
            .unwrap();
        let c = boundary_kernel
            .check(&bb, &request, &p, &mut Work::default())
            .unwrap();
        assert_eq!(c.outcome.result, if allowed { "ALLOW" } else { "DENY" });
        if allowed {
            inv.insert(id.into(), 1);
            used.push(id.into());
        }
        bb = c.next;
        bp = next;
        snapshot(&mut snapshots, id, &bb, &inv, &used);
        write(
            &mut checks,
            json!({"case":id,"status":"ExpectedBoundaryObserved","count":bb.view().live.count,"result":c.outcome.result}),
        );
    }
}

fn population(n: usize) -> Vec<Row> {
    (0..n)
        .map(|i| Row {
            id: format!("entity-{i:08}"),
            x: 1,
        })
        .collect()
}
fn run_cost(directory: &Path) {
    let mut setup = File::create_new(directory.join("setup.jsonl")).unwrap();
    let mut samples = File::create_new(directory.join("samples.jsonl")).unwrap();
    let mut snapshots = File::create_new(directory.join("cost-inventories.jsonl")).unwrap();
    for n in [1, 1000, 8192] {
        let start = Instant::now();
        let mut profile_work = Work::default();
        let k = Kernel::new(10000, &mut profile_work).unwrap();
        let profile_ns = start.elapsed().as_nanos();
        let rows = population(n);
        let used: Vec<_> = rows.iter().map(|r| r.id.clone()).collect();
        let mut inventory: BTreeMap<_, _> = rows.iter().map(|r| (r.id.clone(), r.x)).collect();
        let start = Instant::now();
        let mut init_work = Work::default();
        let mut basis = k.initialize(&rows, &used, &mut init_work).unwrap();
        let init_ns = start.elapsed().as_nanos();
        let start = Instant::now();
        let mut planner = Planner::new(&k, &rows, &used, &mut Work::default()).unwrap();
        let planner_setup_ns = start.elapsed().as_nanos();
        write(
            &mut setup,
            json!({"population":n,"profile_ns":profile_ns,"profile_work":profile_work,"initialize_ns":init_ns,"initialize_work":init_work,"planner_setup_ns":planner_setup_ns}),
        );
        snapshot(
            &mut snapshots,
            &format!("population-{n}-initial"),
            &basis,
            &inventory,
            &used,
        );
        let id = rows[0].id.clone();
        let mut old = 1;
        for index in 0..101 {
            let value = if old == 1 { 3 } else { 1 };
            let request = basis.request(
                &format!("warm-{n}-{index}"),
                Action::Set {
                    id: id.clone(),
                    old,
                    value,
                },
            );
            let whole = Instant::now();
            let start = Instant::now();
            let mut planner_work = Work::default();
            let (p, next_planner) = planner.propose(&k, &request, &mut planner_work).unwrap();
            let planner_ns = start.elapsed().as_nanos();
            let start = Instant::now();
            let wire = serde_json::to_vec(&p).unwrap();
            let decoded = kernel::decode_proposal(&wire).unwrap();
            let wire_ns = start.elapsed().as_nanos();
            let start = Instant::now();
            let mut checker_work = Work::default();
            let checked = k
                .check(&basis, &request, &decoded, &mut checker_work)
                .unwrap();
            let check_ns = start.elapsed().as_nanos();
            assert_eq!(checked.outcome.result, "ALLOW");
            planner = next_planner;
            basis = checked.next;
            old = value;
            let whole_ns = whole.elapsed().as_nanos();
            assert_eq!(checker_work.inventory_rows, 0);
            write(
                &mut samples,
                json!({"population":n,"sample":index,"warmup":index==0,"whole_local_ns":whole_ns,"planner_ns":planner_ns,"wire_ns":wire_ns,"check_ns":check_ns,"wire_bytes":wire.len(),"planner_work":planner_work,"checker_work":checker_work,"g1_pass":false}),
            );
        }
        inventory.insert(id, old);
        snapshot(
            &mut snapshots,
            &format!("population-{n}-final"),
            &basis,
            &inventory,
            &used,
        );
    }
}
fn main() {
    let args: Vec<_> = std::env::args().collect();
    assert_eq!(args.len(), 3, "functional|cost OUTPUT_DIR");
    let directory = Path::new(&args[2]);
    fs::create_dir(directory).unwrap();
    match args[1].as_str() {
        "functional" => run_functional(directory),
        "cost" => run_cost(directory),
        _ => panic!("unknown study mode"),
    }
    println!(
        "{}",
        json!({"event":"local_k_study_completed","mode":args[1],"g1_pass":false})
    );
}
