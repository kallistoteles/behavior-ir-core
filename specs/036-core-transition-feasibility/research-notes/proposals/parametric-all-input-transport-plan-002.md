# All-input error transport: concrete proof plan

Status: unselected source-only proposal. No implementation, build, test, Lean execution, binary/environment inspection, selected edit, or private write was performed. The supplied execution premise is that native469 failed while elaborating the parametric Try matcher and native470 is active after explicit carrier arguments were inserted at both `Prerequisite` sites. No native470 execution result was inspected or inferred.

## Recommended smallest bridge

Define successful-value transport using the existing **outer `Aeneas.Std.bind`**, not a newly invented ITree recursor. Define an exhaustive five-constructor error equivalence at the original carrier types. Lift it through the inner Rust result and returned map tuple. Prove the equality between the transported parametric function and the original function for **all** rows/maps, with no field-read, size, termination, success, or desired-output hypothesis.

The smallest immediate bridge can be proved by unfolding the two source-bound functions, following their common bind structure, and reducing the two error constructor sites plus identity residual conversion. Prefer additionally factoring that proof into a **universal error-type/constructor transport lemma** over a source-conserved row kernel. Its only compatibility premise concerns the `Prerequisite` constructor, and that premise is proved by constructor reduction for the original instantiation. The primitive JSON/map/string functions remain exactly fixed; no arbitrary successful-operation callbacks or desired semantic equations are introduced.

Keep the universal theorem, original-instance bridge, and native admission separate. The universal error-transport theorem can target the unchanged foundation-only audit. The bridge literally mentioning original `StudyError`, `serde_json.error.Error`, and `core.io.error.Error` necessarily has those carrier signature dependencies; disclose them in a separate bridge audit rather than widening the strict native policy. It does not establish original Rust/runtime refinement or B01–B10 completion.

## Exact source facts and APIs

In the pinned analysis backend at `analysis-backend/a0054`, `Aeneas.Std.Result α` is an irreducible definition of `ITree RustEffect α`. `RustEffect.Input` has exactly one constructor, `fail : Error → Input`; `RustEffect.Output (.fail e)` is `PEmpty`. There are outer `Result.ok`, `Result.vis`, `Result.fail`, and `Result.div` APIs. A `vis` node therefore has no realizable continuation input under this exact RustEffect, although its continuation remains part of the API. Do not confuse outer `Aeneas.Std.Error` with a Rust `StudyError` payload. [Primitives.lean:36](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:36), [Primitives.lean:51](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:51), [Primitives.lean:68](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:68)

The exact usable outer APIs are:

| API in `Aeneas.Std` | Relevant equation |
| --- | --- |
| `bind_ok` | `bind (Result.ok x) f = f x` |
| `bind_vis` | `bind (Result.vis eff k) f = Result.vis eff (fun x => bind (k x) f)` |
| `bind_fail` | `bind (Result.fail e) f = Result.fail e` |
| `bind_div` | `bind Result.div f = Result.div` |
| protected `bind_assoc` | `bind (bind x f) g = bind x (fun y => bind (f y) g)` |
| protected `bind_pure` | `bind x Result.ok = x` |
| `bind_tc_eq`, `pure_tc_eq` | Normalize typeclass bind/pure to these APIs |
| `Result.cases` | Dependent cases for `ok`, `vis`, `div` |
| `Result.fail_eq_vis` | Explicit failure/effect equality when needed |

The fully qualified protected associativity and right-identity declarations are `Aeneas.Std.bind_assoc` and `Aeneas.Std.bind_pure`; `Std` here is the `Aeneas.Std` namespace, not the root standard-library namespace. The source also provides `bind_assoc_eq` for typeclass binds. Prefer these equations over unfolding the irreducible Result definition or inventing uninspected ITree map lemmas. [Primitives.lean:94](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:94), [Primitives.lean:253](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:253), [Primitives.lean:267](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:267), [Primitives.lean:294](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:294)

The exact Try/conversion definitions are in `Aeneas.Std`:

```text
core.result.Result.Insts.CoreOpsTry.branch {T E}
  : core.result.Result T E →
    Aeneas.Std.Result (core.ops.control_flow.ControlFlow
      (core.result.Result Never E) T)
```

It sends `.Ok v` to `.ok (.Continue v)` and `.Err e` to `.ok (.Break (.Err e))`.

```text
core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual
  (T : Type _) {E F : Type _} (convertFromInst : core.convert.From F E)
  (r : core.result.Result Never E)
  : Aeneas.Std.Result (core.result.Result T F)
```

