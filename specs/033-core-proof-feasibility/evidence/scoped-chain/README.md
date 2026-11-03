# Construction evidence after the first artifact pair

For the current overall result and remaining obligations, read the
[status page](../../STATUS.md). Later entries below supersede earlier pending
construction notes; original receipts and failures remain unchanged.

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

The branch byte encoder now has `word-bytes-le-formal-001` (7 fresh targets)
and `branch-word-encoding-formal-001` (11 fresh targets). All four bytes of
each u32 and both words of each u64 preserve the original LE encoding. The
26-input, 301-instruction program emits all 115 bytes of the frozen branch
format, with exact Boolean input premises. Its actual Rust file is 16,045 bytes,
SHA-256 `39059f5e17493d1555eb09b0ac5bbdda8a6755b6777f9aeec1f9516540d237f0`.
`branch-word-native-002` agrees with a separate standard integer/byte oracle
on 516 vectors. The first native harness had the wrong framing tag width and
stopped before compiling/running the generated code; that failed fixture is
preserved. The repaired oracle uses the original u16 tag81 directly.

`branch-word-source-001` successfully compiled every instruction group, then
failed the final large assembly with `std::bad_alloc` under the unchanged
8 GiB per-process bound. No Checked source receipt was produced.
`branch-word-source-002` preserved those successful compiles, checked each
header line and each small return chunk, then exposed a missing append
association in the footer composition. `branch-word-source-003` repairs that
composition in a new directory, retains all provenance and requires fresh
replay of the complete original-source closure. Its status must be read from
its eventual receipt, rather than inferred from this construction log.

`BranchHashPipeline` connects the exact 115-byte message to exactly two
padded SHA compression steps and the complete final digest byte program.
`BranchAdmission`/`BranchAdmissionProgram` add seven full-word kind/depth,
canonical Boolean, exact low/high sum and no-wrap resource-cap checks.
`branch-admission-native-001` agrees on 580 vectors, including low-byte alias
and full-u64 overflow attacks. Their fresh formal checks and actual admission
source/matrix/forced-row checks are separate obligations. Authenticated child
roots/metadata, physical shared-wire composition and the complete K machine
are still open. T042 is unchecked; 41/93 tasks are complete and G1 is false.

`branch-hash-pipeline-formal-001` has now completed: 21 targets, Checked with fresh kernel replay. The construction establishes exact two-block word-program SHA semantics for all branch messages; actual authenticated physical matrix wiring remains open.

`branch-word-source-003` has completed with 403 fresh targets. The recovered
source assembly checks all 26 header lines, all 301 original instructions,
all 115 returns in bounded chunks, and the whole unchanged source validator.
`branch-word-source-closed-value-binding-001` binds all 16,045 bytes of that
checked closed source value to the actual Rust file. No process memory bound
was raised. The auxiliary `SourceReturns` theorem composes bounded literal
return chunks; its transitive axioms and complete dependency closure are
included in the final fresh receipt.

`branch-admission-formal-001` has 9 fresh targets and
`branch-admission-guards-formal-002` has 14. The initial guard formal run
omitted a checked imported guard module and failed before a receipt; the
second run names and hashes the complete checked dependency closure.
`branch-admission-source-001` fresh-checks all 272 actual instructions and the
full source (355 targets), and its closed-value binding covers all 13,336
actual bytes, SHA-256
`2e45107fffeec330436ae5d4fe6a95523869ec533847ac0768bca0d82d7af965`.
Concrete base/guard matrices are still being checked separately.

`branch-word-bounds-formal-001` checks all 115 full output words are bytes,
without high-bit truncation for any u32 inputs (4 fresh targets).
`digest-representation-formal-001` checks the lossless representation of all
32 SHA bytes in the original abstract view's Fin(2^256) (7 fresh targets).
`branch-view-codec-formal-001` adds the exact native depth = 256-height mapping,
full child roots and original branch-node interpretation. A wrong bounded
branch with an equal root explicitly yields two different concrete messages
with equal SHA digests (12 fresh targets including digest representation).
No axiom asserting an injective finite hash was introduced.
`value-codec-formal-001` checks the original signed-Int64/full-UTF8 value
record, strict typed/suffix and complete EOF roundtrip, injectivity and size
(6 fresh targets). These are exact format/value results. Authenticated
physical decoder/witness/matrix realization and whole K remain open.

`branch-word-matrix-packet-001` has completed: 1,098 fresh targets, 11,234
variables, 11,233 rows, and all 1,452,198 bytes of the actual matrix.
SHA-256 is `ff917f5fe99b31e98e0c8db81da60c0547810b385c3b0a4feeeef32fcb8b4d60`.
`branch-word-matrix-closed-value-binding-001` independently binds the complete
checked matrix value to that whole binary. Every original header/port, actual
instruction row, output, row weight, strict parser and semantic result is
included; this is not shape-only or generator-equality evidence.

`branch-admission-matrix-packet-001` has completed for all 10,176 base rows
and 1,613,842 bytes, SHA-256
`e54973f370798f5a7e74231eaf0ab885900d9bf35ac09db170f623a324796fe3`.
Its complete closed-value binding has also completed.
`guarded-branch-admission-actual-matrix-001` fresh-checks all seven actual
literal-one guard rows together with the complete base/source closure
(1,011 targets). Its 10,183 rows encode to 1,614,682 bytes, SHA-256
`9603b33592a16014f8bdd84cd4addb7322c682dadcbfa625288d588952e8345c`.
The final complete guarded-file binding is a separate recorded stage.

`leaf-codec-formal-001` has 20 fresh targets: exact tag80 live/used leaf
framing, signed value and UTF8 fields, both canonical occupancy widths, EOF,
canonical empty sentinels and complete full-key/value meaning. An early
monolithic reader rewrite hit heartbeat/process limits. Composing the
previously checked reader equations explicitly (local irreducibility during
proof elaboration) reduces the diagnostic compile to seconds without raising
the 8 GiB/process or 300-second compilation bounds. Failed snapshots remain.
`node-codecs-formal-001` has 44 fresh targets and adds complete bounded
injectivity across all empty/occupied/branch constructors for both trees.
`concrete-opening-formal-001` has 46 fresh targets, including a wrong original
live/used opening yielding different actual messages with equal concrete SHA
digests under explicit typed-node bounds. No global finite hash injectivity
assumption was added. Physical K still must establish those node bounds and
realize the exact authenticated stream/matrix wiring.
`hash-root-transfer-formal-001` has 3 fresh targets and connects every one of
the eight checked child digest output words to all 32 original parent digest
bytes, including a complete child SHA trace to the abstract view digest.

`word-inline-formal-001` fresh-checks all 16 register-composition/inliner
lemmas: full instruction/output meaning, topological validity, exact register
bounds, original prefix preservation and input congruence. Subprogram inputs
alias earlier registers; operations are appended once. The new
`BranchCheckedProgram` uses this to combine the original 115-byte encoder and
all seven field checks on the **same 26 physical inputs**. Its 573-instruction,
122-output source/matrix generation is recorded as unchecked until the actual
new artifacts get their own complete correspondence and byte-binding receipts.
Authenticated child metadata, full physical K, finalization, actual Nova and
all runtime campaigns remain open. T042 is unchecked, 41/93 tasks complete,
G1 false. All construction times above are engineering work, never latency.

