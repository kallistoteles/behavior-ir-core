# Contract: Supported Count-Summary Congruence

This is a verifier-internal contract, not a new Behavior IR operator or public query identity. It implements [FR-001–FR-010 and FR-017–FR-018](../spec.md) within the supported domain selected in [research](../research.md).

## 1. Authoritative objects and observations

Fix an admitted interpretation kappa, one semantic parent coordinate S, and established check premises Gamma. For a membership source D and capture values gamma, let:

\[
M_\kappa(D,S,\gamma)=\{e\in U_{\kappa,T}(S)\mid D(e,\gamma)\},
\qquad N_\kappa(D,S,\gamma)=|M_\kappa(D,S,\gamma)|.
\]

The existing typed-identity contract makes this a set: aliases do not add members. A child count uses the parent membership at the child's capture values, plus the existing exact relevant delta. Neither a count symbol nor its provenance defines runtime truth.

## 2. Recognized sufficient relation

A private descriptor retains typed query/set structure and ordered filters. It applies only these membership laws:

\[
M(Where(q,p),S,\gamma)=M(q,S,\gamma)\cap\{e\mid p(e,\gamma)\},
\]

\[
M((q,\text{positive Any predicate }p),S,\gamma)=M(Where(q,p),S,\gamma),
\qquad M(Where(q,true),S,\gamma)=M(q,S,\gamma).
\]

These are membership descriptions, not runtime rewrites between short-circuit Any and Count. They apply only with the parent-definedness premise below. Preserve candidate type/fields, base/set operations, expression operators/types/literals and filter order. No commutation, arbitrary logical equivalence, domain substitution or projection/operator substitution is inferred.

Primitive non-candidate reads become typed capture ports per occurrence. Two templates match only if their remaining structure and full identities match. Pair corresponding port values using Core type equality and semantic Term equality; equal SMT sorts are insufficient. For optional values:

\[
Eq((s_1,v_1),(s_2,v_2))=(s_1=s_2)\land(s_1\Rightarrow v_1=v_2).
\]

Port spelling is irrelevant. Repeated reads retain their positions, supporting different alias patterns under pointwise equality. No public QueryDefinitionHash, QueryInstanceHash or item hash changes.

The initial source pair families are Count/Any and Count/Count. Record the original Any predicate before `narrow_of`, including when that routine selects `Narrow::Eq`. Existing All/NotPred and uniqueness-generated synthetic instances retain their current behavior. This sufficient relation need not decide all semantic equivalence.

## 3. Parent-definedness and complete error guards

Every admitted relation requires a proved parent-membership definedness certificate. The initial certificate covers total primitive membership: Select/Where/Set with typed primitive reads/literals, total primitive comparisons, and total Boolean combinations. Check operand types rather than assuming every comparison is total. Reject the certificate for checked arithmetic, partial derived operations, unwraps, nested aggregates or unrecognized structure unless separately justified.

Count success alone is not this certificate: Any may short-circuit, and child Count may omit a removed member whose parent predicate would fail. Never derive totality from the finite named candidates or witness slots.

For each original occurrence o, retain its finalized obligation list and define:

\[
NoError(o)=\bigwedge_{j}\neg(guard_j\land error_j).
\]

Use the original obligation guards and error flags after `encode_relational` finishes wrapping them. No error flag, checked range, evaluation order or path is eliminated. Total membership does not establish count-range safety.

## 4. Admissible lemma

For matching descriptors in the same opted-in context and underlying parent coordinate, with a valid parent-definedness certificate, emit only:

\[
\boxed{
EqCaptures(a,b)\land NoError(a)\land NoError(b)
\Rightarrow n_a=n_b
}.
\]

The context/template/certificate checks establish eligibility; they are not guessed solver facts. `n_a` and `n_b` are existing **parent** applications. Never equate the resulting-state `n + delta` expression with the guard's parent count. Captures of a resulting-state occurrence are evaluated at its original child environment; a changed value remains unrelated unless its equality follows.

