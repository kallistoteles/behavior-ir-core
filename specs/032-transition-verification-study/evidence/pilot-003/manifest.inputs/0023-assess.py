"""Fail-closed completion assessment. A no-go disposition cannot replace missing work."""
BOOLEAN_REQUIREMENTS=('native_complete','exactness','proof_small_verified','bridge_matched','proof_integrity','negative_controls','compatibility','recovery','portable','dossier')
COUNT_REQUIREMENTS=('first_use_repetitions','reuse_repetitions')
def assess_claims(claims):
    blocked=[key for key in BOOLEAN_REQUIREMENTS if claims.get(key) is not True]
    blocked.extend(key for key in COUNT_REQUIREMENTS if type(claims.get(key)) is not int or claims[key]<3)
    return {'format':'core032.assessment.v1','complete':not blocked,'blocking_obligations':blocked,'claims':claims}


def assess_directory(manifest_path,output):
    from pathlib import Path
    from early_campaign import verify_manifest,write_new,sha
    from campaign import _read,validate_coverage
    manifest_path=Path(manifest_path).resolve();base=manifest_path.parent;m=verify_manifest(manifest_path)
    def optional(path):
        try:return _read(path)
        except (OSError,ValueError):return {}
    native=optional(base/'native/index.json');proofs=optional(base/'proofs/index.json');recovery=optional(base/'recovery/index.json')
    compatibility=optional(base.parent/'compatibility.json');checks=optional(base.parent/'checks/report.json')
    portable=optional(base.parent/'portable/index.json');theorems=optional(base.parent/'native-proofs-006/report.json')
    first=optional(base/'proofs/c1-h2-first-use/index.json');reuse=optional(base/'proofs/primary-reuse-runs/index.json')
    expected={'cases':m['comparison']['matrix']['native'],'candidates':m['comparison']['matrix']['candidates'],'profiles':m['comparison']['matrix']['profiles'],'repetitions':m['repetitions']}
    native_complete=False
    try:validate_coverage(expected,native.get('records',[]));native_complete=True
    except ValueError:pass
    first_good=[r for r in first.get('records',[]) if r.get('proof')=='Verified' and r.get('bridge')=='Matched']
    reuse_good=[r for r in reuse.get('records',[]) if r.get('proof')=='Verified' and r.get('bridge')=='Matched']
    affinity=all(r[s].get('orchestration_cpus')==[0] and r[s].get('measurement_cpu')==7 for r in first_good+reuse_good for s in ('producer','consumer'))
    claims={'native_complete':native_complete,'exactness':native.get('exactness') is True,'proof_small_verified':proofs.get('primary_passed') is True and affinity,'bridge_matched':bool(first_good and reuse_good),'first_use_repetitions':len(first_good),'reuse_repetitions':len(reuse_good),'proof_integrity':theorems.get('outcome')=='Checked' and theorems.get('fresh_kernel_replay') is True,'negative_controls':checks.get('passed') is True and recovery.get('passed') is True,'compatibility':compatibility.get('passed') is True,'recovery':recovery.get('passed') is True,'portable':portable.get('passed') is True,'dossier':(base.parent/'investigation.md').is_file() and (base.parent/'evidence/cost-model.md').is_file()}
    # base is evidence/campaign-001, so dossier lives two levels above it.
    claims['dossier']=(base.parent.parent/'investigation.md').is_file() and (base.parent/'cost-model.md').is_file()
    report=assess_claims(claims);report['manifest_sha256']=sha(manifest_path);report['capacity_attempts_complete']=proofs.get('capacity_attempts_complete') is True
    if not report['capacity_attempts_complete']:report['complete']=False;report['blocking_obligations'].append('proof_capacity_attempts')
    integrity=retained_integrity(base,m,native,proofs);report['retained_integrity']=integrity
    if not integrity['passed']:report['complete']=False;report['blocking_obligations'].append('retained_integrity')
    write_new(output,report);return report


def retained_integrity(base,manifest,native,proofs):
    """Validate retained bytes/coordinates, not just producer-written status flags."""
    from pathlib import Path
    from early_campaign import sha
    from campaign import _read
    from artifacts import attempt_coverage
    base=Path(base);failures=[]
    def bound(parent,relative):
        result=(parent/relative).resolve()
        if not result.is_relative_to(parent.resolve()):raise ValueError('artifact escapes its declared container')
        return result
    for row in native.get('records',[]):
        for phase in row.get('phases',{}).values():
            if phase.get('launched') and (phase.get('measurement_cpu')!=7 or phase.get('orchestration_cpus')!=[0]):failures.append('native actual affinity mismatch')
        for item in row.get('artifacts',[]):
            try:
                path=bound(base/'native',item['path'])
                if path.stat().st_size!=item['container_bytes'] or sha(path)!=item['container_sha256']:raise ValueError('retained native bytes changed')
                if type(item['raw_bytes']) is not int or not 0<=item['raw_bytes']<=1024**3:raise ValueError('invalid raw byte bound')
            except (OSError,ValueError,KeyError) as exc:failures.append(str(exc))
    matrix=manifest['comparison']['matrix'];expected=[(p['case_id'],'accumulated','first-use',r) for p in matrix['proofs'] for r in range(matrix['proof_primary_repetitions'] if p['primary'] else matrix['proof_capacity_repetitions'])]
    try:attempt_coverage([dict(r,candidate='accumulated',outcome=r['proof']) for r in proofs.get('records',[])],expected)
    except ValueError as exc:failures.append(str(exc))
    for row in proofs.get('records',[]):
        for phase in (row.get('producer'),row.get('consumer')):
            if phase and phase.get('launched') and (phase.get('measurement_cpu')!=7 or phase.get('orchestration_cpus')!=[0]):failures.append('proof actual affinity mismatch')
        if row.get('proof')=='Verified':
            try:
                group=bound(base/'proofs',row['group']);report_path=bound(group,row['consumer_report'])
                if sha(report_path)!=row['consumer_report_sha256']:raise ValueError('consumer report changed')
                report=_read(report_path)
                if report.get('status')!='Verified':raise ValueError('consumer did not verify')
                if sha(group/f'rep{row["repetition"]}'/'proof.bin')!=row['proof_sha256']:raise ValueError('verified proof bytes changed')
                if sha(report_path.parent/'parameters.bin')!=report['parameter_export']['sha256']:raise ValueError('independent parameters changed')
            except (OSError,ValueError,KeyError) as exc:failures.append(str(exc))
    return {'passed':not failures,'failures':failures}