`guarded-branch-admission-matrix-closed-value-binding-001` now binds all
1,614,682 guarded bytes as well. `BranchCheckedProgram` then combines byte
encoding and all field checks using the checked inliner on the exact same 26
inputs. `branch-checked-program-formal-001` has 27 fresh targets,
`branch-checked-guards-formal-001` has 6, and
`branch-checked-source-001` has 719. The complete new Rust source is 28,802
bytes, SHA-256 `59a395b206a441fad0b8c302daab137f6d128416f0af85b7f803dda374e71fec`;
its full closed-value binding has completed. `branch-checked-native-001`
agrees with separate byte/field oracles on 580 full-input vectors. All 573
actual source instructions and all 122 returns are covered.
`branch-checked-matrix-groups-001` audits all 600 actual numeric groups
(1,229 targets pending fresh replay). Whole actual source/matrix/port/strict
parser composition and the final combined guarded matrix remain distinct
stages; their status must be read from their completed receipts.

A required physical-K detail is now demonstrated by
`sibling-metadata-binding-formal-002` (5 fresh targets). With a false flag in
the changed child, replacing a sibling's true flag by false leaves the **old
original parent bytes identical**, while the new parent metadata becomes wrong
when the changed child's flag becomes true. Sibling count and all 256 digest
bits are unchanged, and no collision between different old SHA messages is
needed. Thus root-only opening/value soundness cannot authorize reusing every
sibling metadata field. The sibling's own node bytes must authenticate its
summary (or an equally strong, proved condition must establish it).
`authenticated-sibling-formal-001` proves exact own-node summary extraction
and reduces incorrect reused live/used metadata to different concrete
messages with equal SHA digests (5 fresh targets under explicit node bounds).
`AuthenticatedMaintenance` strengthens path maintenance with exact sibling
summaries, reconstructs the complete original opening, and derives the full
updated summary. Its physical node decoder, SHA and control realization are
still required. The frozen 115-byte branch format is preserved.

The native path uses byte-MSB-first address bits; `AddressBits` checks the
coordinate conversion to the original 256-bit digest representation and SHA
word bits. This is a construction-stage format/semantics obligation; a dynamic
selector and physical path controller still need their actual source/matrix
checks. No full-K, release, Nova or G1 result follows from these primitives.

Second immutable-compiled storage sharing saved 10.73 GiB without changing
module bytes. The audit stage
`audit-every-genuine-positive-checked-module-byte-after-second-immutable-storage-sharing`
rechecked all 107 completed positive Checked reports and 11,799 unique file
objects, preserving the intentionally stale negative-control report unchanged.
This is storage hygiene, not new semantic or runtime evidence.


The actual SHA-address selector now has a composed mathematical implementation:
9 input words, 258 operations, and four outputs (the bit and three admission
flags). `word-address-meaning-formal-001` fresh-checks the exact selected word,
logical shift and bit result for every admitted depth. The separately replayed
`word-address-native-meaning-formal-001` connects this result to the original
byte-MSB-first SHA address for all 256 positions, including a completed SHA
trace. `word-address-native-002` checks 1,320 native vectors against a separate
byte oracle. Run 001 passed its Rust vectors but failed its final harness check:
the Python variable holding the initial source snapshot had been overwritten by
a digest. The preserved failure was fixed in the harness, and run 002 passed;
this was not a change to the generated source.

The shared dynamic shift (103 operations) and eight-word selector (130 operations)
each have fresh complete actual-source and actual numeric-matrix correspondence,
plus full source/matrix closed-value byte bindings. The shift matrix has 3,583
rows; the selector has 4,743. Their range guards and the composed address source
are being checked separately; consult the derived coverage index and completed
receipts for current status. These components still do not establish physical-K
control flow, memory/stream binding, finalization, Init, actual Nova or runtime
latency. T042 remains unchecked, 41/93 complete, G1 false.


The composed 9-input SHA-address source is now `word-address-source-001`
(321 fresh targets); all 12,276 source bytes are bound by
`word-address-source-closed-value-binding-001`. Its 258 actual instruction groups
have numeric equations; complete matrix replay continues separately. The first
packet correctly failed because its audit import closure omitted the separately
checked `WordAddressMeaning` module. The next preparation had a Python quoting
syntax error. Both failures remain; packet 003 explicitly imports the model.
The forced dynamic-shift matrix has 391 fresh targets and its complete 535,210
bytes are bound by `guarded-word-shift-matrix-closed-value-binding-001`.
Two initial binding commands used a wrong driver path and never started; the
correct driver runs completed without changing the actual artifacts.

`HashBlockProgram` now composes all 64 full-u32 byte inputs and all eight SHA
state words through shared ingress/compression registers: 3,608 operations and
72 outputs (eight SHA words plus 64 byte flags). `hash-block-meaning-formal-001`
fresh-checks 18 targets covering complete output meaning, topology and all typed
byte/SHA connections. The separate guard schema and original hash-stream bridge
are still being replayed. `hash-block-native-002` agrees with independent hashlib
on nine padded/multiblock messages and checks 320 per-port full-u32 range attacks.
This is native agreement, not an actual source/matrix certificate.

The first generator exhausted the unchanged 8-GiB address-space limit while
materializing the whole matrix encoding as a linked byte list. `MatrixFile`
writes the same finite canonical header and one row at a time; the second
unchecked generation completed within the original limits. Its independently
quoted 20,879,806-byte matrix has 125,904 rows, SHA-256
`bcf89a500ce5b46b82d852e3a7dfdbbd45cefcad09d771b4a92c0eda0f57f880`.
Actual correspondence and full closed-value byte equality are still required.
The first source quotation hit declaration recursion depth on one long literal
list. The recorded partitioner retains all 3,608 literal operations in 57
64-operation declarations and keeps the original recursion/resource limits.
Instruction and whole-source checks continue; no generator success grants proof
authority. Whole physical K/control/Init/finalization, Nova and runtime G1 remain
open. T042 remains unchecked, 41/93 complete. Construction durations above are
engineering costs, never certified-transition observations.


`word-address-matrix-packet-003` completed (896 fresh targets), and its full
1,363,458 bytes are bound by `word-address-matrix-closed-value-binding-001`.
`guarded-word-address-actual-matrix-001` completed (916 fresh targets) and its
1,363,818 bytes are fully bound as well. All three depth/index/shift checks are
forced in the accepted matrix. `hash-block-guards-formal-001` completed (4 fresh
targets), `hash-block-stream-formal-001` completed (2), and
`hash-block-raw-formal-001` completed (7). The latter derives exact original bytes
from accepted raw full-u32 ports and proves every one of the eight actual field
outputs equals the original compression word. No typed-byte truncation premise
is substituted for range admission. Full physical stream/controller bindings
remain open.

`hash-block-source-blocks-002` completed all 3,608 actual instruction equations
(3,856 targets, AxiomAuditedPendingFresh). Complete framing/validator/whole-source
fresh replay continues separately. The raw guarded block matrix is independently
quoted, but its actual whole-matrix certificate remains pending. Its first
regeneration command failed on a development-module search path before producing
output; the corrected second run completed without changing any Checked closure.

