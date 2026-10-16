# Independently authored source expectations

`file: String` — “Native absolute-path recognition only; all non-absolute strings remain verbatim”

`line: u64` — “Never rewritten; existing admission validity remains authoritative”

structural role — “Identifies actual provenance; literal payload keys are not metadata”

Every row applies to both Legacy and CommandIntents, module finish and ad hoc read admission unless private-only. Source lines 11 (declaration), 17 (body), 23 (nested child) stay exact. Only reachable final IR participates.

| Input files / role | Root | Expected files |
| --- | --- | --- |
| No locations (private root test) | None | No invented root |
| pkg/model.py, pkg/helper.py | None | Exact original strings |
| ./pkg/model.py; ../shared/model.py; pkg//model.py | None | Exact original strings |
| Each of <unknown>, <string>, <stdin>, <__main__> | None | Exact original marker |
| /tree-a/app/model.py; /tree-a/lib/model.py | /tree-a | app/model.py; lib/model.py |
| Same internal layout under /tree-b | /tree-b | Identical output |
| /tree-a/app/model.py plus each relative/marker above | /tree-a/app | model.py plus exact relative/marker |
| / | / | Existing absolute renderer yields empty file |
| /tree-a/app/model.py with explicit /tree-a | Explicit | app/model.py |
| Relative/marker with explicit pkg, empty, /tree-a | Explicit | Exact original string |
| Rescale with child as only absolute: <string>, /tree-a/lib/model.py | /tree-a/lib | <string>, model.py |
| Rescale child broadens root: /tree-a/app/model.py, /tree-a/lib/model.py | /tree-a | app/model.py, lib/model.py |
| Unused Node /unrelated/discarded.py; final /tree-a/app/model.py | /tree-a/app | model.py; discarded excluded |
| Projection over Select and nested Lambda/unary/operator | Same final-IR rule | All typed metadata, no projection-name rewriting |
| Supported text literals resembling paths | No contribution | Domain strings exact |
| Draft Lit/In payload object with file/loc keys (private walker only) | No contribution | Payload bytes/values exact; no admission claim |
| Invalid read parameter at real/marker location | Final read root | Same admission refusal code/phase; correct file/line |
| Invalid Node operation | Before finish/admit | Same immediate Builder error |

Permutation, duplicates and non-absolute additions do not affect automatic root. Nonexistent filenames and fresh child-process CWD / versus /dev/shm must give identical output. Expected values are literal contract data, never copied from corrected results. Semantic-only mutation must alter identity/result. Canonical v2 location erasure is tested separately from actual typed provenance.
