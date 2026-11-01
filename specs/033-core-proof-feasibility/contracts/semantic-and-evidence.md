# Core033 semantic and evidence contract

Normative design for the [specification](../spec.md). Formats below belong to
the isolated experiment and do not modify released Core formats.

## 1. Closed subject and whole-scope ledger

G1 supports only the complete recognized IR0.8/CommandIntents template described
in [data-model.md](../data-model.md). All action declarations and rules are bound,
even when a benchmark never invokes them. Module admission/recognition and
observation-relevant metadata have a checked mapping to the logical subject.
A changed/weakened predicate, unexpected action, binding or cap must not retain
the old checked subject. New parameterized cap modules have distinct identities.

G0 produces a source-pinned exhaustive ledger over:

- All 24 ExprKind constructors, every CmpOp/ArithOp, six FoldOp, three QueryKind
  and three SetOp variants, types, conversions and value decoders.
- Module declarations/parameters/effects, command canonicalization/guards,
  metadata/diagnostics, evaluation order/phases and errors.
- Admission, evaluate/replay, reads, invocations, migrations, Store creation/
  commits/lifetimes/references/commands, policy/governance and verification claims.
- Every item in `api/engine-surface.txt` and each admitted legacy/profile version.

Each entry has included/deferred status and its exact acceptance obligation.
G1 includes literals, fields/parameters, signed comparison and count(select E)
needed by the fixed template, not arbitrary Boolean/query/arithmetic programs.
This inventory does not claim a full-Core formalization or fast fallback already
exists. Unsupported operations return an operational scope result, not a semantic
Core refusal or a partial certificate.

## 2. Exact reference and maintained meaning

F is independently defined from the authoritative Core contract for that subset.
It includes allowed/refused/error result and phase, exact simultaneous effects,
canonical command multiset and observation meaning. Binding/lifetime refusal
codes and first failure order must be mapped from actual Core, not invented here.
The mapping and complete observation rendering are G0/G1 theorem targets;
differential tests alone cannot establish them.

Create checks fresh typed identity, realizes the declared fields and preserves
positive x/count cap. Set reads the exact bound row and applies the literal x
input under the same result rules. Emit changes no row. Canonical identical
intents preserve multiplicity. Failed/refused actions move no committed state,
used-ID set, event or command occurrence. Side effects remain private until commit.

J means exact live/used membership, subtree counts, local validity summaries and
coverage. Init checks all supplied seed data, duplicates, count and required local
rules. Expected input inventory digest binds completeness of that input; it does
not prove a producer's inventory is the world's complete past. Origin authority
is explicit. Larger U seeds require actual established input origin; the proof
claims only its declared genesis/suffix, never unexamined prehistory.

For local updates, authenticated changed paths and fixed exact count/local laws
preserve J; unchanged branches inherit J. Native whole-J rechecks are diagnostics,
not the proposed sparse acceptance path. Unknown coverage cannot be framed away.

## 3. Required theorem chain

```text
ExpectedOrigin ∧ InitAccept ⇒ Admitted ∧ InitialValid ∧ Represent(Ω,V) ∧ J(Ω,V)
Represent(Ω,V) ∧ J ∧ KAccept(request,result,Ω',V')
  ⇒ Denote(result,support) = F(Ω,request,context) ∧ Represent(Ω',V') ∧ J'
Init + finalized K steps + proof-system soundness + exact expected-subject checks
  ⇒ exact declared Core history and current maintained meaning
```

Required release targets: module-to-subset mapping; Init validity/completeness;
maintain/reuse/coverage; exact F correspondence; microstep refinement and finalizer;
actual source semantics; actual matrices/codec; full digest injection; observation
expansion/identity independence; history induction. All targets quantify over their
declared subset/domain, not only the finite benchmark fixtures.

Use the Lean typed IR and independently validated artifacts described in
[formal research](../research-notes/formal-correspondence.md). Generated native
microsteps are loop-free value-only Rust with explicit word/bit operations;
multi-step traversal is authenticated machine state. A proved restricted-source
parser/translation checks actual build-input bytes. Actual canonical constraint
matrices and effective backend shape are checked against the proved IR lowering.
Neither an artifact hash nor equality of generator outputs is that theorem.

After real backend synthesis, validate the exact input-port mapping and returned
`z_next` wires of `StepCircuit::synthesize`, the certified semantic constraints'
embedding into Nova's full augmented shape and their connection to augmented
output hashing. Record the full shape identity and public/private wire mapping.
A sound K submatrix whose outputs are unused cannot pass. Mutating the return
wire, public-port alias or augmentation embedding must fail the actual check.
Source/IR checking precedes preparation; this final backend receipt is completed
during preparation, before any keys/artifacts acquire checked release authority.

