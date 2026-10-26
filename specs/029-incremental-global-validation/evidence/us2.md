# Complete-observation correspondence controls

After restoring all six premise mutations, `us2-core.txt` records 12 prepared-state
controls and `us2-store.txt` records 39 passing Store controls plus three explicitly
ignored measurement workloads. Complete record/bundle/commit comparisons supplement
independently expected ALLOW, DENY, ERROR and cardinality-boundary outcomes. Coverage
includes optional values, positive references (including an actual bound target),
malformed inputs, scalar overflow, short-circuit command activation, payload errors,
multiple row rules, skipped traces, exact observations, changed metadata, simultaneous
creation and mixed/suppressed/transitive obligation roots.

`crates/behavior-core/tests/resulting_state_metamorphic.rs` additionally compares
prepared and ordinary profiles for Unicode identifiers, diagnostic-looking domain
fields, complete records/reads/facts and replay. The targeted metamorphic run passed
four tests. The final normal gates rerun it. Public Store controls reject mutated
trace, facts, universe, effects, behavior, profile and history, without advancing the
head, then accept the original valid candidate. Reversed enumeration and optional
index availability do not change complete results; actually performed Backend errors
keep their required routes. Fresh creation deliberately repeats history-only used
identity observations during reproduction to preserve that existing boundary.

Classification is conservative: it inspects actual admitted obligation roots, resolves
supported local derived calls, and rejects unknown/mixed roots from reuse. Unsupported
execution remains ordinary. Memo-bearing row rules are not templated. Removal and
migration do not receive ordinary-update/create child promotion. Runtime World effects
supply complete actual changes, rather than a manually maintained list of action names.
No published fixture, record profile, schema/hash semantics or consumer facade changed.

The reviewed arbitrary-finite-state argument and construct map identify Rust extraction,
observation reconstruction, Store correspondence and Backend completeness/atomicity as
trusted implementation boundaries. Reference execution shares the ordinary semantic
interpreter; it is not an independent universal proof. Six actual failing mutation
controls and independent expected outcomes test that correspondence without promoting
it to Lean/SMT evidence. See correctness.md and premise-mutations.md.

## Convergence: nested local derived observations (T052)

`eval::prepared_tests::prepared_nested_derived_memo_observations_match_reference`
in `crates/behavior-core/src/eval/prepared_tests.rs` exercises IR 0.7 and 0.8 modules
with an exact count global and actually invoked nested local derived values.
Repeated calls exercise memo hits; a second constraint uses a different formal
binding and a fresh read frame. Both changed and unchanged child subjects must retain
their actual field observations. Memo-bearing rules still use ordinary evaluation;
no template support or production semantic change was introduced.

The test independently requires ALLOW for x=4, DENY for x=-3 and ERROR for
x=i64::MAX, with y=2. Parent derived values must be 3; the successful child values
must be 6 for changed e0 and 7 for unchanged e1. The denied child contributes -1,
and overflow must not invent a successful child derived value. Repeated calls emit
one derived entry per definition, argument and phase. Both child rules independently
require the exact x/y observations, including the rule reached through a memo hit.
The successful case must return prepared child evidence, establishing that the
prepared route is actually selected rather than whole-module fallback.

Canonical record bytes, diagnostics, observed fields and complete Facts must match
ordinary execution. Prepared reproduction is tested both without a checked hint
(independent recomputation) and with a hint (exact-context reuse), for every result
and both profiles.

The exact focused command is:

```bash
cargo test -p behavior-core --lib --features validation-work prepared_nested_derived_memo_observations_match_reference
```

[convergence-derived.txt](convergence-derived.txt) records the nonempty passing run.
The two earlier logs, [initial](convergence-derived-initial.txt) and
[fixture check](convergence-derived-check.txt), are failed test-fixture construction
attempts (missing `expr`, then an unsupported `name` key). They are not semantic
counterexamples or evidence of a production defect. After correcting the fixture,
the semantic assertions passed against the existing implementation; no red/green
production fix is claimed.

The pinned environment and resource settings are those in
[gates-source.json](gates-source.json). Supplemental checks and their results are
in [convergence-checks.txt](convergence-checks.txt): all 41 Core library tests with
`validation-work` pass, as do formatting, Core all-target Clippy with warnings denied
and terminology checks. There are now 14 focused prepared-state controls. Historical
full-gate and G4 evidence are preserved; these test/documentation additions do not
change production or frozen measurement code.
