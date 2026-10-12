# Replay Proof Obligations and Planned Evidence

Full historical evaluation and existing record contracts remain reference
semantics. The correction must satisfy these obligations; this table is a plan,
not completed proof or passing execution evidence.

| ID | Obligation | Planned enforcing boundary | Required evidence / spec |
| --- | --- | --- | --- |
| P018-01 | Raw ambiguity is rejected before information loss. | Shared strict replay preparation; strict invocation preflight. | Named F-TRUST-001 RED/GREEN; root/nested/equal/escaped duplicates; valid controls. FR-004/005/014. |
| P018-02 | Only supported recorded profiles reach archived execution. | Private checked profile wrapper bound to the exact module at construction and execution. | Every matrix row and U01–U07 refusal family; cross-module selector substitution refuses; no unknown-to-fresh default. FR-001/002/010/012. |
| P018-03 | Historical meaning and identity are preserved under the same recorded profile, separately for every supported profile/version combination; no read-v1/read-v2 equivalence is implied. | The reference evaluator for that recorded profile, source admission and full comparison. | Frozen bytes/hashes/provenance, query-refusal/capture limits, current errors/diagnostics. FR-003/006/016. |
| P018-04 | Store's stronger binding obligations are discharged. | Historical state/schema/behavior and actual binding/fact reconstruction. | Foreign/equal-schema-wrong-behavior substitutions, stale coordinates, later writes/migration, tampered facts. FR-007. |
| P018-05 | Supported Core/Store pairs agree once Store obligations hold. | Same checked profile evaluator with independently established equivalent inputs. | Paired row/boundary outcomes and contractual semantic diffs/evidence/identities; both historical F-PERSIST-001 regressions. FR-016. |
| P018-06 | Fresh paths cannot select archived profiles. | Public fresh wrappers hard-select Fresh mode; internal checked replay hook. | Fresh Wire0.8 still emitsv2; facade export/signature controls. FR-008/015. |
| P018-07 | Invocation inner/outer evidence remains coherent. | Existing envelope reconciliation, Store resolution, metadata and whole-envelope comparison. | Rehashed contradictions, binding/decode refusals, inner/outer hashes, historical read wrapper. FR-002/003/007. |
| P018-08 | Non-match and operational failure remain distinct. | Existing ReplayResult and StoreError mapping. | Deterministic nonempty string diff, optional-field serialization, actually required backend failures; no blanket FactError recategorization. FR-009/014. |
| P018-09 | Replay produces no authoritative mutation or command execution. | Shared Store references and replay-only read execution. | Before/after genesis/head/history/versions/references/command streams; no candidate or uncommitted certificate promotion. FR-008. |
| P018-10 | Support and strictness are not silently expanded. | Contract-derived matrix and retained historical decoders. | U01–U07 and request/record distinction, raw refused_request string, documented origin/capture limits. FR-005/010/012. |
| P018-11 |018 sharing does not undo017 or unrelated record families. | Explicit integration base; preserved action/refusal branches. |017 archived/current decision invocation controls, existing migration/command/replay suites at final head. FR-001/008/015. |
| P018-12 | Claimed evidence covers the exact frozen delivered revision without self-referential report metadata. | Existing Nix gates, collection manifest, determinism and facade consumer; external immutable or revision-bound CI receipt. | New semantic RED before code, GREEN, all matrix cases executed, twice-run outputs; receipt binding repository/SHA/commands/exit statuses/environment/toolchain/log locations, unchanged frozen checkout and fresh validation for a different published SHA. FR-011/013. |

Conditional equivalence can be written as:

```text
Supported(profile, module)
and StoreBindingsHold(store, recorded_position, evidence)
and CanonicalInputsAgree(CoreCapturedInputs, StoreDerivedInputs)
  ⇒ SemanticReplayStore_profile(evidence) ≡ SemanticReplayCore_profile(evidence)
```

For every supported profile/version combination, replay is observationally
equivalent to the reference evaluator under that same recorded profile:
`Replay_profile(x) ≡ Reference_profile(x)`. This never asserts
`Replay_v1(x) ≡ Replay_v2(x)` or substitutes today's profile for a historical one.

The observable components are match/non-match and contractually defined semantic
diff/evidence/record identities. Backend traces and failures of omitted calls are
excluded; mandatory obligations and actually performed error handling remain.

Store/history coherence and immutable canonical evidence remain Backend contract
premises. Cryptographic collision resistance remains an identity premise. Tests
provide empirical evidence; source construction and explicit invariant arguments
must be documented separately. This does not prove arbitrary Backend honesty.

## Targeted re-audit closure

Attach final evidence to F-PERSIST-001/F-TRUST-001 and the relevant parts of
O-MODEL-013, O-IDENTITY-010, O-PERSIST-008 and O-TRUST-012 from immutable016.
Record each as discharged, conditional or still open with exact source/test/SHA
evidence. Do not alter016 findings or mark unrelated obligations closed. In
particular,018 does not establish complete-child validity, creation failure laws,
metadata correctness, all legacy encoder bounds or universal verifier soundness.