It eliminates an impossible `.Ok x` using `x.casesOn`; on `.Err e` it binds `convertFromInst.from e`, then returns `.ok (.Err v)`. `core.convert.FromSame.from x = x`, and `core.convert.FromSame E` has field `from := fun x => .ok (FromSame.from x)`. Thus identity conversion preserves the exact error, with no new failure/effect. Use these definitions to prove an equality lemma, rather than use the success-only WP step specifications as if they were all-outcome correspondence. [Convert.lean:32](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Core/Convert.lean:32), [Convert.lean:95](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Core/Convert.lean:95)

The current producer changes only the error family, its return type, two `Prerequisite` constructor occurrences, and the `FromSame` type argument, with exact inverse byte-conservation checks. It now explicitly passes `(J := J) (I := I)` at both constructor sites. The a0469 generated source inspected here predates that correction and has bare constructor references; it is evidence for the reported elaboration issue, not evidence of corrected compilation. [native_parametric_canonical_v2.py](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_parametric_canonical_v2.py), [a0469 NativeParametricCanonicalSource.lean](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0469/project/NativeParametricCanonicalSource.lean)

The typed conservation checker verifies family/constructor metadata, carrier-free shared dependencies, new transitive foundations and definitional equality with the translated old body; it adds `Core036.ParametricConservation.definition_transport`. That equation compares the new function to the substituted old expression. It is useful source conservation, but it is not yet the datatype-transport equality back to the original instance. The current canonical laws use it only for conditional successful Child equations. [NativeParametricConservation.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean), [NativeParametricCanonicalLaws.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricCanonicalLaws.lean)

## Transport definitions and minimal generic lemmas

The following names are **proposed local definitions**, not existing backend APIs:

```text
outerMap (f : A → B) (r : Aeneas.Std.Result A)
  := Aeneas.Std.bind r (fun x => Aeneas.Std.Result.ok (f x))

innerMap (h : E → F) : core.result.Result A E → core.result.Result A F
  | .Ok x  => .Ok x
  | .Err e => .Err (h e)

rowMap h (r, parents, children)
  := (innerMap h r, parents, children)
```

Define `rowMap` at the exact returned tuple type, using the real Lean tuple nesting. It changes no map, key, value, ordering, or state payload. It transports only the inner error payload when one exists.

Prove `outerMap_ok`, `outerMap_fail`, `outerMap_div`, and `outerMap_vis` directly with the corresponding bind lemmas. `outerMap_vis` must retain the identical `eff` and transform only its continuation. Prove the distribution equation

```text
outerMap h (bind x k) = bind x (fun a => outerMap h (k a))
```

from `bind_assoc`. This lets the all-input proof pass through a shared primitive result without splitting it or asserting it succeeds. For common-prefix bind congruence use `congrArg (fun continuation => bind x continuation)` followed by `funext`; for differing transported result types, use the distribution equation with a correctly typed continuation. Do not use `Option.ofResult`: it deliberately collapses failure/effects to `none` and would erase outcomes. [Primitives.lean:475](/var/tmp/behavior-ir-core036-v2/w001/analysis-backend/a0054/lean/Aeneas/Std/Primitives.lean:475)

Prove a residual identity lemma at every `T E`:

```text
from_residual T (core.convert.FromSame E) (.Err e) = Result.ok (.Err e).
```

Unfold the exact `from_residual`, `FromSame`, and `FromSame.from` definitions and apply `bind_ok`. For a fully quantified residual `r : core.result.Result Never E`, split its two constructors and eliminate the `.Ok` payload using `Never`'s empty eliminator. This is finite datatype reasoning; no inhabitant or property of `E` is assumed.

## Payload-preserving original instance

Let `J0 := serde_json.error.Error` and `I0 := core.io.error.Error`, with their exact existing declarations unchanged. Define:

```text
toOriginal : error.ParametricStudyError J0 I0 → error.StudyError
fromOriginal : error.StudyError → error.ParametricStudyError J0 I0
```

Both maps match all five constructors, preserve the constructor name, and pass its sole payload unchanged: `InvalidInput s`, `Prerequisite s`, `Library s`, `Json e`, `Io e`. Prove both inverse equations by exhaustive cases. Package as an equivalence if useful, or keep the two maps and inverse lemmas to avoid extra interface machinery. No equality decision, enumeration, default inhabitant, representation, or logical axiom about `J0`/`I0` is needed.

Also prove the five constructor equations explicitly, especially

```text
toOriginal (.Json e) = error.StudyError.Json e
toOriginal (.Io e) = error.StudyError.Io e.
```

Their inverse laws establish that arbitrary opaque payloads are retained, even though `state_fact_row` itself constructs only `Prerequisite`. This distinguishes completeness of the carrier transport from coverage of a particular function's reachable errors. The fixture fixes precisely these five original constructor/payload types. [StudyError fixture](/data/repos/behavior-ir-core-033/experiments/transition-study036/tests/v2/fixtures/parametric-error/StudyError.lean)

