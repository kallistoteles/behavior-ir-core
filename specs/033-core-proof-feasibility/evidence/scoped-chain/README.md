# Construction evidence after the first artifact pair

The actual signed source/IR/matrix pair passed T034; see
[its receipt and limits](../artifact-pair/README.md). This directory extends the
mathematical relation. It is not a release, Nova certificate or runtime G1 result.
Native Init/K, generated whole-machine source/matrices, backend embedding,
compression, independent consumer, durable publication and latency remain open.
The corresponding native interfaces still return explicit `Unsupported`.

## Checked sparse views and complete initialization

T035's `views-formal-receipt/report.json` records 29 theorem targets and a fresh
kernel replay. Leaves retain full typed keys; occupied address collisions fail.
Counts, coverage, positivity and complete changed paths have precise meanings.
Opening soundness reduces a dishonest opening to a finite concrete hash collision;
it does not assume an injective 256-bit hash over all inputs.

The immutable sparse codec addendum fixes previously unspecified empty leaves and
key-address bit order. It does not alter the original codec profile or expand the
used-ID bound. A future release must bind both profile and addendum identities.
Concrete byte/hash/native bindings remain T042 obligations.

T036's authoritative `init-complete-formal-receipt/report.json` records 33 targets
and a fresh replay, including construction from the complete typed inventory,
not an assumption of valid cached summaries. Earlier intermediate receipts remain
unchanged. The model's encoder/hash/address parameters still need their concrete
checked instantiations before a native/circuit initialization can be certified.

## Concrete SHA and control-machine theorems

`Core033/SHA256.lean` defines all SHA-256 constants, schedule, 64-round compression,
feed-forward, byte parsing, length padding and streaming. The symbolic compression
maps all eight outputs to numeric Boolean/word rows through
`SHA256Circuit`, `SHA256Words`, `SHA256Expr` and `SHA256Symbolic`. There is no
unconstrained SHA oracle. The four u64 limbs use the frozen codec byte order;
all-limb equality implies equality of all 32 hash bytes.

This mathematical constraint relation is not yet the actual allocated SSA,
Rust build input, exported matrix or Nova augmented shape. T042/T044 must check
those actual artifacts and reject mutations before a release relation is complete.

The first combined SHA proof attempt (`sha256-formal-receipt/`) failed while Lean
was compiling the six closed vectors: the tool could not create a thread under
the 8 GiB address-space limit. It is not a checked receipt. Setting `Elab.async`
to false for those independent vector proofs passed the bounded sequential
preflight. `sha256-formal-receipt-002/report.json` records 66 named theorem targets,
allowed transitive axioms and a passed fresh replay. The whole engineering check
took 483.065 seconds and peaked at 2,318,598,144 bytes child RSS. These are build
costs, not certified runtime latency. No older result was rewritten.

The control machine fixes Boot/Initialize/InitDone, Evaluate/Maintain/Finalize/Done
and terminal AttemptDone. Its immutable obligation sequence cannot be shortened;
reuse requires equality of the relevant business/tree inputs. Counters are bounded
without wrapping; finalization itself is not a public endpoint. Dense build/state
checks state the semantic specification of later authenticated changed-path
instructions. They are not a claimed efficient native K implementation.
`machine-formal-receipt/report.json` records 19 targets, allowed transitive
axioms and a passed fresh kernel replay. Actual generated instructions remain open.

All `*.json` engineering-command records include the invoked command, elapsed
wall/CPU, peak child RSS, tool failure/timeout and recorder identity. They measure
engineering work. None is an ordinary certified-transition latency observation.
Raw failed commands and diagnostics remain alongside successful attempts.

To rerun concrete SHA checking in a new output directory:

```sh
nix-shell experiments/transition-study033/shell.nix --run '
  python3 specs/033-core-proof-feasibility/benchmarks/check_sha256.py \
    --out /absolute/new/proof-receipt-directory
'
```

Use the pinned, hydrated proof dependencies. The driver refuses an existing output
directory, checks source snapshots and actual named theorem axioms, and runs
`leanchecker --fresh` before it may report `Checked`.

## Closed Core contract and history

