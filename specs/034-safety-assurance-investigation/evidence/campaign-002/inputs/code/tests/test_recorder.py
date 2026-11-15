import json
import os
from pathlib import Path
import sys
import tempfile
import time
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from recorder import Ledger,run
from study import permitted_wall

class RecorderContract(unittest.TestCase):
    def test_nested_roles_never_reset_outer_budget(self):
        ledgers=[Ledger(0,'boot',7200),Ledger(0,'boot',1800),Ledger(0,'boot',300),Ledger(0,'boot',180)]
        self.assertEqual(permitted_wall(ledgers,100*10**9,'boot'),80)
        self.assertEqual(permitted_wall(ledgers,181*10**9,'boot'),0)
        with self.assertRaises(ValueError):permitted_wall(ledgers,100,'new-boot')
    def test_clock_has_no_boot_or_time_reset(self):
        l=Ledger(100,'boot',10)
        self.assertEqual(l.remaining_ns(200,'boot'),10_000_000_000-100)
        self.assertEqual(l.remaining_ns(11_000_000_100,'boot'),0)
        with self.assertRaises(ValueError):l.remaining_ns(99,'boot')
        with self.assertRaises(ValueError):l.remaining_ns(101,'new-boot')
    def test_inherited_actual_limits_and_closed_outputs(self):
        with tempfile.TemporaryDirectory()as d:
            p=Path(d)/'run';code='import os,resource,json;print(json.dumps({"as":resource.getrlimit(resource.RLIMIT_AS)[0],"affinity":len(os.sched_getaffinity(0)),"threads":os.environ["RAYON_NUM_THREADS"]}))'
            r=run([sys.executable,'-c',code],p,wall_seconds=5)
            self.assertEqual(r['exit_code'],0);self.assertIsNone(r['stop_reason']);self.assertTrue(r['group_empty'])
            v=json.loads((p/'stdout.txt').read_text());self.assertEqual(v['as'],8*1024**3);self.assertEqual(v['affinity'],1);self.assertEqual(v['threads'],'1')
            self.assertTrue((p/'receipt.json').exists());self.assertEqual(json.loads((p/'receipt.json').read_text())['stdout_sha256'],r['stdout_sha256'])
            with self.assertRaises(FileExistsError):run([sys.executable,'-c','pass'],p)
    def test_timeout_kills_and_reaps_group(self):
        with tempfile.TemporaryDirectory()as d:
            r=run([sys.executable,'-c','import time;time.sleep(30)'],Path(d)/'run',wall_seconds=.15)
            self.assertEqual(r['stop_reason'],'WallLimit');self.assertEqual(r['exit_code'],-9);self.assertTrue(r['group_empty'])
    def test_unexpected_grandchild_is_reaped_before_hash(self):
        with tempfile.TemporaryDirectory()as d:
            code='import os,time;pid=os.fork();print(pid,flush=True) if pid else None;time.sleep(30) if not pid else os._exit(0)'
            r=run([sys.executable,'-c',code],Path(d)/'run',wall_seconds=5)
            self.assertEqual(r['stop_reason'],'LeftoverDescendants');self.assertTrue(r['group_empty']);self.assertTrue(r['leftovers_killed'])
            pid=int((Path(d)/'run/stdout.txt').read_text())
            with self.assertRaises(ProcessLookupError):os.kill(pid,0)
    def test_low_disk_does_not_start_process(self):
        with tempfile.TemporaryDirectory()as d:
            r=run([sys.executable,'-c','print("unexpected")'],Path(d)/'run',free_bytes=lambda:8*1024**3)
            self.assertEqual(r['stop_reason'],'DiskStartFloor');self.assertIsNone(r['exit_code']);self.assertEqual((Path(d)/'run/stdout.txt').read_bytes(),b'')

    def test_missing_executable_has_a_closed_failure_receipt(self):
        with tempfile.TemporaryDirectory()as d:
            p=Path(d)/'run'
            r=run(['/core034/no-such-executable'],p,wall_seconds=5)
            self.assertEqual(r['stop_reason'],'SpawnError');self.assertIsNone(r['exit_code'])
            self.assertTrue(r['group_empty']);self.assertTrue((p/'receipt.json').exists())
    def test_outer_budget_clips_actual_execution(self):
        with tempfile.TemporaryDirectory()as d:
            boot=Path('/proc/sys/kernel/random/boot_id').read_text().strip()
            ledger=Ledger(time.monotonic_ns(),boot,.1)
            r=run([sys.executable,'-c','import time;time.sleep(30)'],Path(d)/'run',wall_seconds=5,ledger=ledger)
            self.assertEqual(r['stop_reason'],'WallLimit');self.assertLessEqual(r['wall_limit_ns'],100_000_000);self.assertTrue(r['group_empty'])
    def test_growth_limits_prevent_launch(self):
        with tempfile.TemporaryDirectory()as d:
            r=run([sys.executable,'-c','print("unexpected")'],Path(d)/'run',growth_bytes=lambda:{'artifacts':2*1024**3+1,'cache':0,'temporary':0})
            self.assertEqual(r['stop_reason'],'ArtifactGrowthLimit');self.assertIsNone(r['exit_code'])

    def test_fast_completed_child_still_obeys_final_growth_limit(self):
        with tempfile.TemporaryDirectory()as d:
            marker=Path(d)/'wrote'
            growth=lambda:{'artifacts':0,'cache':3*1024**3 if marker.exists() else 0,'temporary':0}
            code='from pathlib import Path;import sys,time;time.sleep(.05);Path(sys.argv[1]).touch()'
            r=run([sys.executable,'-c',code,str(marker)],Path(d)/'run',wall_seconds=5,growth_bytes=growth,free_bytes=lambda:20*1024**3)
            self.assertEqual(r['exit_code'],0)
            self.assertEqual(r['stop_reason'],'CacheGrowthLimit')
            self.assertTrue(r['group_empty'])

    def test_session_escaped_grandchild_is_reaped_before_archive(self):
        with tempfile.TemporaryDirectory()as d:
            output=Path(d)/'run';pid=None
            code='import os,time;r,w=os.pipe();p=os.fork();\nif p: os.close(w);os.read(r,1);os._exit(0)\nelse: os.close(r);os.setsid();print(os.getpid(),flush=True);os.write(w,b"x");time.sleep(30)'
            try:
                result=run([sys.executable,'-c',code],output,wall_seconds=5)
                pid=int((output/'stdout.txt').read_text())
                self.assertEqual(result['stop_reason'],'LeftoverDescendants')
                self.assertTrue(result['group_empty']);self.assertTrue(result['tree_empty'])
                with self.assertRaises(ProcessLookupError):os.kill(pid,0)
            finally:
                if pid:
                    try:os.kill(pid,9)
                    except ProcessLookupError:pass
                    try:os.waitpid(pid,0)
                    except ChildProcessError:pass

if __name__=='__main__':unittest.main()
