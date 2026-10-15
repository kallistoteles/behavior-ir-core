# Source roles for the binding corpus

Baseline: `a24b65d26efaf62342daf5ab0f455540dfd61ed1`.

| Source (relative to tests/fixtures) | Historical custody | Current role / relevant existing tests |
| --- | --- | --- |
| bindings/invoice.json; bindings/invoice.request.json | Preserve bytes and identities | invoice allowed/refused intent; original requests/invoice_allowed.json and invoice_above_limit.json; core evaluate tests |
| bindings/project_margin.json; bindings/project_margin.request.json | Preserve bytes and identities | margin_flagged and guarded_zero_revenue intent; original root request files; core evaluate/replay tests |
| bindings/accounts.json; bindings/accounts.request.json | Preserve bytes and identities | requests/006/remove_customer_free.json and remove_customer_referenced.json; core facts tests provide actual unbound Account source row |
| bindings/ledger.json; bindings/ledger.request.json | Preserve bytes and identities | Frozen binding constructor's explicit 10.00/500.00 amounts and two account rows |
| bindings/orders.json; bindings/orders.request.json | Preserve bytes and identities | requests/007/close_customer_no_open.json and close_customer_open.json; queries and CLI tests separately author supporting/unrelated c2 rows |
| wire/build_fixtures.py | Frozen authoring implementation, read-only | Existing pure binding payloads may be consumed; never invoke main/dump writer |
| requests/expectations.json; requests/006/expectations.json; requests/007/expectations.json; records/; resulting-state-validity/compatibility-archive/ | Frozen intent/records and replay | Guard/effect corroboration, not current full-record oracle templates |
| resulting-state-validity/archive-manifest.json; README.md | Existing archive custody, only established 017 documentation exception | No new exception; preserve current baseline README bytes |
| requests/007/close_customer_unknown.json; universe_bound_mismatch; universe_inconsistent; check_exists_inconsistent; malformed root inputs | Intentional raw negatives | Preserve malformed/incomplete input; exclude from ten behavioral entries |
| core tests common::complete_request; CLI tests support/current::complete | Existing unrelated current test preparation | Not used by 026; no inferred membership or missing-type completion |

New current inputs will be cases.json, worlds.json, independently reviewed full expectations and generated requests under bindings/current/. This inventory is bounded to sources feeding the ten cases; the broader protected hash manifest establishes custody without migrating unrelated fixtures.

Implementation status: historical sources remain unchanged; separate current generation/requests/oracles and facade/CLI/package tests execute successfully (us1-green.json, us2-green.json, us3-package-green.json, us3-preservation.json). Intentional negative sources are preserved. Exact frozen-candidate execution remains pending.