NoError is an antecedent, never an unconditional assumption. Successful computation of a postcondition expression does not assume its Boolean truth. On C19's total typed equalities the relevant errors are absent and equal captures make the count relation unconditional.

If a relation cannot be justified, emit nothing and preserve the prior conservative outcome. If this prevents a mandatory acceptance case, report the unresolved contract and stop; do not weaken the guard or rewrite the subject.

## 5. Unbounded conservativity argument

Let A be the old symbolic behavior set, interpreted in the same observation domain as the concrete executions C. Let L be the finite collection of admitted implications and `A' = A ∩ Models(L)`.

1. By conjunction alone, `A' ⊆ A`. Existing constraints, witness separation and error obligations are not removed.
2. Take any covered concrete environment rho satisfying the justified Gamma. Parent-definedness and typed template substitution establish equal membership whenever the typed capture guard holds.
3. Equal finite sets have equal cardinalities. Interpret the existing parent-summary applications by those cardinalities; the lemma holds whenever both source computations succeed. When its no-error/capture antecedent is false, it adds no obligation.
4. Error prefixes remain represented with their original error conditions. No parent-definedness certificate is supplied for uncertain partial membership; count-range failures retain existing guards and classifications.
5. Thus every concrete interpretation admitted by the baseline correspondence can satisfy L: `C ⊆ A' ⊆ A` for this transformation. This is conditional on, and does not certify, the pre-existing abstraction correspondence.

No finite-universe bound, concrete witness search, desired global invariant or target Boolean truth appears in the argument. Finite ground lemmas do not bound the mathematical entity universe.

The new rule's premise sources are explicit:

| Premise | Justification / enforcement |
|---------|-----------------------------|
| Admitted typed query/candidate domain | Existing Core admission and the check's stated typed-state domain; no new assumption about arbitrary malformed inputs. |
| Membership source laws | Existing Where/filter and count denotations; preserve set structure and typed identity. |
| Parent definedness | Structural certificate proved by induction over the supported total fragment; not inferred from solver success or named members. |
| Capture equality | Conditional typed Term equality in the emitted implication; not asserted as a premise that captures happen to agree. |
| Same interpretation/parent | Explicit opted-in immutable context and registration of S applications before deltas. |
| Successful occurrence computation | Original guarded error obligations appear only in the implication antecedent. |
| Exact +1 / freshness for C19 | Existing effect/path and fresh-identity obligations before the target; no target or global uniqueness premise. |

Keep the existing Gamma unchanged. Invariants of inputs or global Model properties are not added merely because they would make the solver succeed. Implementation review must map each actual premise to this table or document its separately justified source.

For C19, the established guard gives `N(S,s,a)=0`. Fresh matching creation with unchanged captures contributes exactly one, hence `N(S',s,a)=1≤1`. Freshness and the existing effect/path premises remain necessary. The argument proves a local postcondition, not Approval's global inductive theorem.

## 6. Context lifecycle and failure behavior

The facility is disabled in a generic Encoder. Only action, rule and read builders opt into an immutable module/world interpretation before encoding. Context identity covers the full admitted Behavior/schema interpretation, the enclosing semantic/profile session and parent coordinate. Do not share registries between sessions, modules or profiles.

Both migration Encoder constructors remain disabled from construction. They may switch source→target→source interpretation using existing behavior; this feature introduces no relation there. Registry clearing after switching is insufficient because old applications/memo may already be shared. An opted-in context must not change interpretation; enforce this invariant and test the construction boundaries.

Register eligible occurrences only after the existing occurrence has completed error processing. Keep deterministic registration order and deduplicate repeated lemmas. Partition by full typed descriptor; no global all-query Cartesian product or shortened hash comparison. Registry lifetime ends with its encoding; no persistent semantic cache is introduced.

Actual counterexamples still require authoritative Core confirmation. Unknown, exhausted, unsupported and unconfirmed candidates retain non-proof classifications. An unsuccessful witness search is never a proof.
