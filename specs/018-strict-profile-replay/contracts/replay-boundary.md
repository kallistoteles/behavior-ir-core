# Replay Boundary Contract

This records Core 018's correction to existing contracts, not a new public interface.
Authorities: [read API](../../010-first-class-reads/contracts/read-api.md),
[invocation documents](../../012-unified-invocation-model/contracts/invocation-documents.md),
[Store replay](../../../docs/persistence.md),
[historical read preservation](../../../docs/soundness-remediation.md).

## Supported public boundary

| Existing interface | Preserved result |
| --- | --- |
| `behavior_engine::read::replay_read(&Module, &str)` | Existing replay result with `matches` and optional string `diff`. |
| `Store::replay_read(&Module, &str)` | Existing Store result containing that replay result; performed backend errors use the existing error channel. |
| `behavior_engine::invocation::replay_invocation(&Module, &str)` | Existing whole-envelope replay result. |
| `Store::replay_invocation(&Module, &str)` | Existing whole-envelope Store result and operational errors. |
| CLI `read-replay` / `invoke-replay` | Existing JSON result; exit0 for match and2 for non-match. Existing usage/transport handling is unchanged. |

The facade export list, public signatures and field types remain unchanged.
Consumers do not import Core's proposed integration hooks. No Backend method or
record/schema/hash domain is added.

## Raw document and profile rules

1. Scoped replay boundaries strictly decode raw evidence before duplicate keys
   can be lost. Existing key uniqueness is recursive and based on decoded keys,
   so identical duplicates and escaped equivalent spellings do not bypass it.
2. Choose only a supported recorded profile/module pairing. Neither missing nor
   unknown formats default to today's fresh-emission profile.
3. Preserve historical v1 request/runtime rules, provenance, captures and refusal
   limits. Raw record strictness does not authorize tightening historical request
   evaluation or replacing the historical query registry.
4. Preserve v2 complete snapshot/evaluation-error evidence and detached diagnostics.
   A raw `refused_request` string is reproduced as transport refusal evidence;
   its contents are not normalized or treated as another object in the envelope.
5. Ad-hoc definitions are re-admitted against the exact module. Invocation accepts
   its existing declared capabilities; parsing an ad-hoc definition cannot create
   a new invocation route.
6. Insignificant whitespace and object representation order remain nonsemantic.
   Canonical bytes, record identities and historically meaningful evidence do not
   change. Semantically changed fields still mismatch even if rehashed.

## Store obligations

Store identity, historical position/StateId, exact historical schema and behavior,
typed binding resolution, applicable snapshot validity and required facts must
remain established by actual Store evidence. Source/record agreement alone does
not establish these facts. Replay after later writes/migrations uses the recorded
position, not the current head/schema.

Re-evaluate read evidence using Store-derived values/facts with the checked
recorded profile. Reconcile invocation binding facts and compare its complete
envelope, inner record, identities and metadata. Preserve017 action/archive
branches when integrating the new read-only path.

Operations may be eliminated only when their obligations are established by
equivalent evidence. Backend call traces need not match. Existing evaluator
`FactError` handling is not globally recategorized as a Store backend error.

## Non-match and operational failure

Malformed or ambiguous evidence produces `matches: false` with a nonempty,
deterministic string reason. Supported historical evidence is not malformed
because its profile differs from fresh evaluation. An evaluation error or
historical refusal that is faithfully reproduced can produce `matches: true`.

Retain existing contractual semantic difference paths and identity comparison.
Do not claim a new public machine-readable reason grammar or exact nested path
when the current decoder only reports a key/line/column. No new result variant,
object-valued `diff`, public field or profile selector.

Backend failures from operations actually performed retain existing operational
behavior. They are not fabricated for omitted unnecessary operations or converted
into successful matching replay. A Core result is not required to detect a
Store-specific coordinate mismatch.

Reference comparison uses the same recorded profile, separately for every
supported profile/version combination. Equivalence between read-v1 and read-v2
is neither required nor implied; historical semantics and evidence contracts
remain profile-specific.

## Internal interface responsibilities

The design uses shared decoded read preparation and checked profile selection,
then separate recorded-facts and Store-facts execution. Cross-crate hooks are
narrow internal integration items, not facade APIs. Fresh callers cannot request
archived execution; replay selectors are bound to checked evidence.
The prepared value must retain its exact module binding at execution. A private
checked wrapper or equivalent compatibility recheck prevents profile substitution
through a freely constructible enum or reuse with a different module.

Do not replace existing replay with an eager `ReadRecord::from_json` check that
changes historical validation/first-diff policy. Preserve existing Core check
order and comparison unless the currently violated strictness contract requires
the specific correction.

Replay is read-only with respect to canonical Store state/history/reference and
command authority. An implementation may populate already-contracted,
reconstructible caches; no candidate or uncommitted certificate becomes authority.

## Evidence and versioning

Cover [all matrix rows and limits](support-matrix.md), the three named regressions,
and [proof obligations](proof-obligations.md) at the supported public boundary.
Final validation follows [the freeze/receipt policy](../quickstart.md#4-run-canonical-gates-and-exact-revision-consumer-validation):
tracked reports cannot embed the final SHA of the commit containing them; final
results bind repository, exact frozen SHA, commands, exit statuses,
environment/toolchain identity and evidence locations outside that checkout.
Later tracked changes or a different published merge/squash/rebase/release SHA
require their own final validation. The receipt is delivery evidence, not a new
Behavior record format or semantic capability.
018 alone is patch-class under current policy; combined017 delivery retains017's
minor classification. Existing historical profiles are not renumbered. Planning
does not choose a release number, publish or change the ecosystem's release pin.
