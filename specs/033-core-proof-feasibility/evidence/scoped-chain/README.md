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

### Whole-source controls, global shape and strict binary codec checked

`sha-whole-source-controls-001/receipt.json` is Checked with fresh replay for
12 actual full-file mutations. Each proof rejects the complete unchanged source
validator, including altered operations, references, outputs, signed parameters
and extra/unsafe/macro/configuration constructs. Tool errors are not rejections.

`matrix-shape-formal-001/report.json` is Checked for178 named targets with fresh
replay. Every generated instruction row is canonical and in range; complete
public/private/constant ports form a disjoint exhaustive variable partition.
`matrix-codec-formal-001/report.json` is Checked for109 named targets with fresh
replay, including full roundtrip through the original strict binary matrix parser
under its explicit well-formedness, width, count and byte-size bounds.

`generated/sha-word-matrix-quote-001/quote.json` retains an independent numeric
quotation of all81664 actual rows and356178 terms. Inverse encoding equals the
original14126718 bytes exactly. This quotation is explicitly unchecked: formal
comparison of these actual numbers with the proved compiler is still pending.
No byte-correspondence, full K, Nova embedding, certified runtime or G1 pass is
claimed. T042 remains unchecked. All reported proof/build durations are
engineering measurements rather than certified transition latency.

### Full digest ports and packet assembly laws

`digest-assembly-formal-001/report.json` is Checked with17 named targets and
fresh replay. Four independent u64 limbs each have64 Boolean constraints plus
packing; equality of all public limb values binds every byte of the256-bit
digest. Additional checked laws connect restricted-source safety to valid matrix
programs and compose row blocks and exact encoded sizes. These are universal
schemas, not an actual full Core or Nova certificate.

The first64 actual numeric matrix row groups pass diagnostic kernel compilation
(`actual-matrix-row-preflight-002/`). Header/public/private port bindings also
compile (`actual-matrix-header-preflight-003/`). The complete2385-group comparison
is running separately; its partial artifacts are not a Checked matrix receipt.
`HashStream.lean` compiles exact progress, full-block, bounded-counter and final
digest laws. Its native stream-control correspondence remains open, and this
new module has not yet received its own fresh replay. T042 remains unchecked.

### Actual SHA row inventory and control primitives

`sha-matrix-groups-001/receipt.json` records5124 audited named targets and2385
actual numeric row-group comparisons. Every actual row and its encoded size is
checked. Status is explicitly **AxiomAuditedPendingFresh**: the whole-packet
source/parser/matrix aggregate and its new fresh replay are still running. This
partial result does not authorize an actual whole-matrix Checked claim.

`word-control-stream-formal-001/report.json` is Checked with18 named targets and
fresh replay: bitwise carry/selection and exact SHA stream progress/finalization.
Later unsigned comparison, zero/sign, paired-u32 full-u64 addition and shared
multi-output composition also compile; their complete actual source check is
running separately. Generated control source has53 operations,7 inputs,7 outputs,
2773 bytes; its matrix has2048 variables,2056 rows and332178 bytes.
`control-native-001/receipt.json` records132 independent Python-integer/native
Rust comparisons, including full unsigned limits, carry, sign and non-Boolean raw
masks. This supplementary diagnostic is not a semantic or matrix certificate.
The first flat control-source proof exhausted the unchanged8GiB limit; it remains
failed. A compositional actual-byte proof is running instead. T042 stays open.

### Complete actual control source and semantic mutation controls

`control-actual-source-composed-001/receipt.json` is Checked:86 named targets,
allowed transitive axioms and passed fresh replay. It binds the actual2773-byte
Rust function (SHA256
`cd6428e41f5ce4e096705a29fafa78baf2ea729321f361fcd61a582a3a711a81`)
to full paired-u32/u64 wrapping addition, carry, unsigned order, zero/sign and
conditional selection. Its real pinned Rust library/harness and132 independent
integer vectors are bound by artifact hashes. The source fragment remains narrow
and value-only. A prior flat proof exhausted8GiB and remains failed; instruction
byte composition passes within the same bound.

