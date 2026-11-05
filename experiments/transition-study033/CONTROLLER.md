# Physical controller construction

This is the implementation design for the remaining T042 work, not a completed
K implementation, a new frozen codec, a release relation or a positive G1 result.
The G0 meaning, record formats, limits and acceptance gates remain unchanged.

The controller uses a fixed word-state vector and one generated WordIR step
function. Its program and phase transitions are fixed by the release. Producers
supply bounded data witnesses; they do not choose a program, transition rule,
parent depth, address direction, derived metadata or terminal approval flag.
Actual WordIR/Rust/matrix correspondence must cover the complete step function.
The final circuit must also bind its real state input/output ports (T044).

## State and dispatch

The concrete allocation is still to be implemented and checked. Required fields
are the release/origin/module/profile/authority bindings, committed live/used
roots, event position/head, request/context/result/effect/command commitments,
microstep coordinates, exact input cursors and lengths, outstanding obligations,
phase/subphase, finalized key-address state, old/new current summaries, current
sibling record/summary and SHA working state. A summary retains all 256 digest
bits, full count and canonical positive/coverage flags. Original key/value bytes
remain authenticated; a key digest does not replace the full key comparison.

Variable data is consumed by bounded canonical streams. State keeps the small
record fields, lengths/cursors and working commitments needed by the current
operation. No unchecked host object or caller Boolean establishes a semantic
premise. Every state field has an explicit update or preservation equation.

One SHA microstep performs one full compression block. Phase dispatch chooses
the exact byte block and previous SHA state. The address/message subject,
record fields, total length and continuation remain bound across blocks.
Finalization requires exact padding/length consumption and complete digest
transfer; an intermediate hash state is not a completed operation.

The fixed circuit can evaluate components outside their active phase using
fixed admitted dummy ports. Those results cannot change state. Phase selectors
must be computed from the full admitted opcode/state; all output muxes and
preserved fields must be checked. For example, a terminal path counter of 256
must not make an inactive parent-frame component unsatisfiable, and must never
be changed to zero merely to satisfy that component's active-counter check.

## One authenticated path

The untrusted native opening already supplies whole sibling nodes. Retain this
format. The stronger `OwnNodeOpening`/`ConcreteOwnNodeOpening` laws connect these
witnesses to the complete original opening, including metadata, through a finite
concrete SHA collision reduction. Root-only value soundness is insufficient.

The path is processed bottom-up. The checked `BottomUpOpening` laws give one
frame per height, reverse the original address directions, and fold old/new
summaries exactly. The native depth is `256 - height`; active frame positions
are exactly 0..255 and termination is exactly 256. The `PathFrameProgram`
computes depth, address bit, child ordering and parent metadata itself.

For each frame:

1. Consume and type-check the sibling's own leaf/branch record in the expected
   map-kind and depth context. Derive its metadata from the same record fields
   and compute its full SHA digest. Do not accept a free summary beside a root.
2. Combine that authenticated sibling with the old current summary. Generate
   the exact canonical parent bytes with the checked frame program, hash the
   full record and retain the old parent summary.
3. Combine the same sibling with the proposed new current summary. Generate
   and hash the exact new parent bytes, retaining the new parent summary.
4. Advance the controlled height/cursor only after the required hashes finish.
   Preserve the request/key/subject bindings and reject missing/extra frames.

Old and new summaries share the same sibling witness and traversal. A single
frame component may select the old/new current summary from the admitted phase;
it must not take a producer-selected direction. Its seventeen forced flags and
actual next-height port must remain connected. A branch record has 115 bytes
and uses exactly two SHA blocks under the frozen profile.

At completion, compare the old folded root with the expected committed parent
root in all 256 bits. The new folded root is the proposed update. Exact sibling
and leaf meaning, finite hash binding and the already checked changed-path laws
establish the complete updated summary; no dense state scan is added to K.

## Semantic boundaries

Leaf work authenticates the complete original key/value/occupancy meaning.
An occupied different full key at the same address is the specified address
collision failure, never absence, overwrite or ordinary business ID reuse.
New leaf metadata is computed from the actual effect and signed value check.
A cached previous rule result is usable only under its proved preservation law.

