#!/usr/bin/env bash
# Contract tests for the current corpus; uses the real CLI and production archive block.
set -euo pipefail
cd "$(dirname "$0")/../.."
mode="${1:-all}"
BIN="${BEHAVIOR_BIN:-$PWD/target/debug/behavior}"
python3 - "$PWD" "$BIN" "$mode" <<'PY'
import copy
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

ROOT, CLI, MODE = Path(sys.argv[1]), Path(sys.argv[2]).resolve(), sys.argv[3]
BASE = Path('tests/fixtures/bindings')
CURRENT = BASE / 'current'
DOMAINS = ('invoice', 'project_margin', 'accounts', 'ledger', 'orders')
NAMES = {f'{d}.{s}.json' for d in DOMAINS for s in ('allowed', 'refused')}


def invoke(args, expected=0, cwd=None):
    result = subprocess.run([str(x) for x in args], cwd=cwd, capture_output=True, text=True)
    if result.returncode != expected:
        raise AssertionError(f'{args}: expected exit {expected}, got {result.returncode}\n{result.stdout}\n{result.stderr}')
    return result


def fingerprint(root):
    return {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in root.rglob('*') if p.is_file() and '__pycache__' not in p.parts}


def mirror(destination):
    for d in DOMAINS:
        for suffix in ('.json', '.request.json'):
            target = destination / BASE / (d + suffix)
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(ROOT / BASE / (d + suffix), target)
    shutil.copytree(ROOT / CURRENT, destination / CURRENT)
    shutil.copyfile(ROOT / BASE / 'generate_current.py', destination / BASE / 'generate_current.py')


def production_archive(package, destination):
    destination.mkdir(parents=True,exist_ok=True)
    production=(ROOT/'scripts/release-build.sh').read_text()
    start=production.index('conformance="behavior-conformance-')
    end=production.index('\ninfo=',start)
    block=production[start:end]
    if 'git ls-files' not in block:
        raise AssertionError('production archive extraction markers drifted')
    setup='version=core026; out="$1"\nexport LC_ALL=C TZ=UTC SOURCE_DATE_EPOCH="$(git log -1 --format=%ct)"\n'
    invoke(['bash','-euo','pipefail','-c',setup+block,'archive',destination],cwd=package)


def production_step5(package, dist, temporary, byte_only=False):
    production=(ROOT/'scripts/release-check.sh').read_text()
    start=production.index('step "5 conformance"')
    end=production.index('\necho "release-check: OK',start)
    block=production[start:end]
    if byte_only:
        end=block.index('done <"$tmp/tracked"')+len('done <"$tmp/tracked"')
        block=block[:end]
    temporary.mkdir(parents=True,exist_ok=True)
    setup='dist="$1"; tmp="$2"; cli="$3"; version=core026\nstep() { echo "step $1" >&2; }\nfail() { echo "step5 failure: $*" >&2; exit 1; }\n'
    return subprocess.run(['bash','-euo','pipefail','-c',setup+block,'step5',str(dist),str(temporary),str(CLI)],cwd=package,capture_output=True,text=True)


