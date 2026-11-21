"""Compile only the source-bound four-file translator backport in a fresh tree."""

import argparse
import hashlib
import os
from pathlib import Path
import shutil
import subprocess
import time

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from nonpos_opam_plan_v2 import plan_environment
from nonpos_source_prepare_v2 import PINNED, CHARON, PATCH_DIGEST, source_inventory

E = Path(__file__).resolve().parent
R = E.parents[1]
REPAIR_DIGEST = "4399e55bab653e30ccc061ce45b5939199704553cbc05cc72ae85c398023b102"
REPAIRED = {
    "Translate.ml": "e9cecbb819fc6c62d9173501d0c18625a3b2a990683c3610ba64e2069dbaaa2b",
    "extract/Extract.ml": "44c0110a8242f815c0d550cc0eb86e25ef2efa9d7da723f6e9ad94da62069b66",
}
VERSION = PINNED + "+core036-nonpos-" + PATCH_DIGEST[:12] + "-" + REPAIR_DIGEST[:12]


def repair_sources(project):
    needle = "TraitDeclId.TreeMap.find_opt id ctx.trans_trait_decls"
    replacements = {}
    for name in REPAIRED:
        raw = (project / name).read_text()
        if raw.count(needle) != 1:
            raise ValueError("NonposTranslatorRepairContext")
        replacements[name] = raw.replace(
            needle, "TraitDeclId.Map.find_opt id ctx.trans_trait_decls"
        )
        if name == "Translate.ml":
            if raw.count("TraitDeclId.TreeMap.exists") != 1:
                raise ValueError("NonposTranslatorRepairExistsContext")
            replacements[name] = replacements[name].replace(
                "TraitDeclId.TreeMap.exists", "TraitDeclId.Map.exists"
            )
    for name, raw in replacements.items():
        (project / name).write_text(raw)
    return {name: digest(project / name) for name in replacements}