`control-source-mutations-001/receipt.json` is Checked with fresh replay for six
real altered whole files: wrong safe operation, unchecked addition, wrong input,
wrong result and changed/out-of-range carry shifts. All reject through the
unchanged complete source validator.

SHA packet attempts001/002 retain assembly errors/a per-tool timeout and remain
failed. Attempt003 reuses the already kernel-checked source operation partition
through new explicit per-block equalities. Its complete actual numeric matrix,
strict parser, all output meanings and witness theorems compile and pass the
axiom audit; final fresh replay is running. The actual control matrix likewise
compiles and passes its audit after bounded numeric data partitioning, with fresh
replay pending. No pending run is a Checked receipt or G1 result. T042 is open.

### Complete actual SHA and control matrices Checked

`sha-matrix-packet-003/receipt.json` is **Checked** with7992 audited named targets
and passed fresh kernel replay for the full source/matrix/parser closure. It binds
the actual14126718-byte SHA matrix,81065 variables,81664 rows and356178 terms to
the exact same universal SHA compression program as the checked real Rust source.
All eight actual public output words are bound, and witnesses are proved complete.
The actual numeric quotation is independent of the expected compiler; inverse
fixed-width encoding equals the complete actual binary, and the kernel checks
all quoted numeric rows, headers, ports and original strict-parser roundtrip.
Ordinary file/literal binding is explicitly named in the receipt.

`control-actual-matrix-003/receipt.json` is **Checked** with96 targets and fresh
replay. It binds the actual332178-byte control matrix,2048 variables and2056 rows,
to the checked actual control source and the unchanged strict binary parser.
These new receipts supersede earlier pending notes, without changing failed
attempts. All proof/build durations remain engineering costs. They are not
certified runtime latency, compressed history verification, durable publication
or a G1 pass. Whole machine/codec/framing/finalizer/backend bindings remain open.

`t042-primitive-coverage.json` is a derived navigation index of exact available
receipts, scopes and remaining caller/integration obligations. It grants no
release authority and keeps T042 InProgress.

### Canonical matrix tampering and exact digest byte order

`control-matrix-mutations-002/receipt.json` is Checked with35 named targets and
fresh replay. Three actual full binary matrices retain valid canonical shape and
strict-parser acceptance but are rejected by the unchanged exact-relation
validator: deleted constraint, changed modulus and changed Boolean coefficient.
Every mutated numeric quotation is independently inverse-byte-equal and must
equal the explicit full record mutation in the kernel. The original relation
passes the same validator. A prior proof-assembly error remains failed.

`digest-byte-codec-formal-002/report.json` is Checked with21 targets and fresh
replay: SHA big-endian word bytes are exactly converted to the frozen little-endian
encoding; four full-range u64 limbs reproduce every one of the32 digest bytes.
`digest-actual-source-composed-001/receipt.json` is Checked with86 targets and fresh
replay for the actual3155-byte Rust converter,56 operations and8 u32 input/output
words. Its pinned real compiled artifacts also pass134 independent full32-byte/
four-u64 native diagnostics. This source receipt does not claim that the native
function returns four u64 words or that a whole-K public claim is connected.

`PackedU64.lean` and `DigestPacking.lean` develop the explicit field binding of
two constrained u32 words to each public u64 value. Global canonical allocation,
completeness and actual four-output matrix binding remain in progress. T042 and
the whole release relation are open; G1 remains unestablished.

### Actual four-public-u64 digest matrix Checked

`digest-packing-formal-001/report.json` is Checked with24 targets and fresh
replay: full64-bit output soundness, complete disjoint canonical allocation and
explicit complete witnesses. Each u64 value is constrained by both already
range-checked u32 halves. High halves cannot be omitted or freely selected.

