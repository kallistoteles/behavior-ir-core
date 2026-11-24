"""Fixed optimized build provenance, separate from the historical dev admission.

No build record establishes native semantic correspondence.
"""

from pathlib import Path
from native_compile_binding_v2 import option_values

BUILD_PROFILE = {
    "format": "core036.native-optimization.v2",
    "name": "release-checked-opt3-v1",
    "cargo_profile": "release",
    "artifact_directory": "release",
    "opt_level": "3",
    "debuginfo": 0,
    "debug_assertions": True,
    "overflow_checks": True,
}
UNIT_PROFILE = {
    "opt_level": "3",
    "debuginfo": 0,
    "debug_assertions": True,
    "overflow_checks": True,
    "test": False,
}


def selected_profile(value):
    if value is None:
        return None
    if value != BUILD_PROFILE or any(
        type(value[k]) is not type(v) for k, v in BUILD_PROFILE.items()
    ):
        raise ValueError("NativeOptimizedFixedProfile")
    return dict(BUILD_PROFILE)


def select_optimized_bin_artifact(
    rows, package_id, name, source, executable, *, oracle=False
):
    matches = [
        row
        for row in rows
        if row.get("reason") == "compiler-artifact"
        and row.get("package_id") == package_id
        and row.get("target", {}).get("name") == name
    ]
    if len(matches) != 1:
        raise ValueError("NativeOptimizedUnitUnique")
    row = matches[0]
    if (
        row["target"].get("kind") != ["bin"]
        or row["target"].get("src_path") != str(source)
        or row.get("features") != ([] if oracle else ["worker"])
        or row.get("executable") != str(executable)
        or str(executable) not in row.get("filenames", [])
        or row.get("fresh") is not False
        or row.get("profile") != UNIT_PROFILE
    ):
        raise ValueError("NativeOptimizedUnitIdentity")
    return row


def select_optimized_dependency_units(rows, packages, platform_root):
    """Bind actual target libraries by metadata package ID, excluding host units."""
    root = Path(platform_root)
    if not root.is_absolute() or ".." in root.parts:
        raise ValueError("NativeOptimizedDependencyRoot")
    result = []
    for package in packages:
        matches = [
            row
            for row in rows
            if row.get("reason") == "compiler-artifact"
            and row.get("package_id") == package["id"]
            and row.get("target", {}).get("kind") == ["lib"]
            and row["target"].get("name") == package["name"].replace("-", "_")
            and row.get("filenames")
            and all(
                Path(name).is_absolute()
                and ".." not in Path(name).parts
                and Path(name).is_relative_to(root)
                for name in row["filenames"]
            )
        ]
        if len(matches) != 1 or matches[0].get("profile") != UNIT_PROFILE:
            raise ValueError("NativeOptimizedDependencyProfile")
        result.append(matches[0])
    return result


def match_optimized_compiler_trace(traces, artifact, compiler, target, *, oracle=False):
    source = Path(artifact["target"]["src_path"])
    name = artifact["target"]["name"].replace("-", "_")
    expected_features = [] if oracle else ['feature="worker"']
    matches = []
    for row in traces:
        args = row.get("argv", [])
        if not isinstance(args, list) or not all(
            isinstance(word, str) for word in args
        ):
            raise ValueError("NativeOptimizedTraceArguments")
        codegen = option_values(args, "-C")

        def only(key, expected):
            values = [
                word.split("=", 1)[1] for word in codegen if word.startswith(key + "=")
            ]
            # Cargo profile flags and the fixed explicit RUSTFLAGS can repeat
            # the same setting. Reject every conflicting override.
            return bool(values) and all(value == expected for value in values)

        features = [
            word for word in option_values(args, "--cfg") if word.startswith("feature=")
        ]
        if (
            row.get("format") == "core036.rustc-invocation.v2"
            and row.get("compiler") == str(compiler)
            and option_values(args, "--crate-name") == [name]
            and any(
                Path(row["cwd"], word).resolve() == source
                for word in args
                if word.endswith(".rs")
            )
            and option_values(args, "--crate-type") == ["bin"]
            and option_values(args, "--edition") == ["2024"]
            and option_values(args, "--target") == [target]
            and features == expected_features
            and only("target-cpu", "x86-64")
            and only("opt-level", "3")
            and only("debug-assertions", "on")
            and only("overflow-checks", "on")
            and not any(
                word.startswith("debuginfo=") and word != "debuginfo=0"
                for word in codegen
            )
        ):
            matches.append(row)
    if len(matches) != 1:
        raise ValueError("NativeOptimizedActualInvocation")
    return matches[0]
