Found by ecosystem feature 506, static-verification check C19. A subsequent investigation isolates the reported local failure to count-summary congruence for existing query forms. Global inductive safety is a separate proof obligation.

## Reproduced observation

The unchanged Approval reference module returns `not_verified` on both released Core 0.13.0 and Core 0.14.0, using verifier 0.9.0 and Z3 4.16.0. The full default profile reports two blocking findings:

```text
inconclusive (counterexample_not_reproduced)
```

They concern the uniqueness postcondition of `purchase_request_approval__approve` and `purchase_request_approval__reject`:

```text
count(where(select(D), d, d.subject == subject.id and d.actor == actor)) <= 1
```

Both releases produce the same full attestation identity:

```text
sha256:69e085f39a9dd942d2f4dc00312e10b43fd1adb3565db2c3c7b64d36f2553b8d
```

## Corrected characterization: abstract inconsistency, no concrete witness

The verifier admits an inconsistent assignment to abstract query summaries. The resulting solver candidate cannot be concretized into a valid counterexample. This is a relational precision gap in the verifier, not a confirmed violation of Approval's postconditions.

In the captured focused postcondition trace, the unrestricted query is SAT, with two independent parent-count applications for the same membership and captures:

```text
A(subject.id, actor) = 0   // used by the guard's any(select(D), p)
B(subject.id, actor) = 1   // used by count(where(select(D), p))
```

The existing Create contribution is correctly +1, so the postcondition uses `B + 1 <= 1`, while the guard only constrains A.

The subsequent concretizing witness queries at all three existing witness levels are UNSAT for each affected obligation. **The recorded reproduction did not produce a concrete parent snapshot containing duplicate decisions.** The earlier explanation that such a concrete snapshot was rejected by evaluation was inaccurate for this trace. Witness UNSAT is also not an unrestricted proof: finite witness bounds remain outside proof assumptions.

The [instance key](https://github.com/kallistoteles/behavior-ir-core/blob/855f4db4d6da3327c80117191d5719e6bc6b6397/crates/behavior-verify/src/encode/relational.rs#L74) distinguishes a select with predicate narrowing from an explicit filtered query. Their counts therefore receive separate functions despite identical membership predicates and captured `subject.id`/`actor` values in this case.

## Local proof obligation

Let `Q(S,s,a)` be the finite set of decisions whose subject is s and actor is a. Under the existing definedness, typed-state and freshness conditions:

```text
not any(Q(S,s,a))              => Count(Q(S,s,a)) = 0
one fresh matching creation   => Count(Q(S',s,a)) = Count(Q(S,s,a)) + 1
therefore                     => Count(Q(S',s,a)) = 1 <= 1
```

The captures are unchanged and the action makes no other Decision changes. This local argument does not assume global Approval uniqueness on the parent and must not assume the postcondition being proved.

For the existing defined query forms, `any(Q,p)` and `count(where(Q,p)) > 0` describe the same membership condition. The correction must establish the supported equivalence relation for typed query instances over the same semantic state and equivalent captures. It does not need to decide arbitrary query equivalence.

## Diagnostic evidence, not an Approval workaround

- An external copy expressing freshness as `count(where(...)) == 0` makes both uniqueness checks proven and the full report verified on Core 0.14.0. That copy has a different BehaviorHash and is not the proposed repair.
- Removing freshness retains genuine, Core-confirmed postcondition violations: evaluation returns `DENY / POSTCONDITION_FAILED`.
- Adding only `A(s,a) = B(s,a)` to the captured unrestricted SMT obligation changes SAT to UNSAT, without global uniqueness or a finite-universe assumption. A hand-added diagnostic lemma is not an implemented Core proof capability.
- A minimal two-entity Core-only example, without Models, exhibits the same original inconclusive result, a proven count-guard control and a confirmed missing-guard violation.

## Scope of the Core correction

Feature **028 — Query Summary Congruence in SMT Verification** is being specified around this local precision gap.

The correction must:

1. Formalize its supported semantic query-instance equivalence, including typed domains, captures and state coordinates.
2. Relate the required existing quantifier/filter/count forms soundly; common syntax or equal value sorts alone are insufficient.
3. Preserve parent/resulting-state separation, the already correct exact Create delta, and existing error, short-circuit and refusal-phase obligations.
4. Preserve every concrete behavior covered by the check. In a common semantic observation domain, a refinement must establish `C ⊆ A' ⊆ A`, rather than removing a possible violation to obtain a proof.
5. Include negative controls for different predicates, captures, domains and state coordinates, changed captures, relevant effects and missing guards.
6. Prove the original unchanged C19 postconditions through supported Core verification, without changing Approval 503 lowering, original IR or BehaviorHash, runtime semantics, or historical runtime records.
7. Version new proof outcomes, caches and authenticated-evidence contexts according to Core's verifier/release policy. Previously issued immutable attestations must not be rewritten.

No grouped module invariants, new Core semantic primitives, Approval-specific verifier rules or general induction mechanism are required to address this local obligation. Internal normalization or justified equivalence lemmas remain planning choices.

## Separate global theorem

The stronger statement `P(S0) and forall a,S,S': (P(S) and T_a(S,S') => P(S'))` still needs independently established base-state validity, complete ownership/effect coverage, local preservation and framing for all other actions. Genesis seeds, imports and migrations must establish the relevant property at their own boundaries.

A local C19 proof does not establish those global premises. This issue's precision repair does not decide whether a general inductive framework or additional invariant expressiveness is needed later, and does not automatically add such a framework to Core feature-completeness requirements.

## Pinned provenance

- Ecosystem source: `44d6e5d4382e30504dd391ad6d53b1d68618d649`.
- Original BehaviorHash: `sha256:a04ba37ab89e051e448abb760bd754bbb0955125fd22ba8da927b8529a531779`.
- Core 0.13.0 release: `15094972191aa0ae79705df0397c551a18745399`.
- Core 0.14.0 release: `855f4db4d6da3327c80117191d5719e6bc6b6397`.
- Full default profile: six existing check kinds, resource limit 20,000,000 and operational guard 60,000 ms.

## Ecosystem handling until corrected-release adoption

Feature 506 C19 remains **blocked** by this issue. Its original exact solver result must not be reported as passed. An ordinary integration gate may pass while retaining the explicit blocker; `scripts/conformance.sh complete` remains not passed.

Keep C19 blocked until the corrected verifier proves the **original unchanged module under the pinned published corrected Core release**. Candidate-source tests, diagnostic rewrites and manually added SMT equalities do not unblock it.
