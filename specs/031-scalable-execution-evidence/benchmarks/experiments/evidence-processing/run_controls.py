"""Deliberate omissions of real frozen observations; never a Core optimization."""
import argparse
import copy
import json
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]))
import artifacts as a
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--reference-root',type=Path,required=True);p.add_argument('--output',type=Path,required=True);args=p.parse_args()
a.require(not args.output.exists(),'fresh controls output required');args.output.mkdir()
m=a.load(args.reference_root/'manifest.json');results=[]
for case,kind,path,value in [
 ('population-128','omit-family',['versions'],None),
 ('population-128','omit-query-evidence',['records',0,'facts'],None),
 ('population-128','omit-ordered-trace',['records',0,'trace'],None),
 ('population-128','stale-parent',['subject','prepared','position'],999),
 ('population-128','wrong-profile',['records',0,'record_version'],'0.7'),
 ('population-128','json-type-change',['bundles',0,'evaluated_state','position'],False),
 ('combined','omit-command-occurrence',['commands','items'],None)]:
 ref=m['references'][case];base=json.loads(a.read_artifact(args.reference_root,ref));changed=copy.deepcopy(base);target=changed
 for key in path[:-1]:target=target[key]
 if value is None:
  if kind in ['omit-ordered-trace','omit-command-occurrence']:target[path[-1]].pop()
  else:target.pop(path[-1])
 else:target[path[-1]]=value
 a.require(a.first_difference(base,changed) is not None,'mutation must change actual normative input')
 try:a.compare_complete(base,changed)
 except a.InvalidArtifact as error:results.append({'case_id':case,'control':kind,'path':path,'mutation_value':value,'reference_sha256':ref['sha256'],'mutant_sha256':a.digest(a.canonical(changed)),'outcome':'rejected-as-required','first_divergence':str(error)})
 else:raise a.InvalidArtifact('unsafe shortcut accepted: '+kind)
(args.output/'results.json').write_bytes(a.canonical({'format':'core031.omission-controls.v1','manifest_sha256':a.digest((args.reference_root/'manifest.json').read_bytes()),'controls':results,'scope':'Mutated observation data, not executed optimized Core transitions; no speedup measurements.'}))
print(json.dumps({'controls_rejected':len(results),'status':'passed'}))
