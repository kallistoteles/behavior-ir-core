# Current verifier 0.9 checkpoint — T030–T032 and T035

This checkpoint implements the reviewed T025 cases after the T027 RED barrier.
It is not evidence that every admitted action is within the symbolic model's
scope, nor a claim that the complete repository gates already pass.

## Implemented correspondence

- Supported child rows are ordered by semantic entity type. For each row,
  invariants precede constraints. Declared obligations use their semantic named
  binding/hash; synthesized references follow declared constraints and use the
  semantic field/hash, not the diagnostic `ref(...)` label.
- An arbitrary unbound row's local obligations remain true in a valid parent
  when that row is unchanged. The encoder follows derived bodies transitively
  before making this assumption.
- All fresh confirmation requests include complete parent universes for every
  declared entity type, including empty types, for both language profiles.
  A contradictory free existence/reference fact does not justify inventing a
  row with guessed fields; invalid/incomplete finite witnesses fail confirmation.
- Both current language profiles confirm evaluation failures by semantic
  error code and expression hash. Decision 0.8 removes the old diagnostic error
  message from canonical evidence. The public `Expect::Error` variant remains.
- Current cache/proof provenance is verifier `0.9.0`. Signed `0.7.0` and `0.8.0`
  envelopes still decode without rewriting their claims, but cannot satisfy a
  newly derived current-version manifest. Existing policy files are unchanged.
- Governance candidates select a record codec by version. Non-command decision
  0.8 receives the same closed decoding as command decision 0.8. Unknown versions
  or contradictory legacy markers are refused. Existing 0.4–0.6 archival candidate
  shapes remain archival; this decoder does not establish live commit eligibility.

## Explicit symbolic limitations

The whole action is INCONCLUSIVE, with an encoding-error finding, if any of the
following preconditions cannot be established:

1. Declared entity obligations are row-local through their complete derived
   closure. `exists`, `referenced`, query/aggregate dependencies, recursion or an
   unresolved derived reference fail this conservative guard. This whole-module
   guard can reject an action whose particular delta happens to be harmless;
   it does not change admission or runtime meaning.
2. There is at most one represented surviving/created child row per entity type
   that has child obligations. SMT string equality does not define the canonical
   order of decoded identities. Multiple same-type rows with no child obligations
   remain supported.
3. A removed type has no incoming `Ref` declaration. Otherwise an unchanged
   unbound reference obligation can fail before the old removal integrity guard,
   and a single symbolic `referenced` Boolean does not represent that complete
   canonical witness schedule.

Existing explicit bounds and relational/module-invariant encoding remain in use.
Query claims still require a concretized finite witness that the full current
runtime confirms. No new identity-ordering theory, unbound removal model, IVM
runtime, Wire IR operator or public evaluator strategy was introduced.

## Actual test execution

All commands use the repository's pinned environment and these build settings:

```text
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test ...
```

The three environment variables disable regenerable incremental/debug artifacts
to avoid the observed disk-capacity problem. They do not change semantic inputs,
proof bounds, tests, assertions or required gates.

`new-tests-corrected.stdout.txt`: governance 4/4 and ordering 9/9 passed,
zero ignored/filtered. The independent current producer/signature control,
archived-envelope current-eligibility refusal, five strict candidate mutations,
canonical error-prefix reachability, earlier-error confirmed full-parent witness,
postcondition priority, both language witness profiles and local proven controls
all executed.

`new-tests.stdout.txt` retains the first implementation run: governance 4/4,
ordering 7/9. `legacy-confirm-diagnosis.stdout.txt` shows why the Legacy request
did not match the obsolete `Expect::Error` message: current canonical evidence
contained `DIVISION_BY_ZERO` plus the exact node hash. Parent reviewed and granted
ownership of `checks.rs`'s expectation mapping. The existing earlier-entity test
had already observed this missing correspondence as RED before that source edit.
The direct Legacy test's expectation was corrected to the specified current
semantic-error contract; that correction is not claimed as a new RED test.

`required-controls-corrected.stdout.txt` preserves the broader current-profile
integration results, without silently changing archival fixtures:

| Existing target | Passed | Failed | Remaining cause |
| --- | ---: | ---: | --- |
| errors_and_posts | 3 | 1 | Canonical message removed; all original outcome tables pass |
| preservation | 3 | 1 | `constraint_break.transfer` now explicitly requires unsupported same-type identity order |
| queries | 3 | 1 | Old test requires universe absence; original outcome tables and bounded/delta controls pass |
| soundness_regressions | 8 | 1 | Direct fresh rescale request omits required complete parent evidence |
| lifecycle | 0 | 2 | Current unsupported same-type/removal claims; old loop treats INCONCLUSIVE findings as counterexamples |

The lifecycle current schedule additionally includes the proven unchanged
`ref(Account.owner)` obligation on `deposit`. Its old expected table intentionally
remains unchanged. The initial integration failures were reported to the parent;
no preservation claim was weakened and no test was ignored to obtain the
targeted GREEN result.

## Reviewed current harness migration — T035

The parent subsequently assigned and reviewed changes to the five existing
verifier harnesses. `required-controls-green.stdout.txt` records all 23 passing,
zero failing/ignored/filtered tests: errors_and_posts 4, lifecycle 2,
preservation 4, queries 4 and soundness_regressions 9.

The current harness distinguishes the exact named unsupported scopes from other
claims. `constraint_break.transfer` has one explicit preservation INCONCLUSIVE
claim. Four lifecycle actions (`create_twice`, `remove_customer`,
`remove_customer_unchecked`, `switch_and_remove`) each have explicit
postcondition/preservation INCONCLUSIVE claims with the exact action hash and
scope explanation. All other named fixture outcomes remain compared exactly.
The archived expected tables and fixture requests were not edited or upgraded.

Fresh counterexamples reproduce using all archived facts, including every entity
universe. Error assertions compare semantic code/node; child failures compare
typed subject/obligation hash. The existing rescale regression adds its only
declared `Bill` parent universe to a fresh request and checks the same semantic
`EXACT_BOUND_EXCEEDED` error, while preserving its historical input fixture.

`required-controls-final.stdout.txt` preserves an intermediate harness run with
22 passing and one failing test. The failed assertion incorrectly expected a
detailed explanation in `check.reason`; the existing report has the stable
`encoding_error` code there and the detailed scope in the corresponding finding.
The final test asserts both fields and the exact action linkage. No production
change was made for that harness correction.

## Additional supported-scope controls

After the implementation, the parent approved three further empirical controls.
They are expressly not retrospective test-first evidence:

- Two same-type rows without child obligations retain a supported true
  postcondition proof, including a concrete runtime parent whose identity order
  reverses the parameter order.
- Two nested row-local derived rules retain supported evaluation-error and
  preservation proofs under both language profiles.
- A world-dependent obligation hidden through two nested derived rules remains
  explicit INCONCLUSIVE under both profiles.

`scope-controls-collection.stdout.txt` and `scope-controls.stdout.txt` collect
and execute the original 13 cases plus these three controls: 16 passed,
zero failed/ignored/filtered. No production changes followed these controls.
`manifest.json` records source/output hashes and confirms archival fixture bytes
still match the base revision.

The saved stdout files contain combined stdout/stderr. Initial `.log` files were
renamed byte-for-byte to `.stdout.txt` because repository ignore rules exclude
`.log`; no source or test-output bytes were rewritten during that rename.
