# T058 compatibility and persistence documentation

Updated only `docs/versioning.md`, `docs/invocation.md`, `docs/persistence.md`
and `tests/fixtures/README.md`. The documents distinguish current decision 0.8 /
complete-child validation and verifier 0.9.0 from immutable historical replay.
They document explicit trusted legacy-intent host facts, unchanged-row typed
witnesses, exact schema/history/CAS, read-only original-event recovery, archive
proof non-authority, safe reconstructible reuse, and full replay-evidence cost.
Existing release descriptions remain historical. The release classification is
minor; no Cargo version, tag, publication or implicit Store adoption was chosen.

## Authorized fixture-documentation exception

The original archive manifest remains byte-identical at
`22ac55b27f02f03d99e09a8f28609600f643f34b85681297bb7375383725e771`.
It retains the original fixture README entry:

- Path: `tests/fixtures/README.md`.
- Original baseline Git blob: `162ebe2872f0c214874e7412ccd0d02598e0cf82`.
- Original bytes: 4871.
- Original SHA-256: `d4d085c1eaafb7512733ff758d08b0cffac5e78227eda886a58e5aa8b6e12ae5`.
- Updated README SHA-256: `9e22d978f560256df14944e9ea4800d19d5fc2bdc9d1cc77596f93998ca4464f`.

The T058 task and parent explicitly authorize this navigation-document change.
It changes neither historical semantic fixtures nor capture bytes. The integrity
check below excludes **only** this documented path from the unchanged-fixture
assertion and checks its exact original/new digests separately. The other **545**
original fixture entries, **42** original captured artifacts, and **106** separate
compatibility records retain their original bytes. The genuine historical signed
capture also retains all separately manifested artifact bytes. No immutable
manifest was rewritten to conceal the documentation change.

## Validation

`check.py` records exact checks, source digests and outcomes in
`verification.json`; `check.stdout.txt` retains its execution output. It checks
local Markdown links, fixture/capture integrity and `git diff --check` for the
four assigned documentation files. T056's seven current-fixture tests and T057's
71 scoped acceptance tests passed before this documentation change; their logs
remain separate evidence. This documentation turn did not rerun runtime gates,
claim a formal proof or close unrelated audit findings.

The initial checker invocation used a wrong repository-root parent index and
failed before checking any input; its `setup-attempt1` logs are retained and
excluded from acceptance. The corrected checker performs the checks above.
