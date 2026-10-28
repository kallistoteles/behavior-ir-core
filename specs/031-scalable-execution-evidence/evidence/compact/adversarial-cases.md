# Adversarial interpretation walkthroughs

Evidence class: written threat/correspondence analysis. These are not executed tests of an implemented compact protocol. Existing Core tests cited below exercise current contracts only.

| Case | Independent required outcome | A: reconstructible history | B: dictionary/range | C: event log/checkpoint |
|---|---|---|---|---|
| Alter a field after committing its root | Reject mismatch | Regenerated record/state differs | Path/update/root correspondence fails | Event binding or reproduced state differs |
| Omit a matching query member | Reject incomplete query | Complete parent reconstruction includes it | Membership proofs for returned rows alone fail completeness obligation | Log inclusion alone cannot establish query completeness |
| Hide an incoming Ref before parent removal | Refusal or reject incomplete support | Complete resulting-state reference validation finds it | Requires complete reverse-reference index/range and valid update theorem | Appending a removal is not proof that it was legal |
| Old valid root at a new position | Reject wrong subject/anchor | Exact HistoryRef differs | Root freshness/history binding fails | Exact endpoints and continuity fail |
| Same StateId, different command-only event | Preserve distinct positions/occurrences | Reconstruct event, not just state | State dictionary alone is insufficient | Event identity/order required |
| Wrong BehaviorHash/schema/profile/policy | Reject incompatible interpretation | Module/profile replay binding fails | Root proof cannot authorize another semantics | Inclusion cannot authorize module or migration |
| Corrupt checkpoint, intact following deltas | Reject or rebuild from independently checked origin | Untrusted checkpoint cannot seed success | State-root correspondence not established | Signed/included checkpoint is not semantic validation |
| Missing genesis/module/supporting interval | Unavailable, never successful verification | Cannot reconstruct omitted observations | Proof absence is not membership/absence proof | Log availability is an extra obligation |
| Concurrent commit after anchor validation | Re-anchor or enforce exact boundary | Expected head/lineage no longer matches | Authenticated old root is still stale | Consistency does not authorize the incoming segment |
| Lost acknowledgement | Recover exact committed event or establish absence before retry | Read authoritative history | State equality cannot identify occurrence | Exact event membership/order/multiplicity retained |
| Changed authorization context on retry | Reject inherited authority | Validate original event context | Root identity is not authorization | Event inclusion does not authorize different context |
| Migrate without incoming-policy validity | No safety claim until migration/result checked | Separate migration interpretation | New schema/root needs explicit correspondence | Appending migration is not its correctness proof |

Authoritative current controls include `consumer/tests/ref_removals.rs`, `consumer/tests/command_only.rs`, `consumer/tests/command_crash_recovery.rs`, `consumer/tests/research031_recovery.rs`, and the new history controls indexed in US5. Their actual execution results must be linked separately; a walkthrough is not a test result. A failed semantic obligation differs from missing/unavailable support, resource exhaustion and unsupported format.
