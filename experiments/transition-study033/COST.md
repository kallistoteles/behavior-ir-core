# Candidate work count

This is a cost diagnostic for the current construction candidate. It is not a
measured cryptographic proving result or a verdict about all Core architectures.
The exact observations and arithmetic are retained in
[`candidate-symbolic-work-count-001.json`](../../specs/033-core-proof-feasibility/evidence/scoped-chain/candidate-symbolic-work-count-001.json).

The nine-phase branch candidate's actual generated matrix header contains
481,516 constraints and 479,678 variables. Its 76,029,738 bytes and the matching
661,463-byte source file are identified in that record. Its complete matrix
correspondence is still open; the observed header is not a kernel theorem.

If that unchanged candidate runs once at each sibling-branch height 1..255, it
instantiates **1,105,079,220 constraints across 2,295 steps for one opening**.
Using the existing six-phase paired parent candidate at sibling-leaf height 0
adds 2,724,408 constraints. The conditional total is **1,107,803,628** before
own-leaf authentication, outer control, identities, initialization or durability.
Updating two maps using both such paths would double this subtotal.

These are sums of instantiated constraints over time. They are not one circuit
allocation, peak memory, elapsed time, proof size or throughput. No inference of
measured G1 latency follows from them. They nevertheless expose a serious cost
question that a list of successful component proofs does not answer. The full
certified finished-result targets remain p50≤50 ms and p95≤100 ms; it is not established.

The current three-phase local dispatcher executes its fixed SHA-containing body
also during its final metadata/update phase. That phase is useful as a simple
construction boundary but its circuit work is not free. Combining the second
compression and resulting state update could remove those extra steps; doing
so requires a new actual implementation and correspondence/trace checks. A
constant-factor reduction would still leave the main scale question open.

The first-principle questions to settle are therefore the work per authenticated
path under the frozen commitment format, how much of that work genuinely has to
be proved for each transition, and the actual cost of the selected recursive
backend. The semantic, origin, full-digest and independent-consumer obligations
cannot be replaced with an unchecked producer assertion to reduce this count.
A change to a frozen commitment or backend choice requires a separately stated
candidate; this diagnostic changes neither.

An isolated `src/bin/numeric_cost.rs` diagnostic is being prepared against the
already Checked 302,936-row `FrameHashController` numeric component. It reads
the actual matrix, validates two linked complete native witnesses against every
row, aliases all input wires to Nova state, and returns all 43 state wires.
The adapter is not a certified Nova embedding and grants no release authority.
It retains normal OS entropy and separately records setup, constructor work,
the counter-only first `prove_step`, an actual second fold, full endpoint
verification, compression keys, compression, and artifact encodings. No result
is claimed until a complete bounded run exists. This is a diagnostic on a
construction host, not a G1 latency campaign or a fresh-consumer measurement.


## Completed portable primitive diagnostic

[`numeric-cost-portable-positive-001/receipt.json`](../../specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-portable-positive-001/receipt.json)
records one complete diagnostic on Intel Xeon X5670, portable Pallas/Vesta
Pedersen/IPA standard Spartan, one Rayon worker, normal OS entropy, 8-GiB
address-space and 900-second process limits. The host also ran construction
jobs. All file identities remained unchanged. The complete original 302,936-row
matrix accepted both linked witnesses; both recursive and compressed verification
returned the entire expected 43-word endpoint.

| Observed phase | One diagnostic observation |
| --- | ---: |
| Cold parameter generation | 117.862 s |
| Constructor, including first proof step | 482.494 ms |
| First `prove_step`, counter update only | 0.009 ms |
| Second `prove_step`, actual fold | 1,056.466 ms |
| Recursive verification, complete endpoint | 2,524.511 ms |
| Compression-key setup | 1,538.977 ms |
| Compression | 511.060 s |
| Compressed verification, same process | 6,718.088 ms |
| Whole recorded child interval | 645.168 s |

