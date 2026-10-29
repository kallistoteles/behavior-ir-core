# Feature 014: Conservative snapshot validation reuse

Source: [Core issue #12](https://github.com/kallistoteles/behavior-ir-core/issues/12).

## Requirements

- FR-001: Reuse successful whole-snapshot validation only for identical complete
  validation inputs. Bind the store, exact historical snapshot, schema and exact
  admitted behavior content. StateId or schema alone is insufficient.
- FR-002: Retain one validated snapshot per Store; do not persist certificates or
  accept caller-provided validity flags. An opened Store starts cold. Mutable
  backend access invalidates the cache. Failed validation is never cached.
- FR-003: Preserve state/schema binding, input validation, historical lifetime
  facts, canonical decisions, records, hashes, replay and authorization checks.
- FR-004: Carry validity across an atomic commit only for a conservatively proven
  local, update-only transition. Revalidate all changed entity values using the
  existing validator before writing; unchanged values retain their obligations.
- FR-005: Global rules, universe/reference use, derived dependencies, lifecycle
  operations and unknown expressions use the full path. Unknown means affected.
  No general dependency graph or new record format is in scope.
- FR-006: Publish child validity only after Applied; backend errors, conflicts and
  refused bundles must not establish validity of an uncommitted state.
- FR-007: Warm point operations in the legacy record profile must avoid N backend
  entity reads. Updating the retained local snapshot must not clone N values.
  Full-state replay records and genuine query work retain their inherent costs.
- FR-008: Supply an explicit conditional correctness argument and generative
  fast/full equivalence evidence. Testing is not a mathematical proof.

## Clarifications (approved 2026-10-09)

Preserve existing contracts. Implement the bounded local fast path, not a general
incremental validation system. Whole-entity footprints are the conservative
default. Relations, derived dependencies and create/remove remain full-path.
No publication or ecosystem dependency override is part of implementation.

## Acceptance

Canonical outputs agree with cold/full validation; invalid unbound values cannot
be hidden by a same-schema behavior change. Different history positions with the
same content identity remain distinct. Deterministic backend-call tests establish
bounded warm local work; benchmark timings are reported separately. Required
repository gates pass on the final source.
