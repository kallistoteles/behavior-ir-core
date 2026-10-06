# How verification works (features 002–007, 009, 010, 013)

A behavior module is no longer only a program that can run: its central safety and correctness
properties are turned into mathematical questions automatically, proven or refuted, and kept as
evidence bound to the behavior version.

Details: `specs/002-smt-verification/`, `specs/003-fixed-scale-decimals/`, and
`specs/004-exact-arithmetic-closure/` (spec, research, contracts, quickstart,
`checklists/implementation-review.md`).

**The solver prerequisite (feature 008).** Verification runs the Z3 binary found through
`BEHAVIOR_Z3`, or else `z3` on PATH. A release names the version it was verified with
(`SUPPORTED_Z3` in `crates/behavior-verify/src/solver.rs`, currently 4.16.0).
- **Missing solver.** The error reads "verification needs the Z3 SMT solver (supported:
  4.16.0); install z3 on PATH or set BEHAVIOR_Z3". The CLI then exits 3.
- **Another version.** It runs with a warning, and the attestation records the version that ran.

## Pipeline

```text
                      Behavior IR (admitted, typed, content-addressed)
                                   │
                                   ▼
            Semantic assumptions = exactly what the runtime guarantees
   (type domains, entity constraints on incoming entities, invariants on S,
    distinct state identities, evaluation order; all decimal arithmetic exact, as at runtime:
    fixed-scale values on their grid, exact quantities and ratios as rationals, each rescale as
    its rounding function; exact values bounded at admission to what the runtime represents)
                                   │
          ┌────────────────────────┼────────────────────────┐
          ▼                        ▼                        ▼
   Safety checks (blocking)                          Warning checks
   preservation · postcondition ·                    dead_action · redundant_precondition ·
   evaluation_error                                  always_true · always_false
          │                                                 │
          ▼                                                 ▼
         SMT (pinned Z3, fixed seeds, rlimit budget)       SMT
          │                                                 │
   ┌──────┼──────────┐                              ┌───────┼────────┐
   ▼      ▼          ▼                              ▼       ▼        ▼
 UNSAT   SAT       UNKNOWN                        UNSAT    SAT     UNKNOWN
   │      │          │                              │       │        │
 PROVEN candidate  INCONCLUSIVE                 warning  witness: INCONCLUSIVE
          │                                     finding  no finding
          ▼                                              (not replayed)
   replay through the evaluator
          │
   ┌──────┴────────┐
   ▼               ▼
 reproduced     not reproduced
   │               │
 COUNTEREXAMPLE  INCONCLUSIVE
 (with decision record)
```

Every inconclusive check is a **blocking** finding: undecided is never reported as passed.

Then governance, which never changes the verification result:

```text
Verification Attestation (bound to behavior version, profile, verifier and solver versions)
          ↓
Execution Policy (content-addressed)
  + Waivers (bound to behavior hash + finding hash, Ed25519-signed by trusted keys;
             by default only inconclusive findings are waivable)
          ↓
Commit Authorization (cites policy, attestation, transition, waivers used)
```

## Entity lifecycle (feature 006)

Creations, removals, `exists` and `referenced` are encoded with three uninterpreted functions per
entity type T, over identities of the evaluated state S:
- `ex_T(x)`: x exists;
- `used_T(x)`: x was ever used, with `ex_T(x) → used_T(x)`;
- `refd_T(x)`: an entity *not bound by the action* holds a `Ref` to x, with `refd_T(x) → ex_T(x)`.