`ParentMetadataProgram` computes the count sum and both aggregate flags from
two child summaries. `ParentBranchProgram` feeds those exact registers to the
original 115-byte encoder and seven branch field checks; it adds count/four child
Boolean checks, for 12 flags total. There is no separate producer-selected parent
count or flag input. The 26-input, 782-operation, 127-output unchecked artifact is
38,593 source bytes, SHA-256
`4c4076723dfd84173d15512be03d854b64c09a501161a2a4c4312f44863f1a96`.
`parent-branch-native-001` agrees with a separate byte/count/AND/range oracle on
660 vectors. Mathematical replay and actual source/matrix checks are distinct
stages; this does not authenticate either child or prove a full path controller.

The optional bounded-memory matrix binder requires a genuine fresh-checked
`MatrixCodecChunks` module in the same sealed closure. Its universal chunk
identity and the missing-lemma negative control are recorded separately. The
normal complete-byte binding path is retained and rechecked. None of these
engineering checks grants semantic/release/G1 authority. T042 remains unchecked;
41/93 tasks complete. Actual whole K, Init/finalization, Nova and certified runtime
campaigns remain open.


`hash-block-source-001` completed the full actual function (3,948 fresh targets,
within the unchanged 4,096 target bound), and all 190,979 bytes are bound by
`hash-block-source-closed-value-binding-001`. Its complete numeric matrix work
continues. `parent-branch-source-002` completed (947 fresh targets), and all 38,593
source bytes are bound by `parent-branch-source-closed-value-binding-001`.
The first parent whole-source assembly stopped correctly when it tried to
recompile an existing seeded `SourceReturns` module; run 002 retains and rehashes
the original compiled proof. `parent-branch-encoding-formal-001` completed with
21 fresh targets, connecting the computed count/child-AND values to the exact
original 115-byte parent preimage. The twelve forced guards are separately fresh
checked in `parent-branch-guards-formal-001`; actual numeric matrices remain open.

`matrix-codec-chunks-formal-001` completed (2 fresh targets). The optional row
serializer then bound every byte of the original 10,538-byte first artifact in
`matrix-chunk-first-artifact-binding-001`; the missing-lemma negative control and
retained default complete-source binding also passed. This remains literal/data
file binding under the named ordinary compiler/runtime/I/O assumption, never
semantic proof authority.

Third immutable compiled-file sharing saved 16.69 GiB. The subsequent audit
rehashed all 141 genuine positive Checked reports and 17,062 unique file objects;
all registered module bytes were unchanged. Deliberate stale negative fixtures
were excluded and preserved. No live proof output or old-Core/032 file was edited.
This is storage hygiene only.

Inspection confirms that the existing untrusted native Opening already supplies
whole sibling `Node` objects, not free metadata scalars. Its reader hashes and
checks their own records. That format is retained. The finite-transcript proof
is being strengthened to derive the complete honest opening directly from those
own-node witnesses; the physical K byte/hash/controller connection still needs
to be implemented. All full-chain, actual Nova, durability and runtime G1 gates
remain open. T042 unchecked, 41/93 complete, G1 false.


`parent-branch-matrix-packet-001` completed (2,628 fresh targets), including every
actual numeric row, complete actual source/port correspondence, strict matrix
parsing and honest whole-output completeness. Its complete file is bound in
`parent-branch-matrix-closed-value-binding-001`. The independently quoted matrix
with all twelve forced checks is a separate replay currently in progress.

`own-node-opening-formal-001` completed (10 fresh targets). A witness made from
whole sibling nodes now establishes the **complete** original opening and full
updated summary under a finite transcript binding condition, without a separate
unproved exact-sibling premise. A wrong live/used value or metadata field exposes
two different bounded canonical messages with equal concrete SHA digests. Each
finite transcript contains 2*n+1 nodes. This is a mathematical reduction, not a
claim that physical K already checks every node/stream port.

`bottom-up-opening-formal-001` completed (17 fresh targets): leaf-to-root frames
fold old/new summaries exactly as the original opening laws, with ascending
heights and reversed original address directions. The bounded counter separates
active positions 0..255 from terminal 256 and rejects larger full-word aliases.
Canonical address-bit ordering covers every one of the twelve summary words.

`PathFrameProgram` then integrates counter, original key address selection,
child/sibling ordering and computed parent bytes in one register program. It has
34 inputs, 1,357 operations and 133 outputs. There is no separate depth, direction,
parent count or parent-flag input. `path-frame-meaning-formal-001` completed
(32 fresh targets) for the exact raw meaning and every shared port.
`path-frame-native-001` matches a separate original-byte/address/count oracle on
1,500 vectors, including all 256 positions and full-word alias attacks. All
65,262 source bytes have SHA-256
`c00807fcd0991f0436e26937277286fa5bc04b3f99f4dd7250459f7c70a4db76`.
The candidate matrix has 47,570 rows and 7,118,486 bytes. Actual-source/matrix
correspondence and all seventeen forced flags are not yet complete. The explicit
original completed-key-hash coordinate bridge is being replayed separately.
The native builder already provides whole sibling nodes; its format is retained.

Actual SHA matrix work continues. Full K control, authenticated stream/state
bindings, Init/finalization, Nova embedding/compression, fresh consumer and durable
runtime campaigns remain open. T042 unchecked, 41/93 complete, G1 false. Every
construction duration remains engineering work, never a finished-transition
latency observation.


The twelve-check computed-parent matrix completed in
`guarded-parent-branch-actual-matrix-001` (2,658 fresh targets). All 4,052,794
actual bytes are bound by `guarded-parent-branch-matrix-closed-value-binding-001`.
`path-frame-source-001` completed the entire 1,357-instruction/133-output function
(1,605 fresh targets), and its complete 65,262-byte source is bound by
`path-frame-source-closed-value-binding-001`. All input parameters, instruction
bytes and return ports are included. The independently quoted 47,570-row numeric
matrix is being checked separately; native agreement is not its certificate.

`path-frame-coordinates-formal-001` completed (7 fresh targets), tying the actual
counter-derived bottom-up direction to the original complete key-message SHA
bytes, under the explicit key-state/hash-trace binding. `path-frame-guards-formal-001`
completed (20 fresh targets) for all seventeen physical flags, exact active
full-word counter, original branch admission, original key direction and the
actual unwrapped next-height field-output port. Actual circuit state embedding
still must connect that port (T044).

`path-frame-completeness-formal-001` completed (13 fresh targets). Every canonical
child-summary pair at a valid kind/active counter and within the frozen count
bound admits all seventeen flags and a complete field witness. No producer
approval or assumed all-flags result substitutes for honest completeness.
The canonical 115-byte output prefix, exact two-block SHA continuation/final digest
and fixed full-word phase-input routing have passed development compilation;
their separate fresh replay is in progress. The new
`experiments/transition-study033/CONTROLLER.md` explicitly records the remaining
physical state/phase/stream obligations. It does not claim an implemented K.

The complete actual shared-byte SHA matrix packet is still in its full fresh
kernel replay. Full K control, Init/finalization, Nova, durable publication and
finished-result measurement remain open. T042 unchecked, 41/93 complete, G1 false.
All engineering durations remain separate from certified runtime latency.