The immediate independently expected specialization root should be exactly the all-input equation:

```text
∀ row parents children,
  outerMap (rowMap toOriginal)
    (reference.parametric_state_fact_row (J := J0) (I := I0)
      row parents children)
  = reference.state_fact_row row parents children.
```

There are no primitive-read or bounds hypotheses. The map operands must be the identical complete native values on both sides. Keep all names fully resolved in the frozen expectation. This bridge should be checked separately from universal canonical-child roots and from native admission, with its complete raw transitive axiom inventory disclosed.

## Preferred reusable universal theorem

If a universal theorem is desired before the original-carrier instantiation, introduce one source-conserved **error-parametric row kernel**:

```text
rowKernel {E : Type} (prerequisite : Str → E) row parents children
  : Result ((core.result.Result Unit E) × NativeMap × NativeMap).
```

Its body is the same original generated `state_fact_row` expression, with only `StudyError` replaced by `E`, each `StudyError.Prerequisite` replaced by the parameter `prerequisite`, and `FromSame StudyError` replaced by `FromSame E`. Every JSON/index/string/map function, literal, branch, operation order, and full argument stays fixed. Derive and independently check exact typed function equalities tying the current parametric function to `rowKernel ParametricStudyError.Prerequisite` and the original function to `rowKernel StudyError.Prerequisite`. This extends the current typed conservation idea; do not merely presume those equalities or trust a hand-copied kernel body.

The universal theorem is:

```text
∀ (E F : Type) (mkE : Str → E) (mkF : Str → F) (h : E → F),
  (∀ s, h (mkE s) = mkF s) →
  ∀ row parents children,
    outerMap (rowMap h) (rowKernel mkE row parents children)
      = rowKernel mkF row parents children.
```

The premise states preservation of the input error-constructor algebra, not desired output equality or correct native behavior. In the original instance it is proved by the exhaustive `toOriginal` constructor equation for every `Str`; it is not supplied as an unresolved external assumption. The two actual strings then remain exactly `SeedIdentity` and `UnexpectedEntity` without special-casing the theorem to those strings.

An even smaller implementation can prove the immediate all-input specialization directly, without adding this generic kernel or modifying existing generated source. Use the exact current `definition_transport` equation to expose the substituted old expression and the original function's actual definition on the other side; prove the transport structurally. The universal kernel is preferable if its extra conservation certificates can be produced without expanding the trusted transformation. Both routes require genuine proof; neither is established by this note.

## Structural proof through every outcome

Use `outerMap` distribution and pointwise continuation equality to retain every shared primitive call. At each primitive the two computations have identical function identity and complete arguments. No native adequacy law or success premise is needed merely to show equal uses of the same interpreted primitive.

1. Keep the common `id` JSON index and `as_str` computations as arbitrary outer Results. Distribution/congruence carries their failure, divergence, and failure-effect label unchanged. At the returned `Option`, split `none`/`some` only to reduce the concrete `core.option.Option.ok_or`/Try logic. The backend `Option.ok_or` body was not in the permitted read slice; its exact source/reduction needs inspection before implementing this simplification, so no unverified lemma name or reduction result is asserted here.
2. On missing identity, use the constructor-preservation equation, `branch`'s `.Err` equation and the identity-residual lemma. The output remains the same first `Prerequisite (toStr "SeedIdentity")` and the same maps. It must not evaluate string conversion or later branch operations after this result.
3. On a present identity, `branch` returns `.Continue val`. Carry `to_owned`, row-entity `as_str`, and comparison with `Parent` through their shared binds. Split the actual returned Boolean; do not assume entity validity.
4. In the Parent branch, retain `phase` index, clone and parent insertion in their exact order; a shared outer failure/divergence remains the same before any later operation. The final inner `.Ok ()` is unchanged by `innerMap` and the returned parent/child maps are identical.
5. In the non-Parent branch retain the comparison with `Child`. The Child branch retains map creation, phase key ownership/index/clone/insertion, then owner key ownership/index/clone/insertion, then child insertion. Prove the final `.Ok` tuple is fixed by `rowMap`. No read-success/size assumption belongs in this transport proof.
6. In the neither-Parent-nor-Child branch, preserve `Prerequisite (toStr "UnexpectedEntity")`, both maps and all earlier performed calls. Do not swap it ahead of the earlier identity/conversion/comparison computations.
7. For the explicit Break residual matcher, eliminate impossible `Never` success and prove identity conversion leaves the same error constructor/payload. Do not use an unconstrained error converter or collapse the inner `.Err` into an outer `.fail`.