The whole interval is directly measured; it is not a sum of separately sampled
phase medians. Witness construction before the run is separate. Native witness
checking, encodings and diagnostic I/O are included in that whole interval.
Peak RSS was 1,181,626,368 bytes. Parameters encode to 94,345,824 bytes, the
recursive state to 21,374,264 bytes, the compression prover key to 208 bytes,
the verifier key to 98,873,928 bytes, and the final proof to 13,496 bytes.
This standard Spartan implementation keeps the R1CS shape in the verifier key;
see `vendor/nova/src/spartan/snark.rs`. A small proof therefore does not establish
small cold verification material or fast verification.
The key belongs to a fixed circuit release and can be reused across operations;
the final proof is the per-subject artifact. The fresh-process diagnostic charges
loading and validating that shared key when it is actually needed.

These are one primitive diagnostic's observations, **not p50/p95, a full K trial,
a certified Nova embedding, a fresh independent consumer, or a durable business
operation**. The ordinary construction host is not a frozen campaign environment.
The production manifest still references the unmodified upstream git revision;
only the separately named diagnostic package uses the portable vendor copy.
The unmodified runs failed by SIGILL on this CPU and remain retained failures.
The portable packing-bit mutation was rejected at actual row 32 before setup.
No T043/T044/T045 task or full release relation is thereby completed.

The observation is a concrete **Rework signal for the current synchronous proof
construction**. A component already consumes much more than the complete-operation
target, and compression dominates this observed trace. It does not formally
establish a full G1 performance failure or rule out other encodings/backends,
CPUs, commitment formats or architectures. Completing more component proofs
cannot by itself turn this construction into a demonstrated millisecond path.

## Concrete directions exposed by the cost investigation

The current word encoding spends 154,904 of its 302,936 rows on literal, NOT,
rotation and shift instructions. Its exact native accounting is retained in
`numeric-cost-current-row-structure-001.json`. An untrusted syntactic sharing
analysis reduces 8,827 original instructions to 3,795 distinct recursive operand
expressions, with a conditional same-word-encoding count of 131,450 rows. That
is not a transformed artifact, a proved optimizer or a measured speedup.

The pinned Nova source already contains a SHA gadget with shared rotations,
constant handling and combined additions. A separate native diagnostic of all
920 allocated input bits for one 115-byte message satisfies 52,640 equations
for both SHA blocks and matches all 256 expected digest bits. Its retained
stage is `pinned-stock-sha-gadget-full115byte-native-shape-diagnostic`.
This excludes Core routing, record admission and controller constraints; these
counts are not an end-to-end comparison or a formal gadget bridge.

The next design investigation must therefore address three separate costs:
redundant instruction/bit representation, repeated authenticated-path hashing,
and the selected compression/verification construction. Sharing expressions or
using an optimized SHA gadget addresses the first. It does not remove the
frozen 256-height traversal or prove the full chain cheap. Any changed matrix
needs a new identity and correspondence; any changed commitment, synchronous
promise or selected backend needs a separately specified candidate. The full
semantic and independent-consumer obligations remain required.


## Retained export and fresh process

A second separately identified run,
[`numeric-cost-portable-export-001`](../../specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-portable-export-001/receipt.json),
retains every encoded parameter/key/recursive/compressed artifact. It completed
in 640.395 seconds with unchanged identities. The actual fold took 1.042 seconds,
compression 505.999 seconds and same-process compressed verification 6.808 seconds.
The deterministic parameter/prover-key/verifier-key bytes match the first run;
proof bytes differ under normal OS entropy. Neither observation is a quantile.

A fresh diagnostic process then read the retained verifier key and compressed
proof and compared all 43 words against an owned expected subject frozen before
production. Its complete child interval was **41.191 seconds**: 32.660 seconds
inside the process to read/hash/decode material, then 8.447 seconds to verify and
compare the complete endpoint. Peak RSS was 404,316,160 bytes. Page-cache state
is unspecified; this is process-cold, not a claimed physically cold-cache campaign.
The key identity was selected from the owned diagnostic build/export receipt;
this is not independently certified full Core release material.

