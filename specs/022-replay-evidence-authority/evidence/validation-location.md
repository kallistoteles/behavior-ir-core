# Frozen revision validation location

Finalize all tracked implementation, fixtures, reports and T001–T049 bookkeeping
before committing. The final validation receipt is outside this checkout:

```text
REPLAY022_RECEIPT_DIR=/home/kalle/validation-receipts/core022/<full-candidate-SHA>
receipt.json
receipt.sha256
logs/environment.stdout.txt
logs/environment.stderr.txt
logs/gates.stdout.txt
logs/gates.stderr.txt
logs/consumer.stdout.txt
logs/consumer.stderr.txt
logs/final-status.txt
```

The directory is created only after the full immutable candidate SHA exists.
The receipt binds repository, branch, full commit/tree, environment/toolchain,
actual commands/statuses, all eleven executed gates, exact-revision consumer,
source identity and log checksums. Final task statuses T050–T053 are recorded
there; their frozen tracked checkboxes deliberately remain unchecked.

Run exactly `nix develop -c scripts/gates.sh`, push that candidate for Git fetch,
then run `nix develop -c scripts/check-consumer.sh --rev FULL_SHA` from the same
checkout. Capture failed attempts without overwriting their logs. A subsequent
source/report change requires a new commit/directory and fresh final validation;
a later merge, squash, rebase or release SHA is not attested by this receipt.

Seal only after all required operations pass and the checkout remains clean.
The receipt and logs become read-only, with a separate receipt SHA-256 and log
checksum manifest. Filesystem permissions prevent accidental modification, not
an adversarial privileged owner. The tracked report never embeds the final SHA
of its own containing commit. No merge, tag, release or ecosystem pin is part of
this delivery.
