# US2 — Boundary and verifier correspondence evidence

Status: targeted runtime, verifier, metadata and command-workflow checkpoint verified. Full repository delivery gates remain pending.

## Reviewed RED barrier

Before US2 production edits, root reviewed assertions and actual compiled runs:

| Target | Executed | Passing controls | Intended failures |
| --- | ---: | ---: | ---: |
| Core resulting_state_boundaries | 8 | 4 | 4 |
| Store resulting_state_boundaries | 10 | 8 | 2 |
| Verifier order/governance | 13 | 4 | 9 |
| Public facade resulting_state_validity | 8 | 4 | 4 |

All selected targets had zero ignored or filtered tests. The canonical consumer script
also actually executed its first existing capabilities target (7 passing, 3 failures).
Those partial-input/conformance harness failures are recorded separately from the
new facade regressions. A supplemental facade-only run selected all eight new tests
using the canonical consumer build directory and unchanged dependency metadata.

Evidence: [profiles summary](runs/US2/profiles/summary.md),
[Store summary](runs/US2/store/summary.md), and
[verifier RED](runs/US2/verifier/).
Compilation errors, a mistaken initial command expectation, linker SIGBUS and
ENOSPC are excluded from semantic RED. Retained logs identify these attempts.
The successful retries disabled incremental caches and debug symbols only;
default debug assertions and overflow checks stayed enabled. No source,
dependency, gate or execution scenario was bypassed.

## Runtime correspondence established so far

| Guarantee | Implementation / evidence | Limit |
| --- | --- | --- |
| Complete child validity and canonical failure selection | Current evaluation uses complete_child and run_complete_child_rules; US1 and current boundary tests | Reference path performs O(n) semantic work |
| Parent facts describe S, child observations describe SPrime | observe_parent_fields retains raw immutable parent values; typed child descriptors encode resulting values | New rows have no fabricated parent fields |
| Unbound entity observations survive nested derived scopes | Rule frame reads are routed by typed entity identity before frame pop | No invented action parameter enters ObservedReads |
| Actual bound observations remain action reads | Child rules map back to the real action binding | Store read_set uses actual loaded versions |
| Query-derived phase reflects resulting-state evaluation | Current matches_value propagates SPrime; nested candidate frames retain typed parent facts | Archived action/read evaluation retains its previous phase rules |
| Bundle conversion/rederivation preserves typed facts | Existing facts_json and rederive use the corrected shared Observed.facts | No additional Store implementation is needed for this routing correction |
| Forged/stale evidence cannot establish a new commit | Store boundary controls rehash/substitute candidate, facts, parent, schema and history | Exact head/CAS and atomic backend contract remain mandatory |
| Refusals do not pretend to evaluate the body | Incomplete/contradictory snapshots and selector-injection controls have empty body trace | Reconstructible refusal evidence is required |
| Actual provider failures retain their routes | Query/mandatory field capture refuses input; used lookup fails as UNKNOWN_FACT; optional entity lookup falls back to fields | Hypothetical failures in eliminated redundant calls are outside semantic equivalence |

## Actual runtime GREEN

[runtime-green/run.json](runs/US2/runtime-green/run.json) records the commands,
source/test digests and real outputs. Core boundaries 8, order 6, profiles 11,
properties 9 and validity 14 all passed. Store boundaries 10 and validity 7 all
passed. Zero tests were ignored or filtered in those selected targets.
This is targeted runtime evidence, not full repository/consumer GREEN.

## Current verifier correspondence and limits

