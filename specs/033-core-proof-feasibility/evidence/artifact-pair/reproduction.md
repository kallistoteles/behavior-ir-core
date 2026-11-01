# First signed primitive: reproduction boundary

The first pair is the full signed Int64 negative test, not the full Core checker.
The generator emits `checker_step(x: i64) -> bool { x < 0_i64 }` and a canonical
67-variable,66-constraint matrix. The actual source-byte parser and actual matrix
decoder connect those artifacts through the same IR result for every word.
Ordinary pinned rustc/runtime/ISA and Lean kernel assumptions are explicit.

The frozen second-attempt manifest is
`inputs-002/frozen/manifest.json`, SHA256
`44d1a670cc7f498ecb03ea284c3106aa41a46d2e05f27055176cd783fe769ada`.
It identifies2304 files totaling537,923,902 bytes, including the actual driver,
proof definitions, pinned tools and compiled proof dependencies. This is the
engineering environment's input size; no consumer verification bundle exists yet.
The source revision is `951262d1f42cba621dd4e898911d94b6de8ced73`, with exact
per-file digests in the manifest. Future output slots are not required inputs.

`inputs-002/core033-first-pair` preserves the actual runner separately from Cargo's
mutable target directory. It refuses changed frozen input files and a substituted
runner/tool/dependency inventory. The two compiled artifact families are merged
only when shared modules have identical bytes; their hashes must match their stage
audits. The combined proof receives a fresh kernel replay. Pending staged receipts
retain `AxiomAuditedPendingFresh`; they are not rewritten into checked receipts.

In the original worktree, with the frozen input files unchanged, another output
directory can be checked as follows. The output must not already exist.

```bash
nix-shell experiments/transition-study033/shell.nix --run '
  specs/033-core-proof-feasibility/evidence/artifact-pair/inputs-002/core033-first-pair \
    check-correspondence \
    --manifest specs/033-core-proof-feasibility/evidence/artifact-pair/inputs-002/frozen/manifest.json \
    --out specs/033-core-proof-feasibility/evidence/artifact-pair/replay-new
'
```

Manifest paths name the recorded workspace and Nix store. A different workspace
needs its own frozen manifest and locally hydrated pinned dependencies; copying
the JSON does not make those paths portable. `benchmarks/freeze_pair.py --out D`
records the available local files, preserves its runner and refuses an existing D.
It does not construct missing proof dependencies or generate a verification key.

The source artifact has54 bytes and the matrix has10,538 bytes. Their digests and
the standalone native build are recorded in `generator-artifacts.json`. The
source proof binds actual compiled file bytes, compiler/version/target/flags,
library, harness and executable; its five native boundary runs supplement the
universal source/IR theorem. A source hash alone is not semantic validation.

All12 source and5 matrix mutations must reach an actual semantic rejection. A
missing tool, failed import, timeout, recursion error, stack overflow or OOM is a
failed control. The matrix tactic uses ordinary kernel reduction without the
secondary elaborator expansion that failed on the first diagnostic path. Its
proof terms introduce no native-evaluation or custom semantic axiom.

Retained failed attempts include resource/diagnostic experiments and
`checked-pair/failure.json`: the first combined attempt failed on module-prefix
shadowing before checking the bridge. `checked-pair-002` is a separate attempt;
the older inputs and failure remain unchanged. Full machine/hash/codec/Nova
embedding, initialized compressed history, durability, observation reconstruction
and runtime p50/p95 remain later obligations. A first-pair pass cannot pass G1.
