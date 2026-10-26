# Failed first campaign and promotion-cost remediation

The first gated candidate (1cfec65) failed a mandatory frozen timing requirement.
For N=2048, eight committed creations and the final evaluation, candidate cycles were
6225.654077, 6167.384369 and 6015.725189 ms: median 6167.384369 ms versus the required
5740.301952 ms. The profile was not changed. The campaign was stopped after this known
failure; 709 completed rows remain in `attempts/campaign-1cfec65`, including all 309
release-baseline timings and all 103 baseline work cases. No complete acceptance is
claimed for this attempt. Its result.json explicitly reports failure/incompleteness.

Source attribution identified redundant work newly added at child promotion:
re-parsing the complete Core record after exact reproduction, establishing the same
immutable parent frame a second time, and hashing the child TransitionRecord again
although commit had already computed that exact identity for its prospective Head.
The work regression `checked_promotion_adds_no_duplicate_full_record_hashing` failed
with 48646 document JSON bytes versus 36309 for the full-reference commit. After the
remediation both amounts match; the complete focused 40-test Store suite and Clippy pass.

The new private commit/promotion seam accepts the two identities already computed and
checked by the native commit path. It compares every cached parent identity coordinate:
Store, history format, state, position, record, schema, full admitted module and profile.
It requires the opaque actual checked Core record to equal the exact submitted record,
then obtains its checked child. The identities are not producer claims or public inputs.
The existing exact successful-CAS child/head checks remain mandatory. Missing or
incompatible evidence takes the existing independently checked fallback; test callers
can still exercise that path without the native identity results.

The semantic obligation did not disappear: independent reproduction still performs the
strict parse and complete record comparison, and commit still performs its required
TransitionRecord hash before constructing the prospective Head. Promotion reuses those
established results. No persistent format, Backend contract, public facade or source
semantics changed. The correctness/identity trust boundary still includes native Store
code faithfully passing its own actual results.

Full G3 must be renewed for this source before final measurements. A subsequent campaign
may retain the complete immutable-baseline groups above (same exact binaries, frozen
harness, toolchain, platform, repetitions and semantic digests) while rerunning every
candidate and full-reference case for the new gated source. The failed candidate rows
stay in their original attempt and are not averaged into another candidate or omitted
from the investigation record. Frozen thresholds remain unchanged.