`packed-digest-actual-matrix-001/receipt.json` is Checked with119 targets and
fresh replay for the complete actual source/matrix/parser closure. The actual
338358-byte matrix has2189 variables,2188 rows,8 u32 inputs and4 public u64
outputs. SHA256 is
`da4c8504b86a1ec9e0b25d3d2a00654cb9f4a12ad68236751e05cf2f78269bc0`.
The native3155-byte function still returns8 u32 words; four explicitly proved
field binding rows produce the4 public u64 values. Exact byte-order/codec proofs
connect this packing to all32 SHA digest bytes. No different native ABI is assumed.

`WideGuards.lean`, `StreamCounters.lean` and `CounterProgram.lean` now compile
full-u64 overflow/underflow guards and exact processed/remaining counter progress
against the formal hash stream. Their actual generated control artifacts and
fresh replay remain open. Whole K, application codec/framing/finalizer, backend
embedding and release-wrapper obligations still prevent completing T042 or G1.

### Full-width counter, signed rule, and complete artifact binding (2026-11-02)

T042 remains in progress. `stream-counters-formal-001/report.json` fresh-checks
27 targets connecting both full-u64 counters and their guards to the exact
HashStream processed/remaining/ready semantics. `counter-actual-source-composed-001`
fresh-checks 365 targets for the actual 329-instruction Rust source, including
input/source IR equality and overflow/underflow flags. Its native diagnostic has
209 independent boundary/random vectors. The first flat whole-matrix attempt
failed with kernel deep recursion; all failed evidence is retained. The
instruction-sized replacement `counter-matrix-groups-001` is only
AxiomAuditedPendingFresh (688 targets), and cannot authorize the complete matrix.
The final composed packet is checked separately.

`signed-actual-source-composed-001` fresh-checks 52 targets binding the actual
37-instruction source to the exact Core signed Int64 positive rule.
`signed-actual-matrix-001` fresh-checks 62 targets for all 1,329 actual rows,
1,328 variables, the original bounded binary parser and source subject. The
204,078-byte matrix has SHA-256
`ae414450b0159f7729a25cab55037dc69cede72e44130141eae3bf1c56b082c9`.
Its native diagnostic has 136 independent full-Int64 boundary/random vectors.

A new additional binding check serializes the exact closed data constant named
by a genuine Checked/fresh mathematical receipt, then compares **all bytes**
to the actual artifact. `bind_checked_value.py` checks owned and transitively
seeded compiled module hashes, source snapshots, pinned Lean version and input
stability. It cannot grant mathematical Checked authority. Its named premise is
the ordinary pinned compiler/runtime and file I/O assumption for literal/data
binding, without native-evaluation axioms. Separate `BoundCheckedValue` receipts
exist for the complete SHA source and 14,126,718-byte SHA matrix, control source
and matrix, digest-converter source, counter source, signed source, signed matrix
and packed four-u64 digest matrix. The packed-digest first binding predates the
additional transitive compiled-import checks; its receipt states its own scope.
`closed-value-binding-controls-001` confirms actual rejection of a changed final
matrix byte and a stale transitive compiled-module identity, preserving the
genuine files. These controls are engineering checks, not semantic theorems.

Standalone helpers do not close physical machine input/record framing,
authenticated state/path access, all guard/finalizer constraints or the actual
whole K source/matrix. No release relation or G1 performance claim is made.

The composed counter packet subsequently passed: `counter-matrix-packet-002`
fresh-checks **1,076 targets**, all 11,384 numeric rows, all ports, 11,331
variables, original-parser roundtrip and the actual source relation. Its complete
1,728,826 bytes are additionally bound by
`counter-matrix-closed-value-binding-001` to the exact closed mathematical matrix;
SHA-256 `388681aa0291e525122a44796ec2f3c40481b892336ac44db2636f18fabbcf9e`.
The earlier pending row receipt is unchanged. The counter's acceptance flags are
outputs whose physical-machine constraints still need wiring; no whole-machine
or G1 authority follows from this standalone matrix.