Bound state entities exist and are used, and their references point at existing entities (the store
keeps referential integrity). A creation assumes an unused identity, distinct within the
transition, and checks the new entity's constraints (including `Ref` existence via `exists'`) and
invariants on S'. `exists` on S' is `(ex_T ∨ created) ∧ ¬removed`; `referenced` on S' also sees
bound and created references. Each removal of a referenced type gets a blocking
`referential_integrity` check (part of the preservation profile): can a `Ref` to the removed
identity survive? Counterexamples carry a `facts` section (with an invented unbound referrer where
`refd_T` holds), so plain evaluation confirms them without a store. Example: in
`wire/valid/accounts.json`, `switch_and_remove` has a real counterexample — another account may
still reference the removed customer.

## Relational queries (feature 007)

The verifier need not know the whole state; it must know exactly how the transition changes what
it knows.

- **Symbolic summaries over S:** the count, sums, extrema and uniqueness of a query instance are
  uninterpreted functions of the instance's captured values. Equal captures are the same instance
  (congruence); a changed capture is an unrelated summary. The action's bound entities are known
  candidates, and every summary accounts for them.
- **Exact change:** on S', a summary is the S summary of the S' instance plus the exact effect of
  every created, removed or changed bound candidate. `count` and `sum` compose exactly; `any`/`all`
  are counts of narrowed instances (`any(q, p) ≡ count(where(q, p)) > 0`), so a precondition
  `not any(select(Employee), e → e.personnel_number == n)` and the `unique` delta rule share one
  summary; `min`/`max` compose for creations and are fresh after a removal or change.
- **Module invariants** are assumed on S and checked on S' (preservation, subject kind
  `invariant_global`), for the actions the dependency analysis says can affect them.
- **Counterexamples:** a witness query adds a few explicit unknown-member slots per queried type
  and defines every summary as a fold over the known candidates and the present slots. The model
  becomes a request with `universe` facts; the engine confirms it, and the finding reports the
  query and field facts the evaluation observed. **The slots are witnesses only:** proofs never
  see them, so nothing is proven by a finite-universe bound. No witness within the slots, or no
  confirmation, is `inconclusive`.

Example (`tests/fixtures/verify/queries.expected.json`): `add_counted_order` (count exactly `n+1`),
`hire` (uniqueness preserved) and `place_order` (credit limit) are proven; `place_order_unchecked`
and `hire_unchecked` have confirmed counterexamples; `raise_limit` (a changed capture) and
`remove_cheapest` (`min` after a removal) are inconclusive.

## Migrations (feature 009)

`verify_migration(migration, source, target, …)` gives an attestation whose subject is the
migration (`"subject": "migration"`, `migration_hash`).

- **Local, per migrated type:** a symbolic source entity is assumed valid under the source rules
  of its type and the source module invariants. Every source requirement is also assumed, with the
  entity a known candidate of every query over its type. The verifier proves that every narrowing
  succeeds (`migration_narrowing`), that no other evaluation error occurs (`evaluation_error`) and
  that every target constraint and invariant holds on the transformed value
  (`migration_constraint`). A proof that needs the requirements lists them in `under`. A
  counterexample counts only after running the transform on the reported entity reproduces it.
  A type the migration carries over unchanged is checked too, against the target rules the
  source does not state identically: rules are behavior, so a target may add one to a type whose
  declaration did not change.
- **Whole-state:** `referential_integrity` is proven when every target reference of a migrated
  type is carried over from a source reference to the same type. A target `module_invariant` is
  proven when the source module states the same invariant and the migration copies every field it
  reads. Anything else is `inconclusive`: precision debt, never assumed, and checked in full when
  the migration is applied.
- **Assumed rules are established at runtime:** constraints and invariants are behavior, not
  schema, so stored data may predate them. Applying a migration first validates the source state
  under the source rules (`MIGRATION_SOURCE_INVALID`), so a proof never stands in for a check.

Example (`tests/fixtures/verify/migration.expected.json`): narrowing `Order.region` is proven
under `every_order_has_region` and is a confirmed counterexample without it. Widening `Money`
from two to four decimals is a confirmed `evaluation_error`: the wider scale shrinks the range, so
very large prices overflow.

## Declared reads (feature 010)

`evaluation_error` also checks every declared read. The checks name the read as their action
(`read:<name>`).

- **A value read** is encoded like an action's expressions: its bound entities are valid under
  their constraints and invariants, their references exist, and module invariants hold.
- **A query projection** is checked for one symbolic member of the projected type, valid like a
  bound entity and a member by the query's filter. Filters are candidate-local, so they encode
  over the member alone: `where` adds a conjunct, `union` a disjunction, `intersection` a
  conjunction and `difference` `a ∧ ¬b`. The filter's own evaluation errors are checked first;
  each item assumes the earlier ones did not fail.
- **An entity projection** is checked for the bound entity.
- **Confirmation** evaluates the read on the counterexample state, with the member added to the
  universe of its type. The finding carries the failing read record, which replays.

Example (`tests/fixtures/verify/reads.expected.json`): an average over all cultures is a confirmed
counterexample, while the same average projected only over cultures with measurements is proven.
A sum of `Int` fields can overflow, which is a confirmed counterexample too.

## What is proven — and what is not

The verifier does **not** prove "the system is correct". It proves:

> The automatically generated properties hold for the semantics that the Behavior IR expresses,
> as modelled in SMT.

Two consequences:

1. **Unstated requirements are invisible.** If "no customer may be charged twice" is not an
   invariant, constraint, state model, or postcondition, nothing can detect that it is broken.
   The central human task becomes: *What must always be true? What may change, and under which
   conditions? What does an action promise afterwards?* — rather than how to implement it.
2. **Proofs and counterexamples rest on different trust.** Counterexamples are confirmed by the
   engine itself, so they do not depend on the encoding. Proofs depend on the SMT model matching
   the engine. (Feature 002 found and fixed one such mismatch: decimal `+`/`-` also round near
   10^28. Feature 004 removed the class: arithmetic is exact in both, and admission bounds supported exact forms. Feature 013 additionally audits every nested representation path for verification; unsupported bounds conservatively block certification rather than assuming safety.)

## Known limitations — three different kinds of debt

| Limitation | Kind | Consequence | Direction |
|---|---|---|---|
| Historical unsigned attestations | legacy trust / provenance | Structural identity does not establish a trusted issuer; these documents cannot satisfy required v2 store governance | Fresh authenticated verification and purpose-separated signatures under the exact v2 policy |
| Historical verification cache | legacy integrity | A cache is not trusted proof evidence. Authenticated verification computes fresh with cache=None and never promotes cached/raw caller reports | Legacy diagnostic/cache interfaces remain separate from the authenticated path |
| Relational precision (feature 007) | precision | A changed capture gets a fresh summary, `min`/`max` after a removal or change are fresh, and a `sum`'s partial-sum range checks (made in canonical order over unknown members) are a free flag: such checks can be `inconclusive` although they hold (e.g. `raise_limit`, `remove_cheapest`, a postcondition `sum` with non-negative members) | Monotonicity lemmas for changed captures; constraint-derived bounds on members (all amounts ≥ 0 bounds every partial sum by the total). This applies only to guarantees the model states (entity constraints, preconditions); an unstated expectation belongs in the model, never in a verifier assumption |
| Whole-state migration properties (feature 009) | precision | Target module invariants over migrated values, and references that are not carried over from a source reference, are `inconclusive` | Set-to-set reasoning over transformed predicates; until then they are checked in full when the migration is applied |
| General decimals and ratios | semantics / expressiveness | **Resolved by features 003–004**: fixed-scale types (`nominal(Decimal, scale=2)`) are exact on input; since 004 *all* decimal arithmetic is exact (ratios `T ÷ T` are exact dimensionless values, general decimals compute exactly), rounding happens only in an explicit `rescale` (six modes), and implicit stores are admitted only when proven representable. The verifier models exactly this; no check is inconclusive because of decimal rounding, and the runtime's 512-bit limit is enforced at admission | Declare a scale for stored quantities; use `rescale` at every lossy boundary. What remains is range: fixed-scale sums can exceed their integer digits, found as `evaluation_error` |

Fixed-scale decimals (feature 003) and exact arithmetic closure (feature 004) came first, since
they directly increase what can be proven.
Trusted v2 governance now authenticates actual fresh computation. Legacy structural artifacts remain historical evidence at their original trust level.


## Guarded command proof and runtime correspondence (013)

For profile0.8 actions the deterministic result is a product `(ΔS, K, evidence)`, where K is
a finite multiset. Emissions evaluate in canonical semantic order; product fields sort by
UTF-8 name. A false guard evaluates no payload and observes no payload dependency. A true
guard requires every field construction to succeed; any failure aborts the entire proposed
transition. Commands read original S and do not change the verifier's S' environment.
History is ordered; commands within an event promise no external execution sequence.

The table applies to the implemented 013/profile0.8 action and trusted-store paths. It is
code and regression evidence for these obligations, not a completed proof of all Core code.
Paths below are relative to repository root.

| Runtime guarantee | Verifier assumption/use | Evidence in code and tests | Status |
|---|---|---|---|
| Scalars retain Bool/i64/28-digit decimal/enum/nominal/typed-Id domains | Symbolic type, range and grid axioms | core `semantic/value.rs`, `admit/typecheck.rs`, `commands::CommandIntent::new`; verify `encode::Encoder`; command_admission/command_safety | Covered |
| Every nested intermediate either represents exactly or fails | Representation-safety check cannot omit a child through wrap/rescale/query/derived | core `admit/bounds::complete_facts`, `representation_safety`; verify `Encoder::encode`, soundness_regressions/command_safety | Covered; unsupported bounds uncertifiable |
| The exact evaluated snapshot satisfies Behavior, not only SchemaHash | Incoming entity constraints and module invariants are legal assumptions | core `eval::evaluate_decoded_request`, `provider_snapshot`, `check_behavior_snapshot`; store `validate_snapshot`; behavior_validity/durable_commands | Covered for scoped profile/store paths |
| Repeated read aliases denote one entity, not two members | Query known-member cardinality and summary lower bounds | verify `reads::valid_entity`, `encode/relational::known_cands`; soundness_regressions repeated-read test | Covered |
| State action bindings are distinct typed identities | Symbolic action state-identity separation | core `eval::alias`, invocation resolution; verify action encoding | Covered; read aliases have different rules |
| Guard evaluation precedes payload; guard is not a precondition | Payload error predicate is conjoined with true guard | core `eval::run_transition`; verify `encode::action` CommandGuard/CommandPayload steps; command_safety | Covered |
| Canonical fail-fast fields/emissions and short-circuit children | Later paths require earlier successful computation | verify `checks::evaluation_errors`, action path and obligation guards; command_safety canonical earlier-failure test | Covered |
| Commands observe original S and leave S' unchanged | Guard/payload use pre-state env, never update env_post | core `eval::run_transition`; verify action command steps before assigning world.env_post; command_evaluation | Covered |
| Conversion is lossless or uses explicit rescale/rounding | Narrowing/grid/range failures are evaluation obligations | core `eval::stored_value`, payload codec; verify error encoding; nested exact/overflow/narrowing command tests | Covered |
| Confirmed errors agree with actual selected runtime error | SAT becomes COUNTEREXAMPLE only after concrete evaluation | verify `checks::decide`, `confirm::confirm`; complete snapshot and structured error evidence | Covered; failed witness confirmation is INCONCLUSIVE |
| Definition bags preserve multiplicity; source order/provenance are nonsemantic | Canonical emission/field paths and repeated site identities | core command/action/module v2 hashing; verify canonical semantic sites; command_identity/command_safety/command_replay | Covered |
| Candidate identity includes exact K, record, store and full parent | Proof/authorization cannot be substituted across content or history | store `CommitBundle::governance_candidate`, `Store::commit_with_context`; command_governance/history_integrity | Covered |
| Migrations validate exact source/target Behavior and state | No schema-only source/target proof equivalence | core migration admission/application; store prepared migration; migration_context/soundness_regressions | Covered; whole-state proof precision remains conservative |
| Required governance has authenticated provenance and complete evidence | Expected exact subject/profile/versions/manifest coverage | verify `expected_manifest`, `VerificationEnvelopeV2::validate_for_subject`, `validate_report`, trusted authorization; trusted_verification/command_governance | Covered under named solver/signer trust |
| Independent Q and bundle time match signed context under exact P | Policy context, role intervals and waiver expiry are legitimate | verify `validate_context`, `validate_authorization_for`; store context-bearing commits; command_governance | Covered |
| Infrastructure failure yields no completed semantic proof artifact | No elapsed-time/cancellation/transport prefix is signed | authenticated verify and CLI atomic output; cli_trusted_governance | Covered |
| Deterministic resource exhaustion stays unknown | INCONCLUSIVE cannot become PROVEN | semantic report validation; command_verification/cli_command_verification with rlimit1 | Covered; aggregate is not_verified |
| Replay uses original history/facts/policy/time and performs no commit | Recorded canonical evidence can be reconstructed and compared | core record/invocation replay; store shared range/archive/Behavior validation; command_replay | Covered; module-free manifests are attested |
| Core has no business-effect executor or external-success contract | No theorem about target acceptance/delivery is encoded | facade has only candidate/committed read-only values; host-only mock scenarios | Boundary covered |

`≡₀.₈` is the declared normalized IR equivalence: emission bags and named products may be
permuted, omitted guard equals literal true, query binder spelling and equal resolved
semantic aliases normalize, and diagnostic locations/display provenance detach. Multiplicity,
public declarations/capability names, public binding/input keys, types, guards and payload
expressions remain semantic. Agreement on one invocation does not establish definition
identity. Canonical hashes represent this equivalence, not arbitrary extensional program
equivalence. Earlier IR identity/record rules remain version-dispatched.

Authenticated `verification_report.v2` stores semantic checks, exact unique obligation keys,
structured witnesses and canonical finding citations. Diagnostics/cache flags/loc/pretty
aliases live separately and cannot affect signed report identity. Repeated sites remain
separate even when they cite the same finding. Every expected site occurs exactly once;
extra/missing/duplicate checks or contradictory aggregates refuse.

Authorization uses one shared mechanism for state, migration and command transitions.
`Q.policy_time` selects `[not_before, not_after)` role eligibility and waiver expiry;
`authorized_at` equals that time. A bound requested commit time equals the bundle time;
unbound time is explicit null. Context-less fresh governed writes cannot copy Q from their
own authorization. A hash establishes content identity; trusted purpose-separated signature
and exact policy establish authority.

Live commit and Behavior replay independently derive exact proof obligations from admitted
semantics. Data replay has no module and validates the archived manifest, signature and
coverage as a trusted verifier attestation; it does not claim independent obligation
completeness. Both use original archived policy/context/time, not current credentials or
clock. Legacy structural evidence is never upgraded retroactively.

The wider mathematical/security Core audit requested before 013 remains open. These scoped
regressions address known prerequisite/command obligations; no general Core-completeness or
pre-v1 soundness certificate is claimed. Relational/migration precision limits remain
INCONCLUSIVE where unsupported, and trusted solver correctness/key custody and backend
immutability/atomicity are explicit trust assumptions.
