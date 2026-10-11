# Implementation evidence protocol

All commands run from the isolated Core017 worktree, in the pinned environment:
`nix develop -c ...`. The source baseline and fixture manifest are immutable
references, not evidence that new remediation tests have passed.

For each test-first checkpoint record:

1. Exact command, worktree revision, source and test digest, and UTC run time.
2. Reviewed assertions and independent oracle; identify shared production helpers.
3. Actual collected/executed/passed/failed/ignored counts and process exit status.
4. The intended assertion and actual observed failure, including positive controls.
5. Subsequent implementation changes and a separately recorded GREEN command.

A compilation error, zero selected tests, a skipped test, or an infrastructure
failure is not semantic RED. Existing passing controls are recorded as controls,
never retroactively described as failing tests. Root-cause assertions are executed
before any production change; historical artifacts are captured first.

Use text files under `runs/<checkpoint>/` for complete process output, together
with a JSON or Markdown run summary. Test authors and implementation reviewers
are agent roles in this execution, not independent human approval. Do not modify
review-owned checklist markers or claim that their joint-review items are closed.

Only the root agent marks `tasks.md` after inspecting actual artifacts/results.
Source ownership is explicit; concurrent workers never edit the same file.
Current and archived record results are labeled separately. A historical ALLOW
reproduction is not proof of resulting-state validity. Standalone replay and
Store recovery are checked for absence of writes and command dispatch.

Final gates run on a committed candidate. Exact-revision consumer validation
uses that pushed full SHA. Evidence-only commits retain candidate/source
provenance, and required PR checks must cover the final delivered head.
No release, tag, merge, ecosystem pin, or unrelated audit closure is implied.
