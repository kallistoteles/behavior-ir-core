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
