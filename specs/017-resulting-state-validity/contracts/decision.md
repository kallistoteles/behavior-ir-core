# Contract: Corrected Ordinary Action Decisions

**Profile**: `behavior.complete_resulting_state.v1`
**Evidence version**: decision record `0.8` (planned)
**Authority**: [spec.md](../spec.md), accepted D-017-001/002;
[compatibility matrix](profiles.md).

This contract completes existing validity obligations. It adds no action syntax,
Wire form, public validator/certificate API or backend capability.

## Inputs and reference result

For the same complete canonical state, exact schema/behavior/data version,
invocation input/context and required current/history facts, fresh action
computation uses the existing action evaluator. A complete typed parent snapshot
is mandatory, including declared empty types. Missing or contradictory snapshot
facts are explicit failures, never permission to assume a smaller state.

After the existing pre-state/binding/precondition/effect/command evaluation stages,
apply all value/lifecycle effects as one candidate. Postconditions run before
resulting-state entity checks. Unrelated command guards/payloads and lifecycle
checks are not moved to a new position by this correction.

The child entity checks traverse:

1. Canonical semantic entity type and identity.
2. Invariants within that entity.
3. Constraints within that entity, including synthesized Ref constraints.
4. Within each category, the semantic declaration key from data-model.md.

The first false/erroring obligation determines the observable child outcome.
After successful entity checks, remaining global and reference/lifecycle
obligations retain their applicable stages. Reference evaluation checks every
required global; a stability optimization needs independent sound evidence of
unchanged truth. Unknown dependencies mean affected.

## Outcome and precedence

| Reached circumstance | Fresh outcome | Evidence / commitment |
| --- | --- | --- |
| Earlier false postcondition | Existing DENY/postcondition reason | Later child failure cannot displace it; no bundle or commit |
| First false child invariant | DENY / INVARIANT_VIOLATED | Exact canonical entity/declaration witness |
| First false child constraint | DENY / CONSTRAINT_VIOLATED | Exact canonical entity/declaration witness |
| First child expression errors | Existing ERROR/evaluation reason | Preserve node/operand facts; not a false predicate |
| Complete child and all remaining checks hold | ALLOW | Current-profile evidence; candidate may still fail authorization/CAS |
| Malformed/incomplete supplied snapshot | Existing input/snapshot refusal route | Failed input evidence, no fabricated body execution |
| Actually performed provider/backend operation fails | Its applicable existing snapshot/fact/Store route | Operational provenance; no validity established |
| Invalid complete parent | Existing invalid-parent/snapshot route | No transition repairing that parent implicitly |

There is no global priority of ERROR over DENY or the reverse. An earlier entity's
false constraint wins over a later entity's invariant error. Within one entity,
an invariant error wins over a later false constraint.

Synthesized Ref failures participate in the canonical constraint category.
Consequently, a newly reached unchanged-row Ref failure can yield
CONSTRAINT_VIOLATED before the existing later removal-integrity guard would yield
DANGLING_REFERENCE. This is an explicitly versioned coverage/first-failure
consequence, not a moved removal stage. Historical records retain their original
selection. Positive simultaneous retarget/remove cases must remain valid; no
removal fast path or new reference meaning is introduced.

## Required semantic evidence

Record 0.8 binds its Behavior version, action identity, data version, input/context,
complete canonical parent facts.universe, reached facts/trace/derived results,
changes/lifecycle and command bag as applicable. Every child-validity trace step
has typed subject `{entity,id}` and semantic obligation descriptor. Declared
sources identify binding name/hash; synthesized sources identify entity
declaration/reference field/hash, with kind/variant explicit. The first failed
step is the unique witness. A body hash alone or formatted entity label is
insufficient. Old 0.7 stripping/trace shapes do not define new 0.8 witness evidence.

Unbound entity-field observations use typed identity/field and phase; they cannot
be dropped by an empty action-parameter mapping. Parent facts and SPrime-derived
values remain distinct. Store bundle conversion must preserve these observations
and their exact snapshot/history consistency without fake action bindings.
History-sensitive used facts remain explicit. Source diagnostics are not
scheduling keys.

Full evaluation and snapshot/cache-backed evaluation at this same profile must
produce identical required semantic result and record identity. First delivery
computes the complete reference schedule; any later skip must preserve canonical
witness and required trace/derived evidence, not merely the ALLOW bit.

Pre-evaluation refusal must retain reconstructible failed inputs/capture evidence;
new conditional refused_request evidence preserves original text when ordinary
fields lose the refusal cause. It must not be treated as successful body input.
Record validation checks the result/evidence-shape pairing. Genuine operational
capture failures do not become replayable semantic assertions by inserting empty
universes or fabricating backend answers.

## Semantic equivalence boundary

Compare semantic outcomes, deltas, command multiplicity, required observations,
validity and defined records/identities for the same profile and inputs. Backend
call counts/order, cache misses and hypothetical failures of omitted redundant
operations are outside equivalence. Errors of actually performed operations
retain the existing applicable route.

An operation may be eliminated only when its semantic, integrity or trust
obligation is established equivalently. Exact snapshot/history/schema, freshness,
resulting references, authorization, CAS and atomicity remain mandatory.

## Coverage constraints

Entity constraints/invariants may use admitted nonlocal exists/referenced and
transitive derived dependencies. Queries/aggregates are currently admitted at
applicable action/global scopes, not entity rule scope. Tests follow admission;
017 does not broaden the language to construct extra cases.

All creates, updates and removals use the simultaneous child. Removed rows have
no child rules; unchanged surviving rows remain in the obligation domain. A valid
no-op, empty store/type and valid command-only transition are positive controls.
