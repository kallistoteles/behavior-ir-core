"""Universal carrier proposal; lexical edits alone never establish native closure."""

import hashlib
import re
from native_projection_component_v2 import component
from native_canonical_child_v2 import roots as fixed_carrier_roots

FUNS_SHA = "867ac45f43f469cedf534a9e5008c6e383681dbd090f9fd74328cb924d36c5d3"
TYPES_SHA = "ca42c49553937a2d43c94d90e8b1c62627e8e6f6ee12ac995ca2e03fe525cf92"
OLD_TYPE = "\n".join(
    [
        "inductive error.StudyError where",
        "| InvalidInput : String → error.StudyError",
        "| Prerequisite : Str → error.StudyError",
        "| Library : String → error.StudyError",
        "| Json : serde_json.error.Error → error.StudyError",
        "| Io : core.io.error.Error → error.StudyError",
        "",
    ]
)
PREFIX = (
    "module\npublic import NativeProjectionLaws\n@[expose] public section\n"
    "open Aeneas Aeneas.Std Result\nnamespace transition_study036\n\n"
)
SUFFIX = "\nend transition_study036\n"
ROW_EDITS = (
    (
        "def reference.state_fact_row (",
        "def reference.parametric_state_fact_row {J I : Type} (",
        1,
    ),
    ("Unit error.StudyError", "Unit (error.ParametricStudyError J I)", 1),
    (
        "error.StudyError.Prerequisite",
        "error.ParametricStudyError.Prerequisite (J := J) (I := I)",
        2,
    ),
    (
        "core.convert.FromSame error.StudyError",
        "core.convert.FromSame (error.ParametricStudyError J I)",
        1,
    ),
)


def parameterize_error(original):
    if original != OLD_TYPE:
        raise ValueError("ParametricFiveConstructorShape")
    output = original.replace(
        "inductive error.StudyError where",
        "inductive error.ParametricStudyError (J I : Type) where",
    )
    output = output.replace("→ error.StudyError", "→ error.ParametricStudyError J I")
    return output.replace("serde_json.error.Error", "J").replace(
        "core.io.error.Error", "I"
    )


def parameterize_row(original):
    output = original
    for before, after, count in ROW_EDITS:
        if output.count(before) != count:
            raise ValueError("ParametricUnexpectedEditSite")
        output = output.replace(before, after)
    if "error.StudyError" in output:
        raise ValueError("ParametricResidualOriginalError")
    return output


def assemble(new_type, new_row):
    return (PREFIX + new_type + "\n" + new_row + SUFFIX).encode()


def validate_generated(old_type, old_row, raw):
    """Independently reverse only authorized edits; preserve all other bytes.

    This is a lexical certificate, not the elaborated expression/type/value
    correspondence or payload-preserving specialization theorem.
    """
    if old_type != OLD_TYPE or not isinstance(raw, bytes) or len(raw) > 64 * 1024:
        raise ValueError("ParametricConservationInputs")
    try:
        text = raw.decode("utf-8", errors="strict")
    except UnicodeError as error:
        raise ValueError("ParametricConservationEncoding") from error
    if not text.startswith(PREFIX) or not text.endswith(SUFFIX):
        raise ValueError("ParametricConservationModule")
    body = text[len(PREFIX) : -len(SUFFIX)]
    marker = "def reference.state_fact_row ("
    if old_row.count(marker) != 1:
        raise ValueError("ParametricConservationOriginalFunction")
    old_doc = old_row[: old_row.index(marker)]
    if not old_doc or body.count(old_doc) != 1:
        raise ValueError("ParametricConservationFunctionBoundary")
    cut = body.index(old_doc)
    new_type, new_row = body[:cut], body[cut:]
    type_head = "inductive error.ParametricStudyError (J I : Type) where"
    if new_type.count(type_head) != 1:
        raise ValueError("ParametricConservationTypeBinder")
    restored_type = new_type.replace(type_head, "inductive error.StudyError where")
    restored_type = restored_type.replace(
        "→ error.ParametricStudyError J I", "→ error.StudyError"
    )
    restored_type = restored_type.replace(
        "| Json : J →", "| Json : serde_json.error.Error →"
    )
    restored_type = restored_type.replace("| Io : I →", "| Io : core.io.error.Error →")
    if restored_type != old_type + "\n":
        raise ValueError("ParametricConservationConstructors")
    # These independent inverse patterns deliberately do not call the producer.
    inverse = (
        (
            "def reference.parametric_state_fact_row {J I : Type} (",
            "def reference.state_fact_row (",
            1,
        ),
        ("Unit (error.ParametricStudyError J I)", "Unit error.StudyError", 1),
        (
            "error.ParametricStudyError.Prerequisite (J := J) (I := I)",
            "error.StudyError.Prerequisite",
            2,
        ),
        (
            "core.convert.FromSame (error.ParametricStudyError J I)",
            "core.convert.FromSame error.StudyError",
            1,
        ),
    )
    restored_row = new_row
    for before, after, count in inverse:
        if restored_row.count(before) != count:
            raise ValueError("ParametricConservationFunctionBinder")
        restored_row = restored_row.replace(before, after)
    if restored_row != old_row:
        raise ValueError("ParametricConservationOperation")
    return True


