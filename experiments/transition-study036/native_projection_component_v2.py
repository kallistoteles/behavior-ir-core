"""Exact-byte candidate projection component, not a call-closure/native proof."""

import hashlib
import re

NAMES = (
    "Str.Insts.Serde_jsonValueIndexPrivateSealed",
    "Str.Insts.Serde_jsonValueIndexIndex",
    "Shared0T.Insts.Serde_jsonValueIndexPrivateSealed",
    "Shared0T.Insts.Serde_jsonValueIndexIndex",
    "reference.state_fact_row",
    "views.child_entity_value",
    "views.Views.impl.materialize_loop1.body",
    "views.Views.impl.materialize_loop1",
    "views.text",
)
NAMESPACE = b"namespace transition_study036\n"


def component(source, expected_sha256):
    if (
        not isinstance(source, bytes)
        or len(source) > 8 * 1024**2
        or hashlib.sha256(source).hexdigest() != expected_sha256
        or source.count(NAMESPACE) != 1
    ):
        raise ValueError("NativeProjectionComponentSource")
    source.decode("utf-8", errors="strict")
    close = b"end transition_study036\n"
    if not source.endswith(close) or source.count(b"\n" + close) != 1:
        raise ValueError("NativeProjectionComponentNamespace")
    header_end = source.index(NAMESPACE) + len(NAMESPACE)
    blocks = []
    for name in NAMES:
        pattern = (
            rb"(?m)^(?:@\[[^\n]*\]\s*)?def "
            + re.escape(name.encode())
            + rb"(?=\s|[({:])"
        )
        matches = list(re.finditer(pattern, source))
        if len(matches) != 1:
            raise ValueError("NativeProjectionComponentDeclaration")
        match = matches[0]
        start = source.rfind(b"\n/--", header_end - 1, match.start())
        end = source.find(b"\n/--", match.end())
        if start < header_end - 1 or end < match.end():
            raise ValueError("NativeProjectionComponentBoundary")
        start += 1
        end += 1
        block = source[start:end]
        if block.count(b"def " + name.encode()) != 1:
            raise ValueError("NativeProjectionComponentAmbiguousBlock")
        blocks.append(
            dict(
                name=name,
                start=start,
                end=end,
                bytes=len(block),
                sha256=hashlib.sha256(block).hexdigest(),
            )
        )
    blocks.sort(key=lambda row: row["start"])
    for left, right in zip(blocks, blocks[1:]):
        if left["end"] > right["start"]:
            raise ValueError("NativeProjectionComponentOverlap")
    selected = b"".join(source[row["start"] : row["end"]] for row in blocks)
    # This is a lexical conservation guard for an independently pinned generated
    # producer, not a general Lean parser or an elaborated dependency audit.
    declaration_heads = re.findall(
        rb"(?m)^(?:@\[[^\n]*\]\s*)?(?:def|impl_def|theorem|lemma|axiom|opaque|abbrev|inductive|structure) ([^ \n:({]+)",
        selected,
    )
    if len(declaration_heads) != len(NAMES) or set(declaration_heads) != {
        name.encode() for name in NAMES
    }:
        raise ValueError("NativeProjectionComponentLexicalInventory")
    if re.search(
        rb"(?m)^(?:namespace|end|section|nonpos_continuity|elab|macro|syntax|run_cmd|initialize|instance|attribute|set_option|open|import|public import|variable)\b|^#",
        selected,
    ):
        raise ValueError("NativeProjectionComponentUnexpectedCommand")
    raw = (
        source[:header_end]
        + b"\n"
        + b"".join(source[row["start"] : row["end"]] for row in blocks)
        + b"end transition_study036\n"
    )
    return dict(
        source_sha256=expected_sha256,
        header_bytes=header_end,
        header_sha256=hashlib.sha256(source[:header_end]).hexdigest(),
        declarations=blocks,
        component=raw,
        component_sha256=hashlib.sha256(raw).hexdigest(),
        scope="Exact selected declaration byte conservation only; independently establish all semantic/import/generated dependencies before actual root checks",
    )
