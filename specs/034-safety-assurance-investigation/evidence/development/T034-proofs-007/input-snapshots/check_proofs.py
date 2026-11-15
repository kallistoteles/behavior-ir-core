"""Bounded pinned proof audit, expected types, transitive axioms and fresh replay."""
import hashlib,json,os,re,subprocess,time
from pathlib import Path
from artifact_io import bounded_read,strict_loads,write_once
from recorder import Ledger,run
HERE=Path(__file__).resolve().parent
LEAN=Path('/nix/store/7m5ds60a41w276hsx3rybv76x3609l6k-lean4-4.30.0')
ALLOWED={'propext','Classical.choice','Quot.sound'}
MODULES=[*['safety.'+x for x in ['Data','FieldOwnership','LifecycleData','LifecycleDependency','LifecycleCheck','LifecycleSequence','Finite','Check','Audit']],*['Core032Pinned.'+x for x in ['State','Reference','Checker','History']],*['Assurance034.'+x for x in ['Imports','Claims','Segments','History','Publication','Countermodels','Audit']]]

def validate_proof_result(result,targets):
 if result.get('operational')!='completed' or result.get('fresh_replay') is not True:raise ValueError('MissingFreshReplay')
 expected={x['name']:x for x in targets['roots']};actual={x['name']:x for x in result['roots']}
 if len(expected)!=len(targets['roots']) or len(actual)!=len(result['roots']) or set(expected)!=set(actual):raise ValueError('MissingOrRepeatedRoot')
 for name,target in expected.items():
  row=actual[name]
  if row.get('type_digest')!=target['type_digest'] or row.get('kernel_checked') is not True:raise ValueError('WeakenedOrUncheckedType')
  if not isinstance(row.get('axioms'),list) or set(row['axioms'])-ALLOWED:raise ValueError('ForbiddenAxiom')
 return True

def audit_source(targets):
 out='import Assurance034.Segments\nimport Assurance034.History\nimport Assurance034.Publication\nimport Assurance034.Countermodels\nopen Assurance034\nopen Lean Elab Command Term Meta\n'
 out+='''elab "#assurance_audit " root:ident " : " expected:term : command => do
  let report ← liftTermElabM do
    let info ← getConstInfo root.getId
    match info with
    | .thmInfo _ => pure ()
    | _ => throwError "Not a theorem"
    let type ← elabTerm expected none
    let type ← instantiateMVars type
    let checked ← Safety.auditExpected root.getId type
    return Json.mkObj [("checked",checked),("type_repr",toJson (reprStr info.type))]
  liftIO <| IO.println s!"CORE034_AUDIT {report.compress}"
'''
 for row in targets['roots']:
  if not re.fullmatch(r'Assurance034\.[a-z_]+',row['name']):raise ValueError('RootName')
  out+='#assurance_audit '+row['name']+' : ('+row['expected_type']+')\n'
 return out

def check(out,ledger=None):
 out=Path(out);out.mkdir(parents=True,exist_ok=False)
 boot=Path('/proc/sys/kernel/random/boot_id').read_text().strip();local=Ledger(time.monotonic_ns(),boot,1800)
 root=HERE/'proofs';targets=strict_loads(bounded_read(root/'targets.json'))
 drv=subprocess.check_output(['/nix/store/f82xir6jh4ad169dpcs8hf32pjzs7sgy-nix-2.34.8/bin/nix-store','--query','--deriver',str(LEAN)],timeout=15).decode().strip()
 if drv!='/nix/store/6wy0z2zc7gl2i6vxzcw59i9pdhk2g6b8-lean4-4.30.0.drv':raise ValueError('ToolDerivation')
 compiled=out/'compiled';compiled.mkdir();audit=out/'Audit.lean';write_once(audit,audit_source(targets).encode())
 input_paths=[Path(__file__).resolve(),root/'targets.json',root/'imports.json',*sorted(root.rglob('*.lean'))]
 inputs=[{'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in input_paths]
 result={'bound_inputs':inputs,'format':'core034.proof-result.v1','operational':'not_run','fresh_replay':False,'roots':[],'commands':[],'tool_deriver':drv,'scope':'abstract composition and exact imported restricted models; runtime bridges unproved'}
 effective=local if ledger is None or local.remaining_ns(time.monotonic_ns(),boot)<=ledger.remaining_ns(time.monotonic_ns(),boot) else ledger
 env={'LEAN_PATH':str(compiled),'LEAN_NUM_THREADS':'1','PATH':str(LEAN/'bin')+':/run/current-system/sw/bin'}
 for module in MODULES:
  rel=Path(*module.split('.')).with_suffix('.lean');src=audit if module=='Assurance034.Audit' else root/rel
  obj=(compiled/rel).with_suffix('.olean');obj.parent.mkdir(parents=True,exist_ok=True)
  wall=min(300,local.remaining_ns(time.monotonic_ns(),boot)/10**9)
  receipt=run([str(LEAN/'bin/lean'),'-j1','-DmaxHeartbeats=2000000','-M4096','-o',str(obj),str(src)],out/'roles'/module,wall_seconds=max(.001,wall),ledger=effective,env=env)
  result['commands'].append({'module':module,'receipt':str((out/'roles'/module/'receipt.json').relative_to(out)),'exit_code':receipt['exit_code'],'stop_reason':receipt['stop_reason']})
  if receipt['exit_code']!=0 or receipt['stop_reason']:
   result['operational']='resource_stopped' if receipt['stop_reason'] else 'tool_failed';break
 else:
  fresh=run([str(LEAN/'bin/leanchecker'),'--fresh','Assurance034.Audit'],out/'roles/fresh',wall_seconds=max(.001,min(900,local.remaining_ns(time.monotonic_ns(),boot)/10**9)),ledger=effective,env=env)
  result['fresh_replay']=fresh['exit_code']==0 and fresh['stop_reason'] is None
  result['operational']='completed' if result['fresh_replay'] else 'resource_stopped' if fresh['stop_reason'] else 'tool_failed'
  for line in (out/'roles/Assurance034.Audit/stdout.txt').read_text().splitlines():
   if line.startswith('CORE034_AUDIT '):
    item=json.loads(line.removeprefix('CORE034_AUDIT '));c=item['checked'];target=next(x for x in targets['roots'] if x['name']==c['declaration'])
    if c['expected_type_checked'] is not True:raise ValueError('TypeUnchecked')
    result['roots'].append({'name':c['declaration'],'type_digest':target['type_digest'],'actual_type_repr':item['type_repr'],'axioms':c['axioms'],'kernel_checked':result['fresh_replay']})
  if result['operational']=='completed':validate_proof_result(result,targets)
 if any(hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()!=x['sha256'] for x in inputs):
  result['operational']='invalid_archive';result['fresh_replay']=False
 result['compiled_closure']=[{'path':str(p.relative_to(out)),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sorted(compiled.rglob('*.olean'))]
 write_once(out/'result.json',(json.dumps(result,indent=2)+'\n').encode());return result
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();r=check(a.out);print(json.dumps({'operational':r['operational'],'roots':len(r['roots']),'fresh_replay':r['fresh_replay']}));raise SystemExit(0 if r['operational']=='completed' else 3 if r['operational']=='resource_stopped' else 1)
