import json
import os
import sys
import time
import uuid
import unittest
from pathlib import Path
from recorder import V2Runner, v2_footprints
REPO=Path(__file__).resolve().parents[4]
E=REPO/'experiments/transition-study036'
PRIVATE=Path('/var/tmp/behavior-ir-core036-v2/w001')
GIB=1024**3

class RecorderV2Tests(unittest.TestCase):
    def runner(self,**changes):return V2Runner(json.loads((E/'profiles/v2/env.json').read_text()),**changes)
    def output(self,name):return PRIVATE/'bootstrap/controls'/(name+'-'+uuid.uuid4().hex)
    def test_real_child_and_detached_descendant_closure(self):
        r=self.runner().run([sys.executable,'-c','print("ok")'],self.output('success'),wall_seconds=5)
        self.assertEqual(r['exit_code'],0);self.assertIsNone(r['stop_reason']);self.assertTrue(r['tree_empty'])
        code='import subprocess,sys;subprocess.Popen([sys.executable,"-c","import time;time.sleep(30)"],start_new_session=True)'
        r=self.runner().run([sys.executable,'-c',code],self.output('detached'),wall_seconds=5)
        self.assertTrue(r['tree_empty']);self.assertTrue(r['leftovers_killed'])
    def test_deadline_and_fast_final_growth(self):
        r=self.runner().run([sys.executable,'-c','import time;time.sleep(30)'],self.output('deadline'),wall_seconds=.15)
        self.assertEqual(r['stop_reason'],'WallLimit');self.assertTrue(r['tree_empty'])
        def growth(phase):return {'cache':21*GIB if phase=='final' else 0,'temporary':0,'artifacts':0,'shared_store':0}
        r=self.runner(growth=growth).run([sys.executable,'-c','pass'],self.output('final-growth'),wall_seconds=5)
        self.assertEqual(r['stop_reason'],'CacheGrowthLimit');self.assertEqual(r['exit_code'],0)
    def test_real_inode_dedup_and_tmp_exclusion(self):
        root=self.output('footprint');(root/'tmp').mkdir(parents=True)
        (root/'a').write_bytes(b'123');os.link(root/'a',root/'alias');(root/'tmp/b').write_bytes(b'xx')
        result=v2_footprints({'cache':root,'temporary':root/'tmp'})
        self.assertEqual(result,{'cache':3,'temporary':2})
    def test_live_floor_and_initial_reserve_differ(self):
        r=self.runner(free_volumes=lambda:{'root':30*GIB,'data':6*GIB}).run([sys.executable,'-c','pass'],self.output('live'),wall_seconds=5)
        self.assertEqual(r['exit_code'],0)
        r=self.runner(free_volumes=lambda:{'root':7*GIB,'data':9*GIB}).run([sys.executable,'-c','pass'],self.output('low-disk'),wall_seconds=5)
        self.assertEqual(r['stop_reason'],'RootFreeFloor');self.assertIsNone(r['exit_code'])

    def test_actual_lean_as_limit_and_cpu_scope(self):
        out=self.output('limits')
        code='import os,resource,json;print(json.dumps({"cpus":len(os.sched_getaffinity(0)),"as":resource.getrlimit(resource.RLIMIT_AS)[0]}))'
        r=self.runner().run([sys.executable,'-c',code],out,wall_seconds=5,lean=True)
        self.assertEqual(r['exit_code'],0)
        observed=json.loads((out/'stdout.txt').read_text())
        self.assertEqual(observed['cpus'],1);self.assertEqual(observed['as'],4*GIB)
        self.assertEqual(r['address_space_limit_bytes'],4*GIB)
    def test_closure_reserve_stops_before_spawn(self):
        old=time.monotonic_ns()-6901*10**9
        r=self.runner(started_ns=old).run([sys.executable,'-c','raise SystemExit(77)'],self.output('reserve'),wall_seconds=5)
        self.assertEqual(r['stop_reason'],'ClosureReserve');self.assertIsNone(r['exit_code'])
    def test_actual_signal_and_shared_store_growth(self):
        r=self.runner().run([sys.executable,'-c','import os,signal;os.kill(os.getpid(),signal.SIGTERM)'],self.output('signal'),wall_seconds=5)
        self.assertEqual(r['exit_code'],-15);self.assertTrue(r['tree_empty'])
        def growth(phase):return {'cache':0,'temporary':0,'artifacts':0,'shared_store':9*GIB if phase=='final' else 0}
        r=self.runner(growth=growth).run([sys.executable,'-c','pass'],self.output('shared-limit'),wall_seconds=5)
        self.assertEqual(r['stop_reason'],'SharedStoreGrowthLimit')

    def test_external_control_growth_is_counted_and_memory_scope_is_observed(self):
        outside=Path('/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/bootstrap-runs')/('control-'+uuid.uuid4().hex)
        outside.write_bytes(b'outside')
        runner=self.runner(control_paths=[outside])
        baseline=self.runner()._growth('initial')
        measured=runner._growth('initial')
        self.assertEqual(measured['artifacts'],baseline['artifacts']+7)
        r=runner.run([sys.executable,'-c','print("sample")'],self.output('scope'),wall_seconds=5)
        self.assertIsNone(r['aggregate_peak']);self.assertTrue(r['aggregate_peak_reason'])
        self.assertIn('observations',r['aggregate_peak_reason'])
        self.assertEqual(len(r['registered_roots']),4)
        self.assertGreater(r['final_resource_observation']['host_available_bytes'],0)

    def test_unregistered_output_exception_and_observer_failure(self):
        with self.assertRaises(ValueError):
            self.runner().run([sys.executable,'-c','pass'],Path('/tmp/forbidden'),wall_seconds=5)
        with self.assertRaises(ValueError):
            self.runner().run([sys.executable,'-c','pass'],self.output('exception'),wall_seconds=901)
        def growth(phase):
            if phase=='sample':raise RuntimeError('injected observer error')
            return {'cache':0,'temporary':0,'artifacts':0,'shared_store':0}
        r=self.runner(growth=growth).run([sys.executable,'-c','import time;time.sleep(30)'],self.output('observer'),wall_seconds=5)
        self.assertEqual(r['stop_reason'],'ControllerError');self.assertTrue(r['tree_empty'])