### 2026-11-03: full shared-byte SHA numeric packet and byte binding

`hash-block-matrix-packet-001` is Checked with fresh replay, 198 bounded
end targets and all 125,904 independently quoted actual numeric rows.
`hash-block-matrix-closed-value-binding-001` binds all 20,879,806 actual
bytes through the separately checked exact chunk codec. The first recorder
invocation used the packet directory rather than its `kernel` directory and
failed before producing a binding; its logs are retained.

The first guarded wrapper compiled but its axiom inventory referenced the
chunk-codec theorem without importing that module. The audit rejected it;
`guarded-hash-block-actual-matrix-001` is not Checked. The explicit import
was added for `guarded-hash-block-actual-matrix-002`, whose fresh replay is
in progress. No audit rule, target limit or resource ceiling changed.

`path-frame-hash-pipeline-formal-001` is Checked with 16 targets and fresh
replay. Exact branch bytes, byte ranges, two full SHA blocks and final digest
are connected mathematically. Phase inlining and update/preservation muxes
are undergoing independent fresh checking. The concrete FrameHashController
is construction in progress; none of these receipts establishes full K,
Init, a public terminal state, Nova embedding or G1 performance.

### 2026-11-03: phase composition and concrete two-compression controller

`phase-component-formal-001` is Checked with 12 targets and fresh replay:
full-word opcode routing, shared component input registers, active/inactive
whole-body meaning and every next-state update/preservation mux are proved.
`path-frame-fallback-formal-001` is Checked with 6 targets and fresh replay:
the fixed inactive frame admits all seventeen flags and a complete field witness.
It is not a claim of an initialized state or an authenticated sibling.

`FrameHashController` implements a concrete 43-word state (phase, 34 frame
fields, eight SHA words), derives both blocks including fixed padding, starts
from the SHA IV, retains all frame fields and computes full-word phase admission.
Its 125 outputs comprise the next 43-word state and 82 guard flags.
`frame-controller-generation-003` emitted 8,827 instructions and a guarded
302,936-row, 301,706-variable matrix. These artifacts are unchecked candidates.
The previous two generation attempts reached interpreter recursion limits in
whole-source and whole-row emission; they remain recorded. Per-statement and
per-instruction-group emission succeeded within the original resource limits.
Complete independent quotation, correspondence and byte bindings remain required.

The diagnostic complete-output proofs initially exhausted the fixed 300-second
compiler wall budget. The construction now uses opaque builders and targeted
input-layout congruence to avoid expanding the whole staged program. No proof
resource bound, G0 limit or acceptance condition has changed. Full K, initialized
Nova accumulation/compression and certified runtime measurements remain open.

### 2026-11-03: complete frame numeric packet, full binding and native controller

`path-frame-matrix-packet-001` is Checked with 92 bounded end targets, fresh
replay and every one of the 47,570 actual numeric rows.
`path-frame-matrix-closed-value-binding-001` binds all 7,118,486 bytes.
The initial guarded wrapper used the nonexistent qualified alias
`PathFrameGuards.program` and failed compilation. The corrected wrapper uses
the original `PathFrameProgram.program`; `guarded-path-frame-actual-matrix-002`
is in progress. The failed evidence remains unchanged.

`frame-hash-controller-native-001` passes 562 complete two-step hash cases
against independent hashlib digests, including every original tree position,
all 82 exact flags and preservation of all frame fields. First-phase SHA state
ignores arbitrary incoming continuation words and always uses the fixed IV.
3,934 invalid full-word phase aliases reject through the actual phase flag.
These are native diagnostics, not source/matrix proofs or G1 latency.

The controller's complete actual source instruction proof is in progress.
Only bounded part roots enter the theorem target inventory; every instruction
byte theorem remains in their full transitive axiom/fresh-kernel closure.
The frozen 4,096-target limit is unchanged.

### 2026-11-03: controller register/output proof compilation

`frame-hash-controller-control-formal-001` is Checked with fresh replay:
concrete program topology/all output bounds, all derived operand bounds and
full-word phase admission/start-continuation selection. The complete output
reconstruction now compiles in `diagnostic-frame-hash-controller-meaning-010`.
`frame-controller-meaning-development-001` compiles the owned complete output
and 72 SHA-input register modules. These development compiles grant no Checked
authority. Fresh replay is running separately. Its first audit inventory used
the Registers module name instead of the declarations' actual Meaning namespace
and was rejected. `frame-hash-controller-meaning-formal-001` is not Checked;
002 uses the actual theorem names.

The expensive output proof was resolved without changing the 300-second compiler
limit: explicitly reuse the phase-register bound, beta-reduce composed map
functions, and build list equality by targeted congruence instead of normalizing
the entire staged controller. The diagnostic progress `#eval` commands only
print declaration names and are not semantic proof premises or release sources.

The fourth immutable completed-module sharing pass saved 9.41 GiB. The subsequent
byte audit verifies every module/dependency against all 158 positive fresh reports
(20,993 unique file objects). Only completed immutable proof roots were shared;
no active proof output, old Core or study032 artifact was modified. This is
storage hygiene, not semantic or latency evidence.

### 2026-11-03: guarded SHA/frame matrices and complete register meaning

`guarded-hash-block-actual-matrix-002` is Checked with 219 bounded end targets,
125,968 actual rows and fresh replay.
`guarded-hash-block-matrix-closed-value-binding-001` binds all 20,887,486 bytes.
`guarded-path-frame-actual-matrix-002` is Checked with 128 bounded end targets,
47,587 actual rows and fresh replay.
`guarded-path-frame-matrix-closed-value-binding-001` binds all 7,120,526 bytes.
Every actual guard row and all original digest/branch/counter output ports remain
covered. Physical use in the whole K machine is still an open obligation.

`frame-hash-controller-meaning-formal-002` is Checked with 22 targets and fresh
replay: all 125 controller outputs, all 72 SHA input registers, every original
padding byte position and preservation through all component builders.
The complete two-call trace/digest and actual source/matrix proofs are separate.
`frame-hash-controller-ir-formal-001` independently fresh-checks the complete
quoted actual IR and source-safety contract. It does not certify actual source
bytes: those instruction/header/return proofs are still in progress. The actual
numeric row proof can now proceed from that Checked IR, and the final artifact
packet must still include the completed actual-source roots.

### 2026-11-03: concrete controller whole two-call development trace

`diagnostic-frame-hash-controller-trace-001` compiles the complete actual
two-call trace. `frame-controller-trace-development-002` compiles owned
State/Hash/Trace/Guards dependencies: phase 1 starts phase 2 using actual
output words, all 34 frame fields are preserved through both calls, the
continuation equals the first original compression result, and all eight
final words/all 256 digest bits equal the original complete SHA message.
The model's 82 forced flags enforce full-word phase membership and all
17 original frame flags; no producer approval Boolean supplies these facts.
`frame-hash-controller-trace-formal-001` is undergoing fresh replay.
This remains a local component with an explicit phase-one start, not Init,
a public K endpoint, a full release relation or G1 performance.

