# Two generated Lean parser failures: source diagnosis and minimum correction

Read-only source investigation, 2026-11-18. Only this new research note was written. No builds, tests, downloads, generated-body rewrites, active-input/evidence changes, or native-proof claims were made. The reported live actual332 run was still writing its log; the inspected log contained no parser diagnostic yet, so absence there is not a passing result.

## Finding

The actual327 parser failures have **two independent frontend causes**: indentation clamping in the Lean pretty-printer and missing double-quote escaping in string literal extraction. Increasing the margin alone cannot fix both. The current actual331 generated source retains both malformed shapes. These are distinct from namespace shadowing already addressed through debug-name alpha-normalization.

Evidence: [actual327 diagnostic log](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0327/commands/Funs/stdout.txt:6301), [actual331 extraction result](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/result.json), and [live actual332 log](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0332/commands/Funs/stdout.txt).

## 1. The match error is a confirmed indentation failure

Actual327 reports `24808:110: unexpected identifier; expected '=>'`. Actual326 generated source and actual327's checked copy contain the following physical lines, **all starting at zero-based column 68**:

```lean
match cf23
with
|
core.ops.control_flow.ControlFlow.Continue
val19 =>
let i2 :=
```

The constructor occupies columns 68–109; column 110 is its end. `val19` starts on the next line at column 68. Lean parses a match pattern with `termParser`, then expects the arrow; application arguments require `checkColGt`. Therefore the equally indented `val19` cannot be consumed as the constructor's argument, leaving the parser expecting `=>` after the constructor. `val19` and the constructor spelling are ordinary identifiers; the same constructor already occurs in valid shallow alternatives in this function. This is not an identifier/keyword collision. Sources: [generated failure](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0326/generated/Funs.lean:24805), [shallow occurrence](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0326/generated/Funs.lean:24350), [Lean match parser](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Parser/Term.lean:389), [Lean application argument/parser](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Parser/Term.lean:1021), [strict column check](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Parser/Basic.lean:1516).

The generator's mechanism explains the exact repeated column:

- `Translate.ml:1277` constructs a fresh `Format` formatter; `1422` sets only its margin to 80.
- The installed OCaml `Format` creates a formatter with margin 78 and minimum remaining width 10, hence maximum indentation **68**. Raising the margin to 80 preserves the current maximum indentation when it is already within that margin.
- `Format.break_new_line` clamps requested indentation with `min pp_max_indent indent`; opening a box beyond the maximum can also force a break to the left.
- Lean `extract_Switch` explicitly relies on indentation for delimiting matches. Its branch/pattern/body boxes add `ctx.indent_incr`, which becomes ineffective once clamped. The constructor printer inserts ordinary breakable spaces before fields.

Sources: [formatter creation](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/Translate.ml:1275), [margin setting](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/Translate.ml:1420), [Format defaults](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.ml:967), [margin preserves existing limit](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.ml:819), [indent clamp](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.ml:275), [box rejection](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.ml:333), [match layout and branches](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/Extract.ml:1458), [constructor fields](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/Extract.ml:227).

Current331 preserves this exact malformed block at lines 17919–17924 and again at 18278–18283, inside `run_v2.execute_case`: [first](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:17919), [second](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:18278). A checker reaching it should expose a corresponding parser failure; this is a prediction, not a completed actual332 observation.

**Minimum frontend correction candidate:** change only Lean's formatter geometry at `Translate.ml:1422`, explicitly setting both margin and maximum indentation. Changing `margin` alone leaves 68 intact; changing only maximum indentation is constrained by the existing margin. One small conservative candidate is:

```ocaml
(match Config.backend () with
| Lean ->
    Format.pp_set_geometry fmt
      ~max_indent:(Format.pp_infinity - 2)
      ~margin:(Format.pp_infinity - 1)
| _ -> Format.pp_set_margin fmt 80);
```

This removes the reachable 68-column clamp while retaining the generator's explicit vertical boxes. It also permits wider lines, so it requires extraction/Lean regression checks; this investigation did not establish that this exact configuration succeeds. An explicit finite geometry such as 10,000/9,999 is another bounded candidate, but there is no source-only justification for calling a particular finite threshold sufficient for arbitrary nesting. Setting only `max_indent` to `margin - 1` with margin 80 merely moves the same failure boundary to 79. `pp_infinity` is available in this OCaml installation, and the geometry relation must satisfy `1 < max_indent < margin < pp_infinity`: [API](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.mli:443), [geometry constraints](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/format.mli:521).

## 2. The later error is malformed string quoting

Actual327 reports `27951:13: unexpected identifier; expected ')', ',' or ':'`. The generated line starts at column 6 with:

```lean
"{\n  "compiler_release": "1.98.1",\n  "core_packages": ...
```

