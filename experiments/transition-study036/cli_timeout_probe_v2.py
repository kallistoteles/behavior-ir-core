"""Diagnose the actual canonical CLI timeout fixture, without accepting a gate."""

import argparse
import os
import shlex
import subprocess
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from quality_v2 import validate_warm_gate_cache_v2

E = Path(__file__).resolve().parent
R = E.parents[1]

DRIVER = r"""import hashlib,json,os,re,shutil,subprocess,sys,time
from pathlib import Path
out,core,cli,test,base_python=map(Path,sys.argv[1:])
original=core/'crates/behavior-cli/tests/cli_trusted_governance.rs'
source=original.read_text()
pattern=r'let source = format!\(\s*("(?:[^"\\]|\\.)*")\s*\);'
matched=re.findall(pattern,source)
if len(matched)!=1:raise ValueError('ExactOriginalFakeSolverSource')
solver_template=json.loads(matched[0])
if solver_template.count('{counter:?}')!=1 or solver_template.count('{mode_text:?}')!=1:raise ValueError('OriginalFakeSolverBindings')
def profile_hash(doc):
 body={k:v for k,v in doc.items() if k!='hash'}
 raw=json.dumps(body,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
 return 'sha256:'+hashlib.sha256(b'behavior.profile.v1\0'+raw).hexdigest()
profile=json.loads((core/'tests/fixtures/governance-v2/profile.json').read_text())
if profile_hash(profile)!=profile['hash']:raise ValueError('ProbeCanonicalProfileHash')
profile['wall_clock_guard_ms']=100
profile['hash']=profile_hash(profile)
alias=out/'standalone-bin';alias.mkdir()
(alias/'python3').symlink_to(base_python)
rows=[]
def call(folder,argv,env):
 folder.mkdir(parents=True)
 start=time.monotonic_ns()
 with (folder/'stdout.txt').open('xb') as stdout,(folder/'stderr.txt').open('xb') as stderr:
  child=subprocess.run(list(map(str,argv)),cwd=core,env=env,stdout=stdout,stderr=stderr,timeout=120,check=False)
 return {'argv':list(map(str,argv)),'exit_code':child.returncode,'elapsed_ns':time.monotonic_ns()-start,'stdout_sha256':hashlib.sha256((folder/'stdout.txt').read_bytes()).hexdigest(),'stderr_sha256':hashlib.sha256((folder/'stderr.txt').read_bytes()).hexdigest()}
for variant in ['shell-default','standalone-python','shell-no-user-site']:
 env=dict(os.environ)
 if variant=='standalone-python':env['PATH']=str(alias)+os.pathsep+env['PATH']
 if variant=='shell-no-user-site':env['PYTHONNOUSERSITE']='1'
 root=out/variant;root.mkdir()
 interpreter=shutil.which('python3',path=env['PATH'])
 version=call(root/'python-version',[interpreter,'-c','import sys; print(sys.version); print(sys.executable); print(sys.prefix); print(sys.path)'],env)
 test_results=[]
 for repeat in range(10):
  test_results.append(call(root/f'original-test-{repeat:02}',[test,'--exact','timeout_and_nonreproducible_completed_prefix_preserve_existing_out_and_emit_no_envelope','--test-threads=1','--nocapture'],env))
 startup=[]
 for repeat in range(20):
  startup.append(call(root/f'python-startup-{repeat:02}',[interpreter,'-c','import sys,time,pathlib;print(time.monotonic_ns())'],env))
 cases=[]
 for mode in ['timeout','transport','prefix_timeout','prefix_transport']:
  case=root/mode;case.mkdir()
  counter=case/'counter'
  solver=case/'solver.py'
  program=solver_template.replace('{counter:?}',json.dumps(str(counter))).replace('{mode_text:?}',json.dumps(mode))
  solver.write_text(program);solver.chmod(0o755)
  prof=case/'profile.json';prof.write_text(json.dumps(profile,separators=(',',':')))
  envelope=case/'envelope.json';envelope.write_text('previous complete artifact\n')
  actual=call(case/'cli',[cli,'governance','verify',core/'tests/fixtures/soundness/module.json','--profile',prof,'--seed',core/'tests/fixtures/governance-v2/verifier.seed','--out',envelope],{**env,'BEHAVIOR_Z3':str(solver)})
  actual.update(mode=mode,counter_value=counter.read_text() if counter.exists() else None,original_output_preserved=envelope.read_text()=='previous complete artifact\n',fake_solver_sha256=hashlib.sha256(solver.read_bytes()).hexdigest())
  cases.append(actual)
 rows.append(dict(variant=variant,python_path=interpreter,python_version=version,original_tests=test_results,python_startup=startup,manual_cases=cases))
(out/'observations.json').write_text(json.dumps(rows,indent=2)+'\n')
"""


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    d = read(args.declaration)
    if d["stage"] != "NATIVE" or d["slots"] != ["quality-cli-timeout-probe"]:
        raise ValueError("CliProbeDeclaredSlot")
    private = Path(d["profile"]["roots"]["cache"])
    work = R / "specs/036-core-transition-feasibility/evidence/v2" / d["work_id"]
    refs = RootRegistry(
        {"repository": R, "private": private, "work": work},
        readonly=["repository", "private", "work"],
    )
    config = read(E / "cli-timeout-probe-inputs-v2.json")
    if (
        set(config)
        != {
            "format",
            "quality_checkpoint_ref",
            "quality_result_ref",
            "retention_index_ref",
            "original_test_ref",
            "cli_ref",
            "test_executable_ref",
        }
        or config["format"] != "core036.cli-timeout-probe-inputs.v2"
    ):
        raise ValueError("CliProbeInputShape")
    cp = refs.verify(config["quality_checkpoint_ref"])
    RootRegistry({"attempt": cp.parent}).verify_closed("attempt")
    if refs.read(config["quality_checkpoint_ref"])["stage_outcome"] != "failed":
        raise ValueError("CliProbeExpectedActualQualityFailure")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    core = Path(prepared["sources"]["core-reuse"]["path"])
    source = refs.verify(config["original_test_ref"])
    if source != core / "crates/behavior-cli/tests/cli_trusted_governance.rs":
        raise ValueError("CliProbeActualSource")
    cli = refs.verify(config["cli_ref"])
    test = refs.verify(config["test_executable_ref"])
    quality = refs.read(config["quality_result_ref"])
    target = validate_warm_gate_cache_v2(
        registry=refs,
        checkpoint_ref=config["quality_checkpoint_ref"],
        result_ref=config["quality_result_ref"],
        private_root=private,
        work_root=work,
        expected_source_inventory_sha256=digest(core / "subject-inventory-v2.json"),
        expected_script_sha256=digest(core / "scripts/gates.sh"),
        expected_cli_sha256=quality["cli_sha256"],
    )
    index_path = refs.verify(config["retention_index_ref"])
    if (
        index_path
        != private / "quality" / cp.parent.name / "retained-cache-executables.json"
    ):
        raise ValueError("CliProbeActualRetainedIndex")
    retained = refs.read(config["retention_index_ref"])
    cli_rows = [row for row in retained if row["original_path"] == "debug/behavior"]
    test_rows = [
        row
        for row in retained
        if row["original_path"].startswith("debug/deps/cli_trusted_governance-")
    ]
    if len(cli_rows) != 1 or len(test_rows) != 1:
        raise ValueError("CliProbeActualEmittedArtifactCount")
    if (
        refs.verify(cli_rows[0]["retained_ref"]) != cli
        or refs.verify(test_rows[0]["retained_ref"]) != test
    ):
        raise ValueError("CliProbeActualRetainedArtifact")
    # The Rust original test embeds this Cargo path. Keep its identity explicit.
    for row in [*cli_rows, *test_rows]:
        live = target / row["original_path"]
        if digest(live) != row["retained_ref"]["sha256"]:
            raise ValueError("CliProbeCompileTimeExecutableChanged")
    for path in [cli, test]:
        with path.open("rb") as stream:
            if stream.read(4) != b"\x7fELF":
                raise ValueError("CliProbeActualELF")
    out = Path(args.out)
    if out != private / "quality-cli-probe" / d["record_id"] or out.exists():
        raise ValueError("CliProbeOutput")
    out.mkdir(parents=True)
    write_once(out / "driver.py", DRIVER.encode())
    tools = read(E / "toolchain.json")["tools"]
    for key in ["python", "nix-shell"]:
        if digest(tools[key]["path"]) != tools[key]["sha256"]:
            raise ValueError("CliProbePinnedTools")
    argv = [
        tools["nix-shell"]["path"],
        str(E / "shell.nix"),
        "--run",
        shlex.join(
            [
                tools["python"]["path"],
                str(out / "driver.py"),
                str(out),
                str(core),
                str(cli),
                str(test),
                tools["python"]["path"],
            ]
        ),
    ]
    env = {
        **os.environ,
        "TMPDIR": str(private / "tmp"),
        "RUST_TEST_THREADS": "1",
        "CARGO_NET_OFFLINE": "true",
        "CARGO_HOME": str(private / "cargo"),
    }
    with (
        (out / "stdout.txt").open("xb") as stdout,
        (out / "stderr.txt").open("xb") as stderr,
    ):
        child = subprocess.run(
            argv,
            cwd=core,
            env=env,
            stdout=stdout,
            stderr=stderr,
            timeout=600,
            check=False,
        )
    for key in ["original_test_ref", "cli_ref", "test_executable_ref"]:
        refs.verify(config[key])
    write_once(
        out / "result.json",
        dict(
            format="core036.cli-timeout-probe.v2",
            source_subject_ref=d["source_subject_ref"],
            inputs=config,
            argv=argv,
            exit_code=child.returncode,
            stdout_sha256=digest(out / "stdout.txt"),
            stderr_sha256=digest(out / "stderr.txt"),
            observations_ref=refs.reference(
                "private", str((out / "observations.json").relative_to(private))
            )
            if child.returncode == 0
            else None,
            scope="Actual original failed test plus exact original fake-solver cases under three explicit Python environments, ten original-test repetitions each and twenty startup observations each. Diagnostic only; no complete quality, native proof or primary timing claim.",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return child.returncode


if __name__ == "__main__":
    raise SystemExit(main())
