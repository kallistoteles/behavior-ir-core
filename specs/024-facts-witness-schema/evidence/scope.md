# Implementation scope

Owning repository: kallistoteles/behavior-ir-core. Branch: `024-facts-witness-schema`. Baseline: `4f44fb83054d6d100f55e0b1466196b8cc94b151`. Initial status: only the twelve planned feature documents were untracked; no tracked source changes. Frozen023 is a separate clean checkout at the same SHA.

Allowed schema edits: `$defs/facts` plus the ten new ordinary helpers in governance-v2/store-v2. Allowed tests: Verify facts_witness_schema.rs/facts_witness_compatibility.rs and consumer facts_witness_schema.rs; fixtures under tests/fixtures/facts-witness-schema/. Documentation: feature024 artifacts, narrow docs/governance.md/docs/versioning.md explanations. No runtime, public API, dependency, gate or other schema changes.

Issue21 and its reproduction are retained externally under /home/kalle/validation-receipts/core024/baseline/. The project README was read; PURPOSE.md does not exist in the current project checkout. The Core constitution and feature artifacts govern this implementation.

First protected-scope comparison after GREEN: only governance-v2/store-v2 differ among4597 baseline tracked files. Outside facts, all pre-existing wrapper definitions and root-level properties match. Ordinary definitions/helpers agree between wrappers.