T039's `core-template-formal-receipt/report.json` records 21 targets and passed
fresh replay. The complete recognized declaration/metadata descriptor is tied to
the independent F for all supported create/set/emit inputs and valid parents.
Operator meanings cover signed comparison, full E membership/count, missing
binding, exact literal effects, first failure order, observation-recipe meaning
and repeated equal WorkIntent payloads. Count conversion is checked without
Int64 overflow under the declared cap. The pinned actual Core remains a test
oracle, not a correctness assumption. The actual JSON/Rust decoder and emitted
instruction refinement are still mandatory T042; a descriptor hash is insufficient.

`History.lean` extends this with complete authorized genesis, finalized-prefix
induction, current J, event coordinates/identity, exact outputs, refused-state/
command preservation and no unchanged endpoint after a nonempty suffix.
`history-formal-receipt/report.json` records 17 targets, allowed transitive
axioms and a passed fresh kernel replay. No concrete certificate follows.
[Assumptions and open refinements](history-assumptions.json) distinguish ordinary
crypto/authority/storage assumptions from the Core-specific gates still unbuilt.

## Concrete untrusted producers and sparse nodes

T041 implements the frozen/addendum byte layout in `src/tree.rs` and full versus
incremental private proposal generation in `src/producer.rs`. Reads authenticate
actual node bytes and child count/flag metadata; occupied full-key mismatches are
address collisions. Updates retain old content-addressed nodes and complete used
identities. Empty ID is distinct from absence. Unknown coverage forces affected
work rather than approval, with the unchanged resource bound enforced explicitly.

Eight scoped tests pass, including independent golden empty-root vectors, actual
byte corruption, a full key deliberately stored at a wrong address, old-root
reads, independent rebuild/root agreement, exact refusal order, equal set effects,
repeated commands and stale/altered private proposals. `cargo clippy --all-targets
--locked -- -D warnings` and formatting pass. Raw red and green runs are retained.
These tests are supplementary native evidence; source/matrix/codec refinement is
still T042. Neither a sparse `Root` nor a `Production` is a semantic certificate.
`advance_untrusted` changes only the private producer after recomputation. Actual
native Init/K and proof/consumer interfaces still return `Unsupported`.

## T042 in progress: primitive codec, shared u32 IR and actual source

T042 is unchecked. `word-actual-source-001/receipt.json` checks a538-byte
standalone Rust fixture exercising literal, AND, XOR, NOT, wrapping addition,
rotation and logical shift. Its80 named targets include concrete primitive codec,
UTF-8/key/parser bounds, shared WordIR and independent restricted-source syntax/
meaning. All pass axiom inspection and fresh replay. The exact file is compiled
as a standalone crate with the pinned compiler/target/flags, and real native
boundary outputs match a separate calculation. This is not the full SHA or K.

The source validator specializes to independently fixed expected IR and constructs
a declarative lexical/whole-function derivation. Hexadecimal literals and names
have proved interpretation/no aliasing; scopes and shift ranges are checked.
Equality to the certified syntax rendering is used only after its grammar and
semantic lowering are proved. A hash or equality between unchecked generator
outputs is not the acceptance theorem. Input/output names, types and the whole
compilation unit are part of the checked bytes.

`word-source-controls-001/receipt.json` retains ten actual changed source files,
each rejected by that same validator at its actual semantic validation goal.
Tool failures/OOM/timeouts are not counted as rejection. The first old-validator
red attempt hit its small-source recursion limit; it remains failed diagnostic
evidence. `word-old-semantic-red-check.txt` separately records actual semantic
rejection of the new valid u32 syntax by the old signed-only parser.

`WordStage.lean` builds shared registers from finite local expressions. Its value
preservation and prefix/frame laws compile; `word-staging-formal-receipt/` records
the actual audit/fresh-check outcome. The complete shared SHA program, allocated
field matrices, primitive/whole machine/codec lowering and backend/consumer
binding remain open. No release, cryptographic certificate or runtime latency
quantile is available from this primitive-source result.

### Shared full SHA construction and failed actual-source attempts

