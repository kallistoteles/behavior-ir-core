# Contract: execution and public compatibility

## Observable equality

For the same admitted module, request, exact history state and applicable Backend
contract, require:

`Obs(Execute_optimized(x)) = Obs(Execute_reference(x))`.

Obs includes decisions, refusals, typed evaluation errors and their normative order,
validation phases, state changes, commands, read/query/derived evidence, canonical
decision and transition records, hashes, commit outcomes and replay results. Compare
full canonical documents, not just final state or success flags.

Backend call parity, internal work counters and hypothetical I/O failures of omitted
calls are not semantic equality obligations. Actual performed operations preserve
their contracts. Do not turn a previously required corruption/integrity check into
an optional read without establishing its semantic obligation elsewhere.

## Validity argument

Model full snapshot validation as canonical row results followed by global results:

`V_M(S) = concat_k RowResult_M(k,S) ++ GlobalResults_M(S)`.

For an established valid exact parent, unchanged rows can be omitted only when their
complete result is preserved under the complete transition. Existing row-local and
no-removal reference arguments cover their declared domain. Unaffected global results
require complete proven dependency disjointness. The selected affected cardinality
rule requires exact typed membership, fresh disjoint creates and checked count semantics.

Prove these obligations for arbitrary finite states in the supported domain:

1. Complete action/effect/rule coverage and coherent simultaneous resulting state.
2. Unchanged row and unaffected global result preservation, including definedness.
3. Exact membership/count change for affected cardinality and reference-equivalent
   valid, violated and evaluation-error outcomes.
4. Exact rule trace, observations, derived values and canonical order reconstruction.
5. Correct exact-parent evidence consumption and post-CAS child publication.
6. Whole-workflow equality, including untrusted-record reproduction and fallback.

Snapshot validation accumulates failures; action execution has its own fail-fast and
skipped-rule semantics. A successful Boolean comparison alone proves neither trace
nor error equivalence. Invalid changed rows must not be hidden by a count shortcut.
Do not assume a later check or desired invariant to omit a current obligation.

## Core/Store interface boundary

Ordinary `evaluate`, replay and untrusted-bundle verification retain their contract.
Any new workspace-internal prepared-state interface must have opaque Core-owned
evidence with checked construction and exact semantic identity. Store supplies exact
history anchoring; callers cannot construct proof authority from JSON, bundle claims,
a count or a Boolean. Core derives child evidence from actual evaluated effects.

Commit rederivation reconstructs the request/effects and complete expected record
against the exact parent; it does not trust the bundle's proposed result or cached
approval. Evidence reuse may avoid duplicate checks, never independent rejection of
tampered bundles. Keep the consumer facade unchanged and test the public surface.

## Fallback and historical compatibility

Unsupported dependency/guard/query, removals, migration, missing evidence or incompatible
context selects existing reference execution. All previously executable modules remain
executable. Whole-module fallback is permitted for mixed unsupported globals, but cannot
satisfy the mandatory supported affected-creation acceptance case.

Preserve wire/record formats, hashing, behavior meaning, governance and historical
evidence. No new pre-CAS refusal is introduced solely to prepare reusable evidence.
No new mandatory Backend or host API is added. Optional acceleration is not required
for correctness. New caches are ephemeral; replay/open can reconstruct without them.

## Evidence classes

The design requires general mathematical arguments plus implementation correspondence,
independent full-state reconstruction tests, explicit semantic oracle cases and mutation
controls. The reference comparator shares Core's semantic evaluator; it is not an
independent proof of that evaluator. Feature 015 reasoning and this extension must be
labeled written conditional arguments unless actually machine-checked. Trusted components
include Core admission/evaluation/canonicalization, extraction/dependency analysis,
evidence reuse, publication and Backend completeness/atomicity.
