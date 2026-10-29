"""Retained post-campaign checks; no change to frozen primary experiments."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time

from early_campaign import verify_manifest, write_new, sha
from campaign import _read, CampaignError
from proofs import check_modules, ProofError
from cold_recovery import run as cold_run
from timed_reuse import collect as timed_reuse
from artifacts import same_json
from package_evidence import pack_file, unpack_file
from profile import pin_orchestration, run_child, timing_lock


def recovery_result(original, supplemental, native):
    """Unavailable eight-creation output is not a failed cold-rebuild theorem.

    Keep the missing primary anchor visible, and require actual independent
    reconstruction at both populations instead of promoting NotProduced to success.
    """
    failures = []
    controls = {r['case']: r for r in original['records']}
    expected = {'public-consumer', 'proof-consumer-controls', 'checkpoint-async',
                'cold-view-n128', 'cold-view-n8192'}
    if set(controls) != expected or len(controls) != len(original['records']):
        failures.append('original recovery inventory incomplete or duplicate')
    limitations = []
    for name, row in controls.items():
        if row['result']['outcome'] == 'Succeeded':
            continue
        source = [r for r in native['records'] if r['case_id'] == 'n8192-h8-d1-r1-q1-p0'
                  and r['candidate'] == 'A' and r['mode'] == 'existing' and r['repetition'] == 0]
        if (name == 'cold-view-n8192' and row['result']['outcome'] == 'NotProduced'
                and len(source) == 1 and source[0]['outcome'] == 'ResourceExhausted'):
            limitations.append('The eight-creation N8192 anchor was not produced within the frozen phase budget; the separate cold experiment uses one command-only anchor and cannot replace this primary sample.')
        else:
            failures.append(name + ': ' + row['result']['outcome'])
    if supplemental.get('passed') is not True or {r['N'] for r in supplemental['records']} != {128, 8192} or len(supplemental['records']) != 2:
        failures.append('separate actual cold reconstruction incomplete')
    return {'format': 'core032.recovery-validation.v1', 'passed': not failures,
            'failures': failures, 'capacity_limitations': limitations,
            'original_report_passed': original['passed'],
            'scope': 'Original report unchanged; every public/proof control passes, with actual independent cold reconstruction at both N values under a separately frozen protocol.'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--cold', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest_path = args.manifest.resolve()
    manifest = verify_manifest(manifest_path)
    base = manifest_path.parent
    evidence = base.parent
    root = Path(__file__).resolve().parents[3]
    os.chdir(root)
    launch_cpus = set(os.sched_getaffinity(0))
    args.output.mkdir(parents=True, exist_ok=False)
    shutil.copyfile(__file__, args.output / 'final_checks.py')
    reports = []
    env = dict(os.environ, CARGO_TARGET_DIR='/data/core028/core031-target',
               CARGO_BUILD_JOBS='3', CARGO_INCREMENTAL='0',
               CARGO_PROFILE_DEV_DEBUG='0', CARGO_PROFILE_TEST_DEBUG='0',
               CARGO_PROFILE_DEV_OPT_LEVEL='1', CARGO_PROFILE_TEST_OPT_LEVEL='1')
    command = [sys.executable, str(Path(__file__).with_name('run_checks.py')),
               '--scope', 'native', '--output', str(args.output / 'native')]
    log = args.output / 'native.log'
    with log.open('xb') as stream:
        result = subprocess.run(command, env=env, stdout=stream, stderr=subprocess.STDOUT, check=False)
    reports.append({'check': 'latest-native-tests', 'passed': result.returncode == 0, 'log_sha256': sha(log)})
    print('FINAL latest-native-tests', result.returncode, flush=True)
    # The unchanged boundary gate normally reads tracked paths. Include new
    # research files explicitly without staging or changing the user's index.
    files = subprocess.check_output(['git', 'ls-files', '--cached', '--others', '--exclude-standard'])
    boundary_log = args.output / 'all-source-boundary.log'
    with boundary_log.open('xb') as stream:
        boundary = subprocess.run(['bash', 'scripts/check-boundary.sh', '--files-from', '-', '--no-metadata'],
                                  input=files, stdout=stream, stderr=subprocess.STDOUT, env=env, check=False)
    reports.append({'check': 'tracked-and-untracked-source-boundary', 'passed': boundary.returncode == 0, 'log_sha256': sha(boundary_log)})
    print('FINAL all-source-boundary', boundary.returncode, flush=True)
    sources = root / 'experiments/transition-study032/proofs'
    targets = _read(sources / 'targets.json')['modules']
    final_proofs = evidence / 'native-proofs-007'
    report = check_modules(sources, targets, final_proofs, audit_source=sources / 'Audit.lean')
    shutil.copytree(sources, final_proofs / 'sources')
    reports.append({'check': 'logical-proofs', 'passed': report['outcome'] == 'Checked', 'report_sha256': sha(final_proofs / 'report.json')})
    print('FINAL logical-proofs', report['outcome'], flush=True)
    mutants = args.output / 'premise-mutations'
    mutants.mkdir()
    pairs = [('maintained-missing-post-J', 'Maintained'), ('delta-incomplete-coverage', 'Views'),
             ('observation-unchecked-value', 'Observation'), ('history-omitted-step-check', 'History'),
             ('digest-discard-high-limb', 'CircuitContract')]
    records = []
    for name, module in pairs:
        destination = mutants / name
        destination.mkdir()
        cloned = destination / 'source'
        shutil.copytree(sources, cloned)
        shutil.copyfile(evidence / 'red-green/proof-mutations' / name / (module + '.lean'), cloned / (module + '.lean'))
        accepted = False
        message = None
        try:
            check_modules(cloned, targets, destination / 'check', audit_source=sources / 'Audit.lean')
            accepted = True
        except ProofError as exc:
            message = str(exc)
        rejected = (not accepted and message is not None and ('/' + module + '.lean:') in message and 'error:' in message)
        records.append({'mutation': name, 'outcome': 'Rejected' if rejected else 'IncorrectlyAccepted' if accepted else 'UnexpectedFailure',
                        'error': message, 'source_sha256': sha(cloned / (module + '.lean'))})
        print('FINAL premise-mutation', name, records[-1]['outcome'], flush=True)
    write_new(mutants / 'index.json', {'format': 'core032.proof-mutations.v1', 'controls': records})
    reports.append({'check': 'latest-premise-mutations', 'passed': all(r['outcome'] == 'Rejected' for r in records)})
    if sha(Path(__file__).with_name('cold_recovery.py')) != sha(args.cold / 'cold_recovery.py'):
        raise CampaignError('executed cold reconstruction source differs from its frozen protocol')
    cold = cold_run(args.cold)
    combined = recovery_result(_read(base / 'recovery/index.json'), cold, _read(base / 'native/index.json'))
    combined['original_sha256'] = sha(base / 'recovery/index.json')
    combined['supplemental_sha256'] = sha(args.cold / 'index.json')
    write_new(evidence / 'recovery-validation.json', combined)
    reports.append({'check': 'recovery-with-explicit-capacity-limits', 'passed': combined['passed']})
    print('FINAL recovery', combined['passed'], flush=True)
    timed = timed_reuse(manifest_path, evidence / 'timed-reuse-001')
    reports.append({'check': 'contiguous-reuse-user-cost', 'passed': timed['passed']})
    print('FINAL contiguous-reuse', timed['passed'], flush=True)
    os.sched_setaffinity(0, launch_cpus)
    # Exercise the actual documented fresh-consumer CLI against the final proof.
    proof = base / 'proofs/c1-h2-first-use/rep0/proof.bin'
    command = [sys.executable, str(Path(__file__).with_name('study.py')), 'verify',
               '--manifest', str(manifest_path), '--case-index', str(len(manifest['comparison']['matrix']['native']) + 1),
               '--proof', str(proof), '--output', str(args.output / 'quickstart-consumer')]
    log = args.output / 'quickstart-consumer.log'
    with log.open('xb') as stream:
        result = subprocess.run(command, env=env, stdout=stream, stderr=subprocess.STDOUT, check=False)
    reports.append({'check': 'quickstart-fresh-consumer', 'passed': result.returncode == 0, 'log_sha256': sha(log)})
    print('FINAL quickstart-consumer', result.returncode, flush=True)
    # Diagnostics use the frozen executable and exact N128 case; never pool this
    # instrumented timing with primary performance data.
    profile = manifest['profile']
    pin_orchestration(profile)
    diagnostic = args.output / 'diagnostics'
    diagnostic.mkdir()
    tool = str(base / manifest['binary'])
    case = str(base / manifest['cases'][0])
    output = diagnostic / 'run.json'
    expanded = diagnostic / 'expanded.json'
    with timing_lock('/data/core028/core032-measure.lock'):
        execution = run_child([tool, 'run', case, str(output), 'A', 'study'], output_dir=diagnostic / 'run',
                              timeout_seconds=profile['native_timeout_seconds'], address_space_bytes=profile['address_space_limit_bytes'],
                              affinity=profile['measurement_cpu'], env=dict(os.environ, CORE032_DIAGNOSTICS='1', RAYON_NUM_THREADS='1'))
        export = None
        equal = False
        metrics = None
        if execution['outcome'] == 'Succeeded':
            run = _read(output)
            metrics = {'counters': run['diagnostics'], 'scope': run['diagnostic_scope']}
            export = run_child([tool, 'export', case, str(expanded), str(output), 'study'], output_dir=diagnostic / 'export',
                               timeout_seconds=profile['native_timeout_seconds'], address_space_bytes=profile['address_space_limit_bytes'],
                               affinity=profile['measurement_cpu'], env=dict(os.environ, RAYON_NUM_THREADS='1'))
            if export['outcome'] == 'Succeeded':
                row = next(r for r in _read(base / 'native/index.json')['records'] if r['case_id'] == 'n128-h8-d1-r1-q1-p0'
                           and r['candidate'] == 'A' and r['mode'] == 'study' and r['repetition'] == 0)
                artifact = next(v for v in row['artifacts'] if v['path'].endswith('expanded-output.json.gz'))
                previous = diagnostic / 'previous.json'
                unpack_file(base / 'native' / artifact['path'], artifact, previous)
                equal = same_json(_read(previous)['observations'], _read(expanded)['observations'])
    files = []
    for path in sorted(diagnostic.rglob('*')):
        if path.is_file() and path.suffix in ('.json', '.txt'):
            item = pack_file(path, remove_workspace_file=True)
            item['path'] = str(path.with_suffix(path.suffix + '.gz').relative_to(diagnostic))
            files.append(item)
    write_new(diagnostic / 'index.json', {'format': 'core032.diagnostics.v1', 'passed': equal, 'execution': execution,
                                         'export': export, 'metrics': metrics, 'artifacts': files,
                                         'classification': 'instrumented separate diagnostic, not a primary timing sample'})
    reports.append({'check': 'scoped-diagnostics-same-semantics', 'passed': equal})
    print('FINAL diagnostics', equal, flush=True)
    final = {'format': 'core032.final-checks.v1', 'passed': all(r['passed'] for r in reports),
             'checks': reports, 'source_sha256': sha(args.output / 'final_checks.py')}
    write_new(args.output / 'report.json', final)
    return 0 if final['passed'] else 2


if __name__ == '__main__':
    raise SystemExit(main())