Create checks lifetime used membership before the resulting count rule, and
updates both maps when allowed. Set establishes binding before the local value
constraint and updates exactly the target leaf. Emit reuses state only through
the checked preservation contract. First errors, refusal phases, original command
multisets and equal command occurrences follow F exactly. Resource/capacity
failures remain separate from semantic refusals and from measured successes.

Initialization starts from the expected authorized origin and actually consumes
the complete Empty/NewSeed input. It verifies source binding, ordering, duplicate
and positivity/count conditions and the live-subset-of-used obligation before
InitDone. Accurate summaries do not substitute for valid genesis. At least one
real accumulated proof step and the checked initialized endpoint are required.
Adoption stays explicitly unsupported.

A transition cannot reach Done until every required read, rule, changed path,
identity/effect/recipe/command hash, counter and endpoint obligation finishes.
AttemptDone is the explicit refusal/error fork; it cannot advance canonical
state or history. Finalizing and inner hashing phases are not public endpoints.
Boot, expected event/microstep coordinates and the exact returned state must be
checked by the independent consumer. No certificate includes its own digest in
its proved preimage.

## Remaining implementation evidence

The primitive and integrated frame receipts do not establish this controller.
Still required are its complete concrete state layout, all dispatch and stream
constraints, full typed/native/field refinement to Machine/CoreBridge/History,
actual generated whole-step source and numeric matrices, full byte bindings and
mutation controls. Then T043–T045 must establish the actual Nova entropy path,
augmented circuit embedding, full endpoint, recursive accumulation and genuine
compression/independent verification. Durability and finished-result campaigns
remain later gates. Measure the complete chain; construction costs and native
vector agreement are not latency evidence.

## Implemented local state windows

These components are local construction evidence, not the whole K layout or a
new public claim format. `PathRoundDispatch` has 43 state words and a fixed
hash-first/hash-second/update sequence. Its complete mathematical port/trace
contract, actual source and full numeric matrix correspondence are Checked with
complete artifact byte bindings.
`PairedPathRound` has 96 state words: phase/kind/counter/address; immutable old
child, new child and sibling summaries; SHA work; separate old/new parent
outputs; and preserved outer-context words. Its routing/state/guard/physical
output contracts, complete six-step formal composition, actual source and complete
numeric component are Checked with full source/matrix byte bindings. The native six-step cases cover all 256
positions and independently check both original branch hashes.

`OwnBranchRouting` maps the original sibling branch's fields to the same
controlled hash sequence. Height n becomes processed n-1, so the hashed own
record has original depth 256-n. A fixed zero address preserves the original
left/right order. Synthetic child flags `(ownP,true,ownC,true)` reproduce the
OWN record's stored P/C bytes; they make no claim about unauthenticated
grandchildren. The original count is computed from the record's child counts.
The original self P/C fields must be canonical and are bound by the own-record
hash and inherited initialized-state validity. Its actual 43-instruction source
is Checked; remaining codec/summary/caller composition obligations stay open.

The intended caller derives the sibling summary directly from that complete
own-record hash and metadata, then preserves it throughout the old/new pair.
It need not accept a separate free sibling root or metadata tuple. The final
full old folded-root comparison anchors the entire opening to the expected
parent commitment; `ConcreteOwnNodeOpening` supplies the finite actual-message
collision reduction. This still requires the real leaf/branch parser, bounded
record fields, immutable local control, all 256 frames and the terminal check.
It is not permission to infer metadata from an old parent hash alone.


## Next integration window: own sibling and both parents

`AuthenticatedBranchRound` is the separately checked unrestricted local construction.
It extends the 96-word paired window with the sibling own branch record's
22 child-root/count/self-P/self-C fields. One local43word/three-phase body is
shared through own-record phases1..3, old-parent phases4..6 and new-parent
phases7..9. Only the completed own-record return writes sibling summary35..46;
the original record, children, address and outer context remain in the state.
The common counter advances only in phase9. Return is phase10.

