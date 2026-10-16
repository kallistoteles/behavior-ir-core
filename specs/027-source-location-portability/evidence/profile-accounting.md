# Executed profile accounting

Commands, source hashes and statuses: [us2-validation.json](us2-validation.json), [consumer completion](us2-consumer-reviewed.json). Core 126 tests, Store 31, facade 4 passed. Compiler setup failure retained and excluded from behavioral evidence.

| Domain | Actual evidence | Result |
| --- | --- | --- |
| Builder module/ReadItem provenance | us1 Core 7 + facade 3 and unchanged 30-row probe | Useful typed/read-document files and original lines; two-prefix equality |
| Behavior/name-table/read/expression semantic hashes | construction_provenance_preserves_semantics_but_real_mutation_changes_them | Source-only differences equal; value43 changes identity and exact result |
| v1 ad hoc fresh definition | fresh_ad_hoc_record_changes_only_in_profile_authoritative_provenance | Corrected model.py differs from reviewed old tree-a/pkg/model.py; canonical ID differs; other full record fields equal |
| v1 declared success | declared_success_and_failure_have_distinct_profile_identity_contracts | No embedded definition; full canonical bytes equal |
| v1 declared failure | same test + original strict_profile_replay | Source-attributed failure changes fresh ID; historical provenance remains identity-bearing |
| v2 success/failure | same tests + read_soundness | Full canonical bytes/IDs equal; failure display diagnostics differ; construction provenance independently checked |
| Frozen Core archives | read_goldens, record_validation, strict_profile_replay | Original byte/ID checks pass, raw recorded-profile interpretation retained |
| Full replay authority | read_replay, read_replay_integrity, replay_evidence_authority | Facts-only full-evidence comparison and same-hash/different-module refusal preserved |
| Frozen Store archives | Store strict_profile_replay 31 tests | Exact lineage/state/position/schema, tamper and historical profiles preserved |
| Fresh Store and Core replay | facade fresh_own_profile_core_and_store_replay_preserve_exact_world_and_history | Four declared/ad hoc scalar/projection sources × two own-profile genesis configurations; exact VALUE42 / Doc projection; full canonical serialization preserved; head/history unchanged at position0 |

No record/hash domain, wire/replay policy, original fixture or profile was changed. Store observations are reads; no command delivery or action commit is claimed.

Final characterization extends fresh failure checks to both declared and ad hoc sources under both profiles: profile-matrix-completion.json. Final formatting/Builder style check and focused rerun: final-preflight.json.
