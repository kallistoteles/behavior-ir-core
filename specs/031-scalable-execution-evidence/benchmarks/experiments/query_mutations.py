"""Compile isolated, deliberately broken finite-map premises; no Core source mutation."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import artifacts as a
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True);args=p.parse_args()
a.require(not args.output.exists(),'fresh mutation workspace required');args.output.mkdir(parents=True)
root=Path(__file__).resolve().parents[4];helper=root/'crates/behavior-store/tests/support/query_delta_experiments.rs';source=helper.read_text()
common='let retired=BTreeSet::new();'
cases=[
 ('duplicate','if !seen.insert(&d.id)', 'let old=BTreeMap::from([("a".into(),1),("b".into(),1)]);let next=BTreeMap::from([("a".into(),0),("b".into(),1)]);let d=Delta{id:"a".into(),before:Some(1),after:Some(0)};let changes=vec![d.clone(),d];'+common,'1,1'),
 ('stale','if old.get(&d.id).copied() != d.before','let old=BTreeMap::from([("a".into(),1)]);let next=BTreeMap::from([("a".into(),0)]);let changes=vec![Delta{id:"a".into(),before:Some(0),after:Some(0)}];'+common,'1,1'),
 ('capture','if capture_before != capture_after','let old=BTreeMap::from([("a".into(),1)]);let next=BTreeMap::from([("a".into(),0)]);let changes=vec![Delta{id:"a".into(),before:Some(1),after:Some(0)}];'+common,'1,0'),
 ('retired','if d.before.is_none()','let old=BTreeMap::new();let next=BTreeMap::from([("a".into(),1)]);let changes=vec![Delta{id:"a".into(),before:None,after:Some(1)}];let retired=BTreeSet::from(["a".into()]);','1,1'),
 ('complete','if &rebuilt != next','let old=BTreeMap::new();let next=BTreeMap::from([("a".into(),1)]);let changes=vec![];'+common,'1,1')]
results=[]
for name,condition,setup,captures in cases:
 a.require(source.count(condition)==1,'exact premise mutation site')
 trial=args.output/name;trial.mkdir()
 test='\n#[test] fn guard_is_required(){'+setup+'let observed=filtered_count(&old,&next,&changes,'+captures+',&retired);println!("GUARD_RESULT {observed:?}");assert!(observed.is_err(),"unestablished premise returned a count");}\n'
 row={'premise':name,'helper_sha256':a.digest(helper.read_bytes())}
 for kind,body in [('checked',source),('mutant',source.replace(condition,'if false && '+condition[3:]))]:
  path=trial/(kind+'.rs');path.write_text(body+test);exe=trial/kind
  compiled=subprocess.run(['rustc','--edition=2024','--test',str(path),'-o',str(exe)],capture_output=True,text=True,timeout=60)
  (trial/(kind+'.compile.stderr')).write_text(compiled.stderr);a.require(compiled.returncode==0,'compilation failure is not a premise counterexample')
  run=subprocess.run([str(exe.resolve()),'--exact','guard_is_required','--nocapture'],capture_output=True,text=True,timeout=30)
  (trial/(kind+'.stdout')).write_text(run.stdout);(trial/(kind+'.stderr')).write_text(run.stderr)
  a.require(run.returncode==(0 if kind=='checked' else 101),'expected assertion outcome, not unrelated tool failure')
  row[kind]={'source_sha256':a.digest(path.read_bytes()),'returncode':run.returncode,'observed':next(x for x in run.stdout.splitlines() if 'GUARD_RESULT ' in x)}
 results.append(row)
result={'format':'core031.query-premise-mutations.v1','rustc':subprocess.check_output(['rustc','--version'],text=True).strip(),'controls':results,'status':'passed','scope':'Five checked guards pass; removing each lets invalid data return a count and fails its assertion. Standard-library finite-map helper only, not a Core extractor or Lean proof.'}
(args.output/'results.json').write_bytes(a.canonical(result));print(json.dumps({'premises':len(results),'checked_passes':5,'mutants_fail_assertions':5,'status':'passed'}))
