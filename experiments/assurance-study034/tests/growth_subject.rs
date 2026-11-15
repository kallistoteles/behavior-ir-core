#![allow(clippy::unwrap_used)]
use assurance_study034::growth;
#[test]
fn exact_growth_parent_and_one_relevant_change() {
    for (case, p, h) in [
        ("growth-D1", 1, 8),
        ("growth-D2", 32, 8),
        ("growth-D4", 1, 32),
    ] {
        let x = growth::reference(case).unwrap();
        assert_eq!(x["P"], p);
        assert_eq!(x["N"], 2 * p);
        assert_eq!(x["H"], h);
        assert_eq!(x["D"], 1);
        assert_eq!(x["parent"]["position"], h);
        assert_eq!(x["endpoint"]["position"], h + 1);
        assert_eq!(
            x["before_facts"]["parents"].as_object().unwrap().len(),
            p as usize
        );
        assert_eq!(
            x["before_facts"]["children"].as_object().unwrap().len(),
            p as usize
        );
        assert_eq!(x["before_facts"]["children"]["c0000"]["phase"], "Active");
        assert_eq!(x["after_facts"]["children"]["c0000"]["phase"], "Terminal");
        assert_eq!(
            x["packet"]["backend"]["commits"].as_array().unwrap().len(),
            (h + 1) as usize
        );
        assert_eq!(
            x["packet"]["backend"]["commits"][h as usize]["versions"]
                .as_array()
                .unwrap()
                .len(),
            1
        );
    }
}
#[test]
fn identical_preparation_has_identical_semantics_and_unknown_cases_fail() {
    let a = growth::reference("growth-D1").unwrap();
    let b = growth::reference("growth-D1").unwrap();
    assert_eq!(a["parent"], b["parent"]);
    assert_eq!(a["endpoint"], b["endpoint"]);
    assert_eq!(a["packet"], b["packet"]);
    assert!(growth::reference("growth-D7").is_err());
}
