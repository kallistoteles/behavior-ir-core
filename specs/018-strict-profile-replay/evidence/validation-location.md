# Frozen-candidate validation custody

Final validation has not occurred when this tracked document is produced.
The frozen candidate's own commit SHA will not be inserted into the commit
containing this document or the implementation report.

The retained external receipt root is:

```text
/home/kalle/behavior-ir-validation/018/<full-candidate-sha>/
```

Each command creates a new receipt directory, refuses an existing directory,
asserts that HEAD is the selected full SHA, and checks that tracked contents are
unchanged before and after execution. Command receipts record repository, commit,
tree, actual command, timestamps, compiler-cache settings, exit status, log paths
and SHA-256 digests. A separate toolchain receipt records the pinned Nix tools.

Required final receipts are `final-gates/`, `final-diff/`, `final-toolchain/` and
`final-consumer/`. The consumer command uses the pushed candidate's exact SHA,
the candidate's CLI and its unchanged consumer/fixture sources. No ecosystem
dependency override or new public API is involved.

After all required validation succeeds, `receipt.json` records post-freeze
completion of T043–T046, conditional premises, ignored tests and actual delivery
state. A checksum manifest and read-only permissions seal the external files.
Failed command receipts remain visible. The frozen reports/tasks remain unchanged;
their pending final-validation status is resolved by this external receipt.

This is revision-bound local evidence. It does not attest a different merge,
squash, rebase or release SHA and does not publish a Release. That later revision
requires its own final validation where exact-revision assurance is required.
