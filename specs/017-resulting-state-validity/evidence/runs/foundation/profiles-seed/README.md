# T005 profile/schema baseline evidence

The accepted run is [after-fixture-correction/run.json](after-fixture-correction/run.json),
with exact commands, source/test digests, collection and execution output.
The root agent reviewed assertions before any production change; this is agent
review, not independent human approval.

- Profile target: 11 collected and executed, 2 existing controls passed and 9 intended
  current-behavior assertions failed; none ignored or filtered.
- Schema target: 2 collected and executed; both failed because the planned schema
  file does not yet exist. No independent schema validation is claimed yet.
- Both targets compiled against existing APIs. The corrected run has no admission
  or compilation failure. Production source digests agree across attempts.

Reached failures include fresh legacy/command record versions 0.4/0.7 instead of
0.8, missing/incomplete and invalid unbound legacy parents still producing ALLOW,
and missing reconstructible transport refusal text. Closed codec, typed descriptor
and child observation assertions are seeded for GREEN but their header assertion
fails first; each nested case is not separately claimed as observed RED.

The original run in this directory is retained for provenance. Its converted
Wire0.6 fixture still contained the Wire0.7-only reads key. Those admission failures
are not semantic RED. Both owned helpers were corrected by removing that key, then
collection and execution were repeated without changing production code.

These tests use the production evaluator/decoder/replay at the tested boundary.
They do not independently prove complete child validity; separate T006 oracle
regressions supply the root-cause membership assertion. Passing old0.7 decoding
and existing malformed/current-command snapshot refusals are controls, not new
features or retrospective test-first evidence.
