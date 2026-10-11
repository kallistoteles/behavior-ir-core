# Clarified decisions: Strict and Profile-Preserving Store Replay

**Status**: Clarification, planning, task generation and analysis complete,
2026-10-11. The user confirmed option A for D018-01 and D018-02 and approved the
sharpened A1/U1 corrections below. Planning selects D018-03 A; no implementation,
runtime validation or release has been performed.

See the [common discussion overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)
and [targeted re-audit](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md).

## Confirmed starting requirements

The immutable [016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md)
reproduce F-PERSIST-001 and F-TRUST-001 on v0.12.1. Profile substitution and
lossy duplicate reduction contradict existing contracts. Correction preserves
historical bytes, exact Store/history/schema/behavior obligations, fresh emission
and read-only replay; no authenticated forgery or whole-engine defect is inferred.
E-PERSIST-004's two historical failures and E-TRUST-002's duplicate failure have
passing legal controls. They are historical evidence, not future test-first proof.

## D018-01 — public document refusal (confirmed A; FR-014)

**Question**: Preserve existing replay match/mismatch and backend-error surfaces,
or specify a versioned distinction for document refusal?

The existing Store read replay contract treats record differences and invalid JSON
as replay mismatches; backend failures are errors. Changing this presentation is
not required to remove either demonstrated defect.

| Option | Proposed decision | Consequences |
| --- | --- | --- |
| A (confirmed) | Preserve existing result/error surfaces; required document refusal is a nonmatching replay result. | Consumer handling and backend-error distinction remain. Deterministic reason information uses the existing string surface. |
| B | Specify a separately versioned document-refusal result before delivery. | Public contract/versioning and consumer migration scope grows; refusal remains distinct from operational failure. The supported boundary cannot retain the acceptance hole. |

**Accepted decision**: Preserve `ReplayResult(matches, diff)` and the existing
backend-error contract. Malformed or ambiguous evidence cannot establish the
recorded claim and returns `matches: false` with a deterministic reason. A
required backend operation that fails retains its operational error behavior.
Valid supported historical evidence is decoded and replayed under its recorded
profile; the current fresh-emission profile cannot make it malformed.

**Diagnostic compatibility**: The current Rust result has `diff: Option<String>`
and serialized `diff` is a string (`crates/behavior-core/src/record.rs:166–187`).
The user's preference for structured reasons applies where compatible with this
surface: internal structured reasons may be rendered into the existing string.
018 adds no public object-valued `diff`, result variant or new fields. The plan
must identify stable reason information and its limits without inventing a
structured diagnostic API or claiming an exact JSON path when unavailable.

**Principle**: Replay refusal is a reason for non-equivalence, not a third
semantic outcome. Exact release/version classification remains a planning
obligation under FR-015.

## D018-02 — supported profiles (confirmed A; FR-001/010/011/012/016)

| Option | Scope | Consequences |
| --- | --- | --- |
| A (confirmed) | Complete documented supported read-v1/read-v2 combinations and supported invocation records whose outcome is a read. | A contract-derived support matrix establishes compatibility preservation across the supported domain, retaining published historical limits. |
| B | Exact Wire 0.8 historical-v1 and current-v2 reproductions only. | Smaller evidence set, but other supported combinations remain unassessed; cannot claim all-profile correction. |

**Accepted decision**: Build an explicit support matrix from existing
version/profile contracts. Include module/Wire version, read profile, applicable
invocation profile, support at standalone Core and Store boundaries, expected
interpretation or refusal, contract source and historical limitations. This is
the documented compatibility domain, not every possible Cartesian combination.

For each supported row, preserve canonical-valid records and applicable
malformed/ambiguous or historical refusal behavior. Compare Core and Store
match/non-match, recorded semantics, contractually defined semantic diff/evidence
and record/hash identity under the same canonical semantic inputs. Store's
additional exact coordinates, schema, behavior and integrity obligations remain
mandatory; a standalone match cannot discharge them. Operational backend
failures remain outside this semantic comparison.