`BlockIngress.lean` now specifies all 16 SHA big-endian words and 64 separate
byte-range flags using full-u32 input words. Native invalid inputs are never
silently truncated by the generated function: the corresponding guard is zero.
`block-ingress-native-001` passes 451 independent diagnostics, including five
out-of-byte-range values at every one of 64 positions. Source/matrix and fresh
mathematical receipts for this boundary are separate work in progress. Native
agreement by itself grants none of that authority. A caller must constrain all
64 guard outputs to one before consuming the block as bytes.

`block-ingress-formal-001/report.json` has now fresh-checked all **13** ingress
refinement targets. That receipt proves the exact all-16-word mapping to
`SHA256.wordFromBytes`, all byte-range guards and rejection-guard meaning for
arbitrary full-u32 inputs. Actual byte-source/matrix checks remain separate.

The initial monolithic ingress-source byte module exceeded its 300-second
per-compile engineering budget (321 seconds including orchestration; the recorded
compiler command timed out at 300 seconds). Its failed attempt remains in
`block-ingress-actual-source-composed-001`; it has no Checked receipt. The
replacement `check_ingress_source_blocks.py` checks 64 actual instruction bytes
per module and composes them with the unchanged whole-source validator. This
changes proof decomposition, not accepted source semantics or artifact bytes.

`PaddingWords.lean` now defines exact zero-padding count, padded size, full high
and low SHA bit-length words, block count and profile guard. Its diagnostic
compilation passed; formal fresh replay and actual artifact checks are separate.
`padding-native-001` passes 268 independent full-u32 length cases, including
2^29 and 2^30 boundaries and out-of-profile inputs whose guard must reject.
The source has 51 operations and six outputs. The independent numeric quote of
its 1,785-row matrix is untrusted preparation until the actual-matrix checker
passes. Full padding-byte framing and authenticated message supply remain open.

### Padding arithmetic, length bytes and bounded source-header proof (2026-11-02)

`padding-words-formal-001` fresh-checks 11 targets for padding size, block count,
full low/high 64-bit SHA bit length and the explicit ≤2^30-byte profile guard.
`padding-actual-source-composed-001` fresh-checks 71 targets for the actual
51-operation Rust source, including its six output meanings. A physical caller
must constrain its profile guard to one; out-of-profile wrapped size arithmetic
is not an accepted input. Actual matrix checking is separate.

`length-bytes-formal-002` fresh-checks 16 targets (including its padding arithmetic
dependencies) for all eight canonical big-endian SHA length bytes and their
individual byte ranges, for every full-u32 input length. `length-bytes-native-001`
passes 268 independently calculated eight-byte vectors. The 18-operation source
and actual matrix are separate artifacts. The failed first range-membership
proof and generation attempt are retained; the successful exhaustive proof
includes the empty-tail case. `PaddingStream.lean` further proves the precise
data/marker/zero/length selection, every framed block position and its connection
to the mathematical SHA HashStream compression step; its fresh receipt is
separate and it does not yet prove an actual framing-controller source/matrix.

The ingress source's first two block-assembly attempts ran out of the declared
8-GiB address space. A bounded prefix diagnostic isolated the problem: all
operation partitions/byte blocks compile, whereas the single 64-parameter header
equality exceeds the budget. `SourceParameters.lean` therefore provides an
inductive parameter-line composition proof; each actual header line is checked
separately and the complete unchanged header follows by composition. The third
assembly compiled its complete header and body and is undergoing fresh replay.
No failed or merely compiled attempt is given Checked authority.

`padding-actual-matrix-001` subsequently fresh-checked **81** targets for every
actual row, original binary parser, source subject and all output positions. It
has 1,775 variables, 1,785 rows and 250,614 bytes; SHA-256
`03a473231044be9cb5e24e7a7db7375a97385be70c34598b7b22689022a0670b`.
`length-bytes-actual-source-composed-001` fresh-checked **32** targets for its
complete 1,016-byte, 18-operation source.
`padding-stream-formal-001` fresh-checked **8** targets for the exact streamed
byte selection, all 64 block positions and the HashStream compression input.
Native framing-controller source/matrix and whole-machine wiring remain open.

