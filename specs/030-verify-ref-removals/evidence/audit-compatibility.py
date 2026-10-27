#!/usr/bin/env python3
"""Read-only compatibility audit against the recorded immutable starting source."""
import hashlib,json,subprocess,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3];OUT=Path(__file__).resolve().parent
BASE='aff31ddda163e343be616cb378388e464b90933b'
SPEC_BASE='6b93898a9375113f7a8946f23ab5535319b6f5d6'
subprocess.run(['git','diff','--quiet',SPEC_BASE,BASE],cwd=ROOT,check=True)
def sha(b):return hashlib.sha256(b).hexdigest()
def original(path):return subprocess.check_output(['git','show',f'{BASE}:{path}'],cwd=ROOT)
protected=['Cargo.lock','rust-toolchain.toml','crates/behavior-core/src/eval.rs','crates/behavior-engine/src/lib.rs','api/engine-surface.txt','crates/behavior-store/src/lib.rs']
# No historical fixture may be altered to explain changed current output.
historical=subprocess.check_output(['git','ls-tree','-r','--name-only',BASE,'tests/fixtures'],cwd=ROOT,text=True).splitlines()
checks=[]
for path in protected+historical:
 before=original(path);after=(ROOT/path).read_bytes()
 checks.append({'path':path,'before_sha256':sha(before),'after_sha256':sha(after),'equal':before==after})
 assert before==after,('protected artifact changed',path)
changed=subprocess.check_output(['git','diff','--name-only',BASE],cwd=ROOT,text=True).splitlines()
assert not any(p.startswith('crates/behavior-core/') or p.startswith('crates/behavior-store/src/') for p in changed)
manifest=json.loads((ROOT/'tests/fixtures/governance-v2/history-verifier-0.10/manifest.json').read_text())
for name,digest in manifest['artifacts'].items():assert sha((ROOT/f'tests/fixtures/governance-v2/history-verifier-0.10/{name}.json').read_bytes())==digest
assert sha((ROOT/'consumer/examples/capture_proof10_history.rs').read_bytes())==manifest['harness_sha256']
runtime=[]
with tempfile.TemporaryDirectory(prefix='core030-compat-') as tmp:
 tmp=Path(tmp)
 baseline=json.loads((OUT/'baseline.json').read_text())
 for i,case in enumerate(baseline['runtime']):
  req=tmp/f'req-{i}.json';req.write_text(json.dumps(case['request']))
  wire=ROOT/'tests/fixtures/verify/ref-removals'/(case['fixture']+'.json')
  output=subprocess.run([str(ROOT/'target/debug/behavior'),'eval',str(wire),str(req)],cwd=ROOT,capture_output=True,text=True)
  actual=json.loads(output.stdout)
  assert json.dumps(actual,sort_keys=True,separators=(',',':'),ensure_ascii=False)==json.dumps(case['record'],sort_keys=True,separators=(',',':'),ensure_ascii=False),('typed runtime changed',i,actual)
  record=tmp/f'record-{i}.json';record.write_text(output.stdout)
  replay=subprocess.run([str(ROOT/'target/debug/behavior'),'replay',str(wire),str(record)],cwd=ROOT,capture_output=True,text=True)
  assert replay.returncode==0,(i,replay.stdout,replay.stderr)
  runtime.append({'fixture':case['fixture'],'references':case['references'],'record_equal':True,'replay':json.loads(replay.stdout)})
(OUT/'compatibility.json').write_text(json.dumps({'baseline':BASE,'spec_baseline_identical_tree':SPEC_BASE,'unchanged_protected_and_historical_files':checks,'core_and_store_runtime_changed':False,'captured_signed10_hashes_unchanged':True,'baseline_runtime_controls':runtime},indent=2)+'\n')
print(json.dumps({'unchanged_files':len(checks),'identical_runtime_records_and_replays':len(runtime),'captured_signed10_hashes_unchanged':True}))
