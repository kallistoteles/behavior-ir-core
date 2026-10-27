# Conditional reference-world correctness argument

Status: implemented L1–L8 argument (T037). This is reviewed mathematical reasoning,
not a machine-checked Rust theorem. Correspondence controls and actual premise mutations
are identified in evidence/mutations.md; final G2 regression is recorded separately.

## Domain and authority

Fix an admitted module M and semantic profile. S is an arbitrary finite, typed,
complete valid parent snapshot. Ordinary state bindings are coherent and distinct
under existing Core premises. State effects, creation freshness, expression definedness
and the execution prefix have their ordinary meanings. No finite SMT witness size is
a restriction on S. Genesis validity, backend completeness and extraction correspondence
remain explicit assumptions; migration and deployment induction are not established here.

For each declared reference class r:U→T, an edge is a triple (source type, source id,
field) plus its typed target. A present optional reference contributes an edge; None
does not. Ordinary Id fields contribute none. Enumerating all declared Ref fields is
L1; omitting even an unbound/unqueried type would invalidate the argument.

## L2–L4: partition and exact simultaneous delta

Let B_U be the set of distinct actual state-bound U rows. For every typed target t:

```text
N_r(t) = |{u∈U(S) : r_S(u) is present and equals t}|
K_r(t) = Σ b∈B_U [r_S(b) is present and equals t]
R_r(t) = |{u∈U(S)\B_U : r_S(u) is present and equals t}|
N_r(t) = K_r(t) + R_r(t), R_r(t) >= 0
```

The equality follows from disjoint finite-set partition. State bindings belong to the
actual live snapshot; read/input parameters do not become replacements. Typed source
identities prevent double-counting. R is mathematical cardinality, not a runtime
subtraction or an imposed i64 population bound.

Unbound rows cannot be assigned/removed by an ordinary action (L3). For S', discard all
old bound-source edges and add resulting fields of surviving bound sources plus created
sources. Removed sources add nothing. Creations are fresh and disjoint after the actual
lifecycle checks. Therefore, for each r and t, the resulting incoming edge set is the
disjoint union of residual unbound edges and actual bound/created child contributions
(L4). This is precisely the decomposition in Core `incoming_prime` and `complete_child`.

## L5–L6: query correspondence and child existence

A recognized total typed equality filter over U, capturing t in S, counts N_r(t).
Its existing parent summary may be related to K+R only with the same source field/type,
target capture, schema/module/profile and ordinary no-error premises. Other forms gain
no relationship by resemblance. In particular, optional unwraps need a separate totality
argument or conservative fallback. Checked Count conversion/error semantics remain intact;
private mathematical R need not be bounded by a runtime Count's representable range.

Existence in the complete child is ordinary `(exists_S OR actual fresh creation) AND
NOT actual removal`, under established identity/lifecycle premises (L6). Parent validity
already establishes every residual reference's source target. Thus a residual edge can
become invalid only if that target is actually removed.

It suffices to establish R_r(t)=0 for every removed target t and every incoming class r,
and child existence for every present reference of a surviving bound/created source.
By the exact partition/delta, these conditions imply all child references are valid.
Multiple fields/types, self references and cycles are covered by the same sets; no special
domain restriction or bound on unrelated entities is needed.

## L7: guarded no-failure lemma and actual sites

Let j be entry to complete-child checking. Prefix_j includes only established earlier
conditions and definedness, lifecycle/command processing and applicable postcondition
success. It excludes child-rule success, later globals and final integrity success.

Prove `Prefix_j ⇒ RefValid(S')` using the preceding sufficient conditions. A solver
UNSAT result may justify this conditional lemma only over a sound unrestricted summary
model. Additive cardinality relationships preserve C⊆A only because the finite-set
identities hold for every concrete S under the exact established premises.

Once proved, omitted unbound Ref checks cannot change any later prefix on a run reaching
j. Unchanged nonreference local rules separately use valid-parent/frame correspondence;
changed/created rules remain actual ordered sites. The conclusion must never be asserted
globally, leaked before j or used circularly to prove itself. If the lemma cannot be
discharged, affected later claims remain inconclusive unless their exact broader failure
prefix is independently represented.

The earlier complete-world reference family needs its own real preservation obligations,
not just the later Integrity check that may be unreachable. Each claim identifies the
actual action/reference class/scope; no invented action parameter substitutes for arbitrary
unbound subjects. Mandatory positive actions also require allowed concrete execution.

## L8: evidence identity and confirmation

All new relationships/sites bind exact M, full incoming schema, profile, captures,
effects, verifier/solver context and checked premises. Independent trusted inventory
enumeration must cover every required family. Current proof authority is separate from
archive interpretation; old reports or equal action text cannot supply new authority.

Witness slots only help construct a finite candidate. They never constrain proof queries.
A candidate model of a stronger auxiliary condition is not automatically a counterexample
to a particular actual site. Confirmation needs a complete valid parent, ordinary action
evaluation and exact first-failure phase/subject/reference. Failed confirmation or an
exhausted bounded search is inconclusive, never a proof or a confirmed counterexample.

## Remaining trusted boundaries

Core admission/runtime, typed extraction, summary/query correspondence, canonical site
mapping, solver, witness construction and backend completeness are trusted implementation
boundaries. Small-state enumeration, negative/mutation controls and reused formal-library
set theorems support review but do not verify those Rust components universally.

## Implemented prefix and finite correspondence controls

The concrete child-entry index is `ActionEncoding.reference_prefix`, saved after
all postconditions. Both the auxiliary conjunction and actual reference-world family
use `path(reference_prefix)`; no child/global/Integrity condition occurs in it.
The auxiliary result is a control flag (`references_proven`), never an unconditional
SMT assertion. Undischarged ordinary later checks remain `unproved_reference_prefix`.
A postcondition refusal can legitimately make that conditional family vacuous;
separate allowed-runtime controls are therefore mandatory. The ordinary error checker
still checks errors in partial guards/effects before that boundary.

`ref_removals_semantics.rs` independently enumerates 744 required-Ref cases through
actual Core plus 160 optional None/present cases. Its original-row oracle computes
guard eligibility and resulting edges independently of the SMT encoder. It checks
exact early refusal phases and does not mistake guard refusal for an invariant
counterexample. These finite tests do not establish universal quantification; the
unrestricted cardinality abstraction and L1–L8 correspondence argument supply that
separate mathematical claim. Z3 UNSAT is solver-checked, not Lean-kernel-checked;
no new proof assistant is introduced for this Core feature.


ActionHash identifies a body, not necessarily a unique public capability name.
Concrete reference inventory selection therefore matches both name and hash and
accounts for every reference-world result, including rejecting foreign scopes.
Removal diagnostic cache dependencies bind the public action name in addition
to exact module content; equal bodies cannot transfer one action's report/site
metadata to another action. No BehaviorHash or ActionHash algorithm is changed.