The ingress's third complete source compilation passed but its mandatory fresh
kernel replay ran out of memory. It therefore remains **not Checked**. A
single-module diagnostic is isolating that cost. Runtime investigation found
that the compiled Lean checker independently reserves its default large thread
stacks; the compiler's `-s16384` option does not configure that executable.
[The pinned Lean 4.30 runtime entry point](https://github.com/leanprover/lean4/blob/v4.30.0/src/runtime/thread.cpp)
supports `LEAN_STACK_SIZE_KB`. The proof driver now records and sets that variable
to `16384` for `leanchecker`, keeping the same 8-GiB address-space limit and full
`--fresh` semantics. A new complete-source attempt and proof-driver rejection
suite are running with that explicit setting. No resource limit is increased,
no axiom/target is removed and no failed receipt is rewritten.

`length-bytes-actual-matrix-001` fresh-checked **42** targets for its complete
654-row matrix and exact source/parser relation: 655 variables, 82,082 bytes,
SHA-256 `cbff574a48b369d6d034ad40e66787013844cfd73ff1043f441088de79445b93`.
Full closed-value byte bindings also passed for the padding source/matrix and
the length-byte source; each binding retains its own mathematical report and
transitive compiled module hashes.

The updated proof driver passed all **8** proof-hygiene tests: changed source,
failed fresh replay, missing/empty targets, seed collision/replacement, native
evaluation, `sorry`/custom transitive axioms and staging without fresh replay
remain rejected. Both the old-default-stack and the explicit-stack diagnostic
fresh replays of the actual ingress IR alone passed; that isolates the remaining
failure to a larger source closure and is not full-source authority. The complete
ingress-source attempt remains pending until its own mandatory fresh replay
passes. Its final report must remain absent on any failure.

### Completed ingress source; padding-byte program and enforced guards (2026-11-02)

`block-ingress-source-complete-001` now **fresh-checks 1,481 targets** across the
complete unchanged 61,211-byte source (1,248 operations, 64 full-u32 inputs,
16 SHA words plus 64 byte flags). The composed parameter header, actual
instruction bytes, exact mathematical IR and whole-source validator are all
included. The same 8-GiB ceiling remained in force; the explicit checker stack
setting allowed the complete replay to finish. `ingress-source-closed-value-binding-001`
also binds all 61,211 actual bytes to its exact checked closed data value;
SHA-256 `1454e93b6159a9f52fdae771f30f20e77a70cfe211bae967052471ac9e1a6467`.
Earlier failed receipts are unchanged. Actual ingress matrix row groups and their
final aggregate replay remain separate work.

`padding-byte-formal-001` fresh-checks 13 targets for exact full-word conditional
selection and the resulting canonical padding byte. `padding-byte-program-formal-001`
fresh-checks 19 targets including the compiled word program and profile,
position and raw-byte guard meanings. Its actual source has 820 operations,
three inputs and four outputs. `padding-byte-native-001` passes 1,849 independent
phase/boundary/rejection vectors. Actual-source/matrix correspondence is still
separate. A preliminary source-check job was deliberately terminated to correct
copied descriptive scope metadata before receipt publication; no theorem or
artifact bytes changed. The corrected attempt is separately recorded.

`GuardMatrix.lean` adds literal-one constraints to selected guard wires and
proves the resulting relation is exactly the original relation plus every
required guard. Its field-Boolean injection and generic evaluated-output helper
are checked separately before any concrete guarded artifact acquires authority.
Physical phase/acceptance wiring, authenticated raw-byte supply, canonical
application-record decoding, whole K and real Nova embedding remain open.

`ingress-matrix-packet-002` now fresh-checks **4,192 targets**, every one of the
44,800 actual rows, all ports, global well-formedness, source subject and original
binary parser. The matrix has 44,689 variables and 6,839,318 bytes; SHA-256
`a1a5e8ca3bd8694b41c1e2dc0465978a2e924d807e6092e9f71e1b370f9ea4a0`.
`ingress-matrix-closed-value-binding-001` additionally matches the entire encoded
checked data value to the actual file. The first packet failed its target audit
because its source-certificate wrapper had not been imported; the corrected
packet explicitly includes that wrapper and re-audits/replays the full closure.
The failed attempt is retained and has no Checked report.

`guard-matrix-formal-002` fresh-checks four generic forced-guard/output targets.
`guarded-padding-formal-002` fresh-checks six concrete schema targets: all three
padding-byte admission guards are forced, their wires are bounded, the matrix
shape remains valid, and accepted output is the exact canonical stream byte
under the explicit payload-byte representation premise. That premise must still
be realized by authenticated input/physical machine wiring. The emitted guarded
binary adds three rows to the original padding-byte matrix; its independent
actual-binary correspondence is now Checked in `guarded-padding-actual-matrix-002`: 2,631
targets, original strict parser, actual three-row guard tail and complete dependency
replay. `guarded-padding-matrix-closed-value-binding-001` compares every byte of
the 4,183,522-byte file with the checked closed matrix value. The corresponding
base matrix is independently bound in `padding-byte-matrix-closed-value-binding-001`.

Large auxiliary audits (for example this 4,192-target packet and the older
7,992-target SHA packet) are **intermediate engineering evidence**, not the
release target-list transport. The frozen profile's 4,096 release formal-target
bound remains unchanged. A release must name its bounded critical end targets
and retain their complete freshly checked dependency/axiom closure; none of
these auxiliary counts overrides that bound or grants release authority.

The next text-codec primitive checks untrusted Unicode scalar witnesses by their
canonical UTF-8 re-encoding against authenticated byte streams. This implements
verification of a proposed decoding result: valid scalars, exact byte lengths,
all bytes and end-of-field consumption must be checked. No Unicode normalization
is introduced. `utf8-encoding-formal-002` fresh-checks per-character canonical encoding and
`utf8-program-formal-001` adds the compiled word-program and initial text-witness
identity. Later whole-field/completeness/guard modules are still being checked;
original snapshot scopes remain authoritative. Actual source/matrix checks are
separate and pending. `utf8-native-001` exhausts all 1,112,064 valid scalars and
all 2,048 surrogate rejections, plus upper-bound/full-u32 probes (1,118,215 cases).
The native `utf8_witness` integration loop checks scalar admission, exact bytes,
width, limits and full field consumption; its three hostile-input tests pass.
Its physical-machine/source refinement is still open. No evidence here completes T042 or G1.


`utf8-source-blocks-001` is Checked/fresh for all 527 actual instructions (592
named targets). `utf8-source-closed-value-binding-001` binds the entire 23,876-byte
source file to the checked data value. `utf8-stream-formal-001` fresh-checks 33
whole-text/guard targets, including exact full-field consumption, agreement with
the original decoder, existence for every text and honest-input matrix admission.
`utf8-bounds-formal-001` adds six full-byte-range/positive-width targets: no output
byte truncation, exact encoded length and progress. The native host loop still
needs physical-machine refinement. `utf8-matrix-groups-001` is only
AxiomAuditedPendingFresh (1,087 targets/529 row groups); whole-packet closure is
pending. The first packet failed on an unnecessary no-progress simplification
in the one-input private-port proof; that attempt remains unchanged and unchecked.

`hash-pipeline-formal-001` fresh-checks exact all-sixteen-word byte ingress,
all-eight-word compression state wiring, padded-block word-program composition
and final canonical digest bytes. This binds concrete *program meanings*; it
still requires actual composite ports, authenticated bytes and physical control.

The new `IntegerIngress` word program decodes eight full-u32 byte inputs into two
full-width LE words and eight explicit byte-range flags. `integer-ingress-formal-001`
is Checked/fresh. `integer-ingress-native-001` passes 2,229 independent vectors,
including every byte at every position, u64/signed boundaries and invalid u32
byte inputs. Its actual source/matrix and concrete forced-guard wiring remain
separate work. No T042 completion or G1 pass is claimed.


`integer-ingress-source-001` now fresh-checks every one of the 156 actual
instructions (181 targets). `integer-ingress-source-closed-value-binding-001`
binds all 7,703 actual source bytes. `integer-ingress-guards-formal-001` adds the
forced-eight-byte schema; a later closure also includes honest-input admission
completeness. The actual integer matrix row/whole-packet checks and the strict
physical record cursor remain in progress.


`integer-rule-pipeline-formal-001` fresh-checks the complete mathematical value
path from eight canonical Int64 bytes through the actual decoder program meaning
to the generated signed-positive rule, for every Core Int64. Original-byte
representation and physical shared-wire realization remain explicit premises.
The bounded `ByteCursor` arithmetic/program currently compiles diagnostically;
its formal/source/matrix closures and field-authentication use are separate work.


`byte-cursor-native-002` passes 1,008 full-u32 boundary/oracle vectors for
admission, advancement, remaining bytes and exact endpoints. The first native
harness accidentally included the integer 2^32, outside its u32 input ABI; rustc
rejected that harness before execution. The corrected sampler retains all u32
boundaries and omits the out-of-domain integer rather than truncating it. Both
attempts are retained. These are supplementary diagnostics, not a whole-K proof.


`utf8-matrix-packet-002` now fresh-checks the whole original numeric matrix,
strict parser, global shape/ports and source closure (1,702 targets, 18,018 rows).
`utf8-matrix-closed-value-binding-001` binds all 2,763,926 actual file bytes.
The guarded variant's first attempt failed target auditing because the stream
module was not explicitly imported; the corrected attempt imports it and is
under fresh replay. Neither a failed audit nor pending replay is Checked.

`integer-ingress-matrix-packet-001` fresh-checks the complete original numeric
integer decoder matrix (544 targets, 5,600 rows), including strict parser and
source/port correspondence. `integer-ingress-matrix-closed-value-binding-001`
binds every byte of its 854,990-byte file. `integer-ingress-guards-formal-002`
checks ten source/guard targets, including honest-input admission completeness.
The concrete guarded matrix and its public original-byte value are checked
separately.

`byte-cursor-formal-001` fresh-checks eleven no-wrap/progress/endpoint and program
targets. `byte-cursor-source-001` checks all 89 actual instructions (117 targets);
`byte-cursor-source-closed-value-binding-001` binds its complete 4,363-byte file.
The original-slice bridge and whole actual matrix are under separate checks.
`ingress-guards-formal-001` fresh-checks six schema targets forcing every one of
the 64 SHA bytes, exact packing and honest-input admission. Concrete guard
binaries remain pending their own exact-file correspondence and binding.


`guarded-utf8-actual-matrix-002` fresh-checks 1,728 targets, including the actual
scalar-admission row and original strict parser. Its complete 2,764,046-byte file
is bound in `guarded-utf8-matrix-closed-value-binding-001`.
`guarded-integer-actual-matrix-001` fresh-checks 565 targets, including all eight
actual byte-admission rows and the public output pair's exact original-byte
meaning. `guarded-integer-matrix-closed-value-binding-001` binds all 855,950 bytes.
Both ordinary compiler/runtime/file-I/O binding assumptions remain explicit;
neither artifact grants whole-K or G1 authority.

`byte-cursor-matrix-packet-001` now fresh-checks 333 targets covering its complete
3,155-row matrix, source, strict parser and global shape. Its 497,630 bytes are
fully bound in `byte-cursor-matrix-closed-value-binding-001`.
`byte-cursor-read-formal-001` checks four original-slice/partition/endpoint targets;
`byte-cursor-guards-formal-001` checks ten admission/public-position/completeness
and slice targets. The concrete forced-admission matrix is still under checking.
`IntegerWidths` diagnostically compiles exact 1/2/4/8-byte specializations of the
same integer program; strict declared-width reading is an explicit prerequisite,
so arithmetic zero fill cannot authorize truncated records. Fresh replay remains
separate. T042 is still in progress: physical authenticated machine state,
record/control/finalizer wiring and actual whole K remain open.


`guarded-ingress-actual-matrix-001` fresh-checks 4,211 auxiliary audit targets,
including all 64 literal-one admission rows, full original source/base rows and
strict parser. `guarded-ingress-matrix-closed-value-binding-001` binds all
6,846,998 actual file bytes. This is auxiliary engineering evidence; the frozen
4,096 release formal-target transport bound is unchanged.
`guarded-cursor-actual-matrix-001` checks 357 targets, actual admission row and
public next position; `guarded-cursor-matrix-closed-value-binding-001` binds all
497,750 bytes. `integer-widths-formal-001` fresh-checks six specialization targets
for strict 1/2/4/8-byte fields.

The next metadata primitives preserve the native sparse-node format and frozen
1,048,576 count ceiling. `node-count-formal-001` fresh-checks eight full-u64 sum,
no-wrap/resource-admission and word-program targets. `node-count-native-001`
passes 400 independent u64 boundary/wrap vectors. Concrete count source/matrix
and forced admission are still separate pending checks. Scalar Boolean/u8/u16
range guards have 523 passing native vectors; mathematical/source/matrix and
exact raw-Boolean interpretation are still being checked. Neither these pieces
nor any prior primitive evidence completes the physical authenticated K.


`node-count-source-001` fresh-checks all 135 actual instructions (164 targets).
`node-count-guards-formal-001` checks 14 count/program/forced-admission targets,
including honest-input completeness. The 400 native boundary vectors remain
supplementary. Actual full node-count matrix and its concrete admission row are
still being checked. `scalar-ranges-formal-001` fresh-checks four full-u32 range,
Boolean-value and program targets; the actual scalar source and raw-Boolean
semantic adapters remain separate checks. No sparse-path, physical machine or
release relation is completed merely by these scalar/count primitives.


`node-count-source-closed-value-binding-001` binds every one of the 6,500 actual
count-source bytes. `node-count-matrix-groups-001` audits all 140 original row
groups (291 targets) but remains AxiomAuditedPendingFresh until the complete
packet is checked. The new public-count-pair theorem compiles diagnostically;
its actual guarded matrix will check the public sum and forced cap together.
`BooleanValues` diagnostically compiles exact raw Boolean decoding, guard
admission/reconstruction, noncanonical rejection and positive/coverage AND
semantics. Source/range and full raw-value formal closures remain separate.


`guarded-node-count-actual-matrix-001` fresh-checks 498 targets covering the actual
admission row, complete original count matrix/source/parser and public full-u64
child sum. Its entire 753,150-byte file is bound in
`guarded-node-count-matrix-closed-value-binding-001`.
`guarded-scalar-matrices-002` jointly fresh-checks 229 targets for the actual
Boolean/u8/u16 variants; all three 285,702-byte files are independently bound in
`guarded-scalar-{boolean,byte,short}-closed-value-binding-001`. The first family
attempt failed an omitted explicit kind argument in a size-proof projection;
its failed evidence remains unchanged.

`node-metadata-formal-001` checks exact count/positive/coverage metadata against
the original Views.branchSummary. `branch-codec-formal-001` checks six exact
115-byte tag-81 branch framing, strict/suffix/complete roundtrip and injectivity
targets. Concrete branch word encoding, native/actual-source/matrix/hash binding
remain open. Metadata, resource admission and authenticated node validity are
separate obligations; passing the byte format alone never grants acceptance.

Local storage now shares byte-identical large immutable compiled modules to
avoid accumulating duplicate disk copies. No file contents or existing receipt
bytes were changed. The full positive-report audit verifies every recorded
owned/imported module digest. An initial audit also visited a deliberately stale
negative-control report (its expected import hash is intentionally all zeroes);
that preserved fixture is explicitly excluded from the positive-report audit,
not repaired. This is storage hygiene only, not a new semantic/runtime receipt.