`SHA256Stage.lean`, `SHA256Schedule.lean` and `SHA256Compiled.lean` now contain
universal preservation proofs for the shared schedule,64 rounds and feedforward,
ending in `program_meaning` against the concrete SHA compression definition.
They compile. The emitted program has24 inputs,2360 u32 operations and8 outputs;
its130323-byte Rust source has SHA256
`cce4cd5a27e55aa1aff0cff5c9b7941f3ccd93f11f2bbc3071da6759dc349bc3`.
`sha-word-native-001/receipt.json` records seven passing real compiled native
vectors, including multi-block messages. These are supplementary diagnostics,
not actual-source correctness or runtime certification.

Actual complete-source validation attempts `sha-actual-source-001` through
`003` failed the8GiB address-space limit. Changing byte quotation and caching
the register count did not establish acceptance. The count/scope/literal isolated
attempts also exhausted that limit. All raw failures are retained, never counted
as successful mutation rejection or as Checked. A shared-program audit attempt
also failed because its dependency inventory omitted imported modules; that is
not a semantic rejection. Full actual-source correspondence remains open.

The current staging builder accumulates reversed instructions with a proved
cursor invariant. Its public instruction list and extension/value-preservation
laws retain the same order and semantics. `WordSourceChunks.lean` proves exact
concatenation to the original source rendering and that chunked validation implies
the original whole-byte validator. This representation change does not authorize
hash-only acceptance or omit grammar, scope, types, literals or any source bytes.
The updated complete-source attempt004 is separately retained.

`WordPacking.lean` proves full-width32/64 bit packing and reconstruction from
actual Boolean field equations. `PackedAdd32.lean` proves the range-bounded
wrapping-addition/carry equation and its R1CS row meaning, with no field aliases.
These modules compile; an actual allocated/canonical matrix and its full audit/
fresh replay remain required. Their arithmetic concerns SHA unsigned wrapping
addition and does not change Core's checked signed overflow semantics.

T042 remains unchecked. No full machine, Nova certificate, durable result,
fresh consumer, performance quantile or G1 pass follows from these artifacts.
Engineering proof/build durations are not certified transition latency.

Attempt004 also exhausted8GiB while compiling the actual-source acceptance
statement. Chunking/reversed staging alone has therefore not resolved this cost.
Proof-producing `decide_cbv` diagnostics are separate: the first count attempt
failed to create a thread, and the first literal attempt exceeded its symbolic
step budget. Neither failure provides a semantic rejection or a source proof.
A current universal-math audit/fresh replay is separate from these data-reduction
experiments and cannot grant actual-source authority.

### Current immutable universal receipts and bounded source work

`sha-shared-formal-004/report.json` records141 actual named targets, allowed
transitive axioms and successful `leanchecker --fresh` replay. It includes the
complete shared SHA meaning and exact chunk-to-whole-source refinement. Attempt003
was not accepted: a source changed during checking. Attempt004 instead uses a
frozen source copy so later development cannot alter its inputs.

`word-ports-formal-002/report.json` separately records70 targets with allowed
axioms and fresh replay. Actual Boolean/range/decomposition/addition row schemas
have full-width soundness, completeness and unambiguous packing for widths up
to64 bits. This is not an allocated full-SHA or machine matrix certificate.

The current `WordStage.Builder` stores only an input count and reversed
instructions; it carries no growing proof field or independent cursor. The
proved prefix/value laws remain. `SHAMaterialized.lean` supplies112 actual
checked finite equations for48 schedule extensions and64 rounds.
`SHAMaterializedFinal.lean` composes those equations, feedforward and the exact
original-program identity, then derives universal SHA meaning. These compile;
their combined actual-source receipt is still pending.

The proof driver now passes an explicit16MiB Lean thread stack. The default
reserved roughly1GiB per thread; reducing that reservation made the actual
instruction-count diagnostic succeed within the unchanged8GiB address-space
limit. Literal-byte chunk input diagnostics also compile. These compilation-only
diagnostics are not Checked receipts. String-byte quotation still exhausted
resources; source attempts005 timed out and006/007 exhausted memory. Attempts008
and009 remain separate pending runs, with009 splitting actual byte constants
into a separately compiled, snapshotted module. No failed tool invocation counts
as semantic acceptance/rejection. The proof-driver hygiene suite passes8 tests,
including refusal of sorry, native-evaluation/custom axioms and stale inputs.

