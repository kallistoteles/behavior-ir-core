# Whole typed-row result and fresh kernel replay

Native608 (r9633) closed successfully on 28 November 2026 with twenty checked
helper roots. The two new roots establish the exact generic typed insertion
result and the complete extracted `views.seed_row` return value. This extends
Native603's eighteen-root result; it does not establish full native B01–B10.

## Actual row result

`NativeWholeTypedSeedSpec.lean` specifies the full result independently over
the complete Native585 types and positive collection wrappers. It retains full
native key/version arguments, all three maps and actual set values. It covers
ID lookup, identity checks, entity selection, ordered phase/owner reads, valid
phases, updates and every error frame. Size premises concern representable
borrowed strings; there is no fixture/population bound or desired-result premise.

`NativeWholeTypedSeedProofs.lean` ports the previously checked isolated-row
argument into this conserved full context. Actual generated Types and Funs
remain unchanged. All 85 external function nodes remain present: 28 explicit
candidate interpretations and 57 open nodes. Generic API/native-source,
allocation, ownership and runtime adequacy remain unestablished.

Native604 reported two phase-comparison proof failures. General fixed-literal
borrow equality lemmas resolve the specialization problem without changing the
function, specification, theorem types or domain. Native605 compiled all twenty
roots and passed exact-type/transitive-axiom checks, but fresh kernel replay
then exposed a separate literal-dependency scheduling defect. Its failure was
not treated as a proof pass.

## Literal dependency defect and correction

The stock pinned checker rejected an owner-label bound helper with unknown
`String.ofList`. That declaration was already in the export: zero-based line
12,144. Inspection of the pinned SDK explains the problem:

- `Lean/Replay.lean` schedules dependencies from `getUsedConstantsAsSet`.
- `Lean/Util/FoldConsts.lean` visits explicit constants/projections and skips
  literal expressions.
- `LeanExport/Basic.lean` separately exports string-literal prerequisites
  `Char.ofNat` and `String.ofList`.

The versioned `selected-root-literal-replay-v2` control schedules already
exported `Nat`, `Char.ofNat` and `String.ofList` first. It uses the same pinned
SDK Replay operations, including `addDeclCore 0 0`, the remaining declarations,
postponed constructor/recursor checks and exact quotient post-checks in a fresh
empty kernel environment. SDK/kernel binaries and proof terms were not edited;
the three-foundation-axiom policy was not relaxed.

The control program is compiled from frozen Lean source, using the pinned SDK
and existing pinned C compiler, and linked to the SDK's static libraries.
Program, generated C, executable and compiler identities are checked before and
after use. Its native build occurs before proof-module compilation to catch
tool failures early; the fresh proof export is supplied only after actual
source/type/axiom checks.

The export accepted by Native608 is **byte-identical** to the Native605 export
rejected by the stock replay order: 39,360,486 bytes, SHA-256
`09ac770f3ef30a3842b7660eaa65a90bad0720f9228157e2bba3126a460757bf`.
The correction concerns replay scheduling, not replacement of proof content.

Native608 also ran a genuine negative control: one exported root's proof was
replaced by its unchanged type, preserving the other export bytes and declared
root types. Transport policy still passed; the actual fresh kernel rejected it
with a declaration type mismatch and exit1. The original export passed with
exit0. All 37 commands had their expected exits: 36 zero and this one deliberate
negative. The fresh kernel checked 7,408 declarations for twenty selected roots
and their dependencies; permitted axioms remain only `propext`,
`Classical.choice` and `Quot.sound`.

## Preserved failures and development checks

Native606 caught a missing `module` declaration for import-all. Subsequent
small actual compile controls caught module visibility. An interpreter smoke
test exposed that this SDK does not provide an interpreter implementation for
`LeanExport.parseStream`; native compilation/linking uses its existing static
library instead. Development probes retained missing-header and library-path
failures. A native diagnostic hit the older development CombinedGrowthLimit;
that limit was not raised. The final compile-only development checks remain
inside their original bounds; the native tool build runs under the unchanged
NATIVE profile. Native607 then caught a missing explicit project root when
compiling outside its working directory. Native608 includes that root.

A metadata freeze also correctly refused resume because the changed checker
test file was missing from the selected new subject. Its failed result remains
preserved; r9632 explicitly included the file before declaring Native607.
No Native attempt was fabricated for the rejected metadata resume.

Seven final controller/actual Lean-compile controls pass. The import-all parser
fix has six passing row-context controls and six view-context regressions,
including rejection of a missing local import. Scoped Ruff checks pass. Lean
still emits nonfatal unused-proof-argument warnings; none were suppressed.

## Closed evidence

External paths use work w001's registered roots.

| Root and path | Bytes | SHA-256 |
|---|---:|---|
| future_evidence: attempts/a0608/checkpoint.json | 1,561 | 4b58b265c033584f623c7ad652c24b25b947e3b311f1a530f662b6ae86f873a7 |
| future_evidence: attempts/a0608/child/receipt.json | 1,754,363 | a0e7e6c03b70f1a243797f5a7356add7dfcf969e958f6506d0f3de743c246e18 |
| private: ground-lean-probe/a0608/result.json | 171,838 | 17c64a991515d4d1f89ecf2748b42800e6e8ab7361422bfd0591a4ab67d0421c |
| private: ground-lean-probe/a0608/declared-proof/result.json | 171,083 | d19e170a6d4b984caa9150b1bf8f700ba664ed2b126f3ade80308df036deba37 |
| private: ground-lean-probe/a0608/source-binding.json | 13,686 | fd4e31a8d06680739f71c7e1ded6fef4036611960e998982b631ad0dbc9cc02f |
| private: ground-lean-probe/a0608/backend-imports/index.json | 2,082 | f168c2b0f93977647d618c1c2716e2c32251436f9a27eff7c27233793d355848 |

The attempt seal verifies, actual outer exit is zero, sources remain valid,
no resource stop occurred, both process closures are empty and the owner fence
is absent. Independent and incremental final storage agree: cache
38,596,844,251 bytes, temporary 4,428,127,981 bytes and artifacts
10,335,157,582 bytes. Root/data free space is 30,841,421,824 / 4,531,470,336
bytes. Across 2,255 samples the maximum adjacent gap is 271,539,020 ns.

## Overall status and next work

The next mathematical connection is typed/canonical row commutation in this
same full context, followed by reachable map/order invariants and the actual
Store/authority/evaluation/output/publication chain. The full native bridge,
all required experiments, compact contract and independent reproduction remain
open. Feature status is still **65/153 tasks**, native correspondence
unestablished, **0/141 accepted timings, 0/47 diagnostics and 0/26 reproductions**.
Twenty helper roots are not twenty completed feature tasks. Cache reclamation
is needed before another large build: only 57,861,413 bytes remain below the
existing cache ceiling.
