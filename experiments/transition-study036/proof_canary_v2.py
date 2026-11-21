"""Actual helper extraction/kernel and mutation controls; never Core proof closure."""

import os
import subprocess
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2

E = Path(__file__).resolve().parent
R = E.parents[1]
IDENTITY = b"#![forbid(unsafe_code)]\npub fn identity(value:u64)->u64 { value }\n"


def validate_axiom_inventory_v2(rows, *, allowed):
    if not isinstance(allowed, dict) or not all(
        isinstance(k, str) and k and isinstance(v, str) and v
        for k, v in allowed.items()
    ):
        raise ValueError("AxiomExpectedInventory")
    if not isinstance(rows, list):
        raise ValueError("AxiomActualInventory")
    seen = set()
    for row in rows:
        if (
            not isinstance(row, dict)
            or set(row) != {"name", "type"}
            or not isinstance(row["name"], str)
            or not isinstance(row["type"], str)
        ):
            raise ValueError("AxiomDeclarationShape")
        name = row["name"]
        if name in seen or name not in allowed or row["type"] != allowed[name]:
            raise ValueError("AxiomNameOrTypeNotExpected")
        seen.add(name)
    return True


def validate_helper_binding_v2(actual, expected):
    keys = {"source_sha256", "cfg_sha256", "generated_sha256"}
    if set(actual) != keys or set(expected) != keys:
        raise ValueError("HelperContextShape")
    for key, label in [
        ("source_sha256", "HelperSourceChanged"),
        ("cfg_sha256", "HelperCfgChanged"),
        ("generated_sha256", "HelperGeneratedBodyChanged"),
    ]:
        if actual[key] != expected[key]:
            raise ValueError(label)
    return True


