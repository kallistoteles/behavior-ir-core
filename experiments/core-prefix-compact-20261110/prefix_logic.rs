//! Same exact local K source; a fixed declared origin and two actual transitions.
use crate::{
    auth::{Row, Work},
    kernel::{Action, Kernel},
};
use serde_json::json;
pub fn run(raw: &[Vec<u8>; 2]) -> Vec<u8> {
    let k = Kernel::new(2, &mut Work::default()).unwrap();
    let mut basis = k
        .initialize(
            &[Row {
                id: "a".into(),
                x: 1,
            }],
            &["a".into()],
            &mut Work::default(),
        )
        .unwrap();
    let initial = serde_json::to_value(basis.view()).unwrap();
    let mut steps = vec![];
    for (index, (id, operation)) in [
        ("prefix-create", Action::Create { id: "b".into() }),
        (
            "prefix-set",
            Action::Set {
                id: "a".into(),
                old: 1,
                value: 3,
            },
        ),
    ]
    .into_iter()
    .enumerate()
    {
        let request = basis.request(id, operation);
        let proposal = crate::compact::decode(&raw[index], &k.auth).unwrap();
        let checked = k
            .check(&basis, &request, &proposal, &mut Work::default())
            .unwrap();
        assert_eq!(checked.outcome.result, "ALLOW");
        steps.push(json!({"before":basis.view(),"request_binding":crate::kernel::request_binding(&request,&mut Work::default()),"outcome":checked.outcome,"after":checked.next.view()}));
        basis = checked.next;
    }
    serde_json::to_vec(&json!({"format":"core.actual-local-prefix.v1","initial":initial,"steps":steps,"final":basis.view(),"transition_count":2})).unwrap()
}