The double quote at column 12 closes the string prematurely; `compiler_release` starts at column 13, exactly matching the diagnostic. `compiler_release` is JSON data accidentally exposed as Lean syntax. The current331 counterpart at line 21065 has the same unescaped embedded quotes. Sources: [actual326 literal](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0326/generated/Funs.lean:27951), [actual331 literal](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/generated/Funs.lean:21065), [Lean string lexer: unescaped quote terminates literal](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Parser/Basic.lean:719).

`ExtractTypes.extract_pure_string:11–17` maps **`Char.escaped`** over the payload, concatenates, and adds double-quote delimiters. OCaml `Char.escaped` escapes the single-quote character, backslash, and controls, but passes printable double quote through unchanged. Thus it is unsuitable for the string delimiter used here. Both `VStr` and `VPureString` use this helper. Sources: [literal emitter](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/ExtractTypes.ml:11), [literal dispatch](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-source/a0273/aeneas/src/extract/ExtractTypes.ml:101), [actual OCaml Char implementation](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/char.ml:29).

**Smallest fix for the observed literal:** in `ExtractTypes.ml:16`, special-case the Lean double-quote byte to emit `\"`, retaining the previous handling for other bytes/backends. This preserves the original JSON contents and leaves `source_identity.compiled_dependency_identity` and its call to `from_str` intact. A wholesale substitution of `String.escaped` would fix quotes, but would still emit OCaml `\b`/decimal byte escapes that this Lean lexer does not accept. A general Lean-specific encoder must additionally preserve valid UTF-8 and use Lean-supported escapes (`\\`, quotes, `\r`, `\n`, `\t`, `\xHH`, `\uHHHH`) for controls; that broader correctness claim is beyond the quote-only repair. Sources: [OCaml string escape implementation](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-opam-plan/a0282/opamroot/core036/lib/ocaml/bytes.ml:170), [Lean supported escapes](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Parser/Basic.lean:657).

The JSON payload is already represented as a source literal in actual330 compiler IR (`/translated/global_decls/298/value/Value/1/0/Str`), containing actual newlines and embedded double quotes. It matches the embedded file contents under `/translated/files/152/contents`; no rewrite to that IR is needed. Its Rust origin is the existing `serde_json::from_str(include_str!(...))` expression: [source function](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/source_identity.rs:24), [exact compiler IR](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0330/worker_entrypoints_names.llbc). The generated `\n` spelling is one backslash followed by `n`, as expected for the original newline; it is the **quotes**, not the newlines, that cause this diagnostic.

## Source binding and regression controls for a later authorized repair

The inspected sources are pinned Aeneas `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`. Actual292 records the retained executable, successful repaired-source build, exact repaired source hashes, and `compiled_sources_match_declared_repair: true`; its repair is the existing NonPos/Map repair, not either proposed parser fix. The actual331 invocation uses that retained translator. The retained build workspace still contains the same margin-only setup and `Char.escaped` string emitter. Sources: [actual292 binding](/var/tmp/behavior-ir-core036-v2/w001/nonpos-translator/a0292/result.json), [compiled workspace geometry](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-translator/a0292/workspace/aeneas/src/Translate.ml:1422), [compiled workspace literal emitter](/var/tmp/behavior-ir-core036-v2/w001/tmp/nonpos-translator/a0292/workspace/aeneas/src/extract/ExtractTypes.ml:11), [actual331 translator invocation](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0331/result.json).

Meaningful controls, **proposed and not run**:

1. Minimize a Rust function with nested `Result`/`ControlFlow` matches and long qualified constructor names. Include depths below and beyond 68 columns (for example 8, 32, 40, 48), both alternatives, one/two constructor payloads, and distinct branch results. Translate identical compiler IR with old/new translators and compile the generated Lean. Confirm the old exporter reproduces the failure at a reachable depth and the new exporter preserves branch selection and payloads; a shallow successful example alone is insufficient. Keep native Rust results for all early-error positions and the success path as the finite behavioral control.
2. Translate a tiny unchanged Rust `&str` payload containing `{"compiler_release":"1.98.1"}` plus a trailing newline. Add quote, backslash, newline, tab and CR cases; compare the generated Lean string's UTF-8 bytes with the Rust bytes. Include apostrophe, Unicode, NUL/backspace as explicit wider-support controls; failures there prevent a broad literal-correctness claim even if the narrow JSON case passes.
3. Re-extract the **exact existing source-bound compiler IR** with a new bound translator build containing only the declared frontend edits. Preserve source/IR hashes, the NonPos/Map patch, options, debug-name metadata normalization, and all function bodies/dependency declarations. Do not manually rewrite the generated `execute_case` or identity function. For the geometry edit, compare emitted token spellings while ignoring whitespace **outside** literals/comments; for quoting, compare decoded literal payloads to the compiler-IR payload. A whitespace-stripping text comparison that destroys string contents is invalid.
4. Run the full generated Funs check after the minimized controls, recording the complete result rather than inferring success from disappearance of the first parser error. Existing actual332 recursive `write_all`/`read_to_end`, deriving/continuity and other elaboration issues are separate obligations. Neither these exporter repairs nor finite native controls establish B01–B10 or a native equivalence theorem.
