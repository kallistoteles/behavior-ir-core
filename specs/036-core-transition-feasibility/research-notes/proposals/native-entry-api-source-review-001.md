# Native entry API candidate: static review

Status: **new, unselected review** of `NativeEntryOperations-002.lean`,
`native_entry_operations_001.py`, and the relevant `CollectionsGap-004.lean`
statements. The explicitly authorized generated `Types.lean:1–145` and external
template header/entry blocks were also inspected. No build, test, kernel check,
binary, live output or protected artifact was accessed. Only this new note was
written. The future vacant front/key/suffix representation is the declared
integration premise, rather than a newly discovered defect.

**Finding:** three of the six expected roots have incorrect fully qualified
type names. The API definitions themselves match the inspected generated
signatures, and no additional definite local parser/proof/control-body error was
found statically. Actual elaboration and rejection diagnostics remain unchecked.

## Definite expected-type correction

Generated [Types.lean:24–32](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Types.lean:24)
opens `namespace transition_study036` and defines its
`core.alloc.AllocatorClone`; [Types.lean:135–142](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Types.lean:135)
defines its `alloc.collections.btree.map.entry.Entry`. Therefore the correct
type names are:

- `transition_study036.core.alloc.AllocatorClone A`;
- `transition_study036.alloc.collections.btree.map.entry.Entry K V A`.

The expected strings at `native_entry_operations_001.py:12` instead use
`Aeneas.Std.core.alloc.AllocatorClone` and a globally qualified Entry type.
Affected roots are `encode_decode` (Entry binder), `or_default_gap` (allocator
and Entry binders), and `entry_captured` (allocator binder).
`decode_encode`, `render_encode` and `backward_render` contain neither erroneous
explicit type annotation. Correct only those **type references**: the API constant
`alloc.collections.btree.map.entry.Entry.impl.or_default` is global and must
retain its existing name in expressions and `FUNCTIONS` (`:5–8`). A broad textual
replacement of every Entry prefix would introduce another name error.

The model source's `open transition_study036`
(`NativeEntryOperations-002.lean:6`) resolves these types without the incorrect
prefix. The generated external template does the same at
[FunsExternal_Template.lean:24](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/FunsExternal_Template.lean:24).
The task author reports a separate corrective helper revision; this note records
the reviewed helper001, without editing it.

## Signatures, proofs and controls

- **Signatures agree with the authorized template blocks.** Draft `entry`
  (`NativeEntryOperations-002.lean:47–51`) retains allocator then Ord, map then
  key, and the `Result (Entry × (Entry → BTreeMap))` result, matching
  [template:626–630](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/FunsExternal_Template.lean:626).
  Draft `or_default` (`:57–63`) retains Ord, Default, allocator and
  `Entry → Result (V × (V → Entry))`, matching
  [template:590–594](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/FunsExternal_Template.lean:590).
  Implicit K/V/A binders and Rust name-pattern annotations also match these
  excerpts; global definition names and generated type namespaces are distinct.
- **The six proof statements are locally consistent after qualification repair.**
  Encode/decode are constructor inverses, render follows decode/encode, and the
  cases in `or_default_gap` preserve the occupied value and vacant Default
  outcome (`NativeEntryOperations-002.lean:17–40,69–77`). `entry_captured` rewrites
  an explicitly assumed successful monadic capture; `backward_render` is its
  structural rendering identity (`:79–91`). Their six expected statement shapes
  and binder orders otherwise match helper001's list (`:11–13`). No misplaced
  forall comma or additional obvious binder mismatch was found. Constructor
  cases, Result simplification and type inference still need actual checking.
- **Both controls change the intended actual API body.** The boundary check
  keeps implementation/helper declarations and removes the later API-law block
  before appending each example (`native_entry_operations_001.py:69–77`;
  draft namespace boundaries `:12,41,66`). The Default mutant changes only the
  occupied API branch to evaluate the supplied failing Default (`helper:78–86`);
  its expected `.ok` conflicts with that mutant's `.fail`. The gap mutant changes
  the vacant closure to append-at-end (`:87–97`); its expected keys `[a,b,c]`
  conflict with the mutant's structural `[a,c,b]`. Thus rejection is tied to the
  two intended behavior changes, rather than retaining an earlier API theorem
  whose proof immediately breaks. The first example needs no unqualified helper
  names; the second explicitly opens its needed namespaces. No new obvious
  parser/scope error was found in the strings. `normalized-False` remains a
  prospective diagnostic label (`:98`), not an observed compiler result.

## Scope of the six subjects

These are representation/API-model bridge laws. `entry_captured` assumes capture
succeeded, and the controls target `or_default`, so they do not separately select
actual entry failure/divergence or forward-search mutation controls. Gap004 now
states arbitrary greater-prefix failure/divergence propagation and strict-order
uniqueness (`CollectionsGap-004.lean:268–302`); using them to establish actual API
outcomes still requires explicit corresponding subjects and composition.

The API entry-backward function renders any replacement Entry
(`NativeEntryOperations-002.lean:50–51`). Its total function type alone cannot
justify an unrelated transplanted entry: caller-compatible shape/key/front/
suffix restoration remains necessary. Likewise pure sorted-gap laws do not
establish equality of the list scan's comparison schedule with native B-tree
search for arbitrary fallible dictionaries. Allocator cloning, allocation/drop,
size, native primitive and ownership adequacy remain explicitly open at draft
lines 9–11. This review neither expands those claims nor establishes native
admission.