The controller matrix groups are being checked against the separately
Checked actual IR. The final packet must revalidate all IR/source/group
module hashes, include completed actual-source roots, replay the complete
closure, and bind every final numeric byte. The current group command's
snapshot predates an added defensive upfront IR-module hash check; the
final packet must retain the full provenance/hash check regardless.

### 2026-11-03: complete concrete two-call trace fresh checked

`frame-hash-controller-trace-formal-001` is Checked with 36 targets and fresh
replay. Its accepted field schema forces the full phase word and all original
frame flags. The actual two-call trace starts at phase one, retains all frame
fields, passes actual first-call output words into the next call and returns
the original complete 256-bit message digest in phase three. Current State,
Trace and Guards sources were compared byte-for-byte with the Checked snapshots.

`diagnostic-frame-hash-controller-completeness-002` compiles complete field
witnesses for both honest phases, with all 43 first output words equal to the
second input words. `diagnostic-frame-hash-controller-node-001` compiles the
connection from accepted first-phase inputs to an original framed branch record
with admitted metadata and the full two-call digest.
`frame-hash-controller-completeness-formal-001` is in fresh replay. These remain
local component contracts. The whole K Init/terminal/history relation, actual
Nova state embedding, compression, independent finished verification, durability
and G1 latency remain open.

### 2026-11-03: complete field witnesses and concrete actual constraint controls

`frame-hash-controller-completeness-formal-001` is Checked with 12 targets and
fresh replay. Both honest phases have complete field witnesses, with all 43
state output/input words linked. An accepted phase-one field instance binds
the full two-call digest to an original framed branch with admitted metadata.

`frame-controller-constraint-mutations-003` independently evaluates all 302,936
actual numeric rows for each witness. The honest witness satisfies every row.
An invalid full-word phase fails exactly its phase guard; a terminal counter of
256 fails exactly its active-frame guard. Deleting only that exact guard makes
the remaining rows accept the same invalid witness. The actual guard schema is
`1*1=output`; diagnostic runs001/002 had incorrect schema assertions after the
row evaluations and are retained as failures. This is a numeric diagnostic, not
a replacement for kernel correspondence or Nova embedding tests.

`frame-hash-controller-source-blocks-001` has all 8,827 actual instruction byte
equations, 140 compiled modules and 562 bounded axiom-audited targets. Its status
is AxiomAuditedPendingFresh. Whole header/return/body assembly and fresh replay
are running in `frame-hash-controller-source-001`. The complete actual guarded
numeric row groups are still compiling. All resource and semantic limits remain
unchanged; full K and G1 measurements remain open.

### 2026-11-03: concrete post-hash path update in construction

`PathFrameAdvance` consumes the exact 43-word hash-controller state in phase
three, transfers all eight digest words through the original SHA-to-LE root
codec, computes parent metadata, advances the active counter and preserves
every other state word. Its seven forced flags cover the count bound, all four
original child Boolean fields, the active counter and the full phase word.
It is a local post-hash component; authentication of the sibling's own record,
outer dispatch, valid Init and public finalization remain required.

The candidate has 346 instructions, 50 outputs and 13,314 guarded numeric rows.
`diagnostic-path-frame-advance-meaning-005` compiles every state/guard output
equation. `path-frame-advance-native-001` passes 387 independent standalone
update vectors and 256 complete actual two-hash-plus-update chains against
hashlib and independent count/flag/counter/root-byte-order arithmetic.
`path-frame-advance-formal-001` is in fresh replay; additional forced phase,
counter, count and Boolean soundness lemmas are under development. Its complete
actual source/numeric artifact correspondence is still open.

### 2026-11-03: exact full-key byte view and shared full-word comparison

`RawKeyCodec` preserves the frozen typed key bytes, bounded suffix parsing,
full-key equality, typed tree lookup and explicit different-full-key address
collisions. Its 192-byte zero-extended representation is injective for bounded
typed keys. Raw format parsing alone is not UTF8 validation; Init and public
request/node bindings remain mandatory whole-K obligations.

`WordVectorEquality` materializes its complete XOR/OR reduction once, then
zero-tests that register. The generic contract compares every complete u32
word, and closed 48-word-key/eight-word-digest programs are valid.
`full-key-comparison-formal-001` is Checked with fresh replay. Development
compile timeouts were resolved with opaque compilation functions and targeted
result congruence; the resource bounds and full-word semantics did not change.
Actual source/matrix generation and all-bit native controls are separate.

The first post-hash numeric packet compiled but its axiom audit rejected missing
imports of the complete actual-source roots. The final packet now explicitly
imports those roots. `path-frame-advance-matrix-packet-001` is not Checked;
002 is undergoing fresh replay. The same explicit source-root import is retained
in the pending larger controller packet. No audit inventory was reduced.

### 2026-11-03: completed source and guarded post-hash matrix bindings

`frame-hash-controller-source-001` is Checked with 625 targets and fresh replay.
Its complete 426,478-byte generated source is BoundCheckedValue. All 8,827
instruction equations remain in the transitive checked closure.

`path-frame-advance-formal-001` (26 targets),
`path-frame-three-stage-formal-001` (13 targets), and
`path-frame-advance-source-001` (85 targets) are Checked with fresh replay.
The complete actual guarded numeric matrix,
`path-frame-advance-matrix-packet-002`, is Checked with 70 bounded targets,
all 13,314 rows and fresh replay; all 2,071,458 matrix bytes are bound.
No source axiom inventory was removed when correcting the explicit root import.
The 256 three-stage native paths cover every original address position.

`word-vector-equality-native-002` passes 3,072 key and 512 digest single-bit
mutations across every word and both sides, plus equal random controls.
Generation001 missed a matrix import and native001 was started before artifacts
existed; both failures remain. Source-block receipts for the two comparators are
AxiomAuditedPendingFresh. Their copied scope strings incorrectly mention the
frame controller: the literal inventories and paths instead identify the
96-input/256-operation key comparator and 16-input/56-operation digest comparator.
Their full source assembly and fresh replay remain separate obligations.

The word-sequence injectivity development compile and the conditional original
key-to-physical-port equality development compile pass. Their premises require
actual establishment of the bounded original key representation; this does not
relax UTF8, request binding, Init, or full K requirements. The first port proof
driver was launched before its fresh dependency report existed and rejected it;
that rejection is retained without any Checked credit.

The full concrete controller numeric row proof is still compiling. Whole K,
Nova and all finished-result latency gates remain open; no engineering duration
is a G1 latency sample.

### 2026-11-03: full comparators and a single fixed three-phase dispatcher

The key and digest source assemblies are Checked with 121/29 targets and fresh
replay; all 12,633/2,753 bytes are bound. Their copied source receipt scope strings
refer to the frame controller; the literal IR and named program identify the
actual comparators. Future helper outputs use corrected descriptions.
`raw-key-words-formal-001` (4 targets),
`full-key-comparison-ports-formal-002` (5 targets) and
`masked-routing-formal-001` (6 targets) are Checked with fresh replay.

`digest-vector-matrix-packet-001` compiled but rejected missing explicit imports
of RawKeyCodec semantic roots. Those roots were retained. Packet002 is Checked
with 51 targets, all 2,450 actual numeric rows and fresh replay; its complete
423,114-byte binding passes. The key numeric packet remains in progress.

