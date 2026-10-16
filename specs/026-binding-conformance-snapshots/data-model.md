# Data Model: Current Binding Conformance

**Scope**: Fixture/test documents, not a new Behavior IR, Store or public library format. See [current corpus](contracts/current-corpus.md) and [semantic results](contracts/semantic-results.md).

## 1. Corpus inventory — current/cases.json

One closed fixture inventory, format `behavior.binding_conformance.v1`.

| Field | Meaning / validation |
| --- | --- |
| `format` | Exact fixture-inventory version above; not an evaluator protocol tag |
| `semantic_reference` | Fixed reference Core commit `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, reference source engine version 0.13.0, record version 0.8 and complete-resulting-state profile |
| `modules` | Exactly invoice, project_margin, accounts, ledger, orders, with archive-root-relative module path, raw module SHA256, admitted behavior_version, exact complete item-hash map and schema hash |
| `cases` | Exactly ten unique entries, five domains × allowed/refused |

Each case has `id` (`domain/scenario`), `module` (one module key), `scenario`, archive-root-relative `request` and `expected` paths, `world` key and expected CLI `exit_code` (0 allowed, 1 refused). No path may escape the explicit package root. Reject unknown case/module references, duplicate IDs, duplicate request paths, missing files, unclassified extra request/expectation files and inconsistent labels/statuses.

The reference commit identifies the reviewed semantic baseline, not the final candidate or release. Exact executing-source provenance is external: final clean candidate SHA/tree + CLI/lock digests, or the existing release manifest for a released package. Do not embed a self-referential final source commit or pretend request git_revision attests the executable.

## 2. Authored world map — current/worlds.json

Exactly one entry per case ID, containing `parent` and `child`, each a map from **every declared entity type** to its explicitly authored finite list of full entity values.

- Type domain equals the admitted module's entity domain, including deliberate empty lists.
- Each row has exactly one typed identity; duplicate/conflicting identity rows are invalid.
- Parent membership is authored independently of request state bindings. It is not inferred by a helper.
- All original bound state rows agree with the parent under existing canonical typed equality.
- Parent constraints/invariants/reference/global obligations hold independently of action result.
- Allowed child equals the simultaneous application of independently expected effects to the parent; preserve every unaffected row/type.
- Refused child equals the parent. No committed transition or command delivery is inferred from evaluating these files.
- Child rows are independently specified, not copied from an actual evaluation.

Ten selected worlds and empty-set justifications are in [the corpus contract](contracts/current-corpus.md). Existing decimal representations are decoded/canonicalized only through Core; no fixture-specific rounding/type semantics are introduced.

## 3. Distributed request — current/requests/domain.scenario.json

Existing plain EvaluationRequest shape, unchanged public contract: action/state/input/context/data_version and optional git_revision, plus existing facts. Preserve source metadata and supplied observations; the current generator attaches the full universe from the explicit parent world. It must reject conflicts rather than repair them.

The only generated authoritative files are these ten requests. Types and members use deterministic ordering. Serialized data is compact sorted-key UTF-8 JSON without floats, matching existing fixture encoding; no extra newline is added to canonical JSON data. Supporting README/scripts retain normal text newlines.

No commands are added. No used-identity/history facts are fabricated; these cases have no creation requiring them.

## 4. Independent expected record — current/expectations/domain.scenario.json

One complete semantic DecisionRecord08 JSON document per case, authored/reviewed before executing the corrected request. It is directly comparable with `DecisionRecord::as_json()` and CLI JSON. It is not an envelope, subset matcher, normalizer configuration or output capture.

The full existing record field model applies. Optional-field **presence** matters. Require the exact expected result/reasons/trace/derived/changes/facts, complete canonical parent universe, current validation profile and behavior/action identities. Lifecycle exists only where emitted by the existing format. Commands/semantic_profile/refused_request are absent for these ten valid legacy cases; command_intents() is empty.

Module identities may be obtained from admission and static hashing without action evaluation. Expectations contain no new embedded record ID or result hash. Existing defined identities are checked without inventing a domain.

## 5. Proof views — ephemeral test values

These views are constructed solely to check the already-authored world, not used to amend the evaluated request:

1. Explicit type/identity-domain view: module entities vs world keys and complete rows.
2. Existing `behavior.snapshot.v1`: data_version, all world rows in its entity table, and the request's facts. `Snapshot::decode` reconciles every row/observation, including unbound account Ref sources.
3. Existing legacy genesis with seeds for exactly the complete parent rows: validated by `Store::create`, then exported through `export_seed_at`. Compare typed contents, not the newly created store's unrelated data-version/history identity.
4. Independently expected child: patch the authored parent mechanically using the expected record's exact deltas/lifecycle, compare with authored child and validate through the same existing Store boundary. Denied children remain equal to parent.

No new public checked type, validator or certificate is added. Each proof stage is reported separately so consistency is not confused with completeness or validity.

## 6. Corpus lifecycle

```text
Pinned historical inputs + reviewed complete parent/child worlds
    -> reviewed independent full expectations
    -> current generator -> ten immutable-at-execution requests
    -> completeness / consistency / validity checks
    -> unchanged facade and CLI evaluation
    -> exact full expected-record comparison
    -> twice-run identity + same-profile replay
    -> candidate conformance archive extraction + repeat validation
```

Malformed/incomplete controls take a separate negative path and never join the ten behavioral cases. Historical inputs/records remain separate and do not transition into current evidence by relabelling.

## 7. Execution receipts

Per-run evidence records candidate SHA/tree, semantic reference, source/tool/lock hashes, CLI real path/digest/engine-info, corpus inputs/digests, protected-byte comparisons, case statuses/stdout/stderr/actual records/replays, generation comparisons and exact commands.

Final receipt lives outside the frozen source at `/home/kalle/validation-receipts/core026/<candidate-sha>/`. A receipt-scoped synchronous Cargo wrapper copies the actual temporary external-consumer manifest and resolved lock after real Cargo returns and before returning to check-consumer cleanup. Runtime records and captured actual output never replace independent expectations. A release receipt additionally binds the existing release-manifest commit and CLI/archive digests; debug tests alone do not establish a released binary's provenance.
