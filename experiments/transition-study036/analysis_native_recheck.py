"""Recheck an existing closed materialization with an explicit runtime correction."""

import os
import subprocess
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once

E = Path(__file__).resolve().parent


def recheck(declaration, out, config):
    private = Path(declaration["profile"]["roots"]["cache"])
    refs = RootRegistry({"private": private}, readonly=["private"])
    previous_path = refs.verify(config["reuse_materialization_ref"])
    previous = read(previous_path)
    if previous["format"] != "core036.analysis-native-tools.v2":
        raise ValueError("AnalysisMaterializationKind")
    for binary in previous["patched_binaries"]:
        path = Path(binary["path"])
        if (
            not path.is_relative_to(private / "analysis-toolchain")
            or digest(path) != binary["sha256"]
        ):
            raise ValueError("AnalysisMaterializedBinaryChanged")
    out.mkdir(parents=True, exist_ok=False)
    env = {**os.environ, **previous["environment"]}
    env.pop("LD_PRELOAD", None)
    env["LD_LIBRARY_PATH"] = os.pathsep.join(
        [env["LD_LIBRARY_PATH"], *config["additional_library_directories"]]
    )
    env["CARGO_TARGET_DIR"] = str(out / "target")
    env["CHARON_CACHE_DIR"] = str(out / "charon-cache")
    tools = read(E / "native-environment-inputs-v2.json")["tools"]
    commands, statuses = [], {}

    def run(label, argv):
        folder = out / label
        folder.mkdir()
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                stdout=stdout,
                stderr=stderr,
                env=env,
                cwd=out,
                check=False,
                timeout=120,
            )
        row = {
            "label": label,
            "argv": argv,
            "exit_code": result.returncode,
            "stdout_sha256": digest(folder / "stdout.txt"),
            "stderr_sha256": digest(folder / "stderr.txt"),
        }
        write_once(folder / "result.json", row)
        commands.append(row)
        statuses[label] = result.returncode
        return result.returncode

    for number, directory in enumerate(config["additional_library_directories"]):
        root = str(Path(directory).parent)
        if not root.startswith("/nix/store/"):
            raise ValueError("AnalysisAdditionalLibraryRoot")
        for operation, suffix in [
            ("--query", "metadata"),
            ("--verify-path", "content"),
        ]:
            argv = [tools["nix-store"]["path"], operation]
            if operation == "--query":
                argv.append("--requisites")
            if run(f"runtime-{number}-{suffix}", [*argv, root]) != 0:
                raise ValueError("AnalysisAdditionalLibraryIntegrity")
        gcroot = (
            private / "gcroots" / declaration["record_id"] / ("runtime-" + str(number))
        )
        gcroot.parent.mkdir(parents=True, exist_ok=True)
        if (
            run(
                f"runtime-{number}-gcroot",
                [
                    tools["nix-store"]["path"],
                    "--option",
                    "builders",
                    "",
                    "--option",
                    "substitute",
                    "false",
                    "--max-jobs",
                    "0",
                    "--realise",
                    root,
                    "--add-root",
                    str(gcroot),
                ],
            )
            != 0
        ):
            raise ValueError("AnalysisAdditionalLibraryGCRoot")
    paths = {row["name"]: row["path"] for row in previous["patched_binaries"]}
    for label, argv in [
        ("rustc-version", [paths["rustc"], "-vV"]),
        ("cargo-version", [paths["cargo"], "--version"]),
        ("rustc-sysroot", [paths["rustc"], "--print=sysroot"]),
        ("aeneas-version", [paths["aeneas"], "-version"]),
        ("charon-version", [paths["charon"], "version"]),
        ("charon-toolchain", [paths["charon"], "toolchain-version"]),
        ("driver-version", [paths["charon-driver"], "rustc", "--version"]),
    ]:
        run(label, argv)
    for label, expected in (
        ("aeneas-version", "1dc8ad3"),
        ("charon-version", "454586e"),
        ("charon-toolchain", "nightly-2026-09-17"),
        ("rustc-version", "1.100.0-nightly"),
        ("driver-version", "1.100.0-nightly"),
    ):
        if (
            statuses[label] == 0
            and expected not in (out / label / "stdout.txt").read_text()
        ):
            statuses[label + "-identity"] = 1
    source = out / "sanity.rs"
    write_once(
        source, b"#![forbid(unsafe_code)]\npub fn identity(value:u64)->u64 { value }\n"
    )
    if statuses["rustc-version"] == 0:
        run(
            "rustc-library-smoke",
            [
                paths["rustc"],
                "--edition=2024",
                "--crate-type=lib",
                "--crate-name=core036_analysis_sanity",
                str(source),
                "-o",
                str(out / "libsanity.rlib"),
            ],
        )
    result = {
        **previous,
        "source_subject_ref": declaration["source_subject_ref"],
        "environment": {key: env[key] for key in previous["environment"]},
        "commands": commands,
        "statuses": statuses,
        "materialization_input_ref": config["reuse_materialization_ref"],
        "scope": "actual unchanged private tool materialization plus checked/pinned zlib closure; working version/compiler probes are separate from extraction and analysis Lean readiness",
        "analysis_ready": False,
    }
    write_once(out / "result.json", result)
    return 0 if all(value == 0 for value in statuses.values()) else 1
