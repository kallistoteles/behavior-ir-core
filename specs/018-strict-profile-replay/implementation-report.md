# Core018 implementation and targeted RC-002 re-audit

The implementation corrects historical Store read-profile substitution and raw
duplicate-key acceptance. The three named audit regressions have attributable
pre-correction semantic RED and corrected GREEN. The complete reviewed replay
matrix, facade consumer, determinism integration and collateral controls pass
before freeze. Final frozen-candidate gates and exact-SHA consumer validation
are pending in this tracked report; their subsequent outcomes belong in the
[external revision-bound receipt](evidence/validation-location.md).

This is a targeted assessment of F-PERSIST-001/F-TRUST-001, not a whole-kernel
soundness verdict or a release. An additional pre-existing transport-refusal
reconstruction limitation remains open for separate contract assessment.

## Revision and evidence custody

| Anchor | Revision / qualification |
| --- | --- |
| Original018 branch | `22459889e982068722616edead4132283d6cb7e4` |
| Original main source | `5949cb111cd6c5af34b0fc9083e78810df450fce` |
| Immutable016 audit | [`b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md) |
| Selected017 dependency | `02ba1b715919c132d7304dbc22231dcddc2ba714`; [PR16](https://github.com/kallistoteles/behavior-ir-core/pull/16) remains a draft, not main-merged or represented as human-approved |
| Local018 integration / original runtime capture | `6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb` |
| Implementation evidence | Working-source/test digests and commands in [the execution ledger](evidence/execution-ledger.md), especially [integrated validation](evidence/runs/integrated/validation/run.json) |

The isolated checkout owns only Core018 changes. No main merge, Release, tag,
version bump or ecosystem pin change is performed. The implementation commit's
own SHA cannot appear inside this report without changing that SHA. Final
validation identifies it externally, with repository, tree, commands, statuses,
toolchain and retained log digests; a later different published SHA needs fresh
validation.

## Construction and semantic argument

1. [Core read preparation](../../crates/behavior-core/src/read.rs) strictly
   decodes raw evidence before information-losing object reduction. It retains
   the reference order: recorded profile, exact behavior, source admission, then
   request reconstruction. A raw `refused_request` stays a string. Preparation
   is not acceptance: full reproduction and comparison remain mandatory.
2. `ReadReplayProfile` has private fields and only the existing v1/v2 choices.
   Construction checks the supported module profile; execution rechecks the
   exact BehaviorHash and semantic profile. There is no unknown-to-fresh default.
   Both paths use the existing `run_version` evaluator. Historical v1 therefore
   does not gain v2 facts/diagnostics or a newly computed identity.
3. [Core invocation](../../crates/behavior-core/src/invocation.rs) keeps profile
   selection after envelope reconciliation, facts and typed resolution. It uses
   the resolved declared source, preserves first-difference order and leaves017
   archived/current decision handling intact. The checked read hook cannot
   evaluate an action.
4. [Store replay](../../crates/behavior-store/src/store.rs) selects the same
   recorded evaluator after retaining its required historical reconstruction.
   Evaluated paths establish actual Store lineage, exact StateId/history
   position, schema, typed values, incoming snapshot validity and required facts.
   Invocation reconciliation/metadata and full-envelope comparison remain.
   Refusal branches retain their existing applicable obligations. Standalone
   captured values are never substituted for Store authority.
5. Private `ExecutionMode` separates Fresh, ArchivedRead and Replay. Public
   `read`, `invoke` and `invoke_intent` hard-select Fresh. Both ordinary invocation
   replay and decode-evidence replay select a mode that cannot construct a commit
   bundle. The only bundle-producing invocation branch requires Fresh, head and
   ALLOW. Neither branch performs Backend mutation or external command dispatch.

The conditional reference argument is:

```text
Supported(p, module)
∧ StoreBindingsHold(store, recorded_position, evidence)
∧ CanonicalInputsAgree(captured_inputs, Store_derived_inputs)
⇒ ReplayStore_p(evidence) ≡ ReplayCore_p(evidence)
```

It applies separately to every supported profile/version combination. It does
not assert v1/v2 equivalence. Sharing the unchanged reference evaluator
establishes the computational part by construction when its semantic inputs
agree; boundary checks and whole-record comparison establish the scoped code
invariants. Tests supply additional empirical evidence, not a machine-checked
universal proof of Rust, cryptography or every Backend implementation.

Match/non-match, contractual differences, evidence and identities are observable.
Backend traces and hypothetical failures of omitted calls are excluded. Actually
performed Backend failures retain StoreError propagation; contracted evaluator
FactError handling remains unchanged, including ERROR/UNKNOWN_FACT for the
tested public action freshness failure. Malformed/ambiguous evidence retains
`matches: false` and a deterministic nonempty optional string `diff`, with no
new public reason grammar or guaranteed nested decoder path.

## Executed evidence

| Evidence | Attributable outcome |
| --- | --- |
| Three [baseline named regressions](evidence/runs/baseline/) | Each runs exactly one test and fails its final semantic assertion after legal controls; all before production corrections |
| [Integrated matrix suite](evidence/runs/integrated/matrix-only/run.json) | Core25/25 and Store31/31 pass, no ignored/filtered tests |
| [Matrix reconciliation](evidence/matrix-coverage.json) | Nine rows,24 supported cells;468 required triples,58 concrete refusal-boundary pairs and five declared auxiliary cells executed; no missing/unexpected cases |
| [Integrated validation](evidence/runs/integrated/validation/run.json) | Core9 and Store2 selected internal units pass; all selected preservation/conformance/017/command suites, canonical facade consumer, script regressions and full determinism gate pass |
| [Facade collection/execution](evidence/runs/facade-green/complete/run.json) | Seven018 tests collected and pass using only `behavior_engine`; all existing consumer targets also pass |
| [Determinism RED](evidence/runs/determinism-red/hook/run.json) / [GREEN](evidence/runs/determinism-green/protocol-and-runner/run.json) | Actual parent-hook assertion fails before hook addition;28 protocol/runner checks then pass, including intentional negative exits; actual four-case Store runner is checked twice |
| [Ordinary-action bundle RED](evidence/runs/us3-before/no-bundle-corrected-setup/run.json) | Fresh positive control constructs a bundle; replay incorrectly constructs one before correction |
| [Decode-evidence bundle RED](evidence/runs/us3-before/decode-document-no-bundle/run.json) / [two-probe GREEN](evidence/runs/us3-green/decode-document-no-bundle/run.json) | Genuine standalone document refusal matches Core but differs from actual Store inputs; both corrected replay routes construct zero bundles, fresh controls still construct one |
| [Migration collateral](evidence/runs/us3-collateral/preservation/run.json) | Default1000-transition migration and tamper properties pass; the existing ignored10000-transition stress test remains skipped |
| [Fixture custody](evidence/runs/us3-green/fixture-custody/run.json) | All260 retained data-file checksums match; original audit bytes/identities are unchanged |

Collection logs distinguish the new nonempty targets from empty library/doc-test
targets, which supply no evidence. Internal filtered counts mean unrelated units
were not selected, not that018 tests were skipped. No required matrix cell is
ignored or counted from N/A. Full frozen gates remain necessary.

The ledger retains unsuccessful setup/scaffold runs honestly: missing interfaces,
an effectless-action admission failure, an overstrict diagnostic-equality premise,
and an initially malformed runner test command are not semantic RED. Temporary
baseline capture overlays are retained as provenance and were removed before the
three genuine regressions. Historical v1 outputs came from the original evaluator,
not relabeled v2. See [fixture provenance](../../tests/fixtures/replay/018/README.md).
Property sampling remains bounded empirical evidence; default successful random
seeds were not emitted and no universal theorem is inferred from sample counts.

## Requirement assessment

| Requirement | Enforcing argument / execution evidence | Pre-freeze status |
| --- | --- | --- |
| FR-001 | Contract-derived nine-row/24-cell domain and complete reconciliation; no Cartesian support | Met within reviewed domain |
| FR-002 | Checked recorded selector in Store read/inner invocation; original v1/v2 fixtures | Established code invariant + tests |
| FR-003 | Unchanged profile evaluator and full comparison; original error/refusal/provenance/capture controls | Construction + empirical preservation |
| FR-004 | Strict preparation precedes Store reduction; named duplicate RED/GREEN | Established code invariant + tests |
| FR-005 | Root/nested/equal/escaped duplicates, numeric/unknown-field controls; frozen request/raw-string distinction | Established boundary invariant + tests |
| FR-006 | Unchanged codec/hash sources and260 byte checksums; formatting properties | Construction + empirical custody |
| FR-007 | Existing required Store reconstruction, actual typed facts and U08/U09 attacks | Established scoped invariant; Backend premises conditional |
| FR-008 | Fresh wrappers/replay modes, two zero-bundle probes, canonical before/after and committed command evidence | Established scoped invariant + tests |
| FR-009 | Performed head/entity/history/schema/freshness faults; existing StoreError/FactError categories | Established error paths + tests |
| FR-010 | Checked profile choices and U01–U07 refusal preservation | Established code invariant + tests |
| FR-011 | Three independent named semantic RED/GREENs; reviewed legal controls | Attributable test-first evidence |
| FR-012 |468 required triples/58 refusals/five auxiliary cells; explicit N/A/origin/capture limits | Reconciled empirical coverage |
| FR-013 | Consumer/determinism/conformance pre-freeze evidence; external exact-SHA policy | Final gates and exact-SHA receipt pending |
| FR-014 | Unchanged ReplayResult; consumer Rust/serialization assertions and deterministic nonempty diffs | Established API invariant + tests |
| FR-015 | Small internal correction; documented patch-class018 vs minor-class017; no public/version action | Met |
| FR-016 | Same-profile evaluator and paired assertions only with equivalent canonical inputs/Store obligations | Conditional construction argument + tests |

| Success criterion | Assessment |
| --- | --- |
| SC-001 | The three named defects reverse with passing legal controls. |
| SC-002 | Every required matrix/refusal case executes; no supported cell is missing. |
| SC-003 | Original260 retained data files/identities remain; fresh0.8 still emitsv2. |
| SC-004 | Coordinate attacks refuse; canonical history/versions/references/command evidence is unchanged; replay constructs zero bundles. |
| SC-005 | Pre-freeze integrated evidence passes. Frozen gates/exact-SHA consumer/receipt are pending. |
| SC-006 | Repeated malformed evidence gives nonempty deterministic string differences; performed operational errors remain distinct. |

## Proof-obligation assessment

| Obligation | Status and reason |
| --- | --- |
| P018-01 | Established by strict-before-lossy code invariant; duplicate RED/GREEN and boundary tests corroborate. |
| P018-02 | Established by checked private selector and module recheck; domain/refusal/substitution tests corroborate. |
| P018-03 | Same-profile reference computation preserved by construction; identity/capture/error preservation empirically covered. |
| P018-04 | Existing scoped reconstruction invariants retained; historical coordinates/typed facts tested; Backend coherence assumed. |
| P018-05 | Conditional reference equivalence by shared evaluator with equal inputs; supported paired matrix tests pass. |
| P018-06 | Fresh/archive separation established by private modes; consumer/export/fresh-output controls pass. |
| P018-07 | Existing envelope reconciliation and comparison retained; contradictions, metadata and decode refusals tested. |
| P018-08 | Existing result/error algebra retained; consumer/error/duplicate tests cover representative paths. |
| P018-09 | No replay mutation/dispatch by inspected calls; Fresh-only bundle guard covers both invocation routes; empirical snapshots/probes corroborate. |
| P018-10 | Domain and applicable strictness unchanged by construction; unsupported/raw-request/capture controls corroborate. |
| P018-11 |017 dependency explicit; archived/current decisions, commands, migration and refusal controls pass; final frozen gates pending. |
| P018-12 | Genuine test-first and reconciled pre-freeze evidence established; exact frozen delivery validation remains pending externally. |

## Targeted016 closure and remaining obligations

| Finding / obligation | Scoped assessment |
| --- | --- |
| F-PERSIST-001 | Concrete read-v1 and inner-invocation profile substitution corrected; both original identities reproduce against coherent Store inputs. Scoped implementation closure, final delivery validation pending. |
| F-TRUST-001 | Contradictory current raw keys now refuse before map reduction. Scoped implementation closure, final delivery validation pending. |
| O-TRUST-012 | Its precise duplicate-key boundary proposition is established by inspected code and corroborated by the named regression and expanded ambiguity corpus. |
| O-PERSIST-008 | RC-002 historical-profile and ambiguity subobligations discharged conditionally. Universal all-record/profile preservation remains unestablished, including the disclosed transport-refusal limit. |
| O-MODEL-013 | Scoped profile reproduction/read-only/no-dispatch arguments established under equal-input/Backend premises; all kernel record families and exhaustive field combinations remain outside this assessment. |
| O-IDENTITY-010 | Scoped ambiguity, identity/formatting and substitution cases established/corroborated; exhaustive semantically relevant field/profile tampering is not a universal proof supplied here. |

**Open follow-up: Store-origin raw transport refusals.** The named
`store_origin_transport_refusal_preserves_existing_reconstruction_limit` test
calls public `Store::read` with input `[]`. It records a real valid Store coordinate
and original refusal string but echoes the malformed section as `{}`. Standalone
replay matches; Store's existing typed-echo reconstruction does not.018 preserves
and discloses this behavior rather than retrospectively narrowing010's contract
or classifying the profile as unsupported. Its correction/classification/versioning
needs a separate contract assessment. This prevents closing the global replay
preservation propositions above.

Backend completeness/coherent immutable history/atomic durability and cryptographic
collision resistance remain external premises. Cache/index reconstruction does
not establish arbitrary host honesty. General verifier soundness, complete-child
validity, creation failure laws, admission-version metadata and silent-empty
canonicalization are not closed by018. Immutable016 evidence is not rewritten.

## Public and delivery effects

`behavior-engine`, Backend, ReplayResult, Wire IR, record formats, hash domains
and verifier versions remain unchanged. Doc-hidden checked integration hooks live
only between internal Core crates. Diagnostic guarantees remain Boolean plus
optional string, not a new structured result algebra. The example's JSONL case
envelope is test tooling, not a Behavior record profile.

018 alone is patch-class; the integrated017 dependency retains its minor-class
treatment. Release numbering and publication remain separate actions. Required
final gates and consumer validation run against the clean frozen commit with
pinned Nix tools; post-freeze task completion is recorded in the selected external
receipt without editing these reports. Any tracked change after freeze requires
a new candidate and fresh final validation.