def check_fresh_helper_canary_v2(*, source, out):
    declaration_path = os.environ.get("CORE036_PROOF_CONTROL_DECLARATION")
    if declaration_path is None:
        raise ValueError("DeclaredProofControlRequired")
    d = read(declaration_path)
    if d["stage"] != "NATIVE" or d["slots"] != ["proof-canary-controls"]:
        raise ValueError("FixedProofControlStage")
    P = Path(d["profile"]["roots"]["cache"])
    W = R / "specs/036-core-transition-feasibility/evidence/v2" / d["work_id"]
    refs = RootRegistry(
        {"repository": R, "private": P, "work": W},
        readonly=["repository", "private", "work"],
    )
    source = Path(source)
    if source.is_symlink() or source.read_bytes() != IDENTITY:
        raise ValueError("HelperCanaryExactFixtureRequired")
    source_hash = digest(source)
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    control = P / "proof-canary-controls" / d["record_id"]
    control.mkdir(parents=True, exist_ok=False)
    write_once(control / "supplied-source.rs", source.read_bytes())
    positive = P / "analysis-canary" / d["record_id"]
    config = read(E / "analysis-canary-inputs-v2.json")
    native = refs.read(config["rust_ref"])
    analysis = refs.read(config["lean_ref"])
    cache = refs.read(config["cache_ref"])
    paths = {row["name"]: row["path"] for row in native["patched_binaries"]}
    sdk = Path(analysis["sdk"])
    backend = Path(cache["backend"])
    python = read(E / "toolchain.json")["tools"]["python"]["path"]
    rust_env = {
        **os.environ,
        **native["environment"],
        "CHARON_CACHE_DIR": str(control / "charon-cache"),
    }
    for key in ["RUSTC_WRAPPER", "RUSTC_WORKSPACE_WRAPPER", "LD_PRELOAD"]:
        rust_env.pop(key, None)
    base_lean = {
        **os.environ,
        **analysis["environment"],
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "GIT_OPTIONAL_LOCKS": "0",
        "MATHLIB_NO_CACHE_ON_UPDATE": "1",
        "GIT_CONFIG_NOSYSTEM": "1",
        "GIT_CONFIG_GLOBAL": os.devnull,
    }
    base_lean.pop("LD_PRELOAD", None)
    commands = []

    def run(label, argv, *, env, cwd, seconds=300, expected_zero=True):
        folder = control / "commands" / label
        folder.mkdir(parents=True)
        with (
            (folder / "stdout.txt").open("xb") as stdout,
            (folder / "stderr.txt").open("xb") as stderr,
        ):
            child = subprocess.run(
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
            exit_code=child.returncode,
            stdout_sha256=digest(folder / "stdout.txt"),
            stderr_sha256=digest(folder / "stderr.txt"),
        )
        write_once(folder / "result.json", row)
        commands.append(row)
        if expected_zero and child.returncode != 0:
            raise ValueError("ProofControlPrerequisite:" + label)
        return child.returncode, folder

    run(
        "positive-actual-pipeline",
        [
            python,
            str(E / "analysis_canary_probe.py"),
            "--declaration",
            str(declaration_path),
            "--out",
            str(positive),
        ],
        env=os.environ.copy(),
        cwd=R,
        seconds=1800,
    )
    result = read(positive / "result.json")
    if (
        result["helper_status"] != "freshly_kernel_checked"
        or result["native_general_correspondence"] != "unestablished"
        or result["feature_complete"] is not False
        or result["rust_source_sha256"] != source_hash
        or (positive / "identity.rs").read_bytes() != IDENTITY
    ):
        raise ValueError("ProofControlPositiveSubject")
    original_generated = positive / "project/Identity.lean"
    original_proof = (positive / "project/ProofRoot.lean").read_bytes()
    original_audit = (positive / "project/Audit.lean").read_bytes()
    generated_hash = digest(original_generated)
    rejected = []
    cfg_base = [
        paths["rustc"],
        "--print",
        "cfg",
        "--edition=2024",
        "--crate-type=lib",
        "--crate-name=core036_identity",
    ]
    _, good = run("cfg-expected", cfg_base, env=rust_env, cwd=control)
    expected_context = dict(
        source_sha256=source_hash,
        cfg_sha256=digest(good / "stdout.txt"),
        generated_sha256=generated_hash,
    )
    validate_helper_binding_v2(
        dict(
            source_sha256=digest(positive / "identity.rs"),
            cfg_sha256=digest(good / "stdout.txt"),
            generated_sha256=digest(original_generated),
        ),
        expected_context,
    )

    def reject_context(actual, wanted):
        try:
            validate_helper_binding_v2(actual, expected_context)
        except ValueError as error:
            if str(error) != wanted:
                raise ValueError("HelperMutationWrongBoundary") from error
        else:
            raise ValueError("HelperMutationUnexpectedContextAcceptance")

    def project(name, generated):
        root = control / "mutants" / name
        project = root / "project"
        compiled = root / "compiled"
        project.mkdir(parents=True)
        compiled.mkdir()
        write_once(project / "Identity.lean", generated)
        write_once(project / "ProofRoot.lean", original_proof)
        write_once(project / "Audit.lean", original_audit)
        return root, project, compiled

    def lean(name, module, project, compiled, *, expected_zero=True):
        env = {**base_lean, "LEAN_PATH": str(compiled)}
        return run(
            name,
            [
                str(sdk / "bin/lake"),
                "--no-build",
                "env",
                str(sdk / "bin/lean"),
                "-j1",
                "-s131072",
                "-M4096",
                "-R",
                str(project),
                "-o",
                str(compiled / (module + ".olean")),
                str(project / (module + ".lean")),
            ],
            env=env,
            cwd=backend,
            expected_zero=expected_zero,
        )

    # A real source mutation is freshly extracted and translated. The exact
    # original identity theorem must then fail on the generated constant body.
    mutant = control / "source_mutant.rs"
    write_once(
        mutant, b"#![forbid(unsafe_code)]\npub fn identity(_value:u64)->u64 { 0 }\n"
    )
    llbc = control / "source_mutant.llbc"
    translated = control / "source-generated"
    translated.mkdir()
    run(
        "source-extract",
        [
            paths["charon"],
            "rustc",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--dest-file",
            str(llbc),
            "--",
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_identity",
            str(mutant),
        ],
        env=rust_env,
        cwd=control,
    )
    run(
        "source-translate",
        [paths["aeneas"], "-backend", "lean", "-dest", str(translated), str(llbc)],
        env=rust_env,
        cwd=control,
    )
    actual = list(translated.glob("*.lean"))
    if len(actual) != 1 or digest(mutant) == source_hash:
        raise ValueError("SourceMutationNotActivated")
    _, proj, obj = project("source", actual[0].read_bytes())
    lean("source-generated", "Identity", proj, obj)
    code, log = lean("source-theorem", "ProofRoot", proj, obj, expected_zero=False)
    if code == 0:
        raise ValueError("SourceMutationUnexpectedProof")
    reject_context(
        {
            **expected_context,
            "source_sha256": digest(mutant),
            "generated_sha256": digest(actual[0]),
        },
        "HelperSourceChanged",
    )
    rejected.append("source")
    # Capture two real compiler cfgs and really extract under the changed cfg.
    _, bad = run(
        "cfg-mutated",
        [*cfg_base, "--cfg", "core036_bad_cfg"],
        env=rust_env,
        cwd=control,
    )
    cfg_llbc = control / "cfg_mutant.llbc"
    run(
        "cfg-extract",
        [
            paths["charon"],
            "rustc",
            "--preset",
            "aeneas",
            "--sysroot",
            "default",
            "--dest-file",
            str(cfg_llbc),
            "--",
            "--crate-type=lib",
            "--edition=2024",
            "--crate-name=core036_identity",
            "--cfg",
            "core036_bad_cfg",
            str(positive / "identity.rs"),
        ],
        env=rust_env,
        cwd=control,
    )
    if (good / "stdout.txt").read_bytes() == (
        bad / "stdout.txt"
    ).read_bytes() or "core036_bad_cfg" not in (bad / "stdout.txt").read_text():
        raise ValueError("CfgMutationNotActivated")
    reject_context(
        {**expected_context, "cfg_sha256": digest(bad / "stdout.txt")},
        "HelperCfgChanged",
    )
    rejected.append("cfg")
    # Real generated-body substitution, while keeping the expected source and
    # theorem fixed. Freshly compile that body and observe the proof failure.
    body = original_generated.read_bytes()
    if body.count(b"ok value") != 1:
        raise ValueError("GeneratedMutationExactPoint")
    _, proj, obj = project("generated_body", body.replace(b"ok value", b"ok 0#u64"))
    if digest(proj / "Identity.lean") == generated_hash:
        raise ValueError("GeneratedMutationNotActivated")
    lean("body-generated", "Identity", proj, obj)
    code, _ = lean("body-theorem", "ProofRoot", proj, obj, expected_zero=False)
    if code == 0:
        raise ValueError("GeneratedBodyUnexpectedProof")
    reject_context(
        {**expected_context, "generated_sha256": digest(proj / "Identity.lean")},
        "HelperGeneratedBodyChanged",
    )
    rejected.append("generated_body")
    # These two mutants import the unmodified actual generated module.
    _, proj, obj = project("expected_type", body)
    lean("type-generated", "Identity", proj, obj)
    lean("type-proof", "ProofRoot", proj, obj)
    audit = original_audit.decode()
    needle = "core036_identity.identity value = Aeneas.Std.Result.ok value))"
    if audit.count(needle) != 1:
        raise ValueError("ExpectedTypeMutationPoint")
    (proj / "Audit.lean").write_text(
        audit.replace(
            needle,
            "core036_identity.identity value = Aeneas.Std.Result.ok (0 : Aeneas.Std.U64)))",
        )
    )
    code, log = lean("type-audit", "Audit", proj, obj, expected_zero=False)
    if (
        code == 0
        or "Wrong expected theorem type" not in (log / "stdout.txt").read_text()
    ):
        raise ValueError("ExpectedTypeMutationWrongRejection")
    rejected.append("expected_type")
    _, proj, obj = project("equivalence_axiom", body)
    lean("axiom-generated", "Identity", proj, obj)
    (proj / "ProofRoot.lean").write_text(
        "module\npublic import Identity\n@[expose] public section\naxiom nativeProjectionEqualsModel : (value : Aeneas.Std.U64) → core036_identity.identity value = Aeneas.Std.Result.ok value\ntheorem core036_identity_correct (value : Aeneas.Std.U64) : core036_identity.identity value = Aeneas.Std.Result.ok value := nativeProjectionEqualsModel value\n"
    )
    lean("axiom-proof", "ProofRoot", proj, obj)
    code, log = lean("axiom-audit", "Audit", proj, obj, expected_zero=False)
    if (
        code == 0
        or "Unexpected transitive axiom" not in (log / "stdout.txt").read_text()
    ):
        raise ValueError("AxiomMutationWrongRejection")
    rejected.append("equivalence_axiom")
    if digest(original_generated) != generated_hash or digest(source) != source_hash:
        raise ValueError("PositiveHelperOrSuppliedSourceMutated")
    final = dict(
        format="core036.helper-controls.v2",
        source_subject_ref=d["source_subject_ref"],
        helper_status="freshly_kernel_checked",
        actual_mutation_rejections=rejected,
        feature_native_status="unestablished",
        feature_complete=False,
        commands=commands,
        positive_result_ref=refs.reference(
            "private", str((positive / "result.json").relative_to(P))
        ),
        supplied_source_sha256=source_hash,
        scope="One actual Rust identity helper and real source/cfg/generated-body/type/domain-axiom controls only; no Core bridge or feature closure.",
        product_adoption="unactivated",
    )
    write_once(control / "result.json", final)
    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)
    write_once(
        out / "result.json",
        dict(
            helper_status=final["helper_status"],
            actual_mutation_rejections=rejected,
            feature_native_status="unestablished",
            feature_complete=False,
            retained_result_ref=refs.reference(
                "private", str((control / "result.json").relative_to(P))
            ),
        ),
    )
    return final
