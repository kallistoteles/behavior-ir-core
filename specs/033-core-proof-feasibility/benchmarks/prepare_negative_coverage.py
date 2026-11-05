"""Prepare a negative-report dependency ledger, never an acceptance evaluator."""
import argparse
import datetime
import itertools
import json
from pathlib import Path
import re
import shutil

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
out = args.out.resolve()
out.mkdir(parents=True,exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
feature = Path('specs/033-core-proof-feasibility')
base = feature/'evidence/scoped-chain'
tasks = {}
for line in (feature/'tasks.md').read_text().splitlines():
    match = re.match(r'- \[([ Xx])\] (T\d{3}) (.*)',line)
    if match:
        tasks[match[2]] = {'checked':match[1] != ' ', 'description':match[3]}
if len(tasks) != 93:
    raise ValueError('complete 93-task inventory required')
rows = []
for number in range(42,90):
    name = f'T{number:03d}'
    if tasks[name]['checked']:
        raise ValueError('do not overwrite a completed construction task')
    if number == 42:
        status, reason, blocker = ('PartiallyEstablished',
            'Many individual primitives are Checked/fresh and byte-bound; complete physical K, authenticated streams, original caller and release entrypoint are not established.',
            'evidence/scoped-chain/t042-primitive-coverage.json')
    elif number == 87:
        status, reason, blocker = ('NotEstablished',
            'Separate whole-root gate build exhausted disk; recorder also failed and complete child streams/status are unavailable. Scoped format/proof/driver passes do not replace this mandatory gate. Locked experiment tests/Clippy were not newly completed.',
            'evidence/scoped-chain/ordinary-root-gates-disk-exhaustion-observation-001.json')
    elif number == 85:
        status, reason, blocker = ('PartiallyEstablished',
            'Protected Core baseline and retained artifacts can be checked; full committed prover-checkpoint writes/lifecycle retention cannot be demonstrated without the missing durable implementation.',
            'evidence/scoped-chain/protected-baseline-final-20261105-002.json')
    else:
        status = 'NotRun'
        reason = ('No complete initialized checked physical K/real Nova embedding/release; '
                  'dependent full-chain, durability, campaign and recovery work is not claimed. '
                  'Separate native cost probes do not satisfy this task.')
        blocker = 'evidence/scoped-chain/t042-primitive-coverage.json'
    rows.append({'task':name,'status':status,'description':tasks[name]['description'],
                 'reason':reason,'blocking_artifact':blocker,
                 'observed_task_runtime_ceiling':None,
                 'ceiling_reason':'No complete dependent task was run; component/diagnostic limits are separately recorded, never imputed to this task.'})
required = [f'T{n:03d}' for n in range(42,90)]
if [row['task'] for row in rows] != required:
    raise ValueError('incomplete dependency ledger')
def write(name, value):
    (out/name).write_text(json.dumps(value,indent=2,sort_keys=True)+'\n')
write('execution-ledger.json',{'format_version':'core033.negative-task-ledger.v1',
    'at':datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'tasks':rows,'g1_pass':False,
    'scope':'explicit unmet construction/collection dependencies; no business refusal and no implementation-complete claim'})
cells = []
for population, history, ratio in itertools.product([128,2048,8192],[1,128,8192],[1,16,128]):
    cells.append({'N':population,'H':history,'U_over_N':ratio,'U':population*ratio,
        'status':'NotRun','observations':0,'p50_ns':None,'p95_ns':None,
        'reason':'No complete checked initialized/durable Core release or independent consumer; reference parent construction/reachability also unestablished.',
        'blocking_artifact':'execution-ledger.json#T042',
        'operations':['create','set','command-only','fresh-consumer']})
space = shutil.disk_usage(Path.cwd())
write('campaign-not-run.json',{'format_version':'core033.negative-campaign-ledger.v1',
    'declaration_source':'contracts/campaign.md','parent_cells':cells,
    'lifecycle':[{ 'name':name,'status':'NotRun','reason':'Complete checked release, repository and consumer prerequisites are missing.',
                  'blocking_artifact':'execution-ledger.json#T042'} for name in [
        'empty-first-use','raw-seed-import','authorized-origin','cap999-create1000-refuse1001',
        'cold-restart-first-certified-operation','missing-checkpoint-rebuild',
        'fresh-consumer-transfer','sustained-5-arrivals-per-second',
        'full-observation-audit','crash-lost-ack-and-retry','final-checkpoint-close']],
    'complete_certified_observations':0,
    'quantiles':None,'quantile_reason':'No 100-observation certified/durable scenario exists.',
    'disk_preflight':{'observed_free_bytes':space.free,'campaign_required_free_bytes':16*1024**3,
                      'passes_campaign_floor':space.free>=16*1024**3,
                      'scope':'campaign preflight observation only; not a build-memory or universal storage lower bound'},
    'g1_pass':False})
mapping = {}
for line in (feature/'tasks.md').read_text().splitlines():
    match = re.match(r'\| (FR-\d{3}) \| (.*) \|',line)
    if match:
        mapping[match[1]] = match[2]
if set(mapping) != {f'FR-{n:03d}' for n in range(1,22)}:
    raise ValueError('all21 requirement mappings required')
write('requirement-coverage.json',{
    'format_version':'core033.negative-requirement-coverage.v1',
    'requirements':[{'id':name,'task_mapping':mapping[name],
        'status':'G0ContractEstablished' if name in ['FR-002','FR-003'] else 'NotEstablishedForFullG1',
        'evidence':'g0-contract.json and scope-map.json' if name in ['FR-002','FR-003'] else 'execution-ledger.json and ../scoped-chain/t042-primitive-coverage.json',
        'limit':'Contract/inventory scope is not actual full-release acceptance.' if name in ['FR-002','FR-003'] else 'Consult explicit unmet task dependencies; separate successful components/diagnostics confer no whole-chain authority.'}
        for name in sorted(mapping)],
    'study_criteria':[{'id':f'SC-{n:03d}',
        'status':'NotEstablishedForPositiveG1' if n>=7 else 'NegativeReportScopeOnly',
        'limit':'No complete certified/durable quantiles.' if n>=7 else
            'Reporting coverage is separate from a passed implementation; independent full-workspace reproduction and lost failed-gate raw output remain explicit limitations.'}
        for n in range(1,10)],
    'correctness':'not_established','performance':'not_established','g1_pass':False})
print(json.dumps({'outcome':'PreparedNegativeReportCoverage','blocked_tasks':len(rows),
                  'parent_cells':len(cells),'requirements':len(mapping),'g1_pass':False}))