class GeneratorContract(unittest.TestCase):
    def test_historical_source_cannot_resolve_outside_root(self):
        with tempfile.TemporaryDirectory(prefix='core026-source-boundary-') as tmp:
            tmp=Path(tmp);package=tmp/'package';mirror(package)
            source=package/BASE/'invoice.request.json';outside=tmp/'outside.json'
            shutil.copyfile(source,outside);source.unlink();source.symlink_to(outside)
            result=subprocess.run(['python3',str(package/BASE/'generate_current.py'),'--output-dir',str(tmp/'generated')],capture_output=True,text=True)
            self.assertNotEqual(0,result.returncode,'historical source resolved outside package root')
            self.assertIn('escapes package root',result.stderr)

    def test_requests_owned_reproducible_and_strict(self):
        with tempfile.TemporaryDirectory(prefix='core026-generator-') as tmp:
            tmp = Path(tmp); package = tmp/'package'; mirror(package)
            generator = package/BASE/'generate_current.py'
            before = fingerprint(package)
            invoke(['python3', generator, '--output-dir', tmp/'a'])
            invoke(['python3', generator, '--output-dir', tmp/'b'])
            self.assertEqual(NAMES, {p.name for p in (tmp/'a').iterdir()})
            self.assertEqual(fingerprint(tmp/'a'), fingerprint(tmp/'b'))
            worlds = json.loads((package/CURRENT/'worlds.json').read_text())
            for filename in NAMES:
                d, scenario, _ = filename.split('.')
                raw = (tmp/'a'/filename).read_bytes()
                request = json.loads(raw)
                self.assertEqual(raw, json.dumps(request,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode())
                original = json.loads((package/BASE/(d+'.request.json')).read_text())[scenario]
                self.assertEqual({k:v for k,v in request.items() if k!='facts'}, {k:v for k,v in original.items() if k!='facts'})
                actual = {entry['entity']:entry['members'] for entry in request['facts']['universe']}
                self.assertEqual(worlds[d+'/'+scenario]['parent'], actual)
            self.assertEqual(before, fingerprint(package), 'output-dir rewrote authoritative inputs')
            invoke(['python3',generator])
            invoke(['python3',generator,'--check'])
            delivered = package/CURRENT/'requests'
            self.assertEqual(fingerprint(tmp/'a'), fingerprint(delivered))
            changed = delivered/'invoice.allowed.json'; changed.write_text('{}')
            self.assertNotEqual(0,subprocess.run(['python3',str(generator),'--check'],capture_output=True).returncode)
            self.assertEqual('{}', changed.read_text(), '--check repaired its input')
            worlds_path=package/CURRENT/'worlds.json'; w=json.loads(worlds_path.read_text());del w['invoice/allowed']['parent']['User'];worlds_path.write_text(json.dumps(w))
            self.assertNotEqual(0,subprocess.run(['python3',str(generator),'--output-dir',str(tmp/'missing')],capture_output=True).returncode)
            self.assertNotEqual(0,subprocess.run(['python3',str(generator),'--output-dir',str(package/BASE)],capture_output=True).returncode)


class RunnerContract(unittest.TestCase):
    def test_all_ten_unchanged_full_oracles_and_replay(self):
        with tempfile.TemporaryDirectory(prefix='core026-runner-') as tmp:
            before = fingerprint(ROOT/CURRENT)
            result=invoke(['python3',ROOT/CURRENT/'check.py','--root',ROOT,'--cli',CLI,'--output',tmp])
            summary=json.loads(result.stdout)
            self.assertEqual(10,len(summary['cases']))
            self.assertEqual({d+'/'+s for d in DOMAINS for s in ('allowed','refused')},{x['id'] for x in summary['cases']})
            for row in summary['cases']:
                self.assertRegex(row['record_sha256'],r'^[0-9a-f]{64}$')
            self.assertEqual(before,fingerprint(ROOT/CURRENT),'runner rewrote delivered data')

    def test_determinism_target_includes_current_runner(self):
        script=(ROOT/'scripts/determinism-check.sh').read_text()
        self.assertIn('tests/fixtures/bindings/current/check.py',script)
        self.assertIn('binding current ',script)


class NegativeContract(unittest.TestCase):
    def test_raw_invalid_worlds_retain_core_refusals(self):
        base=json.loads((ROOT/CURRENT/'requests/invoice.allowed.json').read_text())
        omitted=copy.deepcopy(base)
        omitted['facts']['universe']=[x for x in omitted['facts']['universe'] if x['entity']!='User']
        inconsistent=copy.deepcopy(base);inconsistent['state']['invoice']['amount']='1'
        invalid=copy.deepcopy(base);invalid['state']['invoice']['amount']='-1'
        next(x for x in invalid['facts']['universe'] if x['entity']=='Invoice')['members'][0]['amount']='-1'
        with tempfile.TemporaryDirectory(prefix='core026-invalid-') as tmp:
            for name,request,code in [('N01',omitted,'INVALID_STATE_SNAPSHOT'),('N02',inconsistent,'INCONSISTENT_FACTS'),('N03',invalid,'INVALID_STATE_SNAPSHOT')]:
                path=Path(tmp)/(name+'.json');path.write_text(json.dumps(request))
                result=invoke([CLI,'eval',ROOT/BASE/'invoice.json',path],expected=2)
                record=json.loads(result.stdout)
                self.assertEqual('INVALID_INPUT',record['result'])
                self.assertEqual(code,record['reasons'][0]['code'])
                for section in ('trace','derived','changes'):
                    self.assertEqual([],record[section])
                self.assertNotIn('lifecycle',record)

    def test_inventory_and_well_formed_semantic_tampering_refuse(self):
        mutations=('missing_request','extra_request','missing_expected','extra_expected','duplicate_case',
                   'missing_case','unknown_module','escaping_path','wrong_status','unsupported_field',
                   'duplicate_json_key','float','module_identity','effect','reason','query_membership','unknown_profile',
                   'outside_cases_symlink','outside_worlds_symlink')
        with tempfile.TemporaryDirectory(prefix='core026-negative-') as tmp:
            tmp=Path(tmp)
            for kind in mutations:
                with self.subTest(kind=kind):
                    package=tmp/kind/'package';mirror(package)
                    inventory_path=package/CURRENT/'cases.json';inventory=json.loads(inventory_path.read_text())
                    expected=package/CURRENT/'expectations/invoice.allowed.json'
                    if kind=='missing_request': (package/CURRENT/'requests/invoice.allowed.json').unlink()
                    elif kind=='extra_request': (package/CURRENT/'requests/extra.json').write_text('{}')
                    elif kind=='missing_expected': expected.unlink()
                    elif kind=='extra_expected': (package/CURRENT/'expectations/extra.json').write_text('{}')
                    elif kind=='duplicate_case': inventory['cases'][-1]=copy.deepcopy(inventory['cases'][0])
                    elif kind=='missing_case': inventory['cases'].pop()
                    elif kind=='unknown_module': inventory['cases'][0]['module']='unknown'
                    elif kind=='escaping_path': inventory['cases'][0]['request']='../outside.json'
                    elif kind=='wrong_status': inventory['cases'][0]['exit_code']=1
                    elif kind=='unsupported_field': inventory['cases'][0]['unsupported']=True
                    elif kind=='module_identity': inventory['modules']['invoice']['items']['action:approve_invoice']='sha256:'+'0'*64
                    elif kind=='effect':
                        body=json.loads(expected.read_text());body['changes'][0]['new']='pending';expected.write_text(json.dumps(body))
                    elif kind=='reason':
                        path=package/CURRENT/'expectations/invoice.refused.json';body=json.loads(path.read_text());body['reasons'][0]['code']='POSTCONDITION_FAILED';path.write_text(json.dumps(body))
                    elif kind=='query_membership':
                        path=package/CURRENT/'expectations/orders.refused.json';body=json.loads(path.read_text());body['facts']['queries'][0]['members'][0]['id']='o1';path.write_text(json.dumps(body))
                    elif kind=='unknown_profile':
                        body=json.loads(expected.read_text());body['validation_profile']='unknown';expected.write_text(json.dumps(body))
                    inventory_path.write_text(json.dumps(inventory))
                    if kind=='duplicate_json_key': inventory_path.write_text('{"format":"x",'+inventory_path.read_text()[1:])
                    if kind=='float': inventory_path.write_text(inventory_path.read_text().replace('"exit_code": 0','"exit_code": 0.0',1))
                    if kind in ('outside_cases_symlink','outside_worlds_symlink'):
                        path=package/CURRENT/('cases.json' if kind=='outside_cases_symlink' else 'worlds.json')
                        outside=tmp/kind/'outside.json';shutil.copyfile(path,outside);path.unlink();path.symlink_to(outside)
                    before=fingerprint(package)
                    result=subprocess.run(['python3',str(package/CURRENT/'check.py'),'--root',str(package),'--cli',str(CLI),'--output',str(tmp/kind/'actual')],capture_output=True,text=True)
                    self.assertNotEqual(0,result.returncode,kind+' incorrectly passed')
                    self.assertIn('binding conformance:',result.stderr)
                    if kind in ('effect','reason','query_membership','unknown_profile'):
                        self.assertIn('record',result.stderr)
                    self.assertEqual(before,fingerprint(package),'negative control repaired data')


class PackageContract(unittest.TestCase):
    def test_production_step5_rejects_semantic_oracle_tampering(self):
        with tempfile.TemporaryDirectory(prefix='core026-step5-negative-') as tmp:
            tmp=Path(tmp);package=tmp/'package';package.mkdir()
            tracked=subprocess.check_output(['git','ls-files','-z','--','schema','tests/fixtures','README.md'],cwd=ROOT).decode().split('\0')
            for name in filter(None,tracked):
                target=package/name;target.parent.mkdir(parents=True,exist_ok=True)
                shutil.copy2(ROOT/name,target)
            invoke(['git','init','-q',package])
            invoke(['git','add','--','schema','tests/fixtures','README.md'],cwd=package)
            invoke(['git','-c','user.name=Conformance Test','-c','user.email=conformance@example.invalid','-c','commit.gpgsign=false','commit','-qm','Disposable conformance fixture'],cwd=package)
            expected=package/CURRENT/'expectations/invoice.allowed.json'
            body=json.loads(expected.read_text());body['changes'][0]['new']='pending';expected.write_text(json.dumps(body,sort_keys=True,separators=(',',':')))
            dist=tmp/'dist';production_archive(package,dist)
            byte_gate=production_step5(package,dist,tmp/'byte-gate',byte_only=True)
            self.assertEqual(0,byte_gate.returncode,byte_gate.stderr)
            print('STEP5_CONTROL: genuine inventory/byte gate passed with matching tampered source and archive',flush=True)
            actual=production_step5(package,dist,tmp/'semantic-gate')
            self.assertNotEqual(0,actual.returncode,'production step 5 accepted a well-formed incorrect semantic oracle after its real byte gate passed')
            self.assertIn('invoice/allowed',actual.stderr)
            self.assertIn('/changes/0/new',actual.stderr)

    def test_real_production_step5_accepts_current_package(self):
        with tempfile.TemporaryDirectory(prefix='core026-step5-positive-') as tmp:
            tmp=Path(tmp);dist=tmp/'dist';production_archive(ROOT,dist)
            actual=production_step5(ROOT,dist,tmp/'check')
            self.assertEqual(0,actual.returncode,actual.stderr)
            # After integration this receipt proves the extracted runner actually executed.
            if 'bindings/current/check.py' in (ROOT/'scripts/release-check.sh').read_text():
                self.assertEqual(10,len(json.loads((tmp/'check/binding-results/summary.json').read_text())['cases']))

    def test_real_production_archive_runs_without_checkout_data(self):
        with tempfile.TemporaryDirectory(prefix='core026-package-') as tmp:
            tmp=Path(tmp);dist=tmp/'dist';dist.mkdir();unpacked=tmp/'unpacked';unpacked.mkdir()
            production_archive(ROOT,dist)
            invoke(['tar','-xzf',dist/'behavior-conformance-core026.tar.gz','-C',unpacked])
            self.assertTrue((unpacked/CURRENT/'README.md').is_file())
            invoke(['python3',unpacked/CURRENT/'check.py','--root',unpacked,'--cli',CLI,'--output',tmp/'actual'],cwd=tmp)


SUITES={'generator':GeneratorContract,'runner':RunnerContract,'negative':NegativeContract,'package':PackageContract}
if MODE not in (*SUITES,'all'):
    raise SystemExit('unknown binding conformance test selection: '+MODE)
suite=unittest.TestSuite(unittest.defaultTestLoader.loadTestsFromTestCase(cls)
                         for name,cls in SUITES.items() if MODE in ('all',name))
result=unittest.TextTestRunner(verbosity=2).run(suite)
raise SystemExit(0 if result.wasSuccessful() else 1)
PY
