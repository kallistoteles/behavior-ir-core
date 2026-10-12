# T066 exact pushed-revision consumer

The canonical `nix develop -c scripts/check-consumer.sh --rev
1e8dc8194e131ba720640e1e249c9e15842bb5a4` completed with exit0.
[Capture](run.json) retains complete actual output and confirms source/test files
unchanged during the run. All43 consumer tests passed,0 failed/ignored/filtered.

[Verification](verification.json) records the actual compiled behavior-engine
dependency files, their source checkout and its exact Git HEAD. Tracked checkout
source is unchanged; Cargo’s generated `.cargo-ok` cache marker is preserved.
The canonical script removes its temporary manifest/lock on exit; these were not
captured before cleanup and are not claimed retained. Compiled source references
and the checkout provide separate resolution evidence. Two post-run reader
assertions (path matching and the generated marker) were corrected; neither was
a consumer-test or semantic failure. The consumer’s sole direct Core dependency
is the supported `behavior-engine` facade. Candidate CLI, tests and fixtures use
the same manifested semantic files as the pushed candidate.

The same compact debug/incremental output settings as T065 were supplied; required
test selection and normal counts were unchanged. This proves compatibility with
the candidate, not a published Core Release. No ecosystem dependency metadata,
private development override, tag, merge or release was changed.
