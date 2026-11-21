"""One-off reviewed-recorder launcher; actual callbacks/root choice are retained."""
import sys, json, hashlib, shutil, importlib.util
from pathlib import Path
sys.dont_write_bytecode = True
ROOT = Path('/data/repos/behavior-ir-core-033')
E = ROOT/'experiments/transition-study036'
F = ROOT/'specs/036-core-transition-feasibility'
PRIVATE = Path('/var/tmp/behavior-ir-core036-v2/w001')
name = sys.argv[1]
module_spec = importlib.util.spec_from_file_location('reviewed035', ROOT/'experiments/reuse-study035/recorder.py')
reviewed = importlib.util.module_from_spec(module_spec)
module_spec.loader.exec_module(reviewed)
tools = json.loads((E/'toolchain.json').read_text())['tools']
python = Path(tools['python']['path'])
if hashlib.sha256(python.read_bytes()).hexdigest() != tools['python']['sha256']:
    raise ValueError('PinnedPythonBytes')
inputs = [E/'bootstrap.py', E/'tests/v2/test_bootstrap.py', E/'profiles/v2/work.json', Path(__file__)]
inputs_bytes = sum(p.stat().st_size for p in inputs)
def free_root(): return shutil.disk_usage(PRIVATE).free
def growth():
    return {'artifacts': reviewed._footprint(PRIVATE/'bootstrap'),
            'cache': inputs_bytes,
            'temporary': reviewed._footprint(PRIVATE/'tmp')}
out = PRIVATE/'bootstrap'/name
receipt = reviewed.run([str(python), '-m', 'unittest', 'discover', '-s', str(E/'tests/v2'), '-p', 'test_bootstrap.py'],
                       out, 60, free_bytes=free_root, growth_bytes=growth,
                       env={'PYTHONPATH': str(E), 'PYTHONDONTWRITEBYTECODE':'1', 'TMPDIR':str(PRIVATE/'tmp')})
print(json.dumps({k:receipt[k] for k in ['format','exit_code','stop_reason','start_monotonic_ns','boot_id','tree_empty','group_empty']}))
print((out/'stderr.txt').read_text()[-3500:])
