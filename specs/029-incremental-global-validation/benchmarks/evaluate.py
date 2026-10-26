#!/usr/bin/env python3
"""Fail-closed evaluation of the frozen 029 corpus; timing is never semantic authority."""
import argparse,hashlib,json,math,re,statistics
from collections import defaultdict
from pathlib import Path
GROUPS={('released-baseline','production-like'):3,('released-baseline','instrumented'):1,
        ('candidate','production-like'):3,('candidate','instrumented'):1,('full-reference','instrumented'):1}
TIMES=('evaluate_ms','commit_ms','open_ms','drain_ms','total_ms','setup_ms','including_setup_ms')
def require(ok,message):
    if not ok:raise ValueError(message)
def number(x):return type(x) in (int,float) and math.isfinite(x) and x>=0
def profile_valid(p,corpus):
    require(p['format']=='core029.evaluation-profile.v1' and p['frozen_before_production_optimization'] is True,'profile is not frozen')
    expected={tuple(c) for c in corpus};cases=p['cases'];require(len(cases)==len(expected),'case count')
    require({tuple(c['case']) for c in cases}==expected,'corpus coverage')
    require(p['measurements']['production_repeats']==3 and p['measurements']['instrumented_repeats']==1 and p['measurements']['final_reference_repeats']==1,'repetitions')
    for c in cases:
        for k in ('max_cycle_ms','max_including_setup_ms','max_process_wall_ms','max_process_hwm_kib','baseline_median_cycle_ms','local_or_fallback_median_limit_ms'):
            require(number(c[k]) and c[k]>0,f'missing numeric budget {k}')
        require(len(c['baseline_cycles_ms'])==3 and all(number(x) for x in c['baseline_cycles_ms']),'baseline observations')
    criteria=p['criteria']
    for name in ('primary_cases','constant_control_cases'):
        require(number(criteria[name]['max_median_cycle_ratio']) and 0<criteria[name]['max_median_cycle_ratio']<1,'improvement ratio')
    require(number(criteria['growth']['baseline_cycle_ms_per_starting_entity']) and criteria['growth']['baseline_cycle_ms_per_starting_entity']>0,'growth baseline')
    require(0<criteria['growth']['max_slope_ratio']<1 and len(criteria['growth']['endpoints'])==2,'growth criterion')
    require(criteria['strict_work'] and p['measurements']['mode_parity_required'] is True,'work/parity requirements')
    return {tuple(c['case']):c for c in cases}
