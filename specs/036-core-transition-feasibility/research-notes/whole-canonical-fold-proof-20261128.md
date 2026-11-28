# Whole canonical fold in the conserved Views context

The actual extracted `reference.state_fact_rows_loop` and
`reference.state_fact_rows` now have checked exact-result theorems in the same
complete extraction context as Views materialization. Native599, revision r9623,
closed successfully on 28 November 2026. This extends the twelve-root Native592
helper result with two roots; it does not establish native correspondence.

## Checked result

`NativeWholeCanonicalFold.lean` proves that the actual loop implements the
independently specified `foldRows`, including ordered updates, preservation of
the untouched map, termination and the first semantic error. The full function
returns exactly the specified error or the complete parents/children JSON
value. Rows are arbitrary representable finite vectors, with the existing
explicit string-size premises; no fixture IDs or desired-result premise are
introduced. Full JSON values remain present.

The project retains the unchanged Native585 generated Types and Funs and all
85 external function nodes. Twenty-five have explicit candidate interpretations;
sixty remain open. Store, runtime, allocation/effects and primitive-source
adequacy remain separate obligations. The existing dictionary noninterference
and child-materialization proofs are reused unchanged.

All thirty commands exited zero. All fourteen expected root types and their
transitive axioms were checked. A fresh exported-root kernel check accepted
6,485 declarations; the permitted axioms are only `propext`, `Classical.choice`
and `Quot.sound`. The scope is selected-root transitive dependencies, not a
claim that every imported constant was independently rechecked. The complete
chosen backend libraries, including the main Aeneas root, comprise 23,325 files
and 1,340,154,223 bytes across ten roots. Their bytes and the selected SDK were
checked before and after execution.

## Actual corrections

Native593 exposed a dependent iterator-alias rewriting problem. Native594
rejected an attempted local reducibility attribute under Lean's validation;
no unsafe reducibility setting was enabled. Native595 retained the dependent
match problem. Native596 showed that reflexivity alone does not prove the
vector/list roundtrip or the monadic body equations. Native597 isolated four
private iterator/body helper goals. Native598 proved the iterator cases and
left only the known-constructor match in the nonempty body. Native599 closes
that final reduction by reflexivity.

The final proof splits the actual dependent iterator match, applies the
existing vector roundtrip law and uses supported local rewrite transparency
for matching monad laws across the iterator alias. It changes no imported
definition, algorithm, theorem type, admitted domain, kernel check, cadence or
resource limit. All failed attempts remain sealed. Four source-context controls
passed after the final correction; scoped Ruff checks passed. Lean reports
nonfatal warnings for unused proof tactics/simplification arguments and a
constructor-like local variable name. These warnings were not suppressed.

## Closed evidence

The external paths below are evidence locations, not published performance
samples. Roots are the registered `future_evidence` and `private` roots for
work w001.

| Root and path | Bytes | SHA-256 |
|---|---:|---|
| future_evidence: attempts/a0599/checkpoint.json | 1,561 | d8a3895cc56e1466c36fa25d05e6c4178ad67d600fef6204ba72eab714bd4948 |
| future_evidence: attempts/a0599/child/receipt.json | 1,429,231 | 7d577178e383e947a83c4fe5e52dc59a490e6728873e7258e5bde12f8006af29 |
| private: ground-lean-probe/a0599/result.json | 120,754 | 8839bf09a4cee9fda4b9989be58f12b983ddefdfc68873b6538b770c01cea042 |
| private: ground-lean-probe/a0599/declared-proof/result.json | 119,999 | b599f1ff5eedbf741ccb1e5f63229ef368db62a1f99fac1dca0d1813adbd4284 |
| private: ground-lean-probe/a0599/source-binding.json | 12,938 | ac86e156335d9a0bb606c792d978ef0438ab9034c29fdcea9955fe70c0f3bc83 |
| private: ground-lean-probe/a0599/backend-imports/index.json | 2,082 | 22bb62289fc5f9195ed2542b717e04fd42b054d4d309d5381512a2de25f56137 |

The attempt seal verifies, the actual child exit is zero, no stop or source
validation error occurred, both process closures are empty and the owner fence
is absent. Final incremental and independently inventoried storage agree:
cache 38,497,530,649 bytes, temporary 4,273,260,941 bytes and artifacts
10,240,327,656 bytes. Root/data free space is 31,131,963,392 / 4,532,207,616 bytes.

## Remaining work

This proves the two complete extracted functions under candidate APIs. It does
not yet connect native Store export and typed-view construction to the same
canonical value, establish the runtime/API representation or close B01–B10.
That next connection must account for reachable key order, uniqueness, exact
values, context and error/effect boundaries. Arbitrary malformed model maps
cannot be treated as reachable native maps without proof.

Feature status remains 65/153 tasks, native correspondence unestablished,
0/141 accepted timings, 0/47 diagnostics and 0/26 independent reproductions.
No task marker, product adoption or performance claim is advanced by this
helper result.
