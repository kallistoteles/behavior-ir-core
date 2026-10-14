# Contract: Existing Fresh-Module Admission Reporting

This specifies the corrected existing observations for Core020. It adds no API, consumer-contract version or serialized semantic type. The [specification](../spec.md) remains authoritative for scope.

## C020-01 — Accepted module domain

Let `V = {0.4, 0.5, 0.6, 0.7, 0.8}` and its reporting order be `[0.4, 0.5, 0.6, 0.7, 0.8]`.

Existing module decoder selection, `accepted_wire_ir` and generic unsupported-version support statements MUST describe exactly `V`. A version is admitted only when its document also satisfies its existing body/admission requirements. The decoder MUST select the same existing configuration for every member of `V`; all other strings remain unsupported. Historical constants or numeric proximity do not establish membership.

The internal descriptor table is the single membership authority for those three implementations. It is not a supported facade item, document, configuration knob or extensible registry.

## C020-02 — Programmatic and CLI reporting

| Existing interface | Required observation |
| --- | --- |
| `behavior_engine::format_versions()` | `accepted_wire_ir` is exactly the ordered string array for `V`. |
| `behavior_engine::engine_info()` | Same array, with existing additional capabilities and field shapes retained. |
| `behavior engine-info` | Existing canonical JSON facade output, successful status 0. |
| `behavior_engine::admit` / `admission_report` | Valid witnesses for every member succeed; existing categories and successful semantic results are preserved. |
| `behavior admit <file>` | Existing canonical AdmissionResult and status 0 on admission, status 2 on admission failure. |

All unrelated metadata fields and their values remain unchanged. In particular, the historical `wire_ir` array remains `[0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7]`. This array is not a fresh-module negotiation list.

## C020-03 — Refusal support clause

For an unsupported string `v`, preserve the existing error category, original supplied version and all non-support-list text. The corrected generic clause is:

```text
this engine accepts `0.4`, `0.5`, `0.6`, `0.7` and `0.8` only.
```

Render the versions from the same authority as decoder membership/metadata, in deterministic order. Compare only this clause in support-set tests: the original input and the preserved rounded-arithmetic migration explanation can legitimately mention excluded versions. Unknown/noncanonical version spellings are never normalized.

Missing/non-string headers retain structural `DECODE_ERROR` behavior. Supported versions with invalid bodies retain the applicable body error. Lifecycle/query/read minimum-feature guidance and explicit-command-profile refusals remain unchanged; their code alone does not identify a generic unsupported-version case.

## C020-04 — Decoder and document-kind preservation

Preserve the existing top-level shape/key checks, duplicate `ir_version` rejection and resulting error precedence. Wire 0.8 retains strict root decoding and encoding-length checks before ordinary body decoding. Command semantics are selected from the explicit profile, never inferred from fields. No new fallback admits legacy or unknown profiles.

The fresh-module set does not define every document kind. Ad hoc read documents continue to accept only Wire 0.7; record/replay, migration and store documents retain their separate gates. The existing read path may emit the shared generic engine module-support clause, but that does not advertise a read-specific domain. No contextual error redesign is part of 020.

Successful admission, canonical wire output, item hashes, BehaviorHash, SchemaHash and supported historical replay results MUST remain equal to the inspected integrated implementation for the same semantic inputs/profile. Refusal differences are limited to C020-03; metadata differences are limited to C020-02.