The same proof in another fresh process rejects an expected endpoint with one
changed word, with the exact `complete expected primitive endpoint differs`
reason. Both the positive and negative receipts retain complete intervals, exit
codes, selected subjects, binary/source identities and raw logs. The receiver
neither re-evaluates the native word program nor uses its witnesses. Full Core
initialization/history/source/embedding authority and durability remain open.

The 6.7/6.8-second same-process verifier observations already exclude material
loading. Reducing file transfer or moving the key into resident memory alone
does not demonstrate a millisecond path for this construction. The separate
fresh-process observation makes its loading/validation cost visible as well.
See [the architecture rework investigation](REWORK.md) for concrete preserved
obligations and candidate seams; no replacement has yet passed G1.


The reported two-step experiment contains only the first actual continuation
fold after construction. It does not establish a steady-state fold cost for a
long accumulated proof. A separately identified four-compression diagnostic
using the already Checked guarded hash-block matrix has completed; its
original-message/Core binding remains explicitly outside that diagnostic scope.


## Why logarithmic proof size still entails large generator work

The pinned `provider/ipa_pc.rs` repeatedly folds the generator key while reducing
its inner-product argument. `provider/pedersen.rs::fold` produces each folded
point with a two-base multiscalar multiplication and affine conversion. For the
observed standard-Spartan augmented shapes, `R1CSShape::pad` gives primary and
secondary lengths 524,288 and 16,384. Batched witness/error evaluation retains
the maximum length. The two IPA reductions therefore produce **540,670 folded
generator points** across their halving rounds. The exact source/geometry record
is `numeric-cost-ipa-work-count-001.json`.

A separate native microbenchmark checks that the pinned fold agrees with its
linear commitment relation. Folding 8,192 public synthetic generators into 4,096
took 3.529 seconds on Pallas and 3.501 seconds on Vesta, with public full-width
weights. Setup is separately recorded. This identifies a concrete expensive
operation; it does not measure what fraction of the complete 511-second
compression belongs to it, and multiplying microbenchmark averages is not an
observed full-system timing. Its retained stage is
`pinned-ipa-generator-fold-native-cost-screen`.

This is an algorithmic reason to screen proof-generation and verification work
before selecting a backend from final proof size alone. An implementation change
or alternative commitment still needs its own correctly identified experiment,
security/authority conditions and actual correspondence evidence.


## Four genuine accumulated SHA steps

`numeric-hash-chain-cost-001/receipt.json` records a separate complete run of
four linked compressions through the original Checked 125,968-row guarded
hash-block matrix. All eight SHA state inputs connect across steps; the 64 raw
byte inputs in each step are private witnesses and all byte guards are forced.
The selected native witness computes the complete independent hashlib digest
of 192 zero bytes including its final padding block. The diagnostic does not
prove original-message/stream/length/Core binding or a certified Nova embedding.

The constructor took 342.304 ms. The counter-only first `prove_step` took 0.009 ms;
the next three actual calls took 722.787, 983.463 and 1,155.125 ms. Complete
recursive verification took 2.365 seconds, compression 255.690 seconds and
same-process compressed verification 3.785 seconds. Both returned the full
expected eight-word endpoint. The whole child interval was 328.111 seconds,
with 573,845,504-byte peak RSS; all selected identities remained unchanged and
the unchanged 8-GiB/900-second limits were respected.

This settles one additional diagnostic uncertainty: the first continuation call
is not a measured steady-state cost. It does not establish an asymptotic cost
from only four steps. The matrix, state arity and statement differ from the
43-word controller trial, so these are separately scoped observations rather
than an end-to-end speedup comparison. No full Core or G1 verdict follows.

## Same backend with only an identity step

