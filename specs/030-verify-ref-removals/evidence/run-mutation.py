#!/usr/bin/env python3
"""Explicit opt-in source mutation controls. Always restore exact original bytes.
Run only with no concurrent builds and from this feature worktree.
"""
import hashlib,json,subprocess,sys,fcntl,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
OUT=Path(__file__).resolve().parent
REF='crates/behavior-verify/src/encode/ref_world.rs'
CHECKS='crates/behavior-verify/src/checks.rs'
CONFIRM='crates/behavior-verify/src/confirm.rs'
SEMANTIC='crates/behavior-verify/src/governance/semantic_proof.rs'
CASES={
 'trusted_inventory':(SEMANTIC,'validate_reference_inventory(&m, profile, &report.checks)?;',
     '{ let mut claimed = report.checks.clone(); claimed.retain(|c| c.subject.kind != "reference_world"); validate_reference_inventory(&m, profile, &claimed)?; }',
     '--test','ref_removals','trusted_manifests_independently'),
 'schema_dependency':(CHECKS,'if a.removes().iter().any(|r| {','if false && a.removes().iter().any(|r| {',
     '--test','cache','reference_proofs_depend_on_unmentioned'),
 'inventory':(REF,'for (field, target) in item.reference_fields() {','for (field, target) in item.reference_fields() { if source == "Other" { continue; }','--test','ref_removals','every_incoming_source'),
 'capture':(REF,'let target = encoded.term.plain()?;','let target = "\\\"different-capture\\\"";','--test','ref_removals','joint_07'),
 'bound_delta':(REF,'&& !removed.contains(parameter)','&& false /* MUTATION: omit surviving bound refs */','--test','ref_removals','newly_created_and_retargeted'),
 'create_delta':(REF,'if source == &class.source\n                    && let Some(Binding::Entity { fields, .. }) =\n                        bindings.get(&format!("create[{i}]"))','if false\n                    && let Some(Binding::Entity { fields, .. }) =\n                        bindings.get(&format!("create[{i}]"))','--test','ref_removals','newly_created_and_retargeted'),
 'prefix':(CHECKS,'a.ae.path(a.ae.reference_prefix)','a.ae.path(a.ae.steps.len())','--test','ref_removals','unguarded_removal_has_a_real'),
 'witness':(CONFIRM,'s["obligation"]["field"] == *field','true /* MUTATION: ignore exact field */','--lib','actual_first_reference_failure_requires_exact'),
}
lock=open(Path(tempfile.gettempdir())/'core030-source-mutation.lock','w')
fcntl.flock(lock,fcntl.LOCK_EX)
name=sys.argv[1];case=CASES[name];path=ROOT/case[0];before=path.read_bytes();s=before.decode()
assert case[1] in s,(name,'mutation anchor missing')
command=['cargo','test','--locked','-p','behavior-verify',*case[3:]]
record={'case':name,'source':case[0],'before_sha256':hashlib.sha256(before).hexdigest(),'removed':case[1],'inserted':case[2],'command':command}
try:
 path.write_text(s.replace(case[1],case[2],1))
 result=subprocess.run(command,cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
 (OUT/f'mutation-{name}.txt').write_text(result.stdout)
 record['exit']=result.returncode
 assert result.returncode!=0 and 'test result: FAILED' in result.stdout,(name,'no behavioral test failure')
finally:
 path.write_bytes(before)
 record['restored_sha256']=hashlib.sha256(path.read_bytes()).hexdigest()
 (OUT/f'mutation-{name}.json').write_text(json.dumps(record,indent=2)+'\n')
assert path.read_bytes()==before
print(json.dumps({'case':name,'behavioral_failure_detected':True,'source_restored':True}))
