# JSON map candidate source review

New unselected review. Only the three named drafts and permitted repository
interfaces were read. No module was imported/executed, no build/test/compiler was
run, and no private artifact or execution output was inspected. No native
admission, proof success or correspondence is claimed.

Abbreviations:

- `M`: proposal `native-json-map-model-002.lean`.
- `H`: proposal `native-json-map-helper-001.py`.
- `T`: proposal `native-json-map-tests-001.py`.
- `D`: `experiments/transition-study036/proofs/Correspondence036/Dependencies`.
- `B`: `experiments/transition-study036/template_function_bindings_v2.py`.

## Findings

No definite syntax/type/proof/control defect was identified from these permitted
source reads. In particular, the comparison-branch and frame proofs appear
consistent with the supplied interfaces. This is a static assessment, not a Lean
elaboration or successful test result.

## Comparison proof

`writeEntry` correctly distinguishes a vacant insertion from occupied replacement,
returns the old complete payload when occupied, and retains the stored key.
`orderedInsert` independently specifies the recursive lt/eq/gt cases. Its gt
branch preserves the skipped head and recursively propagates the returned old
value. Sources: `M:14–30`; `D/CollectionsGap.lean:15–38`;
`D/CollectionsFocus.lean:12–14`.

The `capture_write` gt proof has the required rewrite ingredients:

1. `CollectionsGap.capture` plus `found` selects its gt branch.
2. `write_prepend` moves the skipped stored/previous head outside the write.
3. `ih` replaces writing the captured suffix with `orderedInsert` on that suffix.
4. `orderedInsert` plus the same `found` reduces the right side to that pair.

The nil/lt/eq branches are direct constructor/append reductions. No comparator
equality, transitivity or uniqueness premise is needed for **this structural
equation**, since both sides follow the same arbitrary comparator branch.
Those laws are still needed for any later native ordered-map interpretation.
Sources: `M:32–50`; `D/CollectionsGap.lean:31–38`.

`insert_spec` specializes the monadic comparison to the exact candidate String
comparator definition and uses `captureM_pure`, monadic ok reduction and
`capture_write`. Those rewrite targets have matching interfaces in the permitted
dependencies. Sources: `M:65–83`; `D/CollectionsGap.lean:54–73`;
`D/NativeStringOperations.lean:61–66`.

## Frame lemmas and their exact scope

Both frame statements are mathematically valid for arbitrary front/suffix maps,
including maps with duplicate keys. After `lookup_append`, a hit in front wins
identically on both sides. If front has no hit, the supplied inequality skips the
changed/inserted key, exposing the same suffix lookup. The existing
`lookup_append` interface matches those reductions. Sources: `M:104–118`;
`D/CollectionsEntry.lean:89–100`;
`D/CollectionsGap.lean:19–21`.

These roots describe writing an explicit captured entry; they are **not yet
public `serde_json.Map.insert` lookup/frame/order/size theorems**. To obtain those,
connect the actual capture to the ordered/unique String-key representation and
its comparator equality relation, then compose `insert_spec` and capture-render
facts. New membership and comparison-equal replacement do not follow merely from
the exact API signature. The draft does not claim those missing consequences.
Sources: `M:76–118`; `D/CollectionsGap.lean:91–105`, `:184–191`, `:225–261`.

## Binding helper

The helper fixes exactly new/insert, checks selection and contract field sets,
template identity and explicit candidate-only scope, validates protected logical
basenames before reference I/O, and requires the installed model path
`source_dir/NativeJsonMapOperations.lean`. It delegates exact original block,
Rust identity, signature and remaining-node conservation to `bind_functions`.
The two model definition headers use the single-line rust_fun/def shape consumed
by that binder. Sources: `H:6–9`, `:36–68`; `M:58`, `:65`; `B:7–61`.

The inserted external-module import follows its required single
`NativeJsonIterators` marker. A later integration must compile
NativeJsonMapOperations and its imported NativeEntryOperations/String support
before the rewritten FunsExternal module. This helper alone does not schedule
modules, bind serde feature resolution or establish native runtime semantics.
Sources: `H:64–68`; `M:1–10`; `D/NativeStringOperations.lean:7–10`.

## Controls and proposed Python checks

Splitting at the second NativeJsonMapOperations namespace removes the final
operation-spec/frame theorem section while retaining the candidate definitions
and the unaffected generic write/capture helper lemmas. Each mutation point is
required to occur exactly once. Sources: `H:71–84`; `M:11–52`, `:73–120`.

The three controls target distinct observable data errors: nonempty new, wrong
returned old value, and dropped replacement. The two insertion examples start
from an empty map, so their normalization does not require proving a concrete
String comparison. With the permitted capture/write/append definitions, each
changed constructor outcome contradicts the expected result. The requested
`normalized-False` diagnostic remains a future checker observation, not something
this review executed. Sources: `H:77–104`; `D/CollectionsGap.lean:54–56`;
`D/CollectionsFocus.lean:12–14`.

The Python draft checks the fixed two interfaces, nine root-name identities,
three control labels, removal of the operation theorem section from mutants,
missing mutation points, direct protected references and unknown selection
fields (`T:7–52`). It does not itself execute Lean or prove that the generated
mutants normalize to False; retain real positive/negative checker runs when
integration is authorized.

Installation must resolve the draft names: `T` imports the future selected
`native_json_map_operations_v2`, and its `parents[2]` source path is correct only
when the test is installed two enclosing directories below the experiment root,
for example `experiments/transition-study036/tests/controller/test_*.py`.
Running the unselected draft from proposals would not find that model path.
No intended selected test destination was supplied, so this is an explicit
placement prerequisite, not a demonstrated installed-path regression.
Sources: `T:8`, `:21–22`, `:33`; `H:49–51`.

Keep the BTree backend/feature, complete JSON payload, source/compiler,
allocator/drop and caller-relation obligations separate from these candidate
equations. Nothing in this source review upgrades their status or closes B02/B04.
Sources: `M:8–10`; `H:54–59`; permitted dependency scope comments.
