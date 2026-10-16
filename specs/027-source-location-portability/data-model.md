# Data Model: Source Provenance and Read Identity

This feature changes no public data structure, document, storage schema or hash domain. These are design concepts for the existing typed construction objects. Read [source-locations.md](contracts/source-locations.md) for public behavior and [research.md](research.md) for compatibility evidence.

## Final construction definition

A completed `WModule` supplied by `Builder::finish`, or the `WRead` supplied to `Builder::admit_read`, before source rewriting. It contains semantic declarations/expressions and explicit `Loc` metadata. Only locations reachable in this assembled definition contribute; unused Nodes or declarations in the module against which an ad hoc read is checked do not.

## Source location

| Attribute | Meaning | Validation / transformation |
| --- | --- | --- |
| `file: String` | Supplied filename or virtual marker | Native absolute-path recognition only; all non-absolute strings remain verbatim |
| `line: u64` | Existing source line | Never rewritten; existing admission validity remains authoritative |
| structural role | Typed metadata position in module/read/expression | Identifies actual provenance; literal payload keys are not metadata |

Non-absolute filenames are opaque source text: `pkg/model.py`, `./pkg/model.py`, `../shared/model.py`, `pkg//model.py`, `<unknown>`, `<string>`, `<stdin>`, `<__main__>`. Their original directory anchor is not inferred. On supported Linux targets a foreign drive/backslash spelling remains non-absolute text; this feature does not parse another platform's path grammar.

## Automatic root

Private representation: `Option<PathBuf>`, derived from absolute `file` strings in the final definition.

- No absolute locations → `None`, not current directory, a common relative directory or an invented empty filesystem root.
- At least one absolute location → common directory of the absolute filenames' parent directories. Parentless root-only absolute input falls back to its absolute root/self.
- Non-absolute additions, duplicates and order cannot change the result.
- Absolute ancestors use native lexical components; no stat, canonicalize, symlink or environment lookup.

An explicit root remains a caller option for module construction. Its existing effect on absolute filenames may be reused. It does not rewrite any non-absolute `file` string.

## Typed location inventory

| Shape | Locations traversed | Data deliberately not traversed as locations |
| --- | --- | --- |
| Module declarations | Commands/fields, enums, nominals, entities/fields | Declaration names, types and enum members |
| Derived/invariant/constraint/global bodies | Declaration Loc and complete expression tree | Literal values and binding-name arguments |
| Actions | Action/condition/effect/lifecycle locations and complete expression trees, command guards/payload expressions | Domain values, field/parameter names |
| Read value | Read Loc and complete body expression tree | Literal payload values |
| Read projection | Read Loc and complete `over` expression tree | Projection items have names, no Loc fields |
| Expression | Own Loc; Op arguments; Lambda query/body; In/Wrap/Rescale/StrictUnwrap/EnumMap child | Lit payload, In membership values, leaf names and types |

Use an exhaustive match on expression variants. Rescale recursion is missing in the baseline and must be added; do not reproduce that omission in a second helper. Direct typed-walker literal-custody tests may use representable draft payloads without claiming they are admitted semantic values. End-to-end literal tests use supported well-typed values; no admission rule is expanded for a test.

## Identity and evidence domains

| Domain | Authoritative identity relationship |
| --- | --- |
| Module/item/read semantic identity | Existing semantic hashing omits source locations; source-only rewriting preserves identity |
| Fresh legacy ad hoc read record | Embedded definition locations are part of canonical record content; intended provenance corrections can change its ID |
| Fresh legacy declared read record | No embedded definition; provenance can still occur in failure reasons, so no blanket equality/difference claim |
| Fresh current/v2 read record | Existing definition-location normalization and detached diagnostics preserve source-independent canonical content/ID |
| Historical read record | Stored format/profile/content determines identity; retain exact archived bytes and the original replay interpretation |

Semantic equality does not authorize substituting an arbitrary same-hash module in historical replay. The existing replay selector's exact serialized-module binding and full record comparison remain in force.

## Construction and evidence lifecycle

1. Assemble one module/read through the existing construction surface. No second caller trace or reconstruction is required.
2. Collect final-IR absolute source evidence, select optional root, rewrite only absolute metadata filenames and admit at the existing boundaries. Relative filenames, markers, lines and domain values remain unchanged. Existing immediate builder checks stay immediate.
3. Serialize/evaluate with the existing semantic profile. v1 records bind any included actual provenance; v2 keeps its existing semantic/provenance separation.
4. Decode/replay stored evidence through existing wire and recorded-profile paths, without sending it back through fresh Builder normalization. Reads remain observations and do not append Store events.

These are existing operation boundaries, not new persisted states or a new public state machine.
