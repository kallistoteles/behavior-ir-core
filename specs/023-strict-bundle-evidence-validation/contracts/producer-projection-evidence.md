# Contract: Producer coverage and private projection evidence

This resolves analysis findings I1/U1 without changing SC-002, the supported
domain, the private codec boundary or the versioned validation phases.
The fixture paths and test names below are prospective implementation work.

## I1 — Required evidence for each supported pairing

Every inventoried supported producer–consumer pairing must identify:

1. Its actual producer output, source/capture identity and recorded format/profile.
2. Successful consumption of that output at the pairing's applicable boundary.
3. Exact semantic projection evidence against the original ordinary observations.
4. Collected test names, commands/statuses and retained evidence locations.

Shared construction invariants may explain reuse of the same captured output or
projection checks across routes. They do not replace actual producer-output
acceptance and projection evidence required by SC-002. Each pairing must point to
that evidence, and distinct route-specific decoding/profile/dispatch checks must
be exercised. A source-only argument cannot mark an unexercised pairing complete.

The PC inventory includes structural conveniences and transitive consumers, not
only independent producers. Preserve that classification: PC07 structural decode
is not a strict consumer; K01/K02 constructions are codec controls, not historical
producer captures. Do not invent additional support or claim live authority from
archive/local acceptance. V1 retains its own historical phases and checks.

## U1 — Fixture ownership, paths and handoff

T044's Store test owner creates and reviews this new test-only package:

- `tests/fixtures/strict-bundle-evidence/projection-cases.json`
- `tests/fixtures/strict-bundle-evidence/projection-manifest.json`

The deterministic capture recipes live in
`crates/behavior-store/tests/strict_bundle_evidence.rs`. Use actual supported
Store action producers PC01–PC03 and their common serializer PC04, under S04/S05,
with fixed seeds, inputs, context and time. Include empty, single/multiple query
and mixed observations; collectively cover all five observed sections and the
supported capture/member variants. Record types and values that the producers
actually emit. Additional handcrafted null/shape controls remain explicitly
labeled local codec controls rather than fabricated producer captures.

Each case contains a stable case ID, originating producer/test and support cell,
module Wire and recorded profile, the original inner ALLOW DecisionRecord,
original bundle read_facts, complete candidate claim and expected ordinary Facts.
Candidate observation input is the original claim's `content.read_facts`; keep
the bundle's omitted/null-to-{} adapter behavior visible. Preserve the captured
claim and identities unchanged.

### Independent expected observations

Obtain expected observations from the same producer's inner ALLOW DecisionRecord
`facts` ({} if absent under its supported profile), not from bundle read_facts or
the codec under test. In the documented current profile, remove only the separately
archived parent `universe`; retain every observed section/item/value and use the
unchanged ordinary Facts parser/serializer for the expected canonical document.
Check that its query observations have no bundle-only result_hash. Confirm this
reference extraction against the existing Core construction: `eval.rs` writes
Observed.facts before adding parent universe, while Store's `facts_json` adds
result_hash only to the bundle copy. No other section may be dropped or repaired.

The expected document must never be obtained by stripping result_hash from the
input being projected, calling the private projection, or copying its output.
These would make the equality check self-confirming.

### Capture, normal checks and custody

T044 authors a test-only maintenance capture named `capture_projection_fixtures`
in the Store integration target, explicitly ignored for automatic execution.
An implementation-time refresh invokes it deliberately:

```bash
nix develop -c cargo test -p behavior-store --test strict_bundle_evidence capture_projection_fixtures -- --ignored --exact --nocapture
```

This maintenance writer is not acceptance evidence or a mandatory skipped test.
The normal, collected `projection_fixtures_match_actual_producers` test must rerun
every captured recipe, compare actual producer output and independently extracted
expected Facts with the checked-in cases, and validate manifest/case coverage.
Normal tests and repository gates never refresh or write fixtures. Bounded
generated laws remain normal tests alongside these deterministic captures.

The manifest records case IDs/profile bindings, package digest, capture command,
toolchain and external run location, plus the producing revision known at capture
and any working-source manifest/test-file digests. It must not embed the final SHA
of its containing commit. Final exact-revision evidence binds the package and
manifest digests externally with the rest of the frozen source.

The capture revision is provenance, not a requirement that it equal every later
HEAD. Staleness means package/digest/profile/recipe coverage mismatch or failure
to reproduce the captured output/expected Facts. Portable normal checks validate
those bindings without requiring the original machine's external logs to exist.
Retain the original run location for audit custody; the final receipt separately
attests the exact current revision and its successful reproduction checks.

T044 is complete only after package creation, review and successful normal
reproduction checks. It hands both files to T045's Verify owner. T045 reads them
from private unit tests in
`crates/behavior-verify/src/governance/trusted/bundle_evidence.rs`, compares
projected Facts serialization with the independent expected document, and checks
original claim preservation. It does not regenerate or silently accept changed
expected data. Missing, stale, mismatched or incomplete fixtures fail the checks;
a codec correction still requires its asserting RED first.

The dependency is Store capture/reproduction → reviewed static fixture package
→ private Verify projection tests. Verify gains no Store dependency, subprocess
producer or public test export. Existing historical fixtures remain untouched.
