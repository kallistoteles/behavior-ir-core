# Projection component integration source review 002

New unselected review; source inspection only. No selector/probe was executed,
no test/compiler/output/state was inspected, and no selected/private file was
changed. No elaborated closure, primitive admission or correspondence is claimed.

Owners:

- `S`: `specs/036-core-transition-feasibility/research-notes/proposals/native_projection_component_002.py`
- `I`: `specs/036-core-transition-feasibility/research-notes/proposals/native_collection_layout_probe_projection_002.py`
- `B`: selected `experiments/transition-study036/native_collection_layout_probe_v2.py`
- `G`: previously permitted retained `/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Funs.lean`

## Finding

**P2 — Bind the saved component to its conserved checksum before giving it proof
authority as the declared typecheck subject.** The draft writes
`projection["component"]` into `NativeProjectionComponents.lean` (`I:608–617`),
but later supplies `expected_files` by hashing the current on-disk files
(`I:765–766`). It never independently compares the saved component with
`projection["component_sha256"]`. The final check compares original support/spec
sources and the saved Types file, not the saved projection component
(`I:903–907`), while the receipt reports the selector's original conservation
metadata (`I:921–923`).

Consequently a saved-component change before the expected-files snapshot could
become the checker's expected source while the receipt still describes the
original conserved bytes. This is a missing independent binding, not a claim
that such a change occurred or a tested mutation result. The baseline also derives
module expectations from saved files (`B:744–747`); copying that convention does
not establish the stronger new conservation claim.

Freeze the component's expected file checksum from the selector's returned
`component_sha256`, then check the saved file against that value before and after
the shared check. Prefer deriving all module expectations from the prepared
`files` bytes rather than taking a new disk snapshot as the authority. Keep the
checker's ordinary before/after source checks as well. The returned checksum is
already available (`S:55–56`); no generated body needs alteration.

## Checks with no definite new error found

**Closed producer and source digest.** The draft verifies the selected extraction
checkpoint/result, requires a0365, checks all four generated file names/paths,
sizes and checksums, and stores each original tuple in `frozen_generated`
(`I:186–223`). The projection specification must agree with that original Funs
checksum and the selector's fixed name list; the selector receives the frozen
checksum rather than a checksum chosen solely by the projection specification
(`I:224–235`). All four original producers remain in the recheck path
(`I:344`, `:735–755`). No new producer-path substitution is apparent here.

**Selection reference and protected logical names.** The optional specification
uses `projection_reference`, preserving the outer probe `reference` for subsequent
reverification and `selection_ref` reporting (`I:225–235`, `:744–754`, `:913`).
Its direct protected-basename check precedes `refs.read`, `refs.verify` and digest
of that new specification (`I:226–235`). Python comprehension variables at
`I:609–612` do not overwrite the outer reference. This assessment concerns the
new projection-reference path; it is not a blanket review of every inherited
reference verifier or alias-resolution policy.

**Import order and namespace.** The component is appended after all prepared
modules except ProofRoot, so the generated FunsExternal and optional iterator/
String dependencies are compiled before it. ProofRoot remains last and explicitly
imports the new component (`I:520–536`, `:563–613`). Its retained source header
imports Aeneas, exact Types and exact FunsExternal, then enters
`transition_study036` (`G:1–28`). `NativeProjectionComponents` is the module name;
retaining the original declaration namespace is intentional. No new namespace
rename or file-path/module-prefix inconsistency is apparent.

**Selector framing and lexical checks.** The revised selector requires exactly
one matching terminal namespace close (`S:22–25`), preserves the complete original
header through the opening namespace, copies original comment-bounded declaration
spans, retains their attributes, sorts by original position, and rejects overlap
(`S:27–47`, `:55`). It also checks eight lexical declaration heads against NAMES
and rejects the listed obvious command heads (`S:50–54`). For the pinned retained
source the attributes and selected spans remain those reviewed previously:
four dictionaries at `G:728–763`, canonical row at `G:998–1030`, child constructor
at `G:2520–2534`, materialization body at `G:2678–2694`, and text accessor at
`G:3085–3094`. None has a companion continuity command. The preceding command at
`G:726` belongs to the omitted Number serializer; the retained final namespace
close is at `G:8986`.

The regexes intentionally do not recognize arbitrary Lean syntax, modifiers or
indented commands. That remains consistent with the explicit non-parser scope
(`S:48–49`) and independently pinned producer; this review does not promote them
into an adversarial general Lean parser or elaborated dependency checker.

**Proof scope.** The integration adds the actual declarations as a typecheck
module without adding new actual projection theorem roots. The selected theorem
root list remains the existing helper contracts (`I:484–515`). The receipt says
the actual component is typecheck-only and leaves external semantic refinement,
primitive admission, correspondence and completeness unestablished
(`I:921–945`). A selected-root kernel check of those helper roots must not later
be described as a fresh-kernel proof of all eight actual declarations or their
semantics. No contradictory new admission flag is present in this draft.

## Integration prerequisites

The integration imports `native_projection_component_v2` (`I:230`), whereas the
reviewed artifact is still named `native_projection_component_002.py` under
proposals. Install the reviewed selector bytes under the intended selected module
name and bind that source in the future subject before executing the integration.
This is a rollout prerequisite, not a claim that an unselected proposal was
already executable. Keep the trusted fixed-eight inventory and original producer
binding intact during that installation.

After fixing the independent saved-component checksum binding, the next authorized
execution should specifically reject an edited saved component, wrong frozen
producer/spec checksum, missing/replaced declaration or dictionary field, altered
attribute/namespace, unexpected command and changed selection reference. No such
control, compile or kernel run was performed by this review.