def materialize_sources(roots, inventory, target):
    roots = {key: Path(value) for key, value in roots.items()}
    if (
        source_inventory(roots["aeneas"]) != inventory["candidate_aeneas"]
        or source_inventory(roots["charon"]) != inventory["original"]["charon"]
    ):
        raise ValueError("NonposTranslatorSourceChanged")
    link = roots["aeneas"] / "src/charon"
    if (
        not link.is_symlink()
        or os.readlink(link) != "../charon"
        or (roots["aeneas"] / "charon").exists()
    ):
        raise ValueError("NonposTranslatorSourceLayout")
    target.mkdir(parents=True, exist_ok=False)
    aeneas = target / "aeneas"
    shutil.copytree(
        roots["aeneas"], aeneas, symlinks=True, ignore=shutil.ignore_patterns(".git")
    )
    if source_inventory(aeneas) != inventory["candidate_aeneas"]:
        raise ValueError("NonposTranslatorCopiedSource")
    shutil.copytree(
        roots["charon"],
        aeneas / "charon",
        symlinks=True,
        ignore=shutil.ignore_patterns(".git"),
    )
    if (
        source_inventory(aeneas / "charon") != inventory["original"]["charon"]
        or (aeneas / "src/charon").resolve() != aeneas / "charon"
    ):
        raise ValueError("NonposTranslatorCopiedCharon")
    return aeneas / "src"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    name, out = declaration["record_id"], Path(args.out)
    if out != private / "nonpos-translator" / name or out.exists():
        raise ValueError("NonposTranslatorOutputOwnership")
    config = read(E / "nonpos-translator-inputs-v2.json")
    if (
        "dictionary_source_probe_ref" in config
        or "slice_metadata_source_probe_ref" in config
        or "unit_constant_source_probe_ref" in config
        or "mutable_read_source_probe_ref" in config
        or "mutable_buffer_source_probe_ref" in config
        or "never_return_source_probe_ref" in config
    ):
        from dictionary_source_probe_v2 import run_probe

        if not run_probe(refs, config, declaration, out):
            raise ValueError("DictionarySourceParseFailed")
        return
    slice_binding_ref = config.get("slice_metadata_binding_ref")
    unit_binding_ref = config.get("unit_binding_ref")
    mutable_read_binding_ref = config.get("mutable_read_binding_ref")
    mutable_buffer_binding_ref = config.get("mutable_buffer_binding_ref")
    never_return_binding_ref = config.get("never_return_binding_ref")
    base_config = {
        key: value
        for key, value in config.items()
        if key
        not in {
            "slice_metadata_binding_ref",
            "unit_binding_ref",
            "mutable_read_binding_ref",
            "mutable_buffer_binding_ref",
            "never_return_binding_ref",
        }
    }
    if (
        set(base_config)
        not in (
            {
                "format",
                "dependencies_ref",
                "dependencies_checkpoint_ref",
                "source_ref",
                "source_checkpoint_ref",
                "repair_patch_ref",
                "build_cache_checkpoint_ref",
            },
            {
                "format",
                "dependencies_ref",
                "dependencies_checkpoint_ref",
                "source_ref",
                "source_checkpoint_ref",
                "repair_patch_ref",
                "build_cache_checkpoint_ref",
                "frontend_binding_ref",
            },
            {
                "format",
                "dependencies_ref",
                "dependencies_checkpoint_ref",
                "source_ref",
                "source_checkpoint_ref",
                "repair_patch_ref",
                "build_cache_checkpoint_ref",
                "frontend_binding_ref",
                "dictionary_binding_ref",
            },
        )
        or config["format"] != "core036.nonpos-translator-inputs.v2"
    ):
        raise ValueError("NonposTranslatorContext")
    for key, prefix in (
        ("dependencies", "nonpos-dependency-install"),
        ("source", "nonpos-source"),
    ):
        path = refs.verify(config[key + "_checkpoint_ref"])
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
        cp = refs.read(config[key + "_checkpoint_ref"])
        if (
            cp["stage_outcome"] != "succeeded"
            or refs.verify(config[key + "_ref"])
            != private / prefix / cp["attempt_id"] / "result.json"
        ):
            raise ValueError("NonposTranslatorPrerequisiteNotClosed")
    dependencies = refs.read(config["dependencies_ref"])
    prepared = refs.read(config["source_ref"])
    if (
        dependencies["dependencies_installed"] is not True
        or dependencies["smoke_result"] != "42"
        or prepared["source_prepared"] is not True
        or prepared["pinned_aeneas_commit"] != PINNED
        or prepared["pinned_charon_commit"] != CHARON
        or digest(refs.verify(prepared["patch_ref"])) != PATCH_DIGEST
    ):
        raise ValueError("NonposTranslatorPrerequisiteScope")
    inventory_path = refs.verify(config["source_ref"]).parent / "source-inventory.json"
    if digest(inventory_path) != prepared["source_inventory_sha256"]:
        raise ValueError("NonposTranslatorInventory")
    inventory = read(inventory_path)
    if digest(refs.verify(config["repair_patch_ref"])) != REPAIR_DIGEST:
        raise ValueError("NonposTranslatorRepairIdentity")
    roots = {key: Path(value) for key, value in prepared["source_roots"].items()}
    compiler = refs.read(dependencies["compiler_ref"])
    system = refs.read(dependencies["system_ref"])
    original_plan = refs.read(compiler["plan_ref"])
    tools = original_plan["tools"]
    for tool in tools.values():
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("NonposTranslatorToolBytes")
    prefix = Path(dependencies["compiler_prefix"])
    for key in ("dune", "ocamlfind"):
        if (
            Path(dependencies[key]) != prefix / "bin" / key
            or digest(dependencies[key]) != dependencies[key + "_sha256"]
        ):
            raise ValueError("NonposTranslatorBuildToolBytes")
    for key in ("ocamlc", "ocamlopt"):
        if digest(compiler[key]) != compiler[key + "_sha256"]:
            raise ValueError("NonposTranslatorCompilerBytes")
    if digest(system["pkg_config"]) != system["pkg_config_sha256"]:
        raise ValueError("NonposTranslatorPkgConfigBytes")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    scratch = (
        private / "disposable" / ("frontend-translator-" + name)
        if "frontend_binding_ref" in config
        else private / "tmp/nonpos-translator" / name
    )
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    project = materialize_sources(roots, inventory, scratch / "workspace")
    repaired = repair_sources(project)
    if repaired != REPAIRED:
        raise ValueError("NonposTranslatorRepairedSourceIdentity")
    expected_sizes = {name: (project / name).stat().st_size for name in repaired}
    frontend = None
    version_expected = VERSION
    if "frontend_binding_ref" in config:
        from frontend_source_support_v2 import checked_frontend

        frontend, changes = checked_frontend(refs, config["frontend_binding_ref"])
        for name, raw in changes.items():
            (project / name).write_bytes(raw)
            repaired[name] = digest(project / name)
            expected_sizes[name] = len(raw)
        # Annotation files account for229585085B in the bound292 cache.
        # Disable only their production in this fresh build; no old file changes.
        dune = project / "dune"
        dune_project = project / "dune-project"
        raw = dune.read_bytes()
        old = b" (release\n  (flags\n"
        if (
            raw.count(old) != 1
            or dune_project.read_bytes().count(b"(lang dune 3.7)") != 1
        ):
            raise ValueError("NonposFrontendBuildProfileContext")
        dune.write_bytes(
            raw.replace(old, b" (release\n  (bin_annot false)\n  (flags\n")
        )
        dune_project.write_bytes(
            dune_project.read_bytes().replace(b"(lang dune 3.7)", b"(lang dune 3.10)")
        )
        for name in ("dune", "dune-project"):
            repaired[name] = digest(project / name)
            expected_sizes[name] = (project / name).stat().st_size
        version_expected += "+frontend-" + frontend["patch_ref"]["sha256"][:12]
    dictionary = None
    if "dictionary_binding_ref" in config:
        from recursive_dictionary_source_v2 import checked_lowering

        dictionary, changes = checked_lowering(refs, config["dictionary_binding_ref"])
        if "parse_checkpoint_ref" not in dictionary:
            raise ValueError("DictionaryLoweringRequiresActualParse")
        parse_cp_path = refs.verify(dictionary["parse_checkpoint_ref"])
        baseline = read(parse_cp_path.parent / "child/receipt.json")
        planned_growth = 434616071 - 106199032 + 64 * 1024**2
        if (
            baseline["final_incremental_storage_bytes"]["cache"] + planned_growth
            > declaration["profile"]["limits"]["cache_bytes"]
        ):
            raise ValueError("DictionaryLoweringBuildHeadroom")
        for relative, reference in dictionary["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("DictionaryLoweringFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += "+dictionary-" + dictionary["patch_ref"]["sha256"][:12]
        # Bound351 whole build:434616071B, of which old292 has106199032B
        # of bytecode objects not requested by the native main.exe target.
        # Native proof/build remains prospective; actual limits still apply.
        usage = shutil.disk_usage(private)
        # The controller already observes the complete registered cache. This
        # local plan is recorded, not substituted for its live accounting.
        write_once(
            out / "dictionary-build-plan.json",
            dict(
                measured_prior_build_bytes=434616071,
                excluded_prior_cmo_bytes=106199032,
                planned_growth_bytes=434616071 - 106199032 + 64 * 1024**2,
                exclusion_policy="old cmt/cmti/cmo and main.exe; native target only",
                retained_binary_policy="new hardlink outside build tree, same bytes",
                actual_free_volume_bytes=usage.free,
                uncertainty="Dune may regenerate bytecode; actual unchanged resource caps supervise it",
            ),
        )
    slice_metadata = None
    if slice_binding_ref is not None:
        from slice_metadata_source_v2 import checked_sources

        slice_metadata, changes = checked_sources(
            refs, slice_binding_ref, require_parse=True
        )
        for relative, reference in slice_metadata["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("SliceMetadataFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += (
            "+slice-metadata-" + slice_metadata["patch_ref"]["sha256"][:12]
        )
    unit_constant = None
    if unit_binding_ref is not None:
        if slice_binding_ref is None:
            raise ValueError("UnitConstantRequiresMetadataBaseline")
        from unit_constant_source_v2 import checked_sources

        unit_constant, changes = checked_sources(
            refs, unit_binding_ref, require_parse=True
        )
        for relative, reference in unit_constant["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("UnitConstantFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += (
            "+unit-constant-" + unit_constant["patch_ref"]["sha256"][:12]
        )
    mutable_read = None
    if mutable_read_binding_ref is not None:
        if unit_binding_ref is None:
            raise ValueError("MutableReadRequiresUnitBaseline")
        from mutable_read_source_v2 import checked_sources

        mutable_read, changes = checked_sources(
            refs, mutable_read_binding_ref, require_parse=True
        )
        for relative, reference in mutable_read["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("MutableReadFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += "+read-receiver-" + mutable_read["patch_ref"]["sha256"][:12]
    mutable_buffer = None
    if mutable_buffer_binding_ref is not None:
        if mutable_read_binding_ref is None:
            raise ValueError("MutableBufferRequiresReceiverBaseline")
        from mutable_buffer_source_v2 import checked_sources

        mutable_buffer, changes = checked_sources(
            refs, mutable_buffer_binding_ref, require_parse=True
        )
        if mutable_buffer["receiver_source_ref"] != mutable_read_binding_ref:
            raise ValueError("MutableBufferDifferentReceiverBaseline")
        for relative, reference in mutable_buffer["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("MutableBufferFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += "+read-buffer-" + mutable_buffer["patch_ref"]["sha256"][:12]
    never_return = None
    if never_return_binding_ref is not None:
        if mutable_buffer_binding_ref is None:
            raise ValueError("NeverReturnRequiresBufferBaseline")
        from never_return_source_v2 import checked_sources

        never_return, changes = checked_sources(
            refs, never_return_binding_ref, require_parse=True
        )
        for relative, reference in never_return["source_refs"].items():
            if (project / relative).read_bytes() != refs.verify(reference).read_bytes():
                raise ValueError("NeverReturnFreshSourceMismatch")
        for relative, raw in changes.items():
            (project / relative).write_bytes(raw)
            repaired[relative] = digest(project / relative)
            expected_sizes[relative] = len(raw)
        version_expected += "+never-return-" + never_return["patch_ref"]["sha256"][:12]
    cache_cp_path = refs.verify(config["build_cache_checkpoint_ref"])
    RootRegistry({"attempt": cache_cp_path.parent}).verify_closed("attempt")
    cache_cp = refs.read(config["build_cache_checkpoint_ref"])
    cache_name = "a0292" if frontend is not None else "a0291"
    expected_cache_outcome = "succeeded" if frontend is not None else "failed"
    if (
        cache_cp["attempt_id"] != cache_name
        or cache_cp["stage_outcome"] != expected_cache_outcome
    ):
        raise ValueError("NonposTranslatorBuildCacheSource")
    prior_build = private / (
        "tmp/nonpos-translator/" + cache_name + "/workspace/aeneas/src/_build"
    )
    if not prior_build.is_dir() or prior_build.is_symlink():
        raise ValueError("NonposTranslatorBuildCacheRoot")

    def paced_copy(source, target):
        result = shutil.copy2(source, target)
        time.sleep(0.002)
        return result

    shutil.copytree(
        prior_build,
        project / "_build",
        symlinks=True,
        copy_function=paced_copy,
        ignore=(
            lambda folder, names: [
                name
                for name in names
                if (
                    name.endswith((".cmt", ".cmti"))
                    or (dictionary is not None and name.endswith(".cmo"))
                    or (Path(folder) == prior_build / "default" and name == "main.exe")
                )
            ]
        )
        if frontend is not None
        else None,
    )
    env = plan_environment(tools, scratch, os.environ)
    for key in list(env):
        if key.startswith(("OCAML", "CAML_", "PKG_CONFIG", "DUNE_CACHE")):
            env.pop(key)
    env.update(
        PATH=str(prefix / "bin")
        + os.pathsep
        + str(Path(system["pkg_config"]).parent)
        + os.pathsep
        + env["PATH"],
        OPAMROOT=dependencies["mutable_opamroot"],
        OPAMSWITCH="core036",
        DUNE_CACHE="disabled",
        XDG_CACHE_HOME=str(scratch / "cache"),
        XDG_CONFIG_HOME=str(scratch / "config"),
        LD_LIBRARY_PATH=system["gmp_library_directory"],
        AENEAS_VERSION=version_expected,
        **system["pkg_config_environment"],
    )
    commands = []

    def run(label, argv, seconds=300, cwd=project):
        folder = out / "commands" / label
        folder.mkdir(parents=True)
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=cwd,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=seconds,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            cwd=str(cwd),
            exit_code=result.returncode,
            stdout_sha256=digest(folder / "stdout.txt"),
            stderr_sha256=digest(folder / "stderr.txt"),
        )
        write_once(folder / "result.json", row)
        commands.append(row)
        if result.returncode:
            raise ValueError("NonposTranslatorCommand:" + label)
        return (folder / "stdout.txt").read_bytes()

    run(
        "build",
        [
            dependencies["dune"],
            "build",
            "--profile",
            "release",
            "-j",
            "1",
            "--display",
            "short",
            "main.exe",
        ],
        3000,
    )
    emitted = project / "_build/default/main.exe"
    for name, checksum in repaired.items():
        if name in {"dune", "dune-project"}:
            if digest(project / name) != checksum:
                raise ValueError("NonposTranslatorBuildConfigurationChanged")
            continue
        if digest(project / "_build/default" / name) != checksum:
            raise ValueError("NonposTranslatorDuneSourceIdentity")
    retained = scratch / "retained/aeneas"
    retained.parent.mkdir()
    if dictionary is not None:
        os.link(emitted, retained)
    else:
        shutil.copy2(emitted, retained)
    version = run("version", [str(retained), "-version"]).decode().strip()
    if version != "aeneas " + version_expected or digest(retained) != digest(emitted):
        raise ValueError("NonposTranslatorEmittedIdentity")
    run("help", [str(retained), "-help"])
    for key, expected in (
        ("aeneas", inventory["candidate_aeneas"]),
        ("charon", inventory["original"]["charon"]),
    ):
        if source_inventory(roots[key]) != expected:
            raise ValueError("NonposTranslatorOriginalMutated")
        copied_root = project.parent if key == "aeneas" else project.parent / "charon"
        for row in expected:
            path = copied_root / row["path"]
            repair_name = (
                row["path"][4:]
                if key == "aeneas" and row["path"].startswith("src/")
                else None
            )
            if row["kind"] == "symlink-text":
                if (
                    not path.is_symlink()
                    or hashlib.sha256(os.readlink(path).encode()).hexdigest()
                    != row["sha256"]
                ):
                    raise ValueError("NonposTranslatorCopiedLinkMutated")
            elif digest(path) != repaired.get(
                repair_name, row["sha256"]
            ) or path.stat().st_size != expected_sizes.get(repair_name, row["bytes"]):
                raise ValueError("NonposTranslatorCompiledSourceMutated")
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-translator.v2",
            source_subject_ref=declaration["source_subject_ref"],
            dependencies_ref=config["dependencies_ref"],
            source_ref=config["source_ref"],
            pinned_aeneas_commit=PINNED,
            pinned_charon_commit=CHARON,
            patch_sha256=PATCH_DIGEST,
            repair_patch_ref=config["repair_patch_ref"],
            repaired_sources=repaired,
            build_cache_checkpoint_ref=config["build_cache_checkpoint_ref"],
            frontend_binding_ref=config.get("frontend_binding_ref"),
            dictionary_binding_ref=config.get("dictionary_binding_ref"),
            slice_metadata_binding_ref=slice_binding_ref,
            unit_binding_ref=unit_binding_ref,
            mutable_read_binding_ref=mutable_read_binding_ref,
            mutable_buffer_binding_ref=mutable_buffer_binding_ref,
            never_return_binding_ref=never_return_binding_ref,
            dictionary_build_scope="prospective source lowering; native preservation unestablished"
            if dictionary is not None
            else None,
            build_annotation_policy=(
                "bin_annot false; excluded old cmt/cmti/cmo/main.exe; retained main hardlinked"
                if dictionary is not None
                else "bin_annot false; excluded old cmt/cmti/main.exe only"
                if frontend is not None
                else "unchanged"
            ),
            source_inventory_sha256=digest(inventory_path),
            commands=commands,
            executable=str(retained),
            executable_sha256=digest(retained),
            version=version,
            project=str(project),
            original_sources_unchanged=True,
            compiled_sources_match_declared_repair=True,
            new_translator_compiled=True,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
