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
