# Contract: validation and acceptance

## Evidence classes

Keep four claims separate: reviewed arbitrary-finite-state correspondence argument,
solver proofs for exact concrete modules, independent runtime/differential tests, and
operational measurements. None silently proves the others. No implementation verification
or general relational completeness is claimed.

## Baseline and fixtures

Port the smallest neutral Target/Holder inputs and preserve source/version/digest
provenance. Baseline is Core 0.15.0 / verifier 0.10.0; capture the exact admitted module,
profile, solver, report and diagnostic. Id/no-referrer variants with zero checks are
controls only. Include an unrelated actual proved preservation control.

Before production changes, run nonempty failing tests requiring the three new positive
patterns; record that baseline support fails because of encoding refusal. Preserve
allowed/refused Core behavior and replay. Capture genuine signed nonempty 0.10 action
and migration histories before the version bump.

## Required acceptance matrix

| Family | Independent expected result |
|---|---|
| Required guarded free removal | Actual relevant checks all proved; a free target can be removed; an existing source ref still prevents removal. |
| Guarded joint removal | Complete-world obligations proved; holder and target removal allowed; extra unrelated holders do not impose a population cap. |
| Guarded retarget/removal | Obligations proved; new target exists; old removal allowed; resulting holder and replay agree with Core. |
| Incomplete/wrong/OR-weakened guards | No false proof; missing exclusion must remain observable. |
| Extra unbound source, other type or second field | Relevant class cannot disappear from inventory or cached dependency; unsafe transition is refused by Core. |
| Same-action create/retarget into removed target | Actual resulting reference failure cannot be certified safe. |
| Optional None / present Ref | None adds no edge; present fields keep target existence. Unsupported query syntax remains truthful. |
| Self/cycles, aliases, duplicate/fresh IDs | Actual complete effects and existing integrity/lifecycle contracts; supported outcomes or explicit inconclusive scope. |
| Earlier partial/error/false rule or postcondition | Actual first-failure phase and reachability; later proof success does not hide the earlier failure. |
| Wrong profile/context/capture/schema | No summary, proof or cache authority crosses contexts. |
| Unknown/timeout/bounded-witness exhaustion | Inconclusive, never proof from failed confirmation or missing finite witnesses. |
| Empty checks / unreachable later integrity | Cannot substitute for mandatory nonempty early-reference coverage and allowed execution. |
| Renaming/declaration order | Required positive proof outcomes remain; identities bind each exact subject. |
| Archive/current evidence | Genuine 0.10 replay/recovery preserved; fresh reuse denied; 0.11 trusted inventory complete. |

Principal mixed fixtures use incoming-field filtered counts, not a whole-type cardinality
cap. Test at several unrelated population sizes and review the unbounded partition argument.
These sizes support correspondence rather than define the proof domain. Include both
admitted 0.7/0.8 profiles where applicable; preserve their exact capture/target resolution.

## Independent negative and mutation controls

Enumerate small typed states and supported effect configurations independently of the
encoder's summary builder. Apply actual Core transitions, inspect the original reference
property and compare with proof decisions. Each test family includes safe and unsafe
controls, with complete coherent snapshots and independent expected outcomes.

Temporarily break essential production premises one at a time: omit an incoming class,
drop a bound/create/retarget contribution, disconnect target capture/context, assume a
later success too early, omit a trusted site, or admit stale proof dependencies. The
corresponding control must run nonempty and fail behaviorally; compilation failure and
empty filters are not evidence. Restore exact source and rerun focused controls.

Counterexamples must be confirmed against Core with exact site/subject/reason and full
facts. A candidate to a stronger sufficient lemma may fail to correspond to the selected
runtime failure; classify it inconclusive instead of issuing a counterexample or proof.

## Resource and determinism record

Use the existing default profile: rlimit 20,000,000 and 60,000ms operational guard at
the existing solver-call scope. Record every mandatory fixture's source/module identity,
solver/profile/version, actual query counts, per-call status/resources/timeouts and
complete invocation time/memory. Do not mistake the per-call guard for a pre-existing
whole-process budget. Report totals; propose any necessary budget change explicitly
before final candidate evaluation. An encoding omission cannot be fixed by more time.

Repeat required positive verifications at least twice to check deterministic semantic
reports, obligation inventory and cache/no-cache parity; timings are nonsemantic. No
new general performance benchmark program or external production integration is needed.

## Completion gates

All are conjunctive:

1. G0 baseline and genuine historical artifacts retained; positive tests demonstrably red.
2. L1–L8 reviewed and mapped to actual code, with explicit TCB; three mandatory patterns
   have actual nonempty relevant proofs plus allowed Core executions.
3. Complete negative/order/mutation/unsupported matrix passes without a false proof.
4. Fresh/archival identity and independent trusted coverage tests pass; old artifacts and
   runtime identities/records remain unchanged.
5. Existing `scripts/gates.sh` passes, and default-budget measurements, limitations and
   FR-001–019 / SC-001–007 / all 11 story scenarios have precise evidence references.

Use existing release checks at release time. Do not publish tags or modify dependencies,
runtime semantics or separate Feature 029/unique(Option) work to obtain green results.
