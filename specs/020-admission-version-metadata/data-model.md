# Design Model: Accurate Admission Version Metadata

This describes internal implementation objects and existing public observations, not new Behavior semantic types or serialized documents. See [spec.md](spec.md) and [reporting contract](contracts/admission-reporting.md).

## Fresh module profile descriptor

**Mathematical object**: An ordered finite mapping from exact version identifiers to existing decoder configurations. The order is only the deterministic reporting representation.

**Fields**: Existing `wire_version` constant and a closed internal `decoder_profile`. Keep the descriptor/table private or crate-private, immutable and nonempty. Keys are unique; membership is exact-string equality, with no trimming, numeric ranges or fallback.

| Key | Existing lifecycle forms | Query forms | Module reads | Command semantics / strict root |
| --- | --- | --- | --- | --- |
| 0.4 | No | No | No | No |
| 0.5 | Yes | No | No | No |
| 0.6 | Yes | Yes | No | No |
| 0.7 | Yes | Yes | Yes | No |
| 0.8 | Yes | Yes | Yes | Yes |

Every current row retains existing constraints and exact/fixed-scale arithmetic support. Wire 0.4–0.7 still produce the existing Legacy semantic profile; 0.8 still produces CommandIntents, including when command arrays are empty. The decoder's required/optional sections, encoding limits and body validation do not change.

If `T` is the descriptor mapping, lookup is defined exactly on `keys(T) = {0.4, 0.5, 0.6, 0.7, 0.8}`. Successful lookup selects the existing configuration; unsupported strings yield the existing UnsupportedVersion failure, while missing/non-string headers retain structural failure. Body admission is a separate obligation.

## Reported current admission set

**Mathematical object**: The key set of `T`, serialized as the table's ordered duplicate-free JSON string array.

**Relationship**: Existing `format_versions()["accepted_wire_ir"]`, facade `engine_info()["accepted_wire_ir"]` and CLI reporting all project the same table keys. No new public function, field or format tag is added.

**Validation rules**: Exactly five entries in existing ascending version order; every entry has a legal version-specific admission witness. An accepted version never implies that every document body is valid.

## Historical compatibility inventory

**Mathematical object**: A separately defined ordered inventory of existing historical formats/capabilities, retaining its previous applicability.

**Fields**: The established `wire_ir` JSON field remains `0.1–0.7` on the inspected base. Record, read-record, store-document and verifier inventories also remain separate and unchanged.

**Relationship**: Historical constants can be retained without appearing in `T`. The historical inventory does not establish fresh admission or unrestricted replay support. A table row cannot redefine a record/read/migration decoder's own version domain.

## Unsupported-version refusal

**Mathematical object**: Existing AdmissionResult failure with supplied-version evidence and deterministic explanatory text.

**Fields**: Existing `ok`, `errors`, `evaluation_order`, `items` and omission rules; existing error `code`, `message`, locations. For an unsupported string, preserve `UNSUPPORTED_IR_VERSION` and the original supplied string. Only the generic support-list clause projects `keys(T)`; the existing rounded-arithmetic explanation remains unchanged.

**Relationship**: Feature-minimum refusals and structural errors are distinct existing cases even when a minimum-feature refusal uses the same error code. They are not converted into global support-list failures.

## Consumer compatibility evidence

**Mathematical object**: An assessment binding observable before/after reporting to the corrected existing contract, affected expectations and a tested source revision.

**Fields**: Inspected consumer/location, affected list/text assertion, unchanged contract properties, adaptation requirement, release assessment, commands/statuses and evidence location. Numeric release selection and publication are separate actions.

No runtime or persistent lifecycle is introduced. The implementation sequence remains raw module → existing header checks → selected existing decoder → existing body/admission checks → semantic module or existing refusal. Validation receipts describe that sequence; they are not semantic authority.
