# Next actual-source projection milestone

Status: new unselected proposal; source research only. No compilation, refinement
admission, B02/B04 closure, or native correspondence is claimed.

Citation abbreviations: `E` is `experiments/transition-study036`; `F` is
`specs/036-core-transition-feasibility`; `G` is the explicitly permitted retained
source directory
`/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated`.
Line references below refer to the sources read for this proposal.

## Recommended actual-code subject

Prove **one child projection step agrees between the actual canonical row
function and the actual maintained-view materialization loop body**. The subjects
are `transition_study036.reference.state_fact_row` and
`transition_study036.views.Views.impl.materialize_loop1.body`, with actual
`views.child_entity_value` and `views.text` constructor/accessor laws as supporting
roots. This reaches both implementations used by the real worker instead of
introducing another detached collection law. It is a component milestone toward
B02/B04, not an assertion about all Store rows or all maintained views.
Sources: `E/src/reference.rs:38–79`, `E/src/views.rs:54–59`, `:138–144`,
`:204–220`; `G/Funs.lean:1000–1029`, `:2522–2533`, `:2680–2693`, `:3087–3093`.

Freeze an independently authored expected statement over arbitrary admitted
native string IDs, owners and phases, arbitrary finite JSON accumulators, and
arbitrary unrelated JSON fields. On a Child seed row whose actual field lookup
returns those string values, the canonical function must leave the parent
accumulator unchanged and update exactly the child ID to the two-field
`{"phase": phase, "owner": owner}` object. On the matching iterator head, the
actual view loop body must perform the same child-map update and return `cont`
with the advanced cursor. Include iterator exhaustion (`done` with the unchanged
accumulator), insertion at a new ID, and replacement of an existing ID with all
other entries preserved. The match on primitive row/cursor representation must
be defined and justified independently; do not assume either function's desired
output or desired projection equality as a premise.

The materialization body takes a parameter misleadingly named `parents`: this is
the **original empty JSON map**, used to begin each child object. Full
`materialize` creates it at line 2705, builds `parents1` separately, then passes
the original `parents` twice at line 2709. Do not instantiate that parameter with
the completed parent object. This is consistent with the Rust's fresh `fields`
map in each iteration. Sources: `G/Funs.lean:2680–2714`, `E/src/views.rs:204–219`.

`child_entity_value` establishes all three entity fields, including `id`, whereas
the state projection intentionally emits only `phase` and `owner`. A supporting
roundtrip theorem should exercise the actual `views.text` on each constructed
field. Its failure theorem must distinguish missing/non-string values returning
`SeedFailure.Field`. Do not claim equal errors for all arbitrary malformed rows:
canonical reconstruction reports `SeedIdentity` only for missing/non-string ID
and otherwise clones the phase/owner JSON, while view seeding requires string
fields and enforces entity/ID and lifecycle checks.
Sources: `E/src/reference.rs:43–57`, `E/src/views.rs:54–93`;
`G/Funs.lean:1001–1028`, `:3087–3093`, `:3097–3147`.

## Actual caller edges and remaining bridges

| Actual subjects | Source edges that the later theorem must cover |
| --- | --- |
| Canonical state | `reference.state_facts` calls Store `current_history`, `export_seed_at`, then `state_facts_loop` → `state_fact_row`; generated lines 1034–1074. |
| Seeded views | `Views.seed` calls Store `current_history`, `research035_versions`, then `seed_rows` → loop → `seed_row` → `text`, followed by `seed_relations` → loop → `seed_relation`; generated lines 3022–3211. |
| Maintained output | `Views.materialize` runs both generated materialization loops, inserts the complete parents/children objects, and returns Value.Object; generated lines 2661–2714. |
| Promotion | `Views.stage` checks trusted/history overflow, child/owner existence, phase and active membership; `Views.apply` checks complete history/commit/version conditions, expected `child_entity_value`, then updates versions, child phase, active membership and history; Rust lines 221–301, generated lines 1884–1922 and 2554–2657. |
| Worker use | `Ground.view_step` selects via `eligibility.finish`, stages, performs the original operation, promotes via `Views.apply`, and only then uses `materialize`; Rust ground lines 277–398. Selector failure runs the original path. |