def evaluate(p,corpus,rows,manifest):
    cases=profile_valid(p,corpus);groups=defaultdict(list);expected=p['harness_sha256'];bins=manifest['binaries']
    require(bins['released-baseline/production-like']==p['baseline_build']['timing_binary_sha256'] and bins['released-baseline/instrumented']==p['baseline_build']['instrumented_binary_sha256'],'immutable released baseline identity')
    require(manifest['gates_passed'] is True and manifest['reference_exit_code']==0,'required source gates/reference execution')
    require(manifest['gated_revision']==manifest['source_revision'],'ungated candidate revision')
    require(manifest['toolchain']==p['toolchain'],'toolchain mismatch')
    require(manifest['equivalent_harness_sha256']==expected,'harness mismatch or missing equivalent adaptation')
    for row in rows:
        group=(row['strategy'],row['mode']);case=tuple(row['case'])
        require(group in GROUPS and case in cases,'unexpected strategy/mode/case')
        require(type(row.get('returncode')) is int and row['returncode']==0 and not row.get('error'),'failed attempt')
        require(type(row.get('repetition')) is int and 0<=row['repetition']<GROUPS[group],'repetition identity')
        prov=row['provenance'];require(prov['binary_sha256']==bins['/'.join(group)],'binary identity')
        require(all(type(x) is int for x in prov['cpu_affinity']) and prov['cpu_affinity']==p['platform']['reference_cpu_affinity'],'CPU affinity');require(prov['platform']==p['platform']['uname'],'platform mismatch')
        require(prov['runner_sha256']==(manifest['reference_runner_sha256'] if group[0]=='full-reference' else expected['specs/029-incremental-global-validation/benchmarks/run.py']),'runner identity')
        require(number(row['process_wall_ms']) and row['process_wall_ms']>0,'outer process measurement')
        r=row['result'];require(r['mode']==row['mode'],'result mode')
        require([r['n'],r['steps'],r['rule'],r['workload'],r['batch'],r['rules']]==list(case),'probe dimensions')
        require(all(number(r.get(k)) for k in TIMES) and r['drain_ms']>0,'missing/nonfinite timing or final drain')
        require(r['including_setup_ms']>=r['total_ms'] and r['total_ms']>=r['drain_ms'],'whole cycle scope')
        require((r['observations_digest'],r['observation_bytes'])==(cases[case]['observations_digest'],cases[case]['observation_bytes']),'full observation mismatch')
        n,steps,rule,workload,batch,rules=case
        require(all(type(x) is int for x in (n,steps,batch,rules,r['n'],r['steps'],r['batch'],r['rules'],r['final_e_members'],r['final_other_members'])),'integer dimension types')
        require(r['final_e_members']==n+(steps*batch if workload=='create' else 0) and r['final_other_members']==(steps if workload=='unrelated' else 0),'growing-state audit')
        require((r['work'] is None)==(row['mode']=='production-like'),'diagnostic/production mixing')
        groups[(case,group)].append(row)
    results=[];medians={}
    for case,budget in cases.items():
        for group,repeats in GROUPS.items():
            data=groups[(case,group)];require(len(data)==repeats and {r['repetition'] for r in data}==set(range(repeats)),f'missing/duplicate repetitions {case}/{group}')
        timing=groups[(case,('candidate','production-like'))];diagnostic=groups[(case,('candidate','instrumented'))][0]['result']
        med=statistics.median(r['result']['total_ms'] for r in timing);medians[case]=med;checks={}
        for metric,key in [('total_ms','max_cycle_ms'),('including_setup_ms','max_including_setup_ms')]:
            checks[key]=all(r['result'][metric]<=budget[key] for r in timing)
        checks['max_process_wall_ms']=all(r['process_wall_ms']<=budget['max_process_wall_ms'] for r in timing)
        def hwm(row):
            match=re.fullmatch(r'VmHWM:\s*(\d+) kB',row['result']['process_hwm']);require(match is not None,'missing HWM');return int(match[1])
        checks['max_process_hwm_kib']=all(hwm(r)<=budget['max_process_hwm_kib'] for r in timing)
        n,steps,rule,workload,batch,rules=case
        if rule in ('none','unsupported') or workload in ('warm','reopen'):
            checks['local_or_fallback_regression']=med<=budget['local_or_fallback_median_limit_ms']
        for name in ('primary_cases','constant_control_cases'):
            c=p['criteria'][name]
            if n in c['populations'] and rule==c['rule'] and workload in c['workloads'] and batch==c.get('batch',1) and rules==c.get('rules',1):
                checks[name]=med<=budget['baseline_median_cycle_ms']*c['max_median_cycle_ratio']
        if rule in ('none','true','count') and workload!='reopen':
            w=diagnostic['work'];require(all(type(v) is int and v>=0 for v in w.values()),'malformed work counts')
            checks['no_full_revalidation']=all(w[k]==0 for k in ('snapshot_rows','provider_rows','query_rows','store_value_rows'))
            checks['bounded_semantic_work']=w['decoded_rows']<=4*steps*batch+4 and w['predicate_evaluations']<=steps*(4*batch+4*rules+8)+16
        results.append({'case':list(case),'median_cycle_ms':med,'checks':checks,'passed':all(checks.values()),'instrumented_overhead_ratio':diagnostic['total_ms']/med})
    growth=p['criteria']['growth'];lo,hi=growth['endpoints'];a=(lo,8,growth['rule'],growth['workload'],1,1);b=(hi,8,growth['rule'],growth['workload'],1,1)
    slope=(medians[b]-medians[a])/(hi-lo);growth_ok=slope<=growth['baseline_cycle_ms_per_starting_entity']*growth['max_slope_ratio']
    return {'format':'core029.acceptance.v1','passed':growth_ok and all(r['passed'] for r in results),'cases':results,'growth':{'slope_ms_per_entity':slope,'passed':growth_ok},'trust':'conditional correctness argument and reference/negative tests; performance observations are not mathematical proof'}
def harness_identities(repository,p):
    actual={};equivalent={}
    for path,expected in p['harness_sha256'].items():
        data=(repository/path).read_bytes();actual[path]=hashlib.sha256(data).hexdigest()
        # The sole accepted source-only adaptation shares a fixture module in
        # unit tests. Exact remaining bytes must match the frozen baseline.
        if path=='crates/behavior-store/tests/support/global_workload.rs':
            data=data.replace(b'pub(crate) mod fixture;',b'mod fixture;')
        equivalent[path]=hashlib.sha256(data).hexdigest()
        require(equivalent[path]==expected,f'unapproved harness adaptation {path}')
    return actual,equivalent

def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--rows',type=Path,required=True);parser.add_argument('--manifest',type=Path,required=True);parser.add_argument('--output',type=Path,required=True);a=parser.parse_args()
    a.output.write_text(json.dumps({'format':'core029.acceptance.v1','passed':False,'error':'evaluation did not complete'})+'\n')
    root=Path(__file__).resolve().parents[1];raw=(root/'evaluation-profile.json').read_bytes();frozen=(root/'evidence/profile-freeze.sha256').read_text().split()[0]
    require(hashlib.sha256(raw).hexdigest()==frozen,'frozen profile changed')
    p=json.loads(raw);corpus=json.loads((root/'benchmarks/corpus.json').read_text());rows=[json.loads(line) for line in a.rows.read_text().splitlines() if line]
    manifest=json.loads(a.manifest.read_text());actual,equivalent=harness_identities(root.parents[1],p);require(actual==manifest['harness_sha256'],'actual harness provenance');require(equivalent==manifest['equivalent_harness_sha256'],'equivalent harness provenance');result=evaluate(p,corpus,rows,manifest);a.output.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({'passed':result['passed'],'cases':len(result['cases']),'failed_cases':sum(not r['passed'] for r in result['cases']),'growth':result['growth']}));raise SystemExit(0 if result['passed'] else 1)
if __name__=='__main__':main()