Allowed TCB is named: Lean/kernel foundations, ordinary pinned compiler/runtime/
ISA and executable binding, cryptographic implementation/security and declared
authority/storage model. No custom axiom may assume native K correctness, actual
matrix meaning, valid seed or target invariants. Retain transitive axiom lists
and fresh kernel-only replay; no `sorry` or native-evaluation axiom closes critical
targets. Failure to build a required bridge means not established.

## 4. Canonical codec and public claim

Use `core033.semantic.v1` typed binary records. No ambiguity from JSON formatting
enters identity: JSON is human-readable transport/reporting only. Each binary
record has an explicit domain/version, fixed field order, tagged optional values,
little-endian unsigned widths and length-prefixed byte sequences. Signed Int64
uses eight-byte two's complement; text is exact UTF-8. Integers/lengths are bounded
before allocation and checked for canonical representation. No implicit Unicode
normalization, host `usize`, field reduction or modulo truncation of identities.

Record tags, every field/sequence bound and decoder rejection are fixed in G0's
codec artifact and covered by actual-source/matrix correspondence. JSON reports
render full digests as lowercase hex and u64 values as decimal strings when needed
for exact interchange. Human JSON never authorizes executing a supplied tool.

Every SHA-256 application digest uses all 256 bits. Public vectors carry four
range-checked u64 limbs in fixed little-endian order. The proof relation contains
the hash and its authenticated accesses. A host-computed digest beside an
unrelated semantic proof is not accepted. One SHA compression block per hash
microstep is the first schedule, with streaming length/padding also constrained.

The public state binds origin/release/program/profile, semantic roots/head/event
position, helper-view subject, output/request/context commitments, obligation
frontier, phase and proof-microstep count. Larger records are bound by checked
canonical digest computations. The fresh verifier compares every expected field
after decoding the endpoint returned by Nova; it does not accept whichever final
vector a valid certificate happens to return.

## 5. Observation and identity meaning

Use the acyclic SemanticParent→EventId→OccurrenceId construction in the data model.
Do not put proof/private/helper layout or operational checkpoint identity into the
semantic parent. Do not put occurrence IDs derived from EventId into its preimage.
The request-result idempotency key is operational metadata; the semantic request
and expected parent/context remain explicitly bound and compared.

`Expand(recipe,sufficient retained support)` equals the full reference observation.
Support includes applicable source/profile, seed, requests/context and deltas for
the requested range. Producer-specific caches can accelerate reconstruction but
cannot alter recipe or EventId. Audit may replay for reconstruction; prefix proof
verification may not replay to supply missing semantics. Missing support reports
audit unavailability, not an empty state/query or invalid proof by implication.
Legacy record hashes and command occurrence algorithms retain their old meaning;
this profile makes no byte-compatible legacy-ID claim.

## 6. Cryptographic finalization and attempts

Init consumes at least one real microstep. Nova's constructor already performs
first-step work and the first `prove_step` has special accounting; charge both
correctly. Use actual standard-Spartan compression, not a recursive artifact
or gzip. The exact upstream APIs and key shape are in
[proof-backend.md](../research-notes/proof-backend.md).

Canonical continuation is at InitDone/Done. Allowed candidates extend it privately
to Done; refusals fork to AttemptDone with unchanged business history, and reads
are outside G1's runnable subset. The refusal certificate and original request
result can be durable without changing canonical proof continuation. An inner
fold, partial expression or unfinished output root is never a certified event.

Checkpoint restore checks the selected backend's recursive consistency and exact
origin/endpoint/count. It grants no independent semantic authority to arbitrary
serialized prover data. Every new final compressed proof is checked independently
before publication. Wrong/stale/absent continuation causes rebuild or explicit
unavailability, with cost retained.

## 7. Required real rejection controls

Reject invalid genesis despite accurate false summaries; 1001st creation under
cap1000; wrong-but-safe effects; omitted changed rule; stale/wrong-root count;
reused typed key; changed source comparison; deleted matrix range/Boolean check;
wrong input/output wire; truncated/reordered digest limbs; wrong origin/release/
module/profile/request/context/position/endpoint; an unfinished phase; missing or
collapsed duplicate commands; and a losing branch presented as canonical.

Expected business refusals and tampered evidence are different outcomes. Their
exact expected reason is frozen in fixtures before implementation. Mutations
exercise actual validators and acceptance, not a parallel toy predicate.
The fresh-recipient control must work with the repository/history unavailable
and no authoritative Core evaluation/replay calls on its acceptance path. Missing
audit data cannot secretly trigger a full replay fallback inside verification.
