"""Bind retained worker bytes to actual Cargo units and compiler invocations.

This is build provenance. It grants no semantic correspondence authority.
"""

import json
from pathlib import Path


TARGET = "x86_64-unknown-linux-gnu"
JSON_FEATURES = ["default", "std", "unbounded_depth"]


def configuration_inventory(worker, cargo_home):
    """Refuse undeclared config rather than trying to reconstruct its effects."""
    paths = {Path(cargo_home) / name for name in ("config", "config.toml")}
    for directory in (Path(worker), *Path(worker).parents):
        paths.update(directory / ".cargo" / name for name in ("config", "config.toml"))
    for path in sorted(paths):
        if path.is_symlink() or path.exists():
            raise ValueError("ImplicitCargoConfiguration:" + str(path))
    return []


def select_bin_artifact(rows, package_id, name, source, executable):
    matches = [
        row
        for row in rows
        if row.get("reason") == "compiler-artifact"
        and row.get("package_id") == package_id
        and row.get("target", {}).get("name") == name
    ]
    if len(matches) != 1:
        raise ValueError("NativeCompileUnitUniqueBin")
    row = matches[0]
    if (
        row["target"].get("kind") != ["bin"]
        or row["target"].get("src_path") != str(source)
        or row.get("features") != ["worker"]
        or row.get("executable") != str(executable)
        or str(executable) not in row.get("filenames", [])
        or row.get("fresh") is not False
        or row.get("profile")
        != {
            "opt_level": "0",
            "debuginfo": 0,
            "debug_assertions": True,
            "overflow_checks": True,
            "test": False,
        }
    ):
        raise ValueError("NativeCompileUnitBinIdentity")
    return row


def check_json_unit(row):
    if (
        row.get("reason") != "compiler-artifact"
        or row.get("target", {}).get("kind") != ["lib"]
        or row["target"].get("name") != "serde_json"
        or row.get("features") != JSON_FEATURES
    ):
        raise ValueError("NativeCompileJsonRepresentation")


def select_json_artifact(rows, package_id, platform_root):
    """Cargo emits separate host and target units for the same package ID."""
    root = Path(platform_root)
    if not root.is_absolute():
        raise ValueError("NativeCompilePlatformRoot")
    selected = [
        row
        for row in rows
        if row.get("reason") == "compiler-artifact"
        and row.get("package_id") == package_id
        and row.get("target", {}).get("name") == "serde_json"
        and row["target"].get("kind") == ["lib"]
        and row.get("filenames")
        and all(
            Path(name).is_absolute()
            and ".." not in Path(name).parts
            and Path(name).is_relative_to(root)
            for name in row["filenames"]
        )
    ]
    if len(selected) != 1:
        raise ValueError("NativeCompileTargetJsonUnitUnique")
    return selected[0]


def option_values(args, option):
    return [
        args[index + 1] for index, word in enumerate(args[:-1]) if word == option
    ] + [word.split("=", 1)[1] for word in args if word.startswith(option + "=")]


def match_compiler_trace(traces, artifact, compiler, target):
    source = Path(artifact["target"]["src_path"])
    name = artifact["target"]["name"].replace("-", "_")
    matches = []
    for row in traces:
        args = row.get("argv", [])
        if not isinstance(args, list) or not all(isinstance(x, str) for x in args):
            raise ValueError("NativeCompileTraceArguments")
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
            and 'feature="worker"' in option_values(args, "--cfg")
            and "target-cpu=x86-64" in option_values(args, "-C")
        ):
            matches.append(row)
    if len(matches) != 1:
        raise ValueError("NativeCompileActualInvocation")
    return matches[0]


def cargo_messages(path):
    rows = []
    with Path(path).open() as stream:
        for line in stream:
            row = json.loads(line)
            if not isinstance(row, dict) or not isinstance(row.get("reason"), str):
                raise ValueError("NativeCompileCargoMessage")
            rows.append(row)
    if not any(
        row.get("reason") == "build-finished" and row.get("success") is True
        for row in rows
    ):
        raise ValueError("NativeCompileCargoCompletion")
    return rows
