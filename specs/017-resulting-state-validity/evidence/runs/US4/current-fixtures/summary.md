# T056 independently specified current fixtures

Five current-profile requests and their expected semantic projections were written
before execution: the audit counterexample's invalid creation, an unrelated valid
creation, an incomplete parent, exact division by zero in `project_margin`, and a
command-only receipt. The original modules and historical records are referenced
without replacement. Expectations use the finite child-membership predicate,
exact arithmetic, and the closed record/evidence contract; implementation output
was not promoted to a golden.

The pinned collection and execution in `attempt1/` collected and passed **seven
tests**, with zero failed, ignored or filtered tests. Five produced records passed
the public codec, schema and same-profile replay checks. Nine schema-accepted
cases and five schema-rejected mutations were checked; three well-formed semantic
tamper cases were accepted structurally and rejected by replay. The exact command,
source digests, status and output are retained in the collection/execution JSON
and logs. No compiler or fixture-setup failure was counted as semantic RED.

The authored fixture manifest is
`b5b492327261501b0cd9a336988827bac03bc054ae4d25609ce6deb10aa847e3`;
the test source is
`b492cb34dd9e2866c43462541ceb46548f4069ec9cd317f57f3606cb70c08a70`.
`attempt1/record-manifest.json` binds the five actual execution records to the
stdout digest. Those formatted records are execution evidence, not expectations.

Before and after this run, all 546 original fixture entries, 42 setup captures and
106 separately captured compatibility records matched their retained manifests.
The later T058 fixture-navigation README change is a separately disclosed
documentation exception, not a change to these execution-time checks. This is
scoped empirical evidence; it is neither a formal proof nor the full T065 gate.
