# Architecture consequences of the primitive cost trial

This is a design investigation record, not a changed study protocol, a selected
replacement architecture, or permission to activate a new Core implementation.
The frozen 033 commitment format, semantic contract, Pallas/Vesta IPA standard
Spartan backend and synchronous completion promise remain unchanged.

The [completed primitive diagnostic](COST.md) establishes a concrete engineering
problem: the current construction produced and verified a correct primitive
endpoint, but one fold took about one second, compression 511 seconds, and
resident-key compressed verification 6.7 seconds. The full Core claim is still
unestablished. A smaller report or a smaller final proof does not remove this work.

A separately frozen identity-circuit baseline now strengthens that signal:
returning all 43 words unchanged still took 33.364 seconds to compress and
674.824 ms to verify with the key resident. A fresh process took 3.234 seconds,
including actual material loading/decoding. These are real two-step primitive
observations on the same construction host, not Core latency, quantiles or a
universal lower-bound proof. They show why optimizing SHA and expression sharing
alone cannot establish the promised finished-result cost for this implementation.
The next backend experiment must measure its own remaining work explicitly.

## Preserve the semantic boundary

Keep exact F/J/K meaning, initialized-state validity, changed-path preservation,
first-error order, full signed/count ranges, complete key comparisons, original
command multiplicity and the distinction between state and history identity.
The checked local traces and actual-source correspondences remain useful under
a different implementation strategy. An optimizer or producer cannot approve
its own missing obligations.

Keep the engine separate from K. The engine may maintain exact views and reuse
results under proved preservation laws. K must still establish the exact result,
the relevant complete dependencies and the expected committed boundary. This
separation is a correctness structure; it is not a proving-cost estimate.

## Costs that require separate experiments

| Cost source | Concrete current evidence | Candidate change to investigate |
| --- | --- | --- |
| Instruction representation | 154,904 current rows implement literal/NOT/rotate/shift operations; syntactic sharing leaves 3,795 of 8,827 expressions. | Checked expression sharing and affine/bit-wire reuse instead of allocating every word operation independently. |
| SHA implementation | The pinned stock gadget natively checks a complete 115-byte/two-block hash in 52,640 constraints, excluding Core control. | Prove that an optimized gadget or lowering has exactly the original SHA and complete port meaning. |
| Authenticated traversal | The unchanged nine-phase candidate conditionally instantiates about 1.108 billion rows per complete opening. | Determine which checks inherited validity really preserves; separately investigate a canonical compressed authenticated representation if the format changes. |
| Compression and verification | Standard Spartan retains a roughly 99-MB verifier key and spends 6.7 seconds verifying this primitive with the key already resident. | Evaluate a different independently specified proof/commitment construction; measure cold material and the complete returned endpoint. |

The first two changes may preserve the frozen external meaning. Their optimized
artifacts still require new identities, exact equivalence, actual row/source
binding and rejection controls. The current syntactic count and stock gadget
vector are diagnostic inputs, not those proofs or measured end-to-end speedups.

Caching old nodes does not generally eliminate calculating new ancestor hashes
after a child changes in the existing uncompressed 256-height commitment. A
compressed representation would need to bind skipped coordinates and complete
summaries, preserve deterministic state identity, and retain exact membership,
absence, collision and lifetime behavior. Neither average depth nor a producer's
cached flags can replace that proof. A new commitment is a new profile, not a
byte-compatible optimization of the frozen one.

A stronger reuse result is now proved for the admitted positive-state profile.
Seven fresh-checked targets establish that a positive actual root and finite
path-only binding determine the complete opening metadata. Ten more derive that
premise from typed `BoundaryValid`/initialization and establish the complete changed
summary; two connect wrong openings to distinct original canonical messages with
equal SHA digests. See [the controller specialization](CONTROLLER.md#admitted-valid-state-specialization-reuse-proven-metadata).
This can eliminate separate own-sibling hashing after the physical caller preserves
and binds those premises. The unrestricted false-flag counterexample remains valid.
The earlier nine-phase billion-row count is therefore a conditional construction
cost, not an inherent lower bound for every admitted-state implementation.
This does not remove the observed identity-circuit proof-backend costs.

There are already alternative implementations in the pinned Nova source:

- `vendor/nova/src/frontend/gadgets/sha256.rs` uses shared bit representations
  and combined additions; rotations in `gadgets/uint32.rs` rearrange bit wires.
- `vendor/nova/src/spartan/ppsnark.rs` commits to the sparse matrices instead of
  retaining their full description in that Spartan verifier key. Its own scope
  comment conditions the benefit on succinct polynomial-commitment verification;
  selecting it does not by itself prove cheap IPA verification.
- `vendor/nova/src/provider/mod.rs` exposes a BN256/Grumpkin HyperKZG route.
  This changes the curve/field/commitment construction. Its `hyperkzg.rs` explicitly
  distinguishes ceremony-derived parameter loading from test-only known-tau
  setup. No local test setup may become evidence of a production-sound choice.

These are concrete research seams, not benchmark results for replacement
backends. Their security/authority assumptions, actual field encodings, installed
material, setup, proof generation and independent verification must be stated and
measured before selecting a replacement.

The separately identified `preprocessed-spartan-ipa-cost-screen-inputs-001.json`
now freezes one such screen using the pinned preprocessing Spartan with the
same Pallas/Vesta curves, actual matrix and full endpoint. Its producer and
fresh-consumer binaries build; its packing mutation rejects the exact row before
setup. The honest witness passed all actual native rows and recursive verification,
but compression did not finish before the whole-child 900-second ceiling. Cold
parameters took 501.477 seconds and compression key setup 22.581 seconds. There
is no compressed proof or fresh verification for this screen; those phases remain
explicitly blocked. This candidate has not demonstrated a cheaper complete chain.
The frozen 033 release still uses standard Spartan.

## Required order for the next identified candidate

First write the exact candidate and its differences: representation, hash/profile,
backend, authority assumptions and completion promise. Keep the original 033
evidence immutable. State which existing theorems apply and which actual bindings
must be rebuilt.

Before constructing the entire new K, run a bounded, explicitly untrusted cost
screen of its real hash/path work, real accumulation, real compression and a
fresh process reading the expected verification material. Record failures and
every whole interval. Do not choose a candidate from a native evaluator or proof
byte count alone.

Then construct the checked smallest initialized business chain: valid origin,
local rule, count boundary, exact state/history update, compressed proof and a
fresh independent expected-claim check. Preserve source/matrix/encoding/actual
embedding obligations. A new candidate can fail here.

Only after that chain is credible should the full controller, durable publication,
audit/recovery and 100-observation campaigns establish or reject the complete
finished-result targets. There is no demonstrated replacement millisecond path
yet. The current result warrants reworking the construction before a full Core
rewrite, while retaining the semantic and incremental architecture investigation.
