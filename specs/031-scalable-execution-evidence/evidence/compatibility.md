# Compatibility and scope audit

Compared against planning merge `6e4602b04884edafb1123977fc22f7d88189fd06` and the declared Core 0.16.0 baseline.

Only four previously tracked source files change: five named work-counter fields, feature-gated parse/hash/decode attempt counts, and a `cfg(test)` research module registration. The runtime source diff is 22 additions/one replaced diagnostic line. All added instrumentation is under the existing `validation-work` feature; its timing is kept separate. No default execution branch, canonical codec, hash domain, validation rule, Store transition, persistence/replay/governance behavior or public facade is changed.

New Rust files are test support, tests and one research example. The finite-map experiment is test-only and is not integrated into Core execution. Python tooling stores/validates independent research artifacts. The new shell test is discovered by the unchanged existing gate list; it introduces no release process. Safety certificates, runtime state, indexes, Model behavior, scheduling and physical command execution remain outside this work.

`git diff --exit-code HEAD --` passed for all `tests/fixtures`, archived Feature 029, workspace/consumer manifests and locks, Nix/toolchain files, `scripts/gates.sh`, the public facade, workflows and persistence documentation. The baseline full gate passed determinism, 106 immutable archives and the 139-item public-surface check. Final gates are linked by `gates.txt`/`gates-source.json` after their actual completion.

The frozen campaign uses archived exact native source/binaries and collector version 004. Later auxiliary packing/input-retention controls and independent query/history tests are separately identified; none changes the measured native Rust driver/library inputs. Existing-function byte/typed comparisons and the final audit preserve that distinction. Primary data are not relabeled as measurements of a different engine or optimization.

Complete baseline observations match in all 96 production/32 diagnostic cases; three release-mode durable recovery trials pass. New tests preserve legacy wire-error envelopes and Option/None equality rather than changing them. Source archives and gzip containers reproduce exact original bytes; they are research packaging and provide integrity, not new mathematical or governance authority.

Published tags, records, attestations, established fixtures and version metadata are untouched. No commit, PR, tag or release publication is part of this task. The unrelated dirty ecosystem checkout and user work were not reset, cleaned or used for experiments. All new native research work occurs in the Core 031 worktree and uniquely named task directories.
