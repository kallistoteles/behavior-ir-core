"""Real subprocess/SQLite races and SIGKILL, explicitly LocalResearch only."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import signal
import sqlite3
import subprocess
import time


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--binary', type=Path, required=True)
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    args.out.mkdir(exist_ok=False, parents=True)
    dbs = args.out / 'databases';dbs.mkdir()
    jobs = args.out / 'jobs';jobs.mkdir()
    checks = []
    transcript = (args.out / 'commands.jsonl').open('x')

    def finish(command, process, expected=None):
        stdout, stderr = process.communicate(timeout=15)
        record = {'argv': list(map(str, command)), 'exit_code': process.returncode,
                  'stdout': stdout, 'stderr': stderr}
        transcript.write(json.dumps(record) + '\n');transcript.flush()
        if expected is None:
            assert process.returncode == 0, record
        else:
            assert process.returncode == 2 and expected in stdout, record
        return json.loads(stdout)['result'] if process.returncode == 0 else None

    def call(*command, expected=None):
        argv = [str(args.binary), *map(str, command)]
        p = subprocess.Popen(argv, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        return finish(argv, p, expected)

    def init(name):
        path = dbs / (name + '.db')
        original = call('init', path, 2, 'local')
        return path, original

    def job(db, name, operation, suffix=''):
        out = jobs / (db.stem + '-' + name + suffix + '.json')
        call('prepare', db, name, operation, out)
        return out

    def state(db, requests, events, commands, position=None):
        s = call('summary', db)
        assert (s['requests'], s['events'], s['commands']) == (requests, events, commands), s
        if position is not None: assert s['basis']['position'] == position
        return s

    normal, original = init('normal')
    first = job(normal, 'first', 'create-b')
    receipt = call('publish', normal, first, 'local')
    second = job(normal, 'second', 'set-a-3')
    call('publish', normal, second, 'local')
    assert call('publish', normal, first, 'local') == receipt
    assert call('init', normal, 2, 'local') == original
    state(normal, 2, 2, 4, 2)
    emit = job(normal, 'emit', 'emit')
    call('publish', normal, emit, 'local')
    before = state(normal, 3, 3, 6, 3)
    for name, op, reason in [('cap','create-c','INVARIANT_VIOLATED'),
                              ('local','set-a-0','CONSTRAINT_VIOLATED'),
                              ('reuse','create-b','ENTITY_ID_ALREADY_USED')]:
        j = job(normal, name, op)
        r = call('publish', normal, j, 'local')
        assert r['outcome']['reasons'] == [{'code': reason}]
    after = state(normal, 6, 3, 6, 3)
    assert before['basis'] == after['basis']
    other = job(normal, 'cap', 'emit', '-other')
    call('publish', normal, other, 'local', expected='IdReuse')
    call('init', normal, 3, 'local', expected='InitializationConflict')
    call('publish', normal, emit, 'strong', expected='UnavailablePrefixCertificate')
    state(normal, 6, 3, 6, 3)
    call('init', normal, 2, 'invalid-scope', expected='InvalidScope')
    call('publish', normal, emit, 'invalid-scope', expected='InvalidScope')
    checks.append({'case':'sequential-original-result-refusals-identity-and-strong-gate','status':'Passed'})

    strong = dbs / 'strong.db'
    call('init', strong, 2, 'strong', expected='UnavailablePrefixCertificate')
    with sqlite3.connect(strong) as c:
        assert c.execute('SELECT count(*) FROM lineage').fetchone()[0] == 0
    checks.append({'case':'strong-initialization-no-false-certificate','status':'Passed'})

    def parked(command, label, stage, release=None):
        ready = args.out / (label + '.ready')
        env = dict(os.environ, HOOK_STAGE=stage, HOOK_READY=str(ready))
        if release: env['HOOK_RELEASE'] = str(release)
        argv = [str(args.binary), *map(str, command)]
        p = subprocess.Popen(argv, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        deadline = time.monotonic() + 10
        while not ready.exists():
            if p.poll() is not None: raise AssertionError((label, p.communicate()))
            if time.monotonic() > deadline:
                p.kill();p.wait();raise AssertionError('hook timeout ' + label)
            time.sleep(.005)
        return argv, p

    for phase in ['before-tx','before-commit','after-commit']:
        db = dbs / ('init-kill-' + phase + '.db')
        argv, p = parked(['init',db,2,'local'], 'init-kill-'+phase, 'init-'+phase)
        os.kill(p.pid, signal.SIGKILL);stdout,stderr=p.communicate(timeout=10)
        assert p.returncode == -signal.SIGKILL
        transcript.write(json.dumps({'argv':argv,'exit_code':p.returncode,'stdout':stdout,'stderr':stderr,'actual_sigkill':True})+'\n')
        with sqlite3.connect(db) as c:
            assert c.execute('SELECT count(*) FROM lineage').fetchone()[0] == (1 if phase=='after-commit' else 0)
        call('init',db,2,'local');state(db,0,0,0,0)
        checks.append({'case':'init-SIGKILL-'+phase,'status':'Passed'})
    for phase in ['before-tx','before-commit','after-commit']:
        db,_ = init('execute-kill-'+phase)
        j = job(db,'kill-create','create-b')
        argv,p = parked(['publish',db,j,'local'],'execute-kill-'+phase,'execute-'+phase)
        os.kill(p.pid,signal.SIGKILL);stdout,stderr=p.communicate(timeout=10)
        assert p.returncode == -signal.SIGKILL
        transcript.write(json.dumps({'argv':argv,'exit_code':p.returncode,'stdout':stdout,'stderr':stderr,'actual_sigkill':True})+'\n')
        committed = int(phase=='after-commit')
        state(db,committed,committed,2*committed,committed)
        call('publish',db,j,'local');state(db,1,1,2,1)
        checks.append({'case':'execute-SIGKILL-'+phase+'-resolve-retry','status':'Passed'})

    races = [
        ('different-ids-one-parent','a','create-b','b','set-a-3','Conflict'),
        ('same-id-same-request','same','create-b','same','create-b',None),
        ('same-id-different-request','same','create-b','same','set-a-3','IdReuse'),
        ('same-id-allow-versus-refusal','same','emit','same','set-a-0','IdReuse'),
    ]
    for name,id1,op1,id2,op2,error in races:
        db,_ = init(name)
        j1=job(db,id1,op1,'-left')
        j2=j1 if error is None else job(db,id2,op2,'-right')
        release=args.out/(name+'.release')
        pair=[parked(['publish',db,j,'local'],name+f'-{i}','execute-before-tx',release)for i,j in enumerate([j1,j2])]
        release.touch()
        results=[]
        for argv,p in pair:
            stdout,stderr=p.communicate(timeout=15)
            transcript.write(json.dumps({'argv':argv,'exit_code':p.returncode,'stdout':stdout,'stderr':stderr})+'\n')
            results.append((p.returncode,stdout))
        if error:
            assert sorted(code for code,_ in results)==[0,2],results
            assert error in next(raw for code,raw in results if code==2),results
        else:
            assert all(code==0 for code,_ in results)
            assert json.loads(results[0][1])==json.loads(results[1][1])
        s=call('summary',db);assert s['requests']==1 and s['events']in(0,1)and s['commands']==2*s['events']
        checks.append({'case':name,'status':'Passed','winning_result_events':s['events']})

    for different in [False,True]:
        name='competing-init-'+str(different);db=dbs/(name+'.db');release=args.out/(name+'.release')
        pair=[parked(['init',db,cap,'local'],name+str(i),'init-before-tx',release)for i,cap in enumerate([2,3 if different else 2])]
        release.touch();results=[]
        for argv,p in pair:
            stdout,stderr=p.communicate(timeout=15);results.append((p.returncode,stdout))
            transcript.write(json.dumps({'argv':argv,'exit_code':p.returncode,'stdout':stdout,'stderr':stderr})+'\n')
        assert sorted(code for code,_ in results)==([0,2]if different else[0,0]),results
        if different:assert 'InitializationConflict'in next(raw for code,raw in results if code==2)
        else:assert json.loads(results[0][1])==json.loads(results[1][1])
        state(db,0,0,0,0);checks.append({'case':name,'status':'Passed'})

    for name,sql,error in [
        ('corrupt-job',"UPDATE objects SET body=x'00' WHERE digest=(SELECT job FROM requests ORDER BY seq LIMIT 1)",'CorruptObject'),
        ('missing-job',"DELETE FROM objects WHERE digest=(SELECT job FROM requests ORDER BY seq LIMIT 1)",'UnavailableObject'),
        ('missing-command',"DELETE FROM outbox WHERE rowid=(SELECT min(rowid) FROM outbox)",'CorruptCommands'),
        ('corrupt-head',"UPDATE lineage SET head=x'00'",'CorruptHeadOrClosure')]:
        db=dbs/(name+'.db');shutil.copyfile(normal,db)
        with sqlite3.connect(db)as c:c.execute('PRAGMA foreign_keys=OFF');c.execute(sql)
        call('summary',db,expected=error);checks.append({'case':name,'status':'TargetedRecoveryFailure'})
    transcript.close()
    artifacts={str(p.relative_to(args.out)):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}for p in args.out.rglob('*')if p.is_file()}
    receipt={'format':'core.local-publication-controls.v1','checks':checks,'artifacts':artifacts,
             'scope':'Actual local K replay and SQLite3.54.1 WAL/FULL process crash/transaction controls. LocalResearch only. No physical power loss, full Core, formal SQLite proof, cryptographic prefix, or certified G1 claim.',
             'g1_pass':False}
    (args.out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({'checks':len(checks),'all_passed':True,'g1_pass':False}))


if __name__=='__main__':main()
