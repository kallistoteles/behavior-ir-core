# Source locations in constructed definitions

`Builder::finish(None)` and `Builder::admit_read(&read)` infer source roots from
absolute filenames in the final assembled module or read. The root is their
lexical common parent directory. With no absolute filenames the root is absent
(`None`); Core does not invent a directory or infer one from relative filenames.
Unused Nodes and the surrounding module of an ad hoc read do not contribute.

Absolute filenames are rendered relative to that root. Every non-absolute filename
is preserved verbatim, including `pkg/model.py`, `./pkg/model.py`,
`../shared/model.py`, `pkg//model.py`, `<unknown>`, `<string>`, `<stdin>` and
`<__main__>`. Lines remain unchanged. Native path recognition applies: Core does
not interpret a foreign platform's path syntax or inspect the filesystem, symlinks,
working directory or account environment.

`finish(Some(root))` retains the existing explicit-root behavior for absolute
filenames, including its established rendering fallback outside the root. It never
rewrites non-absolute filenames, even with a relative explicit root such as `pkg`.
There is no new root argument or public walker for ad hoc reads.

## Construct once

Use the existing `behavior_engine::builder::Builder`, Node constructors,
`Builder::read_value` or `Builder::read_projection`, then `add_read`/`finish` for a
module or `Builder::for_module`/`admit_read` for an ad hoc read. Each definition
requires one construction pass. No second trace or private expression import is
needed. [The facade regression](../consumer/tests/source_location_portability.rs)
is an executable example covering scalar and projection reads, both profiles,
explicit complete worlds, diagnostics and Core/Store replay.

Every typed location participates, including nested operators, Lambda query/body,
projection sources and `Rescale.arg`. Literal payloads and membership values are
domain data; path-like strings or JSON keys named `file`/`loc` inside them are not
source metadata.

## Migration from the previous construction behavior

| Supplied locations | Previous fresh output | Corrected fresh output |
| --- | --- | --- |
| `/repo/pkg/model.py`, `<string>` | `repo/pkg/model.py`, `<string>` | `model.py`, `<string>` |
| `pkg/model.py`, `pkg/helper.py` | `model.py`, `helper.py` | `pkg/model.py`, `pkg/helper.py` |
| `./pkg/model.py`, `pkg//helper.py` | Component-normalized/shortened paths | Both strings verbatim |
| Absolute `Rescale` child previously skipped | Child could retain an absolute path and fail to broaden the root | Child contributes to the root and is relativized with the rest of the definition |

Consumers should remove any workaround that retraces a read to rewrite hidden
locations, and expect whole relative paths in newly constructed output. Preserve
original source text when creating drafts; do not strip directory prefixes in
anticipation of Core's former behavior.

Source-only changes preserve semantic behavior/item/read/expression hashes. They
can change **fresh legacy/v1** record IDs when the authoritative content contains
corrected source text: an ad hoc definition or a failure reason. A successful
declared scalar record has no embedded definition, so its ID need not change.
**CommandIntents/v2** already normalizes definition locations and detaches display
diagnostics from canonical record content; that canonical byte/ID invariance
continues. Useful construction provenance is checked separately from canonical v2
output, which intentionally omits it.

## Wire admission and historical evidence

This rule applies at Builder construction boundaries. Raw wire module/read
admission preserves supplied locations. Decoding and replaying an existing record
uses its recorded profile and original content, never fresh Builder normalization.
Historical records, signatures, archives and IDs remain unchanged. Semantic hash
equality does not relax exact serialized-module, state, position, schema or full
evidence comparison requirements during replay. Reads do not append Store events.

Relative filenames retain the text the caller supplied. Defining which external
directory they originally referred to, or establishing equivalent source references
across different project layouts, requires a separate contract.

Feature [027](../specs/027-source-location-portability/spec.md) is conservatively
0.x minor-class; see [versioning](versioning.md). No release number is selected by
this feature.
