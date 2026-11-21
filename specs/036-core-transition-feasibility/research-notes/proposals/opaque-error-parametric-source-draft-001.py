"""Unexecuted source-generation proposal; not an elaborated conservation proof."""
import hashlib
from native_projection_component_v2 import component

FUNS_SHA = "867ac45f43f469cedf534a9e5008c6e383681dbd090f9fd74328cb924d36c5d3"
TYPES_SHA = "ca42c49553937a2d43c94d90e8b1c62627e8e6f6ee12ac995ca2e03fe525cf92"


def generate(types, functions):
    if hashlib.sha256(types).hexdigest() != TYPES_SHA:
        raise ValueError("ParametricOriginalTypes")
    original_component = component(functions, FUNS_SHA)
    selected = [row for row in original_component["declarations"] if row["name"] == "reference.state_fact_row"]
    if len(selected) != 1:
        raise ValueError("ParametricOriginalFunction")
    row = selected[0]
    old_function = functions[row["start"]:row["end"]].decode()
    text = types.decode()
    start = text.index("inductive error.StudyError where\n")
    end = text.index("\n/--", start)
    old_type = text[start:end]
    expected = "\n".join([
        "inductive error.StudyError where",
        "| InvalidInput : String → error.StudyError",
        "| Prerequisite : Str → error.StudyError",
        "| Library : String → error.StudyError",
        "| Json : serde_json.error.Error → error.StudyError",
        "| Io : core.io.error.Error → error.StudyError", "",
    ])
    if old_type != expected:
        raise ValueError("ParametricFiveConstructorShape")
    new_type = old_type.replace("inductive error.StudyError where", "inductive error.ParametricStudyError (J I : Type) where")
    new_type = new_type.replace("→ error.StudyError", "→ error.ParametricStudyError J I")
    new_type = new_type.replace("serde_json.error.Error", "J").replace("core.io.error.Error", "I")
    edits = [
        ("def reference.state_fact_row (", "def reference.parametric_state_fact_row {J I : Type} (", 1),
        ("Unit error.StudyError", "Unit (error.ParametricStudyError J I)", 1),
        ("error.StudyError.Prerequisite", "error.ParametricStudyError.Prerequisite", 2),
        ("core.convert.FromSame error.StudyError", "core.convert.FromSame (error.ParametricStudyError J I)", 1),
    ]
    new_function = old_function
    for before, after, count in edits:
        if new_function.count(before) != count:
            raise ValueError("ParametricUnexpectedEditSite")
        new_function = new_function.replace(before, after)
    if "error.StudyError" in new_function:
        raise ValueError("ParametricResidualOriginalError")
    raw = ("module\npublic import NativeProjectionLaws\n@[expose] public section\n"
        "open Aeneas Aeneas.Std Result\nnamespace transition_study036\n\n"
        + new_type + "\n" + new_function + "\nend transition_study036\n").encode()
    return raw, {
        "original_types_sha256": TYPES_SHA,
        "original_funs_sha256": FUNS_SHA,
        "original_type_span": [len(text[:start].encode()), len(text[:end].encode())],
        "original_function_span": [row["start"], row["end"]],
        "original_function_sha256": row["sha256"],
        "edits": [{"before": before, "after": after, "count": count} for before, after, count in edits],
        "output_sha256": hashlib.sha256(raw).hexdigest(),
        "scope": "Lexical proposal only; elaborated closure/conservation and all-input error transport still required",
        "native_proof": "unestablished", "feature_complete": False,
    }
