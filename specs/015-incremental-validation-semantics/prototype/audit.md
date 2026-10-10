# Prototype audit and adoption decisions

The archived source is unaccepted historical work. Its pre-clarification tests do not establish historical test-first compliance. Recorded SHA-256 digests remain in verification.json; verbatim copies are under prototype/source/.

| Prototype element | Approved disposition |
| --- | --- |
| Public internal-Core delta / validation modules | Remove runtime exports; retain complete-result derivative and inventory as private cfg(test) proof model. |
| Mixed local/reference candidate validation | Replace with whole-module conservative guard; no new full-candidate refusal outside eligibility. |
| Removal carry-forward | Remove. Existing full-validation sites remain authoritative. |
| Parent + changed overlay | Retain internally, updates/creates only, complete resulting-state membership. |
| Exact SnapshotIdentity and Applied-only cache patch | Retain, harden exact pending bindings and uncertainty discard. |
| Parent-reopen differential tests/timings | Keep as characterization, never claim independent full-candidate comparison. |

A potential pre-existing gap remains to investigate: creating a target can invalidate an unchanged entity constraint involving `not exists(target)`. Ordinary action validation may omit that entity. 015 must not introduce a new pre-CAS rejection for such an ineligible module. Any reproduced gap is documented separately, not repaired here.

## Separately reproduced pre-existing semantic gap

`nonlocal_creation_preserves_014_refusal_boundary` passes on the frozen 014 checkout and revised 015. An unchanged E row requires `not exists(row.target)`; creating the target leaves the new row locally valid but invalidates that unchanged row. The old action/commit permits it, and the next full state validation rejects it. Logs: `/tmp/behavior-015-impl-gap-014.log`, `/tmp/behavior-015-impl-boundary-green.log`. 015 correctly treats this module as ineligible; no new pre-CAS full-child refusal is introduced. This requires a separate semantic-validation ticket, not an incremental optimization fix.
