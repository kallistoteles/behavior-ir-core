#!/usr/bin/env python3
"""Deliberately break each reuse premise; require behavioral test failure, restore source."""
import hashlib,json,os,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/'crates/behavior-core/src/eval/prepared.rs'
DEST=ROOT/'specs/029-incremental-global-validation/evidence/mutations'
CASES=[
 ('count-maintenance','n = n.checked_add(1)?;','n = n.checked_add(0)?;','behavior-store','cardinality_boundary_has_independent_expected_results'),
 ('effect-inventory','for (key, value) in &world.created {','for (key, value) in world.created.iter().take(0) {','behavior-core','resulting_state_evidence_is_specific_to_one_exact_parent_epoch'),
 ('parent-identity','if !Arc::ptr_eq(&self.epoch, &child.parent) {','if false {','behavior-core','resulting_state_evidence_is_specific_to_one_exact_parent_epoch'),
 ('locality','        ExprKind::Exists(_)\n        | ExprKind::Referenced(_)','        ExprKind::Exists(_) => true,\n        ExprKind::Referenced(_)','behavior-store','selected_coverage_resolves_suppressed_derived_and_mixed_roots'),
 ('trace-correspondence','template.trace.clone()','template.skipped.clone()','behavior-core','checked_parent_evaluation_preserves_complete_record_and_observations'),
 ('module-identity','self.module == crate::serialize::to_wire_json(module)','true','behavior-core','same_behavior_hash_does_not_authorize_stale_rendered_metadata'),
]
def main():
    original=SOURCE.read_text();DEST.mkdir(parents=True,exist_ok=True);results=[]
    try:
        for name,before,after,package,test in CASES:
            assert original.count(before)==1,(name,'mutation target changed')
            SOURCE.write_text(original.replace(before,after,1))
            command=['cargo','test','-p',package,'--lib','--features','validation-work',test,'--','--nocapture']
            run=subprocess.run(command,cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,timeout=180,env={**os.environ,'CARGO_INCREMENTAL':'0'})
            (DEST/f'{name}.txt').write_text(run.stdout)
            detected=run.returncode!=0 and 'running 1 test' in run.stdout and 'test result: FAILED' in run.stdout
            results.append({'premise':name,'test':test,'command':command,'returncode':run.returncode,'behavioral_failure':detected})
            print(json.dumps(results[-1]),flush=True)
            SOURCE.write_text(original)
            if not detected:raise SystemExit(f'failed mutation control: {name}')
    finally:
        SOURCE.write_text(original)
        (DEST/'results.json').write_text(json.dumps({'source_sha256':hashlib.sha256(original.encode()).hexdigest(),'results':results},indent=2)+'\n')
if __name__=='__main__':main()