`PathRoundDispatch` is a single 43-input/133-output local three-phase function
with 12,484 instructions. It computes full-word activation once per routed
component, uses fixed inactive operands, preserves state, and forces all 90
component/phase flags. Its 2,129 all-port native cases and 256 complete chains
agree with frozen component functions and the prior independent endpoint
oracle. Native generation001 hit recursive whole-source interpretation;
002 emits the same program statement by statement under unchanged limits.
Complete local state/guard/output/trace development proofs compile. The final
formal receipt and complete actual source checking remain in progress.
The local return is not InitDone/Done/AttemptDone or a whole K certificate.

All 8,872 groups of the concrete two-compression controller's actual numeric
packet now compile and are AxiomAuditedPendingFresh (417 bounded roots, all
individual row proofs retained). The final full-source/trace/parser/guard packet
and fresh replay have started. No G1 or release-relation completion follows.

The sixth completed immutable module-sharing pass saved 21.87 GiB through
9,040 identical files across 203 completed roots. No live proof root or protected
old study was shared. A complete post-sharing positive-report byte audit is
running; sharing changes storage only, never semantic authority.

### 2026-11-03: complete key comparison matrix and bounded reconstruction repair

`key-vector-matrix-packet-001` is Checked with 60 targets, all 11,970 actual
numeric rows and fresh replay. Its complete 2,126,314-byte binding passes.
The sixth immutable-storage byte audit passes across 176 positive fresh reports
and 25,656 unique file objects.

`frame-hash-controller-matrix-packet-001` rejected at the recursion limit in
a closed matrix eta reconstruction: `rfl` unfolded a huge compiled row list.
The assembler now applies a generic seven-field matrix reconstruction theorem
proved on an arbitrary matrix. Packet002 reruns the complete closure with the
same 8 GiB, compiler/fresh replay limits and original 120-hour construction
clock. No numeric row, source root or guard obligation was removed.

`PairedPathRound` now defines a 96-word local six-phase old/new parent round.
The same address, map kind, sibling and original child summaries are preserved.
Old/new computed parents occupy separate slots; the common counter advances
only after the new round. Its definition passes development compilation.
This does not authenticate its sibling, prove a whole path, establish Init or
create a whole-K/public result. Full local semantic/native checks follow.

### 2026-11-03: fixed round Checked and paired native chains

`path-round-dispatch-formal-001` is Checked with 49 targets and fresh replay.
The full 133-output meaning, computed activation, 90 forced guard schema, exact
three-call original root bytes and rejection of a step after the local return
are covered. This is a local parent round, not Init or whole K.

The first complete source IR proof hit the ordinary kernel's recursive
structural equality limit. A generic theorem now reflects a complete Boolean
instruction-by-instruction scan to list equality; all output registers are
checked independently. The first reflection attempt used a nonexistent Bool
namespace projection and rejected it. Source-block run003 uses the correct
Boolean iff lemma; its complete IR equality/safety compile succeeds and actual
instruction byte proofs are compiling. No instruction or port was omitted.

`paired-path-round-native-001` passes 256 complete six-step old/new parent
rounds. All 187 ports agree with explicit component routing; both parent roots
agree with independent hashlib and the original 115-byte framing, the shared
fields remain unchanged, and the common counter advances once. Invalid full
phases are rejected. Formal paired input/output/preservation proofs are in
development. Own-sibling authentication and whole K remain open.

### 2026-11-03: full numeric replay memory failure and a new compact-data attempt

The generic matrix eta reconstruction repaired packet001's recursive `rfl`.
`frame-hash-controller-matrix-packet-002` then compiled every owned module and
completed axiom inspection, but `leanchecker --fresh` failed with out-of-memory
inside the unchanged 8 GiB limit. It has no Checked receipt. Earlier progress
messages/work-log entries describing that check as ongoing after its completion
were mistaken; the retained engineering receipt records the exact failure.
No runtime G1 latency conclusion follows from this construction failure.

`quote_matrix_compact.py` independently parses the same actual matrix bytes,
dictionaries row wire/coefficient shapes, and encodes reversible affine wire
runs. Both the dictionary inverse and run inverse preserve every original row,
term and order; the complete original primitive-data inverse is byte-equal too.
It consults no expected WordIR/compiler. The concrete packet has ten actual row
families and the same 302,936 rows / 48,166,122 bytes. The new row groups are
being checked in `frame-hash-controller-matrix-groups-compact-001`.

The positive compact-data control `digest-vector-matrix-packet-compact-001` is
Checked with fresh replay, and all 423,114 bytes bind to the same original
digest-comparison matrix. `compact-quotation-mutation-control-001` is Checked
with fresh replay: an independent actual wire-byte mutation still produces an
exact rejected expected-row equality after compact quotation.

### 2026-11-03: paired physical contracts and own-sibling branch construction

`paired-path-round-formal-001` is Checked with 34 targets and fresh replay.
The complete 96-word state/187-word output contract, preserved original fields,
phase-six-only counter update, full six-phase activation and all 91 guard-wire
bounds are covered. The complete six-step formal composition is separate.
Development timeouts in field preservation were resolved by a small syntax-only
branch theorem, generic value evaluation and explicit local congruence; all
failed attempts are retained under unchanged limits. A previous empty diagnostic
log was mistakenly described as success; its command receipt correctly records
timeout. Final development run006 passes, and the completed formal receipt is
authoritative. Native paired controls pass all 256 six-step positions.

`own-branch-routing-source-001` is Checked with 57 targets and fresh replay;
all 3,130 source bytes bind. Its 33-input/43-instruction/45-output adapter feeds
the unchanged hash controller and forces positive bounded sibling height.
The 1,020 independent original115-byte-record / two-hash native cases pass.
Height/depth, zero-address ordering and original parent-field projections pass
development checking; their complete original-codec/computed-summary/caller
proof is still being assembled. The synthetic true child flags reproduce the
OWN record's stored P/C bytes and do not authorize grandchild metadata.

The full three-phase source partition is AxiomAuditedPendingFresh (793 bounded
roots); its whole source assembly is running. The paired source partition is
AxiomAuditedPendingFresh (830 roots); its whole assembly is also running.
All individual instruction equations remain in their transitive closures.

The seventh immutable-sharing pass saved 13.77 GiB through 10,239 identical files
across 218 completed roots, including the retained completed failed packets.
All live roots and protected old studies were excluded. The subsequent complete
positive-report byte audit is in progress. Whole K, Nova, Init, durable results
and all G1 measurements remain open.


### 2026-11-03: compact controller rows complete; original own-record digest

`frame-hash-controller-matrix-groups-compact-001` completed with all 8,872
actual row groups audited under unchanged limits. Its newly identified complete
packet/fresh attempt is running; neither failed earlier packet gains authority.
The seventh storage audit passed: 182 positive fresh reports and 27,084 unique
compiled file objects retain their original hashes.

The full guarded-generation source files for the three-phase and paired rounds
are byte-equal to their original candidates (591,237 / 625,365 bytes); the exact
comparison is retained in `controlled-round-guarded-generation-source-equality-001.json`.
This ordinary comparison does not establish matrix correspondence.