`CanonicalLinear.lean` proves that sorting/coalescing actual row terms preserves
field meaning and that repeated input wires retain their multiplicity.
`WordField.lean` begins fixed34-wire word/carry allocation and actual instruction
rows, with proved port/range/packing and literal/AND/XOR/NOT meanings. Complete
operation/matrix allocation, strict matrix decoding and whole-machine source/
codec/entrypoint binding remain T042 work. T042 and all later tasks are unchecked.

### Allocated shared-word matrix and compositional source work

`word-matrix-formal-001/report.json` records139 named targets with allowed
transitive axioms and passed fresh replay. It proves actual allocated instruction
rows for all seven u32 operations, shared-program soundness, explicit witnesses,
complete matrix meaning in both directions and every public output binding.
The fixed layout uses one packed word,32 bits and one constrained carry per
34-wire block; separate public output wires retain repeated output positions.
`WordMatrixPorts.lean` additionally compiles complete port-cover/permutation,
length, no-alias and in-bounds proofs. Those later port targets still need their
own final audit/fresh receipt and do not prove global row well-formedness.

The actual generated SHA matrix is retained at
`experiments/transition-study033/generated/sha-word-matrix-001/matrix.bin`:
81065 variables,81664 constraints,24 public inputs,8 public outputs,81032 private
wires and14126718 bytes. Its SHA256 is
`3aa80d88e72c31897153229432dc5fae20de9e345dc131f34939e0dfbcc7c143`.
`sha-matrix-format-001/receipt.json` is an independent bounded parser diagnostic:
356178 terms, sorted/nonzero in-range coefficients/wires, complete disjoint ports
and exact EOF. It explicitly is **not** kernel-checked actual-matrix correspondence.

Whole-source attempts008 and009 also exhausted memory; separate compilation of
actual-byte constants did not establish acceptance. The compositional checker
instead proves each actual instruction's bytes and length,64 instructions per
module, then composes those byte equations into the unchanged complete validator.
The first64-instruction preflight passes at about1GiB peak RSS. All37 source
modules compiled in `sha-actual-source-groups-002/`; its aggregate then hit the
simplifier step bound. No aggregate success was recorded for that attempt.

`sha-actual-source-composed-001/` increases only the final simplifier step budget,
pins every successful imported module to its original source snapshot, olean hash
and successful actual compiler invocation, and audits all named targets again.
The whole actual-source validator and universal SHA meaning now compile and the
axiom audit passes. **Fresh replay is still pending at this checkpoint.** The
native Rust source is still the same130323-byte file used in the seven native
vectors. No complete-source Checked result is claimed until its new receipt exists.
The latest full-from-source driver includes the corrected group size sums and
simplifier bound; no raw earlier failure is overwritten.

`SourceBlockControl.lean` proves that changing a checked component rejects the
unchanged whole-source validator, retaining the full prefix and suffix. The
actual full-file mutation driver is prepared and requires a genuine Checked/fresh
source receipt before running. Draft or failed controls do not count as rejection.
T042 remains unchecked; whole machine/codec/actual matrix/Nova/consumer/release
and every G1 correctness/performance outcome remain unestablished.

### Complete actual SHA source accepted

`sha-actual-source-composed-001/receipt.json` is now **Checked**:2858 actual named
targets, allowed transitive axioms and passed `leanchecker --fresh` for the complete
closure. It binds the full130323-byte Rust source with SHA256
`cce4cd5a27e55aa1aff0cff5c9b7941f3ccd93f11f2bbc3071da6759dc349bc3`,
its exact whole-source validator acceptance and universal concrete SHA compression
meaning, plus the identical real compiled artifacts from the seven native vectors.
Successful independently compiled groups are pinned through
`seed-provenance.json`; the failed preceding aggregate remains failed. Complete
reproduction from retained sources uses `proofs/check_sha_blocks.py` in a fresh
output directory. The earlier pending checkpoint is superseded only by this
new receipt, never by rewriting an old failure.

This closes the complete SHA source sub-obligation, not T042: actual matrix bytes,
global matrix shape, remaining machine/codec primitives and K/backend/entrypoint
bindings remain mandatory. No Core transition, cryptographic history certificate,
durable latency quantile or G1 pass follows from a SHA compression source proof.
Actual whole-source mutation controls are now running against this genuine receipt.
