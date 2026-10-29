"""Comparative collection; complete data, failures and exact-reference selection."""
from artifacts import attempt_coverage,ArtifactError
from early_campaign import CampaignError

def expected_keys(manifest):
    return [(c['case_id'],candidate,profile,rep) for c in manifest['cases'] for candidate in manifest['candidates'] for profile in manifest['profiles'] for rep in range(manifest['repetitions'])]

def validate_coverage(manifest,rows):
    try:return attempt_coverage(rows,expected_keys(manifest))
    except ArtifactError as exc:raise CampaignError(str(exc)) from exc

def normalize_reference(frame,operations):
    if frame.get('format')!='core032.full-reference.v1' or len(frame.get('observations',[]))!=len(operations):raise CampaignError('incomplete actual forced-reference attempt coverage')
    def state(source):
        snapshot=source['snapshot'];rows=[]
        for row in snapshot['seed']:
            value=row['value'];entity=row['entity'];key={'entity':entity,'id':value['id']}
            if entity=='E':typed={'kind':'E','x':value['x'],'padding':value['padding'],'owner':value.get('owner')}
            elif entity=='Parent':typed={'kind':'Parent','phase':value['phase']}
            else:raise CampaignError('unrecognized reference entity')
            rows.append([key,typed])
        rows.sort(key=lambda r:(r[0]['entity'],r[0]['id']))
        used=[{'entity':e,'id':i} for e,i in source['used']]
        if used!=sorted(used,key=lambda k:(k['entity'],k['id'])) or len({(r['entity'],r['id']) for r in used})!=len(used):raise CampaignError('reference lifetime inventory is noncanonical')
        return {'behavior':frame['behavior'],'schema':snapshot['schema'],'profile':'0.8','history':snapshot['source_history'],'live':rows,'used':used}
    observations=[]
    for operation,row in zip(operations,frame['observations']):
        observed=row['observed'];record=observed['core_record'];code=record.get('result') if record is not None else None
        outcome='Allow' if code=='ALLOW' else 'Refused' if code in ('DENY','ENTITY_ID_ALREADY_USED','LIFECYCLE_CONFLICT') else 'EvaluationError'
        observations.append({'before':state(row['before']),'after':state(row['after']),'operation':operation,'outcome':outcome,'core_record':record,'store_error':observed['store_error'],'commands':record.get('commands',{}).get('intents',[]) if record is not None else [],'committed_record':observed['committed_record'],'support_available':True})
    return observations


def prepare(manifest_path,*,binary,reference,nova,consumer,proof_controls,proof_consumer,root):
    import json,subprocess
    from pathlib import Path
    from early_campaign import freeze
    root=Path(root);here=Path(__file__).parent
    matrix=json.loads((here/'cases.json').read_text())
    case_files=[here/c['path'] for c in [*matrix['native'],*matrix['proofs']]]
    # Freeze genuine Core module/genesis/attempt inputs before timing. Otherwise
    # the reference would pay a redundant test-request Store construction.
    scenario_dir=Path(manifest_path).resolve().parent/(Path(manifest_path).stem+'.scenario-inputs')
    scenario_dir.mkdir(parents=True,exist_ok=False)
    matrix['scenario_offset']=len(case_files)
    for point in matrix['native']:
        destination=scenario_dir/(point['case_id']+'.json')
        subprocess.run([str(Path(binary).resolve()),'scenario',str((here/point['path']).resolve()),str(destination)],check=True)
        case_files.append(destination)
    matrix['hardware']={'lscpu':subprocess.check_output(['lscpu'],text=True),'meminfo':Path('/proc/meminfo').read_text(),'cgroup_cpu':Path('/sys/fs/cgroup/cpu.max').read_text() if Path('/sys/fs/cgroup/cpu.max').exists() else None,'cgroup_memory':Path('/sys/fs/cgroup/memory.max').read_text() if Path('/sys/fs/cgroup/memory.max').exists() else None,'kernel':subprocess.check_output(['uname','-a'],text=True),'os_cache':'not flushed; fresh process/workspace, installed pinned dependencies'}
    matrix['build_profile']='release, Rust 1.98.1, CARGO_INCREMENTAL=0; exact executable hashes authoritative'
    matrix['usefulness']='no unexplained exactness mismatch; count all output, prefix replay, parameter and bridge work; no total succinctness claim with a linear bridge; defer/no-go permitted only after mandatory attempts'
    experiment=root/'experiments/transition-study032'
    sources=[*experiment.joinpath('src').rglob('*.rs'),*experiment.joinpath('proofs').glob('*'),experiment/'Cargo.toml',experiment/'Cargo.lock',experiment/'shell.nix',experiment/'vendor/nova-upstream.json',experiment/'vendor/nova-portable.patch',root/'flake.lock',root/'rust-toolchain.toml',*here.glob('*.py'),here/'cases.json',here/'profile.json',here/'oracles.json',*here.parent.joinpath('contracts').glob('*.md'),here.parent/'evidence/protected-inputs.json',root/'crates/behavior-store/src/store/incremental/mod.rs',root/'crates/behavior-store/src/store/incremental/research032_tests.rs',root/'crates/behavior-store/tests/support/research032_scenario.rs',root/'consumer/tests/research032_recovery.rs',root/'consumer/tests/support/research032_recovery.rs']
    return freeze(manifest_path,binary=binary,cases=case_files,sources=sources,mode='first-use',parameters_from=None,comparison=matrix,tools={'reference':reference,'nova':nova,'consumer':consumer,'proof_controls':proof_controls,'proof_consumer':proof_consumer})