| Runtime obligation | Current symbolic treatment / evidence | Status |
| --- | --- | --- |
| Postconditions precede resulting-state obligations | Existing prefixes retained; postcondition-refusal test excludes later child error | Established by code invariant and tests |
| Entity-first child order, invariant then constraint | ActionEncoding::build sorts semantic types and per-row declarations; earlier-A error is SAT and confirmed before later-Z invariant | Supported distinct-type schedule |
| Decoded identities order same-type failing rows | Existing identity model represents equality, not semantic byte order | Explicit INCONCLUSIVE when multiple same-type child rows have obligations |
| Unchanged row obligations cannot be assumed away if world-dependent | Closed row_local_rule recursively traverses derived definitions; nonlocal/unknown dependencies refuse encoding | Explicit INCONCLUSIVE, not a universal validity proof |
| Historical reference truth survives only without target removals | Synthesized changed/new refs remain encoded; removal of a referenced type refuses incomplete-world model | Explicit INCONCLUSIVE for the unsupported removal scope |
| Bounded query/module-invariant evidence | Existing bounds/encoding retained; generated finite parent must pass full current runtime confirmation | Original bounded controls remain supported |
| Counterexamples use complete canonical semantic inputs | request_parts includes every declared type and bound values, including empty types; inconsistent finite models are not accepted | Both language profiles tested |
| Evaluation failure identity is semantic | Current checks.rs selects SemanticError for both profiles; confirm matches exact node/code | Diagnostic text is not a proof site |
| Current proof provenance is separate from archives | VERIFIER_VERSION 0.9.0; old0.7/0.8 envelopes decode but cannot satisfy current-subject eligibility | Authentic immutable0.8 receipt independently captured and refused for current eligibility |
| Non-command current governance evidence is strict | Version-first DecisionRecord decoder, including record0.8 without command markers | Rehashed malformed current candidates refused |
| Policy adoption is explicit | Separately named0.9 execution/evidence policies with independently computed identities | Old policies/stores unchanged; fresh0.9 proof under old policy receives existing refusal |

The scope guard does not change admission, runtime semantics or Backend APIs.
Unsupported proof claims are blocking INCONCLUSIVE, not PROVEN and not a
reproduced soundness defect. No legal false PROVEN case is claimed by017.
Same-type rows with no child obligations remain within the supported model.
Tests are empirical evidence; the finite SMT model is not a complete world model.

## Integrated targeted GREEN

- Original new verifier targets: order9 and governance4 pass with zero ignored/filtered.
- Three additional post-implementation controls also pass: nested local derived
  obligations in both language profiles, same-type rows without child obligations,
  and a nested world-dependent derived obligation returning INCONCLUSIVE. These
  are supplemental GREEN evidence, not retrospective test-first RED.
- Adapted current-profile verifier controls: errors_and_posts4, lifecycle2,
  preservation4, queries4, soundness_regressions9 all pass. Their historical
  fixture bytes/outcome tables remain unchanged; exact named current scope
  expectations replace unsupported fresh claims, with no generic acceptance.
- Existing format metadata: versions1 passes; records reports0.4–0.8 from the
  implementing constants. Wire/read values and method fields/signatures stay unchanged.
- Public facade: resulting_state_validity8 passes in
  [facade-green](runs/US2/facade-green/run.json).
- T034 command workflows: command_demo4, command_verification2,
  durable_commands2 and facade8 pass; the script suite also passes exact0.9
  selection, actual authorization-error refusal and no subsequent commit/delivery.
  See [commands](runs/US2/commands/). Real candidate CLI proof/authorization,
  durable commit/stream/process recovery and unchanged existing0.8 store controls ran.
- [Public surface check](runs/US2/public-surface/run.json) passes without changing
  api/engine-surface.txt or Backend signatures.

Verifier run evidence: [current-09](runs/US2/verifier/current-09/README.md).
The initial direct Legacy witness assertion still expected the old message
contract; it was corrected to current semantic code/node and is not relabeled
as a new RED test. The separate earlier-error verify regression had actually
failed before the checks.rs correction. A governance test initially expected
DENY where the existing contract returns REFUSE/proof_not_accepted; the correct
refusal assertion is recorded without changing production governance semantics.
A candidate test initially looked for a nonexistent direct policy field; its
corrected lineage assertions use canonical store/genesis identity and separately
check actual policy bytes. These seed mistakes are excluded from semantic RED.

This checkpoint is not full canonical consumer/repository GREEN. Compatibility,
cache reuse, historical replay and final exact-revision delivery checks follow.
