# TRUST findings submission

Owner `/root/audit016_verify`; baseline v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. No source repair was made.

| Required field | F-TRUST-001 |
| --- | --- |
| Lifecycle | Confirmed by source/authority review and actual E-TRUST-002 final semantic assertion; different-person significant finding review assigned to MODEL. |
| Category / severity | S3 / Medium. A current malformed canonical read archive can be reported as reproducible Store evidence, contradicting strict Core decoding. No authenticated forgery, canonical mutation or legal false PROVEN is demonstrated. |
| Claim | `Store::replay_read` accepts contradictory duplicate `result` keys in raw current read_record.v2 text when the last value matches the original valid record, because permissive parsing discards the earlier key before comparison. |
| Mathematical/semantic reason | A canonical semantic document must decode to one unambiguous object. Duplicate-key reduction is many-to-one and discards a contradictory assertion before the identity/result comparison. Identity equality of the reduced map cannot establish validity of the original raw evidence. |
| Violated invariant / authority | G5 identity/canonicalization and G7 reproducible replay evidence; 013 `contracts/identity-and-records.md:143–146` explicitly requires strict new duplicate rejection, 010 `spec.md:189–211` requires tampered result evidence mismatch, `docs/persistence.md:223–225` defines Store replay comparison, `docs/soundness-remediation.md:11` identifies strict current read entry points. No frozen Store exception was found. |
| Exact revision / source locations | Baseline above. `crates/behavior-store/src/store.rs:1433–1477`, permissive `serde_json::from_str` at1438, resulting reduced-map comparison at1475; strict reference `crates/behavior-core/src/read.rs:140–143,575–576`. Core raw invocation replay preflight at Store `store.rs:1481+` is a separate protected path. |
| Concrete evidence | E-TRUST-001 direct authority/source inspection and independent MODEL/PERSIST agreement on path distinction; E-TRUST-002 immutable actual run/patch at `evidence/runs/TRUST/read-duplicate-red/`. Raw output: valid record.v2 original_id `read:sha256:68d1c8af1f287a6dec506ef325a077121e00ddbadb07aa9354aaebdbb204020e`; Core matches=false with duplicate-key error; Store matches=true. |
| Reproducible test | `nix develop -c cargo test -p behavior-store --test audit_016_read_duplicate -- --nocapture`, from disclosed exact-base trust-overlay. One collected/executed case, zero ignored/filtered, zero passed/one failed, exit101 at final line73. Valid Core decode/Core replay/Store replay and unchanged-head controls pass first. Inject `result:EVALUATION_ERROR` before original `result:VALUE`, without changing hash; permissively reduced object equals original. |
| Provenance / artifacts | Source SHA256 `53c37eb33c48d9cb938a609fa0a9eb58e693b83c78f9ccc39ed04f661ff35c64`; patch `a4bba93842953025830f75517d07c0f12cfac9808962438c1d4e3eb1b93a91c5`; stdout `340ec4d1910826f75a670475dffa11bcdc6f884e678323b1511b6de658c48986`; stderr `ab50ab3e4acf1a07a2522fce883568617ae08034fdb7b167db8a637f828311e8`. Exact environment/toolchain/input custody is retained in run.json/overlay.json and coordinator manifests. Only a new test file is dirty; no production edits. |
| Affected versions / paths | Inspected v0.12.1 raw `Store::replay_read` current v2 evidence path. Core standalone strict read decoding/replay rejects the example; Store invocation's Core preflight also rejects duplicates. No statement about uninspected releases or all legacy formats. |
| Recommended remediation | Reuse existing strict raw record decoding at the Store read replay boundary before any JSON map reduction, while retaining exact Store/schema/history checks and ordinary insignificant whitespace behavior. Add the focused negative regression alongside valid current/historical controls. |
| Version/history/public consequences | No fix applied. This is an input-refusal correction: assess current strict contract, compatibility and versioning before separately approved implementation. Preserve canonical record bytes/hashes, supported historical codecs and operational Backend errors. |
| Shared cause / traceability | Lossy document parsing at one Store evidence entry point. Distinct from F-PERSIST-001 historical codec substitution and F-INCREMENTAL-001 ordinary child validity. Root should retain originating F-TRUST-001 when grouping parser consistency risks. |

E-TRUST-002 is intentionally failing supplemental evidence, never a passing
canonical gate. It establishes this concrete acceptance defect, not all duplicate
placements, all malformed documents or cryptographic authority. O-TRUST-012
remains not yet established because the tested obligation fails; no test changes
the meaning of validity or historical evidence.