`eligibility.finish` actually checks exact module/policy, matching trusted view,
history overflow, format/capability, empty input/context, one Child binding, and
successful stage. The row theorem must later be composed with those checks; it
must not replace them with an assumed selector. Sources:
`E/src/eligibility.rs:5–42`, `G/Funs.lean:1861–2008`.

The full relation also retains key identity, content hash, revision, created-at,
absence, owner membership, complete JSON/context/metadata and history. Generated
`EntityVersion` has all six fields, while `SeedEntity` has only entity/value.
Proving the output row cannot establish the missing version-to-export relation.
The independent audit itself compares both `versions_equal` and materialized
state, rather than substituting one for the other. Sources:
`G/Types.lean:477–479`, `:508–514`, `:544–546`, `:1103–1109`;
`E/src/ground.rs:527–565`; `F/contracts/correctness.md:9–28`.

## External refinement and congruence boundary

For this row milestone the immediate semantic dependencies are JSON-map `new`
and `insert`; JSON field index and `as_str`; complete `Value.clone`; native
String/Str ownership, borrowing, cloning and equality; and BTree borrowed iterator
`next`. The template declares these as axioms, not proved implementations.
Exact owners/signatures are `G/FunsExternal_Template.lean:264`, `:636`, `:774`,
`:798`, `:822`, `:1386`, `:1398`, `:1488`, `:1500`, `:1542`.

Copying whole actual index dictionaries also retains six shared/Str
`index_into`, `index_into_mut` and `index_or_insert` methods. A lightweight lexical
planning scan found eight generated declarations for the combined four subjects:
the four subjects plus `Str.Insts.Serde_jsonValueIndexPrivateSealed`,
`Str.Insts.Serde_jsonValueIndexIndex`,
`Shared0T.Insts.Serde_jsonValueIndexPrivateSealed`, and
`Shared0T.Insts.Serde_jsonValueIndexIndex` (generated lines 731–762). Their combined
external planning list contains sixteen signatures. This is not an authoritative
Lean/LLBC dependency audit: runtime foundations, types, dictionary fields and
actual elaborated dependency closure must still be checked. Do not erase unused
dictionary fields or substitute an opaque desired-result stub.
Sources: `G/Funs.lean:731–762`, `G/FunsExternal_Template.lean:1452–1488`.

The existing `NativeStringOperations` supplies exact-signature candidate
definitions for comparison, equality, ownership and borrowing, with explicit
decode/Usize premises. It does not define String clone and explicitly disclaims
native library/compiler/runtime/allocator admission. Reuse its precisely scoped
definitions where appropriate; do not upgrade its model theorems into a native
refinement claim. Domain premises must cover actual representable UTF8 strings,
not impose a measurement/helper bound. Sources:
`E/proofs/Correspondence036/Dependencies/NativeStringOperations.lean:7–10`,
`:23–73`, `:110–131`; `NativeKeyOrder.lean:8–11`.

Honest same-native-function congruence can reuse an unchanged serializer/hash or
an individual primitive call **after** actual function identity, every argument
(including dictionaries/cursor/module/context), and compatible errors/effects
are proved equal. It cannot prove lookup/insert/iterator semantics, equate
`clone` with `to_owned(as_str x)`, or connect two different Store functions.
`export_seed_at` and `research035_versions` are distinct external nodes; their
row/history/version relation requires source-specific refinement. Even repeated
`current_history` calls require equal complete Store/backend state and performed
conditions. Sources: `F/contracts/correctness.md:30–44`;
`G/FunsExternal_Template.lean:1248`, `:1254`, `:1284`.

## Fresh checking without unrelated Funs

A selected-root export does not remove compilation of unrelated declarations
from an imported source module: the shared checker compiles each entire selected
module before auditing/exporting roots. Full generated Funs imports its external
module and contains all worker functions. Sources: `E/check_proofs.py:352–369`,
`G/Funs.lean:1–28`.

