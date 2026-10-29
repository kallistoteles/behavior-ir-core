"""Functional comparison pilot. Its coordinates are not primary measurements."""
import argparse
import json
from pathlib import Path
import subprocess
from early_campaign import freeze,write_new
from campaign import run_native

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--build',required=True,type=Path);p.add_argument('--output',required=True,type=Path);a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    root=Path.cwd();tools=json.loads(a.build.read_text())['tools'];here=Path(__file__).parent
    case=json.loads((here/'inputs/n128-h8-d1-r1-q1-p0.json').read_text());case.update(case_id='pilot-n2-h1',initial_population=2,prefix=[{'action':'Emit'}]);write_new(a.output/'case.json',case)
    subprocess.run([tools['native']['path'],'scenario',str((a.output/'case.json').resolve()),str((a.output/'scenario.json').resolve())],check=True)
    matrix={'native':[{'case_id':'pilot-n2-h1'}],'candidates':['reference','A','B'],'profiles':['existing','study'],'proofs':[],'scenario_offset':1,'purpose':'correctness pilot only; no primary performance claim'}
    freeze(a.output/'manifest.json',binary=tools['native']['path'],cases=[a.output/'case.json',a.output/'scenario.json'],sources=list(here.glob('*.py')),mode='first-use',parameters_from=None,comparison=matrix,tools={'reference':tools['reference']['path']})
    result=run_native(a.output/'manifest.json',a.output/'native')
    return 0 if result['coverage_complete'] and result['exactness'] else 2
if __name__=='__main__':raise SystemExit(main())
