# Independent INCREMENTAL review

R-VERIFY-002, reviewer `/root/audit016_verify`, different from author
`/root/audit016_model`; task T062. Date 2026-10-10. Exact baseline commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Role path follows tasks; it does
not make this a self-review by the MODEL/INCREMENTAL author.

Reviewed incremental-validation-audit.md, source-review.json, test-coverage.md;
independently read actual dependency.rs, candidate.rs, incremental/mod.rs,
Store snapshot identity/cache/commit/publication sites, full snapshot validator,
operator-reference cfg scope and direct audit_016_child_validity overlay source.
No compilation/tests performed by reviewer. Root baseline/isolated red execution
was pending at this source review.

## Challenges and dispositions

1. **Scope:** current production local_module recursively checks full ordinary
   constraint/invariant dependency closure, excluding global/query/Exists/
   Referenced and unknown dependencies except synthesized Ref rules. It analyzes
   even suppressed children, resolves current derived target by the same hash/name
   policy as evaluator, checks actual/formal binding substitution and recursion.
   Unused nonlocal derived definitions are correctly not obligation roots. No
   syntactic “derived means local” shortcut or prior-execution cache heuristic was
   found. Historical014 local_validation is cfg(test), not a second production
   validator. Accepted for the explicitly selected no-removal class.
2. **References/freshness:** Candidate rows are complete changed/created values;
   candidate existence sees overlay plus parent simultaneously. A synthesized
   unchanged Ref remains valid by identity-set inclusion without removals. This
   cannot justify an arbitrary not exists/incoming/query predicate. Candidate
   used/incoming refuses rather than fabricating history; normal used_at and
   lifecycle checks remain before commit. Accepted conditional monotonicity
   argument, not a full theorem about arbitrary facts/backend behavior.
3. **Commit boundary:** exact HistoryRef/SchemaRef/canonical behavior key is strong
   enough to distinguish same live StateId at a different history; Pending is
   stack-local until Applied. carry checks exact child head/event/schema/parent
   and unique Arc before patching. HeadMoved/error/lost acknowledgment cannot
   publish Pending; a later actual head causes a miss/reconstruction. No persisted
   validated=true authority. Accepted code-invariant scope under backend contract;
   lost-ack success is still authoritative canonical history even if caller saw
   error, and must not be described as rollback.
4. **Reference independence:** full_child reconstruction does not use classifier,
   cached incoming or record ref_changes, but shares check_behavior_snapshot with
   optimized validation. Matching failure lists supports selected equivalence;
   it cannot establish the shared validator's complete G3 theorem. The report
   correctly leaves O004/O010 open before actual execution and states this limit.
5. **Generic derivative:** private cfg(test) replacement Result carrier represents
   all Value/Error transitions with exact old-value check. Its reference property
   re-evaluates the same function before/after and is largely by definition; 34
   seed families do not cover all operator/type/profile combinations or establish
   independently optimized per-operator algorithms. Report's distinction matches
   source and MODEL's expanded inventory. No public delta semantic API introduced.
6. **Nonlocal create lead:** direct overlay uses a legal 0.7 state/entity constraint
   not exists(e.target), valid parent e0.target=new absent, then creates new with
   absent target. If commit succeeds and e0 stays unchanged while new exists, G3
   fails by direct set membership independently of either validator result.
   Classifier correctly refuses incremental locality, so this is ordinary
   resulting-state checking/fallback defect, not a demonstrated false child
   certificate or legal false PROVEN. Red assertion's successful positive setup
   and actual final runtime failure must be logged before empirical confirmation.
   This finding is not exempted by preserving earlier optimization refusal
   boundaries. Accepted lead/proposition; executable disposition pending root.

## Decision

Accepted as a qualified source/conditional-correctness audit with O004/O008/O010
and actual execution still open. No proof status is promoted from source-present
tests or agent agreement. Root's exact-base red log and unchanged-baseline
property/negative logs must be independently inspected and linked before closing
the finding lifecycle. T076 full/optimized/post-CAS and evaluation/Store/verifier
notes must retain the common G3 gap. No fix, gate weakening, backend contract
extension or final soundness verdict is authorized by this review.

## Final evidence update

Original source-time pending statements above are now superseded by actual
E-COORD-009/012–016 corpus execution and E-INCREMENTAL-002 direct counterexample.
The final significant finding legality/controls/log/contract review is separate
R-VERIFY-006 at [incremental-finding](incremental-finding.md), accepting S0/High.
It independently matches all six run artifact digests and final assertion68;
no compile/setup failure substitutes for semantic evidence. Supplemental
fixed-seed local equivalence tests remain scoped tests sharing the full helper;
neither passing derivatives nor Applied-only carry repairs ordinary child G3.
