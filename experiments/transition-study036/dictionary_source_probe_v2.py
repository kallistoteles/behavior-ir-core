"""Parse the actual proposed OCaml source patch with the bound OCaml compiler."""

from pathlib import Path

from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command
from recursive_dictionary_source_v2 import checked_lowering


def run_probe(refs, config, declaration, out):
    base = {
        "format",
        "dependencies_ref",
        "dependencies_checkpoint_ref",
        "source_ref",
        "source_checkpoint_ref",
        "repair_patch_ref",
        "build_cache_checkpoint_ref",
        "frontend_binding_ref",
    }
    buffer_mode = "mutable_buffer_source_probe_ref" in config
    never_mode = "never_return_source_probe_ref" in config
    unit_mode = "unit_constant_source_probe_ref" in config
    mutable_mode = "mutable_read_source_probe_ref" in config
    slice_mode = "slice_metadata_source_probe_ref" in config
    probe_key = (
        "slice_metadata_source_probe_ref"
        if slice_mode
        else "dictionary_source_probe_ref"
    )
    if unit_mode:
        probe_key = "unit_constant_source_probe_ref"
    if mutable_mode:
        probe_key = "mutable_read_source_probe_ref"
    if buffer_mode:
        probe_key = "mutable_buffer_source_probe_ref"
    if never_mode:
        probe_key = "never_return_source_probe_ref"
    if (
        set(config) != base | {probe_key}
        or config["format"] != "core036.nonpos-translator-inputs.v2"
    ):
        raise ValueError("DictionarySourceProbeConfig")
    if (
        out.exists()
        or out != refs.roots["private"] / "nonpos-translator" / declaration["record_id"]
    ):
        raise ValueError("DictionarySourceProbeOwnership")
    if never_mode:
        from never_return_source_v2 import checked_sources

        binding, changes = checked_sources(refs, config[probe_key])
    elif buffer_mode:
        from mutable_buffer_source_v2 import checked_sources

        binding, changes = checked_sources(refs, config[probe_key])
    elif mutable_mode:
        from mutable_read_source_v2 import checked_sources

        binding, changes = checked_sources(refs, config[probe_key])
    elif unit_mode:
        from unit_constant_source_v2 import checked_sources

        binding, changes = checked_sources(refs, config[probe_key])
    elif slice_mode:
        from slice_metadata_source_v2 import checked_sources

        binding, changes = checked_sources(refs, config[probe_key])
    else:
        binding, changes = checked_lowering(refs, config[probe_key])
    cp_path = refs.verify(config["dependencies_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(config["dependencies_checkpoint_ref"])
    dependencies = refs.read(config["dependencies_ref"])
    if (
        cp["stage_outcome"] != "succeeded"
        or cp["source_validation_error"] is not None
        or dependencies["dependencies_installed"] is not True
    ):
        raise ValueError("DictionarySourceProbeCompilerPrerequisite")
    compiler = refs.read(dependencies["compiler_ref"])
    tool = Path(compiler["ocamlc"])
    if digest(tool) != compiler["ocamlc_sha256"]:
        raise ValueError("DictionarySourceProbeCompilerIdentity")
    out.mkdir(parents=True)
    source = out / "prospective-source"
    commands = []
    for name, raw in changes.items():
        path = source / name
        path.parent.mkdir(parents=True, exist_ok=True)
        with path.open("xb") as stream:
            stream.write(raw)
        commands.append(
            run_logged_command(
                out / "commands" / name.replace("/", "-"),
                [
                    str(tool),
                    "-stop-after",
                    "parsing",
                    "-intf" if path.suffix == ".mli" else "-impl",
                    str(path),
                ],
                cwd=out,
                env={"PATH": str(tool.parent)},
                seconds=30,
                metadata=dict(label=name, expected_exit_code=0),
            )
        )
    for name, reference in binding["source_refs"].items():
        refs.verify(reference)
        if (source / name).read_bytes() != changes[name]:
            raise ValueError("DictionarySourceProbeMutatedSource")
    passed = all(row["exit_code"] == 0 and not row["timed_out"] for row in commands)
    write_once(
        out / "result.json",
        dict(
            format="core036.never-return-source-parse-result.v2"
            if never_mode
            else "core036.mutable-buffer-source-parse-result.v2"
            if buffer_mode
            else "core036.mutable-read-source-parse-result.v2"
            if mutable_mode
            else "core036.unit-constant-source-parse-result.v2"
            if unit_mode
            else "core036.slice-metadata-source-parse-result.v2"
            if slice_mode
            else "core036.dictionary-source-parse-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            binding_ref=config[probe_key],
            commands=commands,
            compiler_ref=dependencies["compiler_ref"],
            prospective_sources={
                name: dict(bytes=len(raw), sha256=digest(source / name))
                for name, raw in changes.items()
            },
            source_syntax_checked=passed,
            source_typecheck="not_run",
            translator_build="not_run",
            native_proof="unestablished",
            feature_complete=False,
            original_sources_unchanged=True,
            scope="OCaml parse only; neither generated Lean nor compiler/source/native semantic preservation",
        ),
    )
    return passed
