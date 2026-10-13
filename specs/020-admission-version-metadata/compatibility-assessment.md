# Core020 consumer compatibility assessment

020 corrects existing reporting: fresh module admission, `accepted_wire_ir` and generic refusal support text describe0.4–0.8. It adds no consumer API/contract version, field, error category or CLI status. The historical `wire_ir` array remains0.1–0.7; record/read-record/store/verifier inventories, canonical bytes and identities remain unchanged. Ad hoc read documents still accept only0.7.

## Inspected consumers and adaptation

| Consumer | Observed dependency | Correction / evidence |
| --- | --- | --- |
| Core `crates/behavior-core/tests/versions.rs` | Erroneous literal/constant accepted-list assertions | Corrected narrowly before production; Core RED and GREEN retained. |
| CLI `crates/behavior-cli/tests/cli_engine_info.rs` | Erroneous accepted-list expectation | Corrected before production; status0/2, canonical output and complete refusal clause exercised. |
| Facade `consumer/tests/resulting_state_validity.rs` | Erroneous accepted-list expectation | Corrected only that value; original-record/verifier assertions retained and existing golden observed RED before production. |
| Facade `consumer/tests/admission_versions.rs` | New independent acceptance consumer | Uses only `behavior-engine`; both reporting functions, actual admission and negative/refusal matrix pass. |
| Ecosystem repository `behavior-ir`, `python/tests/test_core_alignment.py` | Binding/bundled-CLI expectation of its published Core0.12.0 list | Future adoption must update the expectation together with a published corrected release's canonical pin/assets/dependencies; no ecosystem change made here. |
| Ecosystem repository `behavior-ir`, `docs/versioning.md` | Describes the old list as decoder support | Update during that same separate adoption. |
| External/uninspected consumers | May compare complete diagnostic bytes or old values | Release notes must disclose the changed list and support clause; no claim of universal compatibility is made. |

The read-only ecosystem pin inspected during implementation is `v0.12.0`, commit `b525da46d4282166418a90141f0c94fd099e9b47`. The repository's existing unrelated working changes are preserved. Its tests describe that published release; changing their values without changing the pin would test the wrong version.

## Migration and release policy

Use `accepted_wire_ir` for fresh module negotiation, not the distinct historical inventory. Replace assertions of0.1–0.8 with0.4–0.8 when adopting the corrected release. The generic clause now includes0.8; the supplied version, category, surrounding rounded-arithmetic guidance and existing failure status remain intact. Prefer the structured error category and reporting field when machine selection is needed.

Under accepted D-020-001 and [Core's existing0.x policy](../../docs/versioning.md#release-version-policy-0x), this observable correction is conservatively minor-class because consumers may need adaptation. It does not justify retaining false reporting behind a new contract version or re-admitting legacy arithmetic. No numeric version, tag, release construction/publication or ecosystem pin change is selected.

## Evidence and limits

[RED](evidence/red.json), [US1 GREEN](evidence/us1-green.json), [US2 GREEN](evidence/us2-green.json) and [compatibility comparison](evidence/compatibility.json) bind executed commands/source identities and permitted differences. The five canonical facade observations,29 CLI observations and1,101 frozen assets establish the scoped comparison; existing same-profile replay and identity suites add216 passing controls. Final unchanged-candidate gates and exact Git consumer validation are required separately and recorded externally after source freeze. This is not whole-Core audit closure or compatibility evidence for an unpublished release.