A **new derived component module** can retain exact source byte spans for the
selected actual declarations plus every generated dependency, preserving original
namespace, order, attributes, imports, options and complete types. The original
generated files remain untouched. Record exact original ranges/digests and
independently check byte conservation. Existing Option slicing and Value
declaration conservation provide narrow precedents; neither is a general closure
extractor. This permits a proposal for checking unchanged declaration bodies,
not a claim that the unchanged full generated Funs module compiled.
Sources: `E/native_option_slice_v2.py:20–41`,
`E/value_dictionary_probe_v2.py:30–89`.

Execution sequence: freeze the exact expected row/cursor statements and source
inventory; close and source-bind the primitive definitions; construct and verify
the complete component; fresh-compile exact Types/support/external definitions
and the component; audit expected theorem types/transitive axioms; validate the
selected-root export and run fresh kernel replay. Reject missing dependencies,
changed body/type, forbidden axioms and wrong owner/phase/ID/new-membership
mutants. Retain an actual Rust source-mutation/rebuild/extraction canary under a
new prospective subject. Follow with whole finite-row folds, seeding/store export
relation, and stage/apply preservation. None of the later relations is an input
assumption to the row theorem. Acceptance owners:
`F/contracts/correctness.md:28–40`, `:63–70`;
`E/check_proofs.py:69–94`, `:352–377`;
`F/inputs/v2/proof-contract.json:2–18`, `:94–119`.

## Optional earlier seam: actual derived EntityKey methods

This may be the smallest **source-body acquisition** step if it succeeds: include
the actual derived EntityKey methods prospectively, translate them unchanged,
then prove their relation to the existing key model and register the actual
generated dictionaries. Current generated Funs already has Clone/PartialEq/Eq/
PartialOrd/Ord dictionaries, but their clone/eq/partial_cmp/cmp methods remain
external axioms. The actual generated struct is entity then ID; the repository
struct also derives these traits. Neither fact alone proves the generated method
bodies or the native key-order relation. Sources: `G/Types.lean:472–479`,
`G/Funs.lean:466–509`, `G/FunsExternal_Template.lean:1064–1086`;
`crates/behavior-store/src/documents.rs:246–252`. The current repository source
must be bound to the retained extraction subject before being treated as its
exact source.

The exact generated **name identities**, not newly certified CLI patterns, are:

- `behavior_store::documents::{core::clone::Clone<behavior_store::documents::EntityKey>}::clone`
- `behavior_store::documents::{core::cmp::PartialEq<behavior_store::documents::EntityKey, behavior_store::documents::EntityKey>}::eq`
- `behavior_store::documents::{core::cmp::PartialOrd<behavior_store::documents::EntityKey, behavior_store::documents::EntityKey>}::partial_cmp`
- `behavior_store::documents::{core::cmp::Ord<behavior_store::documents::EntityKey>}::cmp`

Those strings are recorded as Name pattern/rust_fun identities in
`G/FunsExternal_Template.lean:1064–1086`. The selected extraction policy currently
allows only the explicitly reviewed JSON/Read/Write support patterns; adding an
EntityKey string to the config currently fails validation. Worker entrypoint
extraction starts at `crate::run_v2` with no broad external-crate include; the
separate `entrypoints-store` scope has the already implemented broad include
`behavior_store`. The runner emits actual `--include` arguments from this policy.
Sources: `E/extract.py:26–57`, `:269–303`, `:514–522`;
`E/native-extraction-inputs-v2.json:15–45`.

Thus narrow derived-method inclusion is a concrete **prospective policy and
source-body inventory extension**, not an existing accepted config setting.
Validate exact method-selection syntax against the pinned tool's primary source
or declaration matcher before selecting it; do not invent a flag/pattern here.
Require all four methods to be unique, translated and nonopaque in the fresh
inventory, and inspect any additional generated comparison/derive dependencies.
Existing JSON body-presence checks show the required fail-closed policy
(`E/extract.py:60–97`). Out-of-crate omission is a plausible explanation for the
current axioms, but these reads do not establish it as the sole cause or promise
that inclusion will translate successfully. A successful actual-key proof would
advance the real version-map identity/order seam; Store/JSON/view refinements and
all B01–B10 obligations would remain open.