The own-branch original-codec and full three-step digest development check passes.
Its complete fresh-check attempt is running. Derived return metadata is being
connected to the same original record through preserved operands and the shared
metadata computation. Whole K, Nova and all G1 latency measurements remain open.


### 2026-11-03: complete three-phase source and own-record return metadata

`path-round-dispatch-source-001` is Checked with 860 bounded targets and fresh
kernel replay, retaining all 12,484 instruction equations. Its full 591,237
source bytes bind in `path-round-dispatch-source-closed-value-binding-001`.
The source receipt's copied scope sentence still says local trace refinement is
open; the separate completed `path-round-dispatch-formal-001` already checks
that mathematical trace. Actual numeric matrix groups are now being checked.

`own-branch-hash-formal-001` is Checked with 29 targets and fresh replay: own
height/depth/order, original 115-byte branch encoding and the full three-step
returned digest. `own-branch-summary-formal-001` is Checked with seven targets
and fresh replay: the same preserved original operands feed the returned count
and P/C metadata. The first metadata projection attempts failed kernel reduction
or operand/index simplification; run007 passes without changing any resource
limit or adding an axiom. The combined record-return fresh check is running.

Own-adapter actual matrix packet001 compiled, then correctly failed its axiom
inventory because the separately targeted original-record theorems were not
imported into the final module. Packet002 adds that explicit import and retains
every target; its fresh check is running. No failed packet is upgraded.
The paired six-step phase/preservation and complete local operand contracts pass
development checks and are being freshly checked. The complete six-step digest
composition and whole K remain open. Latest published checkpoint: `8bdc8171`.


### 2026-11-03: own adapter complete numeric packet and combined record checked

`own-branch-routing-matrix-packet-002` is Checked with 74 bounded targets,
fresh replay and all 2,634 original numeric rows. All 382,050 binary bytes bind
in `own-branch-routing-matrix-closed-value-binding-001` (SHA256
`4cf25f3460d3f7b24ff36e545480450c5e6fc67ab6b42c17152f0cb2288de915`).
`own-branch-record-formal-001` is Checked with four targets and fresh replay;
it combines the original full digest and four returned metadata ports.
These remain local components requiring caller/authenticated-opening binding.

`paired-path-trace-formal-001` is Checked with five targets and fresh replay:
six complete phase advances reach phase7, and every original immutable port
is preserved throughout. New routing/state/parent/SHA/counter projection lemmas
pass development checks; combined fresh checks remain in progress. A blanket
conditional simplifier exceeded its step budget; explicit small conditional
proofs pass under the same limits, without new axioms or omitted cases.
The complete six-step paired digest theorem is still being constructed.

The eighth content-preserving storage-sharing pass retained 225 completed roots,
linked 10,145 identical compiled files and saved 4.13 GiB. Live roots and all
protected old studies were excluded. Its full positive-byte audit is running.


The post-eighth complete storage audit passes: 187 positive fresh reports and
28,729 unique compiled file objects retain every original module hash. The
paired original-operand routing fresh check is complete. The complete frame
and eight-word continuation development check003 passes; the six-step digest
composition remains open.


### 2026-11-03: complete paired source and composed physical routing

`paired-path-round-source-001` is Checked with 953 bounded targets and fresh
replay; every one of its 13,203 original instruction equations remains in the
transitive closure. All 625,365 bytes bind in the corresponding source binding
receipt. Its full actual 454,068-row numeric matrix groups are being checked.
`paired-path-components-formal-001` is Checked with 31 targets and fresh replay,
covering original operands, computed full-phase masks, every next-state port,
phase3/6-only parent assignment, all SHA continuation words and counter gating.

Complete all 43 local-state continuity and the three/six-step two-full-digest
composition pass development checks. The combined six-step fresh attempt is
running. Shared original-address/counter/child/sibling message binding is being
finished separately. None of these is whole K or a G1 latency result.
The ninth completed-root storage pass saved 4.11 GiB in 10,616 identical files
across 232 completed roots; its full subsequent hash audit is running.


### 2026-11-03: joint compact replay wall failure; numeric component isolation

`frame-hash-controller-matrix-packet-compact-001` compiled and completed axiom
inspection, then its joint source/matrix `leanchecker --fresh` exceeded the
unchanged 3,600-second wall budget. It is NOT Checked. Peak process memory stayed
below 8 GiB; the compact quotation solved the preceding representation's memory
failure but has not established the complete joint packet within the limits.
The failed directory and exact command/engineering receipts remain immutable.
This is proof construction cost, not a G1 runtime/proving latency measurement.

A separately identified `frame-hash-controller-numeric-component-001` now checks
all 302,936 actual numeric rows, guards and model trace against the same complete
actual IR while retaining source byte correspondence in its independent already
Checked/fresh source receipt. It does not import or claim a new joint fresh check
of the entire source artifact. The resulting receipt explicitly records
`joint_source_matrix_fresh_closure:false`. This isolates the cost and scope; it
cannot upgrade the failed joint packet or establish whole K.

`paired-digest-trace-formal-001` is Checked with 36 targets and fresh replay:
all 43 local-state continuation, original-message full hashes over six steps,
phase7 return and preservation of the old parent through the new computation.
The original shared-frame/exactly-once counter/terminal completion is being
checked separately. The nine-phase own-sibling/old/new controller candidate
passes 1,020 independent original-record hash cases and every 209 output port;
changing its initial free sibling tuple does not change its completed result.
Its topology, routing and masks pass development checks; no whole K authority.


The complete paired shared-frame/counter/terminal check is now Checked with
16 targets and fresh replay. The ninth full storage audit passes: 192 positive
fresh reports and 30,110 unique compiled file objects retain every original hash.
The nine-phase candidate's complete routing/state/209-port development checks
pass; its combined fresh check and all actual source instruction equations are
running. Captured diagnostic Lean input snapshots retain their exact bytes,
including harmless trailing spaces; whitespace cleanup applies to working source,
not to immutable proof inputs and their existing hash records.


### 2026-11-03: nine-phase contracts and conditional proving-work scale

`authenticated-branch-round-formal-001` is Checked with 40 targets and fresh
replay: every routed input bound, immutable state, full activation/admission
masks, all 209 output ports and all 91 forced guard-wire bounds. Complete
own-record projection, phase10 rejection, all 43 own-hash continuation and the
three-step return to all 12 derived sibling ports pass development checks; their
combined fresh/caller proof remains in progress. Complete actual source and
numeric matrix correspondence remain separate open obligations.

`candidate-symbolic-work-count-001.json` and `experiments/transition-study033/COST.md`
record an important conditional work count. With the unchanged current candidate
at each sibling-branch height1..255 plus the existing paired parent at height0,
one opening would instantiate 1,107,803,628 constraints across its steps. This is
arithmetic from observed generated headers under stated execution assumptions,
not measured cryptographic latency, peak memory, a fully Checked whole K shape
or an impossibility claim for other architectures. The three update-only phases
still execute the fixed SHA-containing circuit body. Even removing those phases
would be a constant-factor change and would not establish the required millisecond
finished-result target. Correctness construction must not hide this cost question.