The separately frozen `identity-cost-screen-inputs-001.json` asks what work this
implementation performs when the user circuit simply returns all 43 state words
unchanged. It uses the same portable pinned Pallas/Vesta standard-Spartan/IPA
stack, two actual accumulated steps, normal OS entropy, and unchanged
8-GiB/900-second child limits. It has no Core, SHA or actual-matrix refinement
claim. This is one observation on the contended construction host, not a
mathematical latency lower bound or a campaign quantile.

`identity-cost-export-001/receipt.json` is DiagnosticComplete with unchanged
identities, a 51.611-second whole child interval and 134,164,480-byte peak RSS.
The actual augmented shapes still have 16,076/10,349 constraints and
16,152/10,331 variables on the primary/secondary curves.

| Phase | Observed interval |
| --- | ---: |
| Cold parameter generation | 14.432 s |
| Constructor including first step | 616.058 ms |
| First counter-only call | 0.000725 ms |
| Second actual accumulation call | 735.844 ms |
| Recursive verification, all 43 words | 787.174 ms |
| Compression key setup | 306.392 ms |
| Compression | 33.364 s |
| Compressed verification, key resident | 674.824 ms |
| Fresh process through complete verification | 3.234 s |

Actual exported verifier material is 22,293,544 bytes; the proof is 11,936 bytes.
The fresh process reads/hashes/decodes that material in 2.184 seconds and verifies
the complete selected endpoint in 1.033 seconds. Its expected subject was frozen
before production, and key selection remains owned diagnostic material, with
page-cache state unspecified. These are separately recorded intervals, not a
synthetic sum of unrelated medians. The raw files and all producer/consumer
receipts are retained.

Another fresh process rejects the same proof against a one-word changed expected
endpoint for the exact declared endpoint reason (3.187 seconds). The diagnostic
decision and immutable receipt hashes are in `identity-cost-rework-signal-001.json`;
both full G1 assessment axes remain not established.

This is a direct cost discriminator: this observed implementation performs
substantial work without user-circuit computation. Reducing the Core/SHA circuit
alone does not establish the promised finished-result targets. Another backend
or proving construction needs an independently identified full cost screen;
this baseline does not prove that every implementation has these costs.

## Preprocessed Spartan with the same IPA and actual matrix

The separately frozen `preprocessed-spartan-ipa-cost-screen-inputs-001.json`
changes both compression SNARKs to the pinned `spartan::ppsnark`. It preserves
the actual 302,936-row matrix, Pallas/Vesta fields, all 43 expected words, two
linked witnesses, normal OS entropy and the same child limits. It neither
changes the frozen 033 release nor certifies the Nova embedding. The private
packing-bit mutation rejects the exact original row 32 before setup.

The honest run accepts every native row and verifies the complete recursive
endpoint. Cold parameters take 501.477 seconds; the actual fold takes 1.073
seconds, recursive verification 2.435 seconds and compression key setup 22.581
seconds. Compression does not finish before the **900-second whole-child cap**.
The parent recorder completes normally and records exit 1; its diagnostic child
is killed with exit -9 and explicitly records `timed_out: true`. The retained
bounded runner interval is 900.786 seconds, including termination/receipt work,
and peak RSS is 4,503,842,816 bytes. All selected identities remain unchanged.

Actual retained material includes 148,347,488-byte parameters, a 499,122,976-byte
compression prover key, a 71,847,592-byte verifier key and a 21,374,264-byte
recursive proof. Oversized files are retained locally and stored for Git as
bounded chunks with complete restored-byte comparisons; their original hashes
and diagnostic scope remain unchanged.

There is **no completed compressed proof, compression duration or fresh consumer
result**. The consumer binary builds, but verification is NotRun with the failed
export receipt as its blocker. `numeric-cost-preprocessed-assessment-001.json`
records those absences explicitly. No difference between unrelated phase totals
is invented as a measured compression interval. This screen has not established
a cheaper completed chain or a new G1 verdict.