def generate(types, functions):
    if hashlib.sha256(types).hexdigest() != TYPES_SHA:
        raise ValueError("ParametricOriginalTypes")
    original_component = component(functions, FUNS_SHA)
    selected = [
        row
        for row in original_component["declarations"]
        if row["name"] == "reference.state_fact_row"
    ]
    if len(selected) != 1:
        raise ValueError("ParametricOriginalFunction")
    row = selected[0]
    old_function = functions[row["start"] : row["end"]].decode()
    text = types.decode()
    start = text.index("inductive error.StudyError where\n")
    end = text.index("\n/--", start)
    old_type = text[start:end]
    raw = assemble(parameterize_error(old_type), parameterize_row(old_function))
    validate_generated(old_type, old_function, raw)
    return raw, {
        "original_types_sha256": TYPES_SHA,
        "original_funs_sha256": FUNS_SHA,
        "original_type_span": [len(text[:start].encode()), len(text[:end].encode())],
        "original_function_span": [row["start"], row["end"]],
        "original_function_sha256": row["sha256"],
        "edits": [
            {"before": before, "after": after, "count": count}
            for before, after, count in ROW_EDITS
        ],
        "output_sha256": hashlib.sha256(raw).hexdigest(),
        "scope": "Lexical type-only derivative; elaborated conservation and all-input transport remain separate obligations",
        "elaborated_conservation": "unestablished",
        "original_transport": "unestablished",
        "native_proof": "unestablished",
        "feature_complete": False,
    }


def roots():
    result = []
    for row in fixed_carrier_roots():
        expected = "∀ (J I : Type) " + row["expected_type"].removeprefix("∀ ")
        expected = expected.replace(
            "transition_study036.reference.state_fact_row",
            "transition_study036.reference.parametric_state_fact_row (J := J) (I := I)",
        )
        result.append(
            {
                "id": "parametric." + row["id"],
                "declaration": row["declaration"].replace(
                    "Correspondence036.NativeCanonicalChild",
                    "Correspondence036.NativeParametricCanonicalChild",
                ),
                "expected_type": expected,
            }
        )
    return result


def controls(raw):
    text = raw.decode("utf-8")
    marker = "module\npublic import NativeProjectionLaws\n@[expose] public section\n"
    if text.count(marker) != 1:
        raise ValueError("ParametricControlImport")
    text = text.replace(
        marker,
        "import NativeProjectionLaws\nimport NativeParametricConservation\n",
        1,
    )
    result = []
    for label, before, after in (
        ("parametric-first-error", 'toStr "SeedIdentity"', 'toStr "WrongFirstError"'),
        ("parametric-swapped-payload", "| Json : J →", "| Json : I →"),
        (
            "parametric-residual-carrier",
            "| Json : J →",
            "| Json : serde_json.error.Error →",
        ),
        (
            "parametric-extra-premise",
            "{J I : Type}",
            "{J I : Type} (assumeResult : False)",
        ),
        (
            "parametric-dropped-payload",
            "| Io : I → error.ParametricStudyError J I\n",
            "",
        ),
    ):
        if text.count(before) != 1:
            raise ValueError("ParametricControlSite")
        result.append(
            (
                label,
                text.replace(before, after, 1) + "\n#core036_parametric_audit\n",
                "parametric-conservation",
            )
        )
    return result


