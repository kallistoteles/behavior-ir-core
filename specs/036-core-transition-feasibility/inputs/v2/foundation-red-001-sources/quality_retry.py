"""Corrective Q revision: exact added runtime fixtures; same code, CLI and clock."""
import json,shlex,time
from pathlib import Path
from artifact_io import read,write_once,digest
import recorder,sources
from quality import evaluate
E=Path(__file__).resolve().parent;ROOT=E.parents[1];F=ROOT/'specs/036-core-transition-feasibility'
def run_stage(ctx,revision):
 first=F/'evidence/campaign-001/roles/quality'
 started=read(first/'stage-clock.json')['started_ns']
 left=2400-(time.monotonic_ns()-started)/1e9
 root=F/'evidence/campaign-001/roles/quality-002';root.mkdir(parents=True,exist_ok=False)
 core=E/'private/core';old=read(F/'inputs/core-export-r002.json');new=read(core/'source-export.json')
 sources.verify_export(core,new)
 for row in old['files']:
  if digest(core/row['path'])!=row['sha256']:raise ValueError('PreviousCodeOrInputChanged')
 added={x['path'] for x in new['files']}-{x['path'] for x in old['files']}
 expected=set(x['path'] for x in read(F/'inputs/additional-gate-inputs-r003.json')['added_runtime_test_inputs'])
 if added!=expected:raise ValueError('RuntimeFixtureScope')
 prior=read(first/'cli-binding.json');cli=first/'retained/behavior'
 if digest(cli)!=prior['cli_sha256'] or digest(F/'inputs/core-export-r002.json')!=prior['source_export_sha256']:raise ValueError('ActualCliParentBinding')
 write_once(root/'cli-binding.json',{'format':'core036.cli-reuse-binding.v1','revision_id':revision['revision_id'],'source_export_sha256':digest(core/'source-export.json'),'actual_original_build':'../quality/cli-build/receipt.json','actual_cli_sha256':digest(cli),'all_prior_source_inputs_equal':True,'new_inputs_are_runtime_test_fixtures_only':sorted(added),'cold_build_claim':False,'parent_cli_binding':'../quality/cli-binding.json'})
 write_once(root/'stage-clock.json',{'stage':'Q','original_started_ns':started,'same_cumulative_budget_seconds':2400,'remaining_at_launch_seconds':left,'prior_failure_preserved':'../quality/result.json','cache_conditions':'existing036 gate target reused; previous run retained, no cold-target claim','global_origin':ctx['clock']})
 if left<=0:raise ValueError('QualityCumulativeBudgetExpired')
 t=read(E/'toolchain.json')['tools'];temp=E/'private/tmp';temp.mkdir(exist_ok=True)
 env={'CARGO_HOME':str(E/'private/cargo'),'CARGO_TARGET_DIR':str(E/'private/gate-target'),'CARGO_NET_OFFLINE':'true','CARGO_INCREMENTAL':'0','CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0','CARGO_PROFILE_RELEASE_DEBUG':'0','RUSTFLAGS':'-C target-cpu=x86-64','RUST_TEST_THREADS':'1','BEHAVIOR_BIN':str(cli),'TMPDIR':str(temp)}
 ledger=recorder.Ledger(ctx['clock']['started_ns'],ctx['clock']['boot_id'],21600)
 script=digest(core/'scripts/gates.sh');lock=digest(core/'Cargo.lock')
 z=recorder.run([t['nix-shell']['path'],str(E/'shell.nix'),'--run',shlex.join(['bash',str(core/'scripts/gates.sh')])],root/'canonical',min(1800,left),ledger=ledger,env=env)
 sources.verify_export(core,new)
 if digest(core/'scripts/gates.sh')!=script or digest(core/'Cargo.lock')!=lock:raise ValueError('CanonicalSourceMutation')
 text=(root/'canonical/stderr.txt').read_text();ok=evaluate(z,text)
 write_once(root/'result.json',{'format':'core036.canonical-result.v1','revision_id':revision['revision_id'],'canonical_met':ok,'source_export_sha256':digest(core/'source-export.json'),'script_sha256':script,'cli_sha256':digest(cli),'operational':'completed' if z['stop_reason'] is None else 'resource_stopped','exit_code':z['exit_code'],'stop_reason':z['stop_reason'],'all_previous_source_bytes_unchanged':True,'added_original_runtime_fixtures':sorted(added),'native_correspondence':'unestablished','product_adoption':'unactivated'})
 return 0 if ok else (3 if z['stop_reason'] else 1)
