# Core020 targeted source/requirements review

Review type: author-performed source/contract review, not an independent third-party audit. Disposition: no outstanding scoped blocker identified; final canonical gates/exact Git consumer are pending externally.

## Authority and decoder correspondence

`crates/behavior-core/src/wire.rs:36` contains the exact ordered constant/profile descriptors. Lookup at1034–1040 is the only fresh-module membership selection. Each closed profile's flag tuple at54–59 matches its old branch; Commands alone controls strict decoding and command semantics. No new serialized value, public facade item or backend capability is introduced.

Root shape/key checks and raw unique-header validation at1022–1033 still precede dispatch. Lookup moving before the strict branch changes no failure precedence:0.8 always has a descriptor and still executes strict root/length checks; every other previously accepted version bypasses that branch; unknown/non-string versions follow their old refusal categories. The unchanged body decoder follows at1053. Existing feature-minimum checks remain in place.

`crates/behavior-core/src/lib.rs:58` projects the same keys and preserves the historical array/other fields. `crates/behavior-core/src/admit/mod.rs:107–130` renders those keys with the specified deterministic commas/conjunction. The descriptor count bounds indices, with no unwrap/unchecked caller invariant. Category, supplied value, surrounding migration sentence and minimum-feature errors remain intact.

`wire::decode_read_document` retains its independent0.7 gate. The shared generic engine clause does not redefine that document's domain. No contextual error redesign, range inference or ad hoc acceptance extension was found.

## Tests, identities and consumers

Tests use independent literal expectations and real fixtures, not only delegating-report comparisons. Shared defect assertions were collected and actually failed before source changes; structural/body/duplicate/read guards are explicit positive controls. Three old expectations were corrected narrowly. Facade tests import only `behavior-engine`; the initial/candidate capture overlays use the same supported facade and are retained externally, with the temporary candidate target removed.

Source/asset comparisons and existing targeted controls preserve canonical wire, item/behavior/schema identities and supported recorded-profile replay. No schema, fixture, Cargo dependency/lock, facade export or ecosystem pin change is present. Exact whole-output digest equality is deliberately not claimed because metadata and the generic support clause change as approved.

The requirements/evidence table in the implementation report covers FR-001–011/SC-001–005. Future descriptor additions make independent expected-set tests fail until their actual admission witnesses and reporting/refusal evidence are updated; a historical constant by itself does not advertise support. Consumer notes accurately distinguish source correction from adoption of a published release.

## Scope and process

The architecture remains a small private implementation change. The pre-existing five-boolean feature tuple is preserved rather than redesigned; there is no general version-negotiation framework. No unsafe code, panic or new runtime authority was added. All scoped test execution retained source identities and actual statuses. The observer's formatting-mutation guard mistake is documented honestly and excluded from passing validation evidence.

This review supports the scoped RC-004 remediation chain, subject to the mandatory final unchanged-candidate gates. It does not claim an independent audit or full Core soundness. Any source correction after this review requires appropriate test-first evidence and fresh affected/final validation.