This follows the exact fixed fixture and actual a0469 original function. It is an all-input equality of interpreted functions, so primitive failure/divergence is preserved without proving those primitives cannot fail. [state_fact_row fixture](/data/repos/behavior-ir-core-033/experiments/transition-study036/tests/v2/fixtures/parametric-error/state_fact_row.lean), [a0469 NativeProjectionComponents.lean:68](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0469/project/NativeProjectionComponents.lean:68)

For independently checkable outer-effect controls, prove `outerMap` fixes the exact `Error` label on every `Result.fail`, retains `Result.div`, and retains a generic `Result.vis eff k` with the mapped continuation. If case analysis is needed, use `Result.cases` and destruct `eff : RustEffect.Input`; its only constructor is `.fail e`, with impossible output `PEmpty`. The empty continuation equality follows by `funext x; exact x.elim`. No induction over a potentially infinite ITree is required for this RustEffect's one-step case split; the common-prefix bind proof avoids even that split.

## Checking boundary and remaining work

For implementation, introduce the following small common-prefix lemma (proposed interface):

```text
outerMap_bind_shared
  (f : B → C) (m : Result A)
  (left : A → Result B) (right : A → Result C)
  (next : ∀ a, outerMap f (left a) = right a) :
  outerMap f (bind m left) = bind m right.
```

Its proof is precisely `outerMap` distribution followed by
`congrArg (fun continuation => bind m continuation) (funext next)`.
The equality in `next` is proved inside the theorem for the actual continuations; it is not an external desired-result premise. This helper allows each primitive outcome to remain an arbitrary interaction tree.

The concrete row-kernel proof order is: unfold only the two `rowKernel` applications; normalize typeclass binds if necessary; apply `outerMap_bind_shared` to the identical `id` index call and introduce its returned JSON value; apply it to the identical scalar `as_str` call and introduce its returned `Option`; split that `Option`. In `none`, reduce `ok_or`, `branch`, `from_residual`, `FromSame`, and `FromSame.from`, then prove the resulting terminal `outerMap` equation with `bind_ok`, `innerMap`, `rowMap`, and `compat (toStr "SeedIdentity")`. The precise `ok_or` reduction must first be confirmed against its source as noted above.

In `some val`, reduce the same `ok_or` and `.Ok` Try branch, then apply the common-prefix lemma successively to `to_owned val`, `String.impl.as_str row.entity`, and the comparison with `Parent`. Introduce the returned Boolean and split it. The true branch applies the lemma to phase index, clone, and parent insert; destruct the returned insert pair, then close by the terminal `.Ok`/tuple transport equation. The false branch applies the lemma to the comparison with `Child` and splits that Boolean. Its false case closes with `compat (toStr "UnexpectedEntity")`; its true case applies the lemma, in exact source order, to map `new`, phase-key `to_owned`, phase index, phase clone, phase insert, owner-key `to_owned`, owner index, owner clone, owner insert, and child insert. Destruct each returned insertion pair at the same place as the source; the final `.Ok` tuple is fixed by `rowMap`.

Use `simp only` with named definitions/equations at those finite pure steps, rather than a broad simplifier that unfolds interpreted primitives or searches native operation laws. If unfolding Try leaves a generalized residual, eliminate `.Ok never` and use the residual identity lemma for `.Err e`. No loop induction, field-read equation, safe-state premise, size bound, primitive success assumption, or additional error-algebra law is needed for this structural proof. All bind/Boolean/Option cases are exhaustive, and the shared bind lemma automatically preserves any earlier outer failure or divergence.

Freeze all-input theorem types and exact source/module expectations before checking. Retain current inverse-byte controls and the typed new/old substitution check. Add actual negative controls for changed first-error string, reordered index/update, changed fallback error, swapped/dropped payload constructor, non-identity payload mapping, converted outer failure label, divergence-to-success, residual conversion mutation, wrong original carrier instantiation, and a bridge with hidden field-read/success/desired-output hypotheses. A proof about the generic kernel must be rejected if either tie-back function equality is missing or applies to stale/changed function bodies.

The universal kernel theorem should be checked under the unchanged foundation-only audit; the original-instance bridge needs an explicitly separate scope/report for the two existing carrier Type axioms, with no logical or desired-output exceptions. Recheck all actual transitive dependencies independently; do not infer absence of operation axioms from a source label or reuse a conditional helper's acceptance as native authority. The native three-foundation allowlist and all B01–B10 obligations remain unchanged.

Open obligations: corrected parametric-source compilation; concrete `Option.ok_or` source inspection; implementation and fresh checking of transport maps/lemmas; exact tie-back certificates if the universal kernel is added; complete actual bridge axiom/type audit; fresh kernel checking; source-bound negative controls; and all native source/runtime/error/effect refinements. The pinned a0054 backend source was read, but no fresh execution identity was checked in this research; the eventual executor must bind its exact backend/tool subject. This note asserts no bridge proof or native completion.