The own-record frame uses height n as processed n-1 and zero address, preserving
stored left/right order and hashing original depth256-n. Parent frames use the
original counter/address and the newly computed sibling summary. The branch
case requires1..255; the height0 sibling leaf, complete256frame controller,
Init/finalizer and whole-Core bindings remain separate required work. No
producer-supplied sibling summary is authorized by the candidate. Its complete local routing, original-record traces, actual source and numeric
component now have fresh-checked correspondence and full artifact byte bindings.
This does not establish the branch caller or the complete path controller.

## Admitted valid-state specialization: reuse proven metadata

The unrestricted sibling counterexample has a false old positive flag. It remains
valid and rules out inferring arbitrary child flags from a parent AND. It does
not settle the stronger case where the actual old root is already proved positive.

`positive-path-binding-formal-002` is Checked/fresh with seven targets. Under a
positive actual root and finite `Views.PathBinding`, every complete opening equals
the actual opening, including all sibling counts, digests and flags. Counts and
digests are in the authenticated parent preimages. A true parent AND determines
both Boolean operands. `Views.summary_complete` supplies the actual tree's covered
flag. No globally injective finite hash or producer-selected approval is assumed.

`validated-path-reuse-formal-003` is Checked/fresh with ten targets. It derives the
live-tree premise from `Machine.BoundaryValid`, complete typed initialization and
the actual `InitialValid` positive-row invariant. It proves that updates preserve
the exact full changed summary using this opening. The used-tree predicate is
always true. These are proofs about inherited validity; they do not require
rebuilding the old tree during each runtime check.

`validated-path-collision-formal-001` is Checked/fresh with two targets. Incorrect
complete live/used openings then expose distinct original canonical node messages
with equal SHA digests among actual/claimed path nodes only. Canonical typed bounds,
the expected old root, complete path coordinates, origin and physical continuation
bindings remain mandatory. The `covered` field here is the existing typed-tree
summary; it does not discharge the separate live-subset-of-used obligation.

For this fixed admitted profile, this supplies a mathematical route to the six-phase
paired component without separately hashing each sibling's own record. The
nine-phase construction remains useful for the unrestricted case. Actual K must
still realize and preserve all of the stronger caller premises before omitting
those phases. This is no finished physical controller or millisecond proof result.


## Checked local reload, terminal guards and complete control trace

`PairedPathReload` takes96state words plus12next-sibling words, returns96state
words plus3guards, and transfers both complete twelve-word parent summaries
into the next children. It resets the local phase to1, preserves the address
and17outer-context words, and requires phase7 with0<counter<256. The model
and forced-guard packet are Checked/fresh13/20; actual emitted IR equality is
Checked/fresh4. The complete actual reload source has a new Checked/fresh
assembly after the first aggregate attempt exceeded memory; the actual numeric
matrix is Checked/fresh3 and all file bytes bind. These108word inputs are not
a claim that Nova carries108public state words: the exact96state/12private-input
embedding remains an independent obligation.

`PairedPathFinalize` checks phase7, counter256, all8expected old-root words,
both old-count words and both old/new P/C flags. Its local return is phase8;
this is never public CoreDone. The model and forced-guard packet are
Checked/fresh15/22; emitted IR equality is Checked/fresh4. Its complete actual source is Checked/fresh141 and the numeric component
Checked/fresh55 with all file bytes bound. Bounded complete row/port/codec
assembly succeeds after retaining the direct-record recursion failure.

`PairedPathContinuation` is Checked/fresh10 for six phases followed by a reload,
including both complete summary transfers and the exact unwrapped counter.
`PairedPathLoop` is Checked/fresh8 for255such reloads and a final six-phase
round: every reload has the proper phase/count boundary, the final state is
phase7/counter256, and address/outer context remain unchanged. This is a pure
word-model control theorem. It neither assumes nor proves that every preceding
phase matrix accepted, that the supplied nodes form the original path, or that
the initial/terminal state is the expected certified Core boundary. Those
physical caller, typed-map and full semantic refinement obligations remain.

`PairedPathCompletion` is Checked/fresh6 for conditional terminal composition.
Every old-root/count word is anchored to the initial preserved context, and all
twelve new-summary words survive the local return. This still requires the
original caller/root/path/Init and preceding accepted-guard bindings. The first
count-context arithmetic proof fails an association step; explicit offset
equality fixes the separately identified002. No public CoreDone follows.
