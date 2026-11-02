"""Compile a named schema and emit unchecked artifacts with pinned tools.

This development helper cannot produce Checked evidence. Proof drivers must
independently snapshot, audit and fresh-check actual data afterward.
"""
import argparse
import os
import re
import shutil
import sys
from pathlib import Path

p = Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0, str(p))
import check_targets

parser = argparse.ArgumentParser()
parser.add_argument('--schema', required=True)
parser.add_argument('--generator', required=True)
parser.add_argument('--artifacts', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
a = parser.parse_args()
if any(not re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*', name)
       for name in [a.schema, a.generator]):
    raise ValueError('only local Core033 module names are accepted')
out = a.out.resolve()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__, out / 'driver.py')
env = dict(os.environ, LEAN_PATH=':'.join(map(str, [
    p / '.lake/build/lib/lean', *sorted((p / '.lake/packages').glob('*/.lake/build/lib/lean'))])))
source = p / 'Core033' / (a.schema + '.lean')
shutil.copyfile(source, out / source.name)
check_targets._call(['lean', '-j1', '-o', str(p / '.lake/build/lib/lean/Core033' / (a.schema + '.olean')),
                    str(source)], cwd=p, env=env, log=out / 'development.txt')
generator = p / 'Core033' / (a.generator + '.lean')
shutil.copyfile(generator, out / generator.name)
check_targets._call(['lean', '-j1', '--run', str(generator), str(a.artifacts.resolve())],
                   cwd=p, env=env, log=out / 'generation.txt')
print('Generated unchecked guarded artifacts; full correspondence and byte binding remain required.')
