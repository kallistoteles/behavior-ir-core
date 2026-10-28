#!/usr/bin/env python3
"""Bounded reference/collector/recovery-of-bytes smoke; not the full scaling campaign."""
import argparse
import copy
import json
import os
from pathlib import Path
import sys
import artifacts as a
import run as r


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--base-manifest',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--portable-index',type=Path,required=True)
    args=p.parse_args();base=a.load(args.base_manifest);a.validate_manifest(base)
    out=args.output.resolve();a.require(not out.exists(),'fresh smoke workspace required');out.mkdir();(out/'references').mkdir()
    case={'case_id':'quickstart-smoke','n':3,'history':1,'steps':2,'batch':1,'rules':1,'padding':0,'filter_terms':1,'global':'count','operation':'create','commands':0,'relations':False}
    argv=[json.dumps(case,sort_keys=True,separators=(',',':'))];expected={'execution_outcome':'ALLOW','final_members':5,'final_position':3,'prepared_history_position':1}
    ref=base['binaries']['full-reference:diagnostic'];binary=Path(ref['path']);a.require(a.digest(binary.read_bytes())==ref['sha256'],'reference binary identity')
    os.sched_setaffinity(0,{base['profile']['orchestration_cpu']})
    path=out/'references/quickstart-smoke.json';env=dict(os.environ,CORE031_CASE_ARGV=json.dumps(argv),CORE031_OBSERVATION=str(path))
    row=r.run_probe([str(binary),'--exact','store::incremental::research031_tests::research031_reference_probe','--ignored','--nocapture','--test-threads=1'],timeout=base['profile']['timeout_seconds'],memory_limit=base['profile']['address_space_limit_bytes'],cpu=base['profile']['measurement_cpu'],mode='diagnostic',env=env)
    (out/'reference-result.json').write_bytes(a.canonical(row));a.require(row['collection_status']=='complete','complete smoke reference');a.validate_case_result(row['result'],expected)
    m=copy.deepcopy(base);m['campaign_id']=out.name;m['profile'].update(scope='bounded-smoke-not-full-scaling',steps=2,levels={'population':[3],'history':[1],'changed':[1],'rules':[1],'filter_terms':[1],'payload':[0]})
    m['cases']=[{'case_id':case['case_id'],'argv':argv,'factors':case,'input_sha256':a.digest(argv[0].encode()),'expected':expected}]
    data=path.read_bytes();m['references']={case['case_id']:{'path':str(path.relative_to(out)),'sha256':a.digest(data),'bytes':len(data)}}
    m['smoke_orchestrator']={'python':sys.version,'source_sha256':{name:a.digest((Path(__file__).parent/name).read_bytes()) for name in ['smoke.py','run.py','artifacts.py']},'native_source':'Unchanged exact binaries and native source from base manifest; this is a new bounded orchestration validation.'}
    a.freeze_manifest(out/'manifest.json',m)
    a.require(r.collect(out/'manifest.json',out/'production',base['binaries']['production-like']['path'],'baseline','production-like'),'three complete smoke comparisons')
    index=a.load(args.portable_index);entry=index['objects']['population-128'];raw=a.read_packed_artifact(args.portable_index.parent,entry)
    a.require(a.digest(raw)==base['references']['population-128']['sha256'],'reconstructed frozen identity');(out/'reconstructed.json').write_bytes(raw)
    a.compare_complete(json.loads(raw),json.loads((out/'reconstructed.json').read_bytes()))
    result={'status':'passed','smoke_cases':1,'production_repetitions':3,'reference_cases':1,'reconstructed_bytes':len(raw),'reconstructed_sha256':a.digest(raw),'scope':'Bounded smoke, not full axis coverage or a performance claim.'}
    (out/'summary.json').write_bytes(a.canonical(result));print(json.dumps(result))


if __name__=='__main__':main()