def audit_driver():
    # Legacy roots load transitive private proof bodies, rather than the
    # proof-erased exported signatures used by ordinary module imports.
    return (
        b"import NativeParametricConservation\n"
        b"import NativeParametricCanonicalSource\n#core036_parametric_audit\n"
    )


def valid_rejection(diagnostic, source, filename):
    """Require the one actual rejection at the responsible audit command."""
    lines = source.splitlines()
    command = "#core036_parametric_audit"
    if lines.count(command) != 1:
        return False
    errors = re.findall(r"^(.+):([0-9]+):([0-9]+): error: (.*)$", diagnostic, re.M)
    if len(errors) != 1:
        return False
    path, line, column, message = errors[0]
    if (
        path != filename
        or int(line) != lines.index(command) + 1
        or int(column) != 0
        or not message.startswith("Core036ParametricConservation:")
        or "original-expansion-kernel-certificate" in diagnostic
        or any(
            text in diagnostic.lower()
            for text in ("unknown identifier", "unknown constant", "unexpected token")
        )
    ):
        return False
    return (
        "type mismatch" not in diagnostic.lower()
        or message.startswith(
            "Core036ParametricConservation: function-kernel-certificate"
        )
    )


def prepare(refs, reference, source_dir, generated, original_component):
    from pathlib import PurePosixPath

    def guard(reference):
        if isinstance(reference, dict) and PurePosixPath(
            reference.get("path", "")
        ).name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")

    guard(reference)
    selected = refs.read(reference)
    if (
        set(selected)
        != {
            "format",
            "scope",
            "funs_sha256",
            "types_sha256",
            "proof_ref",
            "conservation_ref",
            "native_proof",
            "feature_complete",
        }
        or selected["format"] != "core036.native-parametric-canonical.v2"
        or selected["scope"] != "universal_carrier_derivative_not_native_admission"
        or selected["funs_sha256"] != FUNS_SHA
        or selected["types_sha256"] != TYPES_SHA
        or original_component.get("source_sha256") != FUNS_SHA
        or selected["native_proof"] != "unestablished"
        or selected["feature_complete"] is not False
    ):
        raise ValueError("ParametricCanonicalSelection")
    paths, sources = {}, {}
    for key, module in (
        ("proof_ref", "NativeParametricCanonicalLaws"),
        ("conservation_ref", "NativeParametricConservation"),
    ):
        guard(selected[key])
        path = refs.verify(selected[key])
        if path != source_dir / (module + ".lean"):
            raise ValueError("ParametricCanonicalModelPath")
        raw = path.read_bytes()
        if not 0 < len(raw) <= 64 * 1024:
            raise ValueError("ParametricCanonicalModelBound")
        paths[module] = path
        sources[module] = raw
    if (
        sources["NativeParametricCanonicalLaws"].count(
            b"import NativeParametricCanonicalSource\n"
        )
        != 1
        or sources["NativeParametricConservation"].count(
            b"public import NativeProjectionLaws\n"
        )
        != 1
    ):
        raise ValueError("ParametricCanonicalImports")
    for name in ("Types.lean", "Funs.lean"):
        if generated[name].name in {"parameters.bin", "compression_prover_key.bin"}:
            raise ValueError("ProtectedArtifact")
    raw, certificate = generate(
        generated["Types.lean"].read_bytes(), generated["Funs.lean"].read_bytes()
    )
    modules = {
        "NativeParametricConservation": sources["NativeParametricConservation"],
        "NativeParametricCanonicalSource": raw,
        "NativeParametricCanonicalAudit": audit_driver(),
        "NativeParametricCanonicalLaws": sources["NativeParametricCanonicalLaws"],
    }
    return {
        "paths": paths,
        "modules": modules,
        "roots": roots(),
        "controls": controls(raw),
        "certificate": certificate,
    }
