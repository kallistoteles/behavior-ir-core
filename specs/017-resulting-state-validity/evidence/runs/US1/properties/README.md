# T015 independent finite-child model

The test owns finite mappings for `Target` and `Node`, a disjoint simultaneous
delta, and the complete validity predicate for this admitted fragment. The
predicate directly checks nonnegative integers, required plain-identity
membership, optional-reference integrity, forbidden-target absence, and a
module-global integer-sum budget. Query/aggregate expressions occur only in the
admitted module-global invariant. Every entity type, including an empty type,
has an explicit parent universe. New identities carry explicit `used: false`
facts and are absent from the model parent.

The oracle does not use the production validator, incremental dependency
classifier, candidate builder, replay, or validation certificates. It applies
the test-owned delta to every typed parent mapping. For successful evaluations,
a second interpreter applies record changes/lifecycle to a separate parent
copy, checks each old value, and compares every child key/value with the model.
The production evaluator and public JSON representation are interfaces under
test. Test-owned row encoding is shared between input construction and expected
JSON output; this is not an independent audit of that encoding.

Both runs compiled and collected nine tests. The separate action-admission
control passed. There were no compiler or admission failures. The complete run
had three passing tests and six failing tests, with no ignored or filtered
tests. The passing tests covered admission, empty/local/global valid and invalid
controls, and the update/arithmetic/global-aggregate property.

`first-attempt/` retains the initial actual execution. Its mismatch assertion
returned at the Legacy result, so it alone does not establish Command-profile
RED. `both-profiles/` retains the revised test execution that evaluates both
profiles before reporting mismatches. All six failures explicitly show an
independently invalid child being returned as `ALLOW` under both Wire0.7 and
Wire0.8. The creation, plain-identity removal and mixed-delta deterministic
failures are accompanied by three corresponding property failures. Valid
retarget/removal and same-transition new-target/new-reference controls ran
before the failing assertions.

Each run records exact commands, revision, source-file digests, test digests and
actual output. Production source hashes were unchanged during both runs. The
automatically generated `.proptest-regressions` file preserves discovered
seeds; shrunk inputs and property success counts are in stderr. Failed
properties stopped on their counterexamples and did not complete 64 successful
cases. The arithmetic/update property completed its configured 64 cases.

Root-agent review confirmed the oracle and assertions before the resulting
state correction. That is agent review, not independent human approval. These
bounded properties and controls are executable evidence for the modeled
fragment; they are not a proof for all language operators, canonical witness
ordering, verifier soundness, or replay correctness.
