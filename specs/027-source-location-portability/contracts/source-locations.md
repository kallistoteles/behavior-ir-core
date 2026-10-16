# Source Location Contract

Normative design for [spec.md](../spec.md), accepted clarification A. Baseline behavior is documented in [research.md](../research.md); this contract describes intended implementation.

## Public interfaces and boundary

| Interface | Contract |
| --- | --- |
| `behavior_engine::builder::Builder::finish(root)` | Infer automatic root from final WModule absolute filenames when no root is supplied; preserve every non-absolute filename verbatim. Explicit roots govern only absolute-file rendering. |
| `behavior_engine::builder::Builder::admit_read(&WRead)` | Infer automatic root from this final read's absolute filenames only; apply the same filename transformation as module completion. |
| `Builder::read_value`, `Builder::read_projection`, existing Node constructors | Existing one-pass public construction remains sufficient; no new exports or signature changes. |
| `serialize::to_wire_json`, admitted ReadItem locations and evaluation diagnostics | Expose corrected useful construction provenance according to their existing surfaces. |
| Raw wire module/read admission and `evaluate_read_request` embedded wire definition | Existing location-preserving decode/admission behavior; this feature does not add Builder normalization here. |
| Record decoding, Core/Store replay | Original stored profile/content and exact replay prerequisites; never normalize historical input as fresh construction. |

The similarly named Builder and wire read-admission operations have different responsibilities. No new public root argument, path-policy object, public location walker or re-export of internal expression types is needed. `api/engine-surface.txt` remains unchanged.

## Root and rewrite rules

Let `L` be source metadata in the assembled definition, excluding domain values and unused construction inputs. `A` is its absolute filename subset. Automatic root is `None` if A is empty; otherwise it is the lexical common directory of A's parent directories, with an absolute-root fallback for parentless root input.

- Absolute file: relativize against selected root using the supported absolute renderer.
- Relative file or virtual marker: return the exact original string before any component extraction.
- Line number: unchanged in every case.
- Explicit root: may affect absolute files; cannot change the non-absolute pass-through branch.
- No file opening, existence test, working-directory reference, account lookup, symlink resolution or foreign-platform parsing.

Only actual Loc metadata is traversed. Every nested expression variant receives an explicit traversal decision. Final IR collection includes Rescale.arg. Lit payload and In membership data are not recursively interpreted as provenance even if they contain `file` or `loc` keys.

## Independent input/output examples

Examples use Linux path recognition and automatic root unless an explicit root is named. Each result retains the supplied line number. They are authored expectations, not values to regenerate from corrected execution.

| Supplied filename collection | Automatic root | Required transformed filenames in the same correspondence |
| --- | --- | --- |
| `pkg/model.py`, `pkg/helper.py` | None | `pkg/model.py`, `pkg/helper.py` |
| `./pkg/model.py`, `../shared/model.py`, `pkg//model.py` | None | Each original string verbatim |
| `/repo/pkg/model.py` | `/repo/pkg` | `model.py` |
| `/repo/app/model.py`, `/repo/lib/model.py` | `/repo` | `app/model.py`, `lib/model.py` |
| `/repo/pkg/model.py`, `pkg/helper.py` | `/repo/pkg` | `model.py`, `pkg/helper.py` |
| `/repo/pkg/model.py`, `<stdin>` | `/repo/pkg` | `model.py`, `<stdin>` |
| `<unknown>`, `<string>`, `<stdin>`, `<__main__>` | None | Every marker verbatim |
| Empty collection | None | Empty collection |
| `/` | `/` | Existing absolute renderer result, currently empty filename; line unchanged |
| `/repo/pkg/model.py`, `pkg/model.py`, `<string>`; explicit root `/repo` | Not inferred | `pkg/model.py`, `pkg/model.py`, `<string>` |
| `pkg/model.py`, `./pkg/model.py`; explicit relative root `pkg` | Not inferred | Both relative inputs verbatim; no root applies to them |

Changing other source locations cannot change a non-absolute location's output. Permutations and duplicates cannot change root or the output corresponding to any unchanged filename. A discarded absolute Node cannot broaden the root. Consistent relocation of a shared absolute prefix with preserved internal layout gives equal normalized provenance; unrelated directory structures do not acquire a shared source meaning.

## Semantic and compatibility contracts

- Source-only rewriting preserves behavior/item/read/expression semantic identities and evaluation meaning. A semantic mutation must remain distinguishable.
- Fresh legacy canonical content/IDs change exactly when their authoritative provenance content changes; new-output backward compatibility is not required for old shortening/lexical rewriting. Declare the fresh differences, including formerly skipped Rescale locations in absolute-only trees.
- Fresh current/v2 canonical record bytes/IDs retain existing source-location invariance. Source correctness must also be asserted through module serialization, typed admitted locations or useful diagnostics; a v2 canonical record erases the distinction being tested.
- Legacy and current frozen record bytes, hash domains, signatures and replay interpretation remain unchanged. Do not relax exact-module binding, parent/position/schema validation or full evidence comparison.
- Diagnostics retain correct filename/marker and line with the same refusal codes and phase. Corrected filenames may change display text and the established source-sorted order of multiple errors; no new error sorting rule is introduced.
- This is 0.x minor-class fresh-output hardening; no version/tag/release or new record/IR/hash-domain version is selected here.

Relative paths remain text supplied by the caller. Defining their external anchor or equating source references across different project layouts requires a separate feature.
