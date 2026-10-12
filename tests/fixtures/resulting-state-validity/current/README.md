# Independently specified current fixtures

These requests and expected semantic subsets exercise fresh record **0.8** and
`behavior.complete_resulting_state.v1`. The expected results were written from
the obligations below, before executing these cases. They are not regenerated
historical goldens or captured evaluator outputs.

| Case | Independent reason | Expected result |
| --- | --- | --- |
| invalid-create | Parent E#e0 targets absent identity `new`. Creating `new` violates `not exists(e0.target)` on unchanged e0; the created entity itself remains valid. | DENY, typed E/e0 constraint witness |
| valid-create | Creating `unrelated` leaves both `new` and `absent` absent. Complete child witnesses run in canonical e0, unrelated order. | ALLOW |
| partial-parent | Fresh identity evidence does not supply the required complete E universe. | INVALID_INPUT / INVALID_STATE_SNAPSHOT |
| project-margin-zero | The unguarded derived margin is `(0 - 10) / 0`; the state-changing effect cannot run. | ERROR / EVALUATION_ERROR / DIVISION_BY_ZERO |
| receipt | The empty entity universe is complete. The command-only action produces one Receipt request for `fixture-client`. | ALLOW, one candidate intent; no committed occurrence or dispatch |

The existing Wire modules are referenced by path and digest. Their Wire versions,
Behavior identities and semantic declarations are unchanged. Record version 0.8
is an evidence profile; it does not require rewriting those modules. Typed child
expectations include semantic declaration identity, exact subject, outcome and
S' field observations.

`manifest.json` binds the hand-authored case inventory, requests, expectations and
module inputs. Actual test outputs and execution provenance belong under
`specs/017-resulting-state-validity/evidence/runs/US4/`, not in expected files.

Current verifier 0.9 proof eligibility and rejection of archived verifier 0.8
proofs are separately exercised by the
[US2 evidence](../../../../specs/017-resulting-state-validity/evidence/runs/US2/).
The inventory links the separately new
[execution policy](../../governance-v2/policy-verifier-0.9.json) and
[evidence policy](../../governance-v2/evidence-policy-verifier-0.9.json).
These fixtures do not adopt a policy for an existing store or renew authority for
an archived proof. Older policies and the [original archive](../archive-manifest.json)
remain unchanged.