The own-record return development check passes with the full original branch
hash and every derived metadata port. The first combined fresh attempt001
correctly failed because its seed inventory omitted the already Checked
`PairedPathRouteMeaning` module imported by the generic parent projection.
Attempt002 adds the explicit genuine Checked/fresh paired component dependency,
retains every target and runs under unchanged limits. The failed attempt stays
unchanged and carries no authority.


### 2026-11-03: complete numeric controller component checked and fully bound

`frame-hash-controller-numeric-component-001` is Checked with 490 bounded roots,
fresh replay and every actual row (302,936), every forced guard and output.
The separate source/IR component remains independently Checked. The numeric
receipt explicitly says `joint_source_matrix_fresh_closure:false`; no failed
joint packet is upgraded. Its engineering command completed in 2,155 seconds.
That is formal construction time, not certified-runtime latency.

All 48,166,122 actual matrix bytes bind in the corresponding numeric-component
closed-value binding receipt (SHA256
`ad25cde3904a4b0436096b38d2571ab44c9b42c7a4a03d4377d7c885e0493bb7`).
Own-node complete hash/metadata return and post-return paired-input projection
pass development checks. The own-node combined fresh attempt002 is running;
whole opening, whole K and all G1 measurements remain open.


`authenticated-branch-own-record-formal-002` is Checked with 65 targets and
fresh replay: original record provenance, complete first-three-step hash and
metadata, all twelve derived sibling ports, controlled continuation and terminal
exclusion. Its remaining old/new caller and whole-opening bindings are not
established by this local return contract. The complete three-phase actual
numeric row groups are now AxiomAuditedPendingFresh (591 bounded roots);
its independent full numeric-component fresh check has started.


The post-eleventh storage audit is running after another 2.21 GiB was shared
across 238 completed roots (11,588 identical files). The complete nine-step
own/old/new local trace passes development checking: both parent digests,
sibling preservation throughout all six parent steps, and the exactly-once
unwrapped counter. Its new combined fresh attempt is running. Complete256frame
opening/leaf/genesis/outer-Core and G1 obligations remain open.


### 2026-11-03: complete nine-step local trace and early backend cost diagnostic

`authenticated-branch-completion-formal-001/report.json` is Checked with 32 bounded targets and fresh kernel replay. The imported complete own-record return remains Checked with 65 targets. The new local trace relates all six parent steps to the checked paired controller, preserves the derived sibling, returns both original parent digests, and advances the original counter exactly once without wrapping. This is one local branch round, not a complete opening or K. The separate paired numeric component check is now running after all 624 row-group targets were axiom-audited; no uncompleted numeric receipt is promoted.

Commit `8743b194131c160df703a9ad15dfba6e37dd985e` was pushed to the feature branch, including the conditional 1.108-billion-constraint opening subtotal in `COST.md`. A new isolated `numeric_cost` binary is being built to measure the pinned unmodified Nova backend on the already Checked 302,936-row hash component. Its embedding and witness constructor are explicitly untrusted diagnostics, use normal OS entropy, and grant no T043/T044/T045 or G1 authority. Constructor first-step work and the counter-only first `prove_step` are separately labelled. No compression or business transition measurement is claimed.

Immutable completed module sharing 012 added only completed own-record, local completion, paired row-group and three-phase row-group roots; it saved 2.43 GiB. The previous post-011 hash audit passed 197 positive fresh reports and 31,935 unique file objects. Post-012 hash audit is running. Live roots and intentional mutation fixtures remain excluded from sharing.


The post-012 audit completed successfully: 198 positive fresh reports, 32,167 unique file objects, no changed checked module bytes. The complete 91-guard suffix transfer has passed diagnostic compilation and is under fresh checking. The generic local metadata return, paired six-step parent metadata return, and nine-step caller metadata transfer have passed their dependency diagnostics and are now under a separately identified complete fresh check; no Checked claim is made before its report. The Nova cost diagnostic now includes separately timed compression-key setup, compression, complete endpoint verification in the same process, and separately identified artifact encodings. No fresh-consumer or full G1 claim is made.


### 2026-11-03: unmodified Nova diagnostic cannot execute on this CPU

The isolated release build succeeded. Both the mutated-witness control and the honest diagnostic exited by SIGILL (exit -4) before any event or cryptographic measurement. Neither is a successful rejection/control. The host exposes Intel Xeon X5670 without ADX/BMI2; the pinned Nova manifest unconditionally selects the halo2curves `asm` feature. The existing 032 portable patch removes that dependency feature, but 032 remains unchanged. A separately identified portable diagnostic package/source copy will be prepared; no latency or G1 conclusion follows from these failed executions, and T043 RNG/entropy audit remains open.


`authenticated-branch-guard-transfer-formal-001/report.json` is now genuinely Checked with five bounded targets and full fresh replay. It proves all 91 forced flags, exact physical placement/transfer of all 90 local flags, and conditional component completeness. It does not invent caller/genesis validity or certify the missing complete K.


`parent-summary-traces-formal-001/report.json` is Checked with ten bounded targets and full fresh replay. Both count limbs and both aggregate flags are derived from the original changed-child and computed sibling operands through both six- and nine-step traces. Remaining caller/genesis and full K obligations are unchanged. The portable Nova diagnostic build succeeded with the separately identified source and lock. Its private packing-bit negative control exits normally with code 1 and the exact message `actual row 32 unsatisfied` before any setup event; this is now an actual successful native diagnostic rejection. The honest two-step cost run has started under the unchanged 8-GiB/900-second limits.


### 2026-11-03: completed real Nova primitive cost trace

The portable honest diagnostic completed normally in 645.168 seconds, below its unchanged 900-second child cap, with all frozen identities unchanged. Both full recursive and compressed 43-word endpoints verify. Actual fold 1.056 seconds, compression 511.060 seconds, compressed same-process verification 6.718 seconds. Cold parameter generation 117.862 seconds. Compressed proof 13,496 bytes; verifier key 98,873,928 bytes. This is one untrusted primitive-embedding diagnostic, not a certified K/G1 trial, quantile, independent fresh consumer or durable publication. See `COST.md` for every phase and the resulting Rework signal, not a false full-system failure/pass. The stock pinned SHA native-only shape diagnostic passes 52,640 constraints for a complete 115-byte/two-block hash; the native syntactic-sharing diagnostic counts 3,795 distinct expressions from 8,827. Neither is a proved optimizer or end-to-end speedup.

The fixed three-phase numeric component is genuinely Checked/fresh with 676 bounded targets and all 427,671 rows. Its complete 67,542,926-byte file binding also passed. The separate source receipt remains Checked/fresh; no new joint source/matrix closure is claimed. Commit `25a7f9dbfabbb30654c18f96f55d4bae78daba48` was successfully pushed before these later results.


The complete nine-phase actual source is now Checked with 1,024 bounded targets and full fresh kernel replay, and its separate closed-value binding matches all 661,463 bytes. The complete 14,104 independently quoted numeric row groups are now under their own bounded equation checks; no matrix correspondence is yet claimed. A separately identified export run repeats the actual numeric Nova primitive cost experiment while retaining parameter/key/proof artifacts. Its expected 43-word subject was frozen before that run. The fresh-process diagnostic consumer is being built; this does not complete the certified Core consumer or T043–T045.
