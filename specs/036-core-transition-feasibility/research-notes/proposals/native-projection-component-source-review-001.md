# Source review of the projection component draft

New unselected review. Read-only source inspection; the extractor was not imported
or executed, no output was inspected, and no compilation/test was performed.

Owners: `D` is
`specs/036-core-transition-feasibility/research-notes/proposals/native_projection_component_001.py`;
`G` is the explicitly permitted
`/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0365/generated/Funs.lean`.

## Assessment

For the exact retained365 source, the draft's selected ranges appear to conserve
the eight intended declarations, their complete visible attributes and original
ordering. No omitted same-file generated declaration is apparent from their
explicit term references. This is a static assessment, not an elaborated closure
or compilation result. The principal integration requirement is to bind the
expected digest to the independently selected closed365 generated-file reference;
the helper alone does not establish that identity or exact top-level inventory.

## Findings and integration requirements

1. **The expected digest must come from the trusted extraction contract.**
   `component` compares bytes with the digest supplied by its caller, but does not
   bind that digest to a0365, a generated-file reference, module identity or closed
   source subject. Passing a changed source together with its new digest satisfies
   this particular check. That is an API precondition, not a demonstrated bypass
   of a caller that already freezes the correct digest. Require the integration
   wrapper to verify the closed selected extraction and exact generated source
   reference; retain that reference alongside returned ranges. `D:18–22`, `:45`.

2. **Comment boundaries and a target-name count do not enforce exactly eight
   top-level declarations.** Each span extends from the preceding `/--` comment
   through everything before the next such comment. The only internal inventory
   guard counts the target's `def name` byte prefix. It does not reject an extra
   definition, axiom, namespace/section change, attribute command or other command
   inserted before the next doc comment. The current retained spans do not show
   those additions. If this becomes a reusable extractor for additional source
   digests, independently check an exact per-span command inventory, names/kinds,
   allowed attributes and companion-command inventory. Do not advertise the
   existing check as a Lean parser or general call-closure extractor.
   `D:25–39`; actual retained spans listed below.

3. **Namespace/trailer and companion-command guards are implicit in the pinned
   bytes, rather than independently checked.** The code verifies one exact opening
   namespace byte string, copies the header through it and synthesizes a closing
   `end transition_study036`. It does not check the original closing command or
   broader namespace/section nesting, nor explicitly inventory continuity commands.
   The inspected retained file has the expected opening at `G:28` and final close
   at `G:8986`, with no intervening namespace command shown by the bounded source
   search. The eight selected spans have no continuity commands to carry. For
   future source variants, record and validate these assumptions explicitly;
   require an exact allowlist rather than silently dropping a required command.
   `D:15`, `:19`, `:22`, `:44`; `G:1–28`, `:726–728`, selected spans below.

These are requirements for binding/generalization, not evidence that the fixed
retained source currently yields wrong declaration bytes. No code was changed.

## Exact retained block inventory

The following inclusive line ranges end immediately before the next `/--`
comment. The Python implementation records half-open byte offsets; these line
ranges are explanatory source
references, not executed offset/digest results.

| Name | Copied source lines | Visible attributes |
| --- | --- | --- |
| `Str.Insts.Serde_jsonValueIndexPrivateSealed` | 728–734 | reducible, rust_trait_impl |
| `Str.Insts.Serde_jsonValueIndexIndex` | 735–745 | reducible, rust_trait_impl |
| `Shared0T.Insts.Serde_jsonValueIndexPrivateSealed` | 746–752 | reducible, rust_trait_impl |
| `Shared0T.Insts.Serde_jsonValueIndexIndex` | 753–763 | reducible, rust_trait_impl |
| `reference.state_fact_row` | 998–1030 | none between doc comment and def |
| `views.child_entity_value` | 2520–2534 | none between doc comment and def |
| `views.Views.impl.materialize_loop1.body` | 2678–2694 | rust_loop_body |
| `views.text` | 3085–3094 | none between doc comment and def |

All eight names match `D:5–14`. `D:25` can find the retained plain `def` forms,
including the same-line loop-body attribute. Attribute lines before a declaration
are retained because the copied range begins at its preceding doc comment, not
at the regex's `def` match. Adjacent dictionary spans meet at boundaries; sorted
ranges retain original declaration order, and the overlap check allows adjacency
while rejecting crossing ranges. `D:30–44`; `G:728–762`, `:998–1031`,
`:2520–2535`, `:2678–2695`, `:3085–3095`.

The entire header is copied byte-for-byte through the namespace line. It contains
module/import declarations, public exposure, opened namespaces, linter/runtime
options, `noncomputable section`, and the namespace itself. The draft then adds
one separating LF and its closing namespace command. Those are synthesized
framing bytes, so describe conservation as exact header and declaration spans,
not identity of the complete generated Funs file. `D:22`, `:44–45`; `G:1–28`.

The preceding `nonpos_continuity` at `G:726` belongs to the Number serializer;
its declaration is outside this component. The retained dictionaries start at
728. No selected definition has a trailing companion continuity command before
its next doc comment. The child materialization loop wrapper at 2697 is omitted
deliberately: it calls the selected body, and the selected body does not call the
wrapper. This component therefore proves neither the complete loop nor
`Views.materialize`. `G:726–728`, `:2678–2714`.

## Visible dependency inventory

The two field-reading subjects explicitly use the shared/Str Index dictionary
constructors. Their four generated dictionary/sealing declarations are all
retained. The shared dictionary references its supplied Index fields and its
shared sealing declaration; the Str dictionary references its sealing declaration
and all three external methods. No field is erased. `G:731–762`, `:1001`,
`:3088`.

Other explicit calls in the four subjects are external/runtime/imported names,
not omitted definitions found elsewhere in the inspected generated Funs source:

- JSON Map new/insert; Value index, as_str and complete clone.
- Str ownership and equality; String as_str and clone.
- BTree borrowed iterator next.
- Option.ok_or, Result Try branching/from-residual, FromSame, and imported
  Result/ControlFlow/Value/SeedEntity/ChildRow/SeedFailure types and constructors.

Sources: `G:1000–1029`, `:2522–2533`, `:2680–2693`, `:3087–3093`.
Together with all six Str/shared Index methods, this is the previously identified
sixteen-external-signature planning list. It does not certify external
implementations, generated type/import closure, attribute elaboration effects,
implicit instance dependencies or runtime/compiler adequacy.

The exact header still imports `WorkerEntrypointsNames.Types` and
`WorkerEntrypointsNames.FunsExternal`. A later checker must supply source-bound
versions with justified primitive definitions and retain the exact generated
function signatures/dictionaries. Exact-byte selection by itself does not remove
the external axioms or justify their semantics. Any duplicate-name or altered-type
conflict with those imports must fail the real checker. `G:4–6`, `:739–743`,
`:757–761`; `D:45` correctly limits the scope to conservation pending independent
semantic/import/generated-dependency establishment.

Next step: freeze the trusted generated reference and exact inventories, then
implement the missing independent guards and source-binding wrapper before a
fresh component check. Retain wrong digest, duplicate/extra declaration, changed
attribute/namespace/trailer, overlap, omitted-dictionary/continuity and missing
dependency controls when execution is authorized. This review ran none of them.
