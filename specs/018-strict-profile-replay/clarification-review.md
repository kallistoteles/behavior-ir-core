# Clarification Review: Strict and Profile-Preserving Store Replay

**Session**: 2026-10-11

**Branch**: `018-strict-profile-replay`

**Scope**: Specification clarification only. No implementation, runtime gate
result, merge or release is claimed.

## Accepted decisions

Two questions were asked and answered. Both answers selected A and are recorded
in [spec.md](spec.md) and [decisions.md](decisions.md).

1. Keep `matches`/`diff`; malformed or ambiguous evidence is nonmatching replay.
   Backend failures retain their operational error contract. The existing string
   `diff` limits public diagnostic structure; compatible internal structured
   reasons may be rendered without changing the public result.
2. Verify the complete documented replay compatibility domain using a
   contract-derived support matrix. Preserve historical rules and unsupported
   refusals across Core/Store read and invocation boundaries. Retain the three
   audit counterexamples as named regressions separate from matrix coverage.

Changed specification sections: status, Clarifications, User Story 1 independent
test and acceptance scenarios, User Story 2 acceptance scenarios, Edge Cases,
Functional Requirements, Key Entities, Measurable Outcomes and Assumptions.

## Quality checklist review

[requirements.md](checklists/requirements.md): **12/16 → 15/16 checked** across
the session. Only changed checkbox markers were edited; the prose notes retain
the original draft snapshot and do not describe the current clarified status.

Newly passing:

- No NEEDS CLARIFICATION markers remain.
- Requirements are fully unambiguous after the public refusal-surface decision.
- Every requirement has final agreed acceptance criteria.

Regressions: none.

Still unchecked: the feature meets measured outcomes. It correctly remains
unchecked until implementation and verification; this is not a specification
ambiguity or evidence of a passing correction.

## Coverage

| Taxonomy category | Status | Evidence or remaining work |
| --- | --- | --- |
| Functional scope and behavior | Resolved | FR-001/010/012/016 cover the documented compatibility domain; other record families remain bounded. |
| Domain and data model | Clear | Recorded profile, exact Store coordinate, evidence and support-matrix roles are distinct. |
| Interaction and outcome flow | Resolved | FR-014 preserves match/non-match and separates operational failure. |
| Non-functional quality attributes | Clear | Determinism, immutable identities, read-only replay and trust obligations are specified; no performance target is needed. |
| Integration and external dependencies | Resolved | The matrix is derived from version/profile contracts; Store obligations and public consumer evidence remain mandatory. |
| Edge cases and failure handling | Resolved | Ambiguity, unsupported combinations, historical capture limits, wrong coordinates and performed backend failures are covered. |
| Constraints and tradeoffs | Deferred | D018-03 internal sharing, actual matrix construction and FR-015 release/version classification belong to planning. |
| Terminology and consistency | Resolved | Refusal means a reason for non-equivalence, not a new replay result; support is separate from parser capability. |
| Completion signals | Resolved | SC-001–006 require named regression, matrix preservation, diagnostic, identity and consumer evidence. |
| Miscellaneous and placeholders | Clear | No NEEDS CLARIFICATION marker remains; implementation design is explicitly deferred. |

No critical specification ambiguity remains. Proceed to `/speckit-plan` to
derive the matrix, select the internal design and document versioning treatment.
Conformance gaps found while deriving the matrix must remain visible rather than
being silently interpreted as new support.

## Validation and hooks

Specification/decision consistency, clarification count, Markdown structure,
local links, checkbox counts and `git diff --check` were checked. These document
checks do not establish runtime correctness or historical test-first compliance.

No `.specify/extensions.yml` is present, so no clarification hooks apply.
