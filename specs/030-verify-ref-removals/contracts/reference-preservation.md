# Contract: complete-world reference preservation

## 1. Semantic authority and scope

Core's admitted module and complete resulting-state execution define the property.
For a valid finite parent S, ordinary effects produce one simultaneous child S'.
The verifier must cover every declared present Ref field and every potentially
relevant source, not only the action bindings or finite witness slots.

Keep ordinary typed identities, alias/freshness rules, optional absence, source
validity, definedness and normative failure ordering. No runtime guard, operation,
reference declaration, state storage or replay change is authorized.

## 2. Partition and exact effect law

For each reference class r:U→T and typed target t, define:

```text
N_r(S,t) = number of live U rows whose present r references t
B_U      = distinct actual State-bound U rows
K_r(S,t) = sum over b in B_U of [present r_S(b) = t]
R_r(S,t) = N_r(S,t) - K_r(S,t) >= 0
```

This partitions source membership; it does not assume all referrers are bound.
Read/input entity parameters do not automatically belong to B_U. Optional None has
no outgoing edge. The exact resulting incoming set is the union of:

1. Unchanged unbound incoming edges, excluding replaced/removed sources.
2. All present resulting references of surviving state-bound sources.
3. All present references of created sources.

Use actual admitted effects, including simultaneous changes and every incoming class.
Removed sources contribute no child edges. Surviving self/cycle edges follow the same
law. Target existence is `(parent exists OR actual fresh create) AND NOT actual remove`,
subject to ordinary lifecycle checks; typed equal-looking IDs are not interchangeable.

Required correspondence lemmas:

- **L1 Inventory:** complete declared incoming field/type coverage.
- **L2 Partition:** exact N=K+R with distinct actual state identities and R≥0.
- **L3 Frame:** unbound surviving rows keep their fields.
- **L4 Delta:** actual bound/create/remove contributions equal Core `incoming_prime`.
- **L5 Query bridge:** recognized parent membership/captures and presence tests match
  the reference class, under original definedness/Count-conversion premises.
- **L6 Child existence:** all surviving present changed/created refs use the complete child.
- **L7 Prefix:** complete Ref validity follows from actual earlier conditions and effects.
- **L8 Site/identity:** every relevant actual obligation is bound to the same exact context.

These are arbitrary-finite-state arguments requiring review against the Rust mapping.
Finite differential tests do not prove L1–L8 universally.

## 3. Safe use of a stronger auxiliary lemma

Let j be entry to complete-child validation, after effect/lifecycle/command processing
and postconditions. Let Prefix_j contain precisely established earlier reachability and
definedness. Establish `Prefix_j ⇒ RefValid(S')` without assuming any child reference
check, later global check or final integrity success.

Only discharged implications may simplify later proof prefixes, and only under their
actual Prefix_j guard. Unchanged local nonreference rules separately need the existing
valid-parent/frame justification. Ordinary changed/created constraints and invariants
remain in their actual order. Never inject the conclusion as a global source axiom.

Where exact broader failure ordering cannot be justified, retain conservative
inconclusive results. The blanket removal refusal is lifted only for contexts with
the replacement obligations and complete coverage established by this contract.

## 4. Required public claims

Produce nonempty relevant complete-world reference preservation checks covering actual
early synthesized Ref failures. Identify action, reference class/constraint, scope,
premises and exact module/profile. Existing selected checks retain their meanings.
Use the existing canonical semantic-site machinery; do not invent a bound action
parameter for an arbitrary unbound row. Independently derive the same required inventory
for trusted manifests.

The old later integrity check may be implied after child checks. Its vacuous proof
alone is not acceptance. An auxiliary lemma is not a substitute public claim. Every
mandatory positive also needs a real allowed execution; dead-action proof does not pass.

## 5. Mandatory supported patterns

| Pattern | Sufficient authored conditions and actual effects |
|---|---|
| Free target removal | Required `not referenced(old.id)`; remove old; no surviving newly introduced reference into the removed set. |
| Joint holder/target removal | Holder references old; incoming count for its field at old equals its distinct known contribution; every other incoming class excludes residual refs; remove holder and old. |
| Retarget and remove | Same complete incoming exclusions; distinct existing new target; holder's resulting field references new; remove old. |

Principal mixed examples use total required-Ref equality filters over typed selects.
They allow arbitrary unrelated rows and must account for all incoming fields/types.
Guards that explicitly exclude the distinct bound source set are another supported
form only when their typed query correspondence is established. Whole-type cardinality
bounds may be controls but cannot be the sole mixed acceptance evidence.

Optional edge presence is always represented. Optional filtered-query syntax beyond
the totality recognizer requires a separately justified law or remains inconclusive.
Computed partial guards, nonlocal row-rule dependencies and existing unsupported
same-type child scheduling are not silently approximated into proof support.

## 6. Failure and witness semantics

Unsupported structure, missing correspondence, resource exhaustion and solver unknown
produce no proof authority. A satisfiable sufficient auxiliary goal is only a candidate
for investigation. Any counterexample claim must have a complete coherent finite
snapshot and reproduce the exact actual selected failure under Core.

In particular, expect actual early `constraint_post` / `CONSTRAINT_VIOLATED` reference
failures where appropriate, rather than forcing later `DANGLING_REFERENCE`. Multiple
errors, partial expressions and earlier refusals keep their real reachability. Failed
confirmation or exhausted bounded search is not proof of safety.

## 7. Trust and compatibility

The conditional argument relies on Core admission/evaluation, extraction/SMT/site
correspondence, solver correctness, concrete witness construction and complete backend
snapshots. It does not prove genesis, migration preservation, host authorization or
whole-system safety. Safety Model contracts stay separate. Runtime identities and
historical bytes remain unchanged; new verification identities follow the
[evidence contract](evidence-compatibility.md).