Previously unsupported combinations retain their documented refusal even if a
shared decoder can parse them. Existing historical limits remain explicit; no
profile support is added and no unrelated legacy strictness is tightened.

Keep the audit counterexamples as separate named regressions:

- F-PERSIST-001 historical read-v1.
- F-PERSIST-001 read-v1 inside invocation.
- F-TRUST-001 ambiguous current read-v2.

**Principle**: A compatibility fix must establish preservation over the supported
compatibility domain, not merely eliminate the known counterexamples.

## D018-03 — internal sharing (A selected by plan)

| Option | Candidate direction | Consequences |
| --- | --- | --- |
| A (selected by plan) | Factor existing strict replay preparation and checked recorded-profile execution while retaining Store reconstruction. | Removes duplicated profile decisions without replacing Store obligations or importing current typed-codec rules into legacy replay. |
| B | Correct the two Store wrappers separately with the same contract established by profile/differential evidence. | May be smaller locally, but retains duplication and divergence risk; no weaker correctness permitted. |

The [plan](plan.md) selects shared preparation and a checked internal read profile
inside existing crates, with narrowly scoped cross-crate integration hooks absent
from the public facade. It preserves the existing replay comparison order rather
than using `ReadRecord::from_json` as an eager universal preflight. Store continues
to reconstruct historical bindings/schema/facts independently. No new crate,
dependency, format or general replay engine is required.

## Compatibility and sequencing

- Newly refused malformed inputs and restored historical matches must be visible
  to consumers. This draft assigns no release number or publication action.
- Preserve original hashes and bytes. Sharing cannot mean retroactively applying
  today's strictness to every legacy format or filling in missing old evidence.
- Standalone replay agreement cannot replace Store binding/trust obligations.
  Operations may be omitted only if their mandatory obligations remain discharged.
- RC-001 complete-child validity and RC-003 initial Store creation outcomes remain
  separate. A replay match is not independent proof that a transition was valid.

018 alone is patch-class under existing versioning policy. Any combined release
with017 retains017's independently justified minor classification. Implementation
must use an explicit integration base and preserve017's archived decision replay;
the planning checkout has not been rebased or merged.

## D018-04 — same-profile reference equivalence (approved A1 correction)

Inspect and document observational equivalence with the reference evaluator under
the same recorded profile, separately for every supported profile/version
combination. Equivalence between read-v1 and read-v2 is neither required nor
implied; each profile retains its historical semantics and evidence contract.
The requirement is `Replay_p(x) ≡ Reference_p(x)`, not equality across profiles.
T016, FR-016 and the proof/matrix documents use this interpretation explicitly.

## D018-05 — frozen revision and external receipt (approved U1 correction)

Tracked reports identify tested source revisions known during their production
and supporting evidence locations. They MUST NOT attempt to embed the final SHA
of the commit containing them. Finalize and commit implementation, fixtures,
reports and task bookkeeping, then freeze the candidate and run final gates and
exact-revision consumer validation against it.

Bind repository, exact SHA, commands, exit statuses, environment/toolchain
identity and log/evidence locations in revision-bound CI or an external immutable
receipt without modifying the frozen checkout. Keep final validation pending in
the tracked pre-freeze snapshot and record subsequent completion in that receipt;
see [the validation guide](quickstart.md#4-run-canonical-gates-and-exact-revision-consumer-validation).
Any later tracked change creates a new candidate requiring fresh validation.

The candidate receipt does not attest a later merge, squash, rebase or release
commit with a different SHA. The published revision needs its own final validation
where exact-revision assurance is required, even if the source trees agree.
No merge, tag, publication or pin update is authorized by this correction.

**Principle**: Evidence binds an immutable revision; the final validation receipt
does not become part of the revision it identifies.

**Recommended next phase**: `/speckit-implement`. The approved A1/U1 document
corrections resolve the two non-blocking analysis findings; task generation and
document review produced no implementation code, runtime evidence or release.