def _read(path):
    from artifacts import read_json
    return read_json(path,{'type':'object'},max_bytes=1024**3)


def _reference_frame(path):
    import json
    from artifacts import _pairs,_constant
    with open(path,'r') as source:
        for line in source:
            if 'CORE032_REFERENCE ' in line:
                return json.loads(line.split('CORE032_REFERENCE ',1)[1],object_pairs_hook=_pairs,parse_constant=_constant)
    raise CampaignError('forced reference process emitted no complete frame')


def run_native(manifest_path,output):
    import json,os,time
    from pathlib import Path
    from early_campaign import verify_manifest,write_new,sha
    from profile import preflight,run_child,timing_lock,pin_orchestration
    from artifacts import same_json
    from package_evidence import pack_file
    manifest_path=Path(manifest_path).resolve();output=Path(output).resolve();m=verify_manifest(manifest_path)
    if m['format']!='core032.comparative-manifest.v1':raise CampaignError('comparative manifest required')
    output.mkdir(parents=True,exist_ok=False);base=manifest_path.parent;matrix=m['comparison']['matrix'];p=m['profile'];preflight(p,output,expected_digest=m['profile_sha256'])
    pin_orchestration(p)
    executable=base/m['binary'];reference=base/m['comparison']['tools']['reference'];env=dict(os.environ,RAYON_NUM_THREADS='1');records=[]
    declaration={'cases':matrix['native'],'candidates':matrix['candidates'],'profiles':matrix['profiles'],'repetitions':m['repetitions']}
    def launch(argv,where,deadline,extra_env=None):
        return run_child(list(map(str,argv)),output_dir=where,timeout_seconds=p['native_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],deadline=deadline,env=dict(env,**(extra_env or {})))
    def retain(where):
        start=time.monotonic();artifacts=[]
        for f in sorted(where.rglob('*')):
            if f.is_file() and f.suffix in ('.json','.txt') and f.name not in ('attempt.json',):
                item=pack_file(f,remove_workspace_file=True);item['path']=str(f.with_suffix(f.suffix+'.gz').relative_to(output));artifacts.append(item)
        return artifacts,time.monotonic()-start
    with timing_lock('/data/core028/core032-measure.lock'):
        for ci,point in enumerate(matrix['native']):
            case_path=base/m['cases'][ci];case=_read(case_path);operations=case['prefix']+case['operations']
            for profile in matrix['profiles']:
                for repetition in range(m['repetitions']):
                    expected=None
                    for candidate in matrix['candidates']:
                        verify_manifest(manifest_path);preflight(p,output,expected_digest=m['profile_sha256'])
                        directory=output/f'{point["case_id"]}-{profile}-{repetition}-{candidate}';directory.mkdir();start=time.monotonic();deadline=start+p['whole_case_timeout_seconds'];phases={};outcome='Succeeded';observed=None;metrics=None
                        try:
                            if candidate=='reference':
                                scenario=base/m['cases'][matrix['scenario_offset']+ci]
                                if True:
                                    phases['reference']=launch([reference,'--ignored','--exact','store::incremental::research032_tests::research032_reference_probe','--nocapture','--test-threads=1'],directory/'reference',deadline,{'CORE032_SCENARIO':str(scenario)})
                                    if phases['reference']['outcome']=='Succeeded':
                                        frame=_reference_frame(directory/'reference/stdout.txt');all_observations=normalize_reference(frame,operations);observed=all_observations[len(case['prefix']):]
                                        metrics={'core_steps':frame['observations'][len(case['prefix']):]}
                                        # Keep phase metrics, not a duplicate large observation tree.
                                        metrics={'step_metrics':[r['metrics'] for r in metrics['core_steps']]}
                                        if profile=='study':
                                            normalized=directory/'reference-observations.json';write_new(normalized,observed)
                                            transported=directory/'reference-study.json';phases['format']=launch([executable,'format',case_path,transported,normalized,'study'],directory/'format',deadline)
                                            if phases['format']['outcome']=='Succeeded':
                                                exported=directory/'reference-export.json';phases['export']=launch([executable,'export',case_path,exported,transported,'study'],directory/'export',deadline)
                                                if phases['export']['outcome']=='Succeeded':
                                                    expanded=_read(exported)['observations']
                                                    if not same_json(expanded,observed):raise CampaignError('reference study interpretation changed complete observations')
                            else:
                                produced=directory/'producer-output.json';phases['producer']=launch([executable,'run',case_path,produced,'A' if candidate=='A' else 'producer',profile],directory/'producer',deadline)
                                if phases['producer']['outcome']=='Succeeded':
                                    if candidate=='B':
                                        checked=directory/'checker-output.json';phases['consumer']=launch([executable,'check',case_path,checked,produced,profile],directory/'consumer',deadline)
                                        if phases['consumer']['outcome']=='Succeeded':observed=_read(checked)['observations']
                                    elif profile=='study':
                                        expanded=directory/'expanded-output.json';phases['export']=launch([executable,'export',case_path,expanded,produced,profile],directory/'export',deadline)
                                        if phases['export']['outcome']=='Succeeded':observed=_read(expanded)['observations']
                                    else:observed=_read(produced)['observations']
                                    parsed=_read(produced);metrics={k:v for k,v in parsed.items() if k not in ('observations','study_bundle')}
                            failures=[v['outcome'] for v in phases.values() if v['outcome']!='Succeeded']
                            if failures:outcome=failures[0]
                            elif observed is None:raise CampaignError('successful tool omitted required complete output')
                            elif candidate=='reference':expected=observed
                            elif expected is None:outcome='ReferenceUnavailable'
                            elif not same_json(expected,observed):outcome='Mismatch'
                        except (CampaignError,ArtifactError,OSError,ValueError,KeyError) as exc:
                            outcome='Mismatch' if isinstance(exc,CampaignError) else 'ToolFailure';write_new(directory/'error.json',{'error':str(exc),'type':type(exc).__name__})
                        whole=time.monotonic()-start
                        # Canonical claim digest is diagnostic identity, never an equality proof.
                        claim=__import__('hashlib').sha256(json.dumps(observed,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()).hexdigest() if observed is not None else None
                        del observed
                        artifacts,pack_seconds=retain(directory)
                        row={'format':'core032.native-attempt.v1','case_id':point['case_id'],'candidate':candidate,'mode':profile,'repetition':repetition,'outcome':outcome,'whole_seconds':whole,'producer_seconds':phases.get('producer',{}).get('wall_seconds'),'consumer_seconds':phases.get('consumer',{}).get('wall_seconds'),'phases':phases,'metrics':metrics,'claim_sha256':claim,'retention_seconds':pack_seconds,'artifacts':artifacts}
                        write_new(directory/'attempt.json',row);records.append(row);print(point['case_id'],profile,repetition,candidate,outcome,round(whole,3),flush=True)
                        if outcome=='Mismatch':raise CampaignError('unexplained exactness mismatch; collection stopped, artifacts retained')
    validate_coverage(declaration,records)
    index={'format':'core032.native-index.v1','manifest_sha256':sha(manifest_path),'coverage_complete':True,'exactness':all(r['outcome'] not in ('Mismatch','ToolFailure') for r in records),'records':records}
    write_new(output/'index.json',index);return index
