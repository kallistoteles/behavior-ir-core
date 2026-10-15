from pathlib import Path
import json, subprocess
root=Path('/tmp/core021-baseline-20d3fd2')
work=Path('/tmp/core021-cli-signing-baseline');work.mkdir(exist_ok=True)
value=json.loads((root/'tests/fixtures/canonicalization/baseline/waiver.json').read_text())
value['hash']={'items':[1.5]}
(work/'waiver.json').write_text(json.dumps(value));(work/'seed.txt').write_text('42'*32)
p=subprocess.run(['/tmp/core021-baseline-target/debug/behavior','sign-waiver',str(work/'waiver.json'),'--seed',str(work/'seed.txt')],capture_output=True)
print('status:',p.returncode,'stdout:',p.stdout.decode(),'stderr:',p.stderr.decode(),flush=True)
assert p.returncode==2 and not p.stdout, 'baseline signed unsupported excluded metadata'
