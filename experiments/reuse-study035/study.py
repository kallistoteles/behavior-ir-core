"""Owned035 supervisor. Only implemented commands are exposed; no implicit acceptance."""
import argparse,json
from pathlib import Path
import sources

def main():
 p=argparse.ArgumentParser();sub=p.add_subparsers(dest='command',required=True);q=sub.add_parser('prepare-sources');q.add_argument('--out',type=Path,required=True);a=p.parse_args()
 if a.command=='prepare-sources':
  expected=Path(__file__).resolve().parent/'private/core'
  if a.out.resolve()!=expected:raise ValueError('SourceOutputOwnership')
  result=sources.export(sources.ROOT,sources.CORE_REV,a.out)
  print(json.dumps({'operational':'completed','source_files':len(result['files']),'revision':result['revision'],'product_adoption':'unactivated'}))
if __name__=='__main__':main()


CASES=('bootstrap','proofs','conformance','treatments','quality',*[f'growth-D{i}'for i in range(1,6)])
def require_case(case):
 if case not in CASES:raise ValueError('UnknownFrozenCase')
 return case

def claim_slot(root,case):
 require_case(case);path=Path(root)/('growth'if case.startswith('growth-')else'roles')/case
 path.mkdir(parents=True,exist_ok=False);return path

def verify_frozen_sources(root,refs):
 from artifact_io import verify_ref
 for ref in refs:verify_ref(root,ref)
 return True

def validate_built_worker(root,binding,expected_context):
 from artifact_io import verify_ref,safe_path,bounded_read,strict_loads
 if set(binding)!={'format','target','source_context','executable','receipt'}or binding['format']!='core035.built-worker.v1':raise ValueError('BuiltWorkerFields')
 if binding['target']not in ['reuse035-reference','reuse035-ground','reuse035-views','reuse035-combined','reuse035-upstream-oracle']:raise ValueError('BuiltWorkerTarget')
 if binding['source_context']!=expected_context:raise ValueError('BuiltWorkerContext')
 verify_ref(root,binding['executable']);verify_ref(root,binding['receipt'])
 receipt=strict_loads(bounded_read(safe_path(root,binding['receipt']['path'])))
 if receipt.get('source_context')!=expected_context or receipt.get('exit_code')!=0 or receipt.get('stop_reason')is not None or receipt.get('group_empty')is not True or receipt.get('tree_empty')is not True:raise ValueError('FailedOrUnclosedBuild')
 return True
