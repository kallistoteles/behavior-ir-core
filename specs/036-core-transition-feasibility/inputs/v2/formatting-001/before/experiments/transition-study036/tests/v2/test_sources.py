import copy
import hashlib
import json
import os
import shutil
import subprocess
import sys
import tempfile
import unittest
import uuid
from pathlib import Path
from sources import verify_subject_v2, selected_paths_v2
from environment import check_readiness, validate_environment_plan
from recorder import V2Runner
REPO=Path(__file__).resolve().parents[4]
PRIVATE=Path('/var/tmp/behavior-ir-core036-v2/w001')

def git(root,*args):
    subprocess.run([shutil.which('git'),'-c','maintenance.auto=false','-c','gc.auto=0','-c','core.hooksPath=/dev/null',*args],cwd=root,
                   env={**os.environ,'GIT_CONFIG_NOSYSTEM':'1','GIT_CONFIG_GLOBAL':'/dev/null'},check=True,capture_output=True)

def fixture(root):
    (root/'Cargo.lock').write_bytes(b'lock');git(root,'init','-q');git(root,'add','Cargo.lock')
    return {'files':[{'path':'Cargo.lock','bytes':4,'sha256':hashlib.sha256(b'lock').hexdigest()}],
            'indexed_files':['Cargo.lock'],'required_files':['Cargo.lock'],
            'tools':[{'path':sys.executable,'sha256':hashlib.sha256(Path(sys.executable).read_bytes()).hexdigest()}],
            'original':True,'patches':[]}

class SourcesV2Tests(unittest.TestCase):
    def test_corrected_original_inventory_has_all_three_prior_runtime_inputs(self):
        from sources import CORE_REV
        names=selected_paths_v2(REPO,CORE_REV)
        self.assertEqual(len(names),1637)
        correction=json.loads((REPO/'specs/036-core-transition-feasibility/inputs/additional-gate-inputs-r003.json').read_text())
        for row in correction['added_runtime_test_inputs']:self.assertIn(row['path'],names)
    def test_actual_git_inventory_and_changed_lock_tool_fixture(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);manifest=fixture(root);verify_subject_v2(root,manifest)
            for kind in ['empty_index','fixture','tool','oracle_patch','unknown']:
                value=copy.deepcopy(manifest)
                if kind=='empty_index':value['indexed_files']=[]
                if kind=='fixture':value['required_files'].append('runtime/omitted.json')
                if kind=='tool':value['tools'][0]['sha256']='0'*64
                if kind=='oracle_patch':value['patches']=['unpatched-oracle-is-wrong']
                if kind=='unknown':value['verified']=True
                with self.subTest(kind=kind),self.assertRaises(ValueError):verify_subject_v2(root,value)
            git(root,'rm','--cached','Cargo.lock')
            with self.assertRaises(ValueError):verify_subject_v2(root,manifest)
            git(root,'add','Cargo.lock');(root/'Cargo.lock').write_bytes(b'wrong')
            with self.assertRaises(ValueError):verify_subject_v2(root,manifest)
    def test_runtime_smoke_not_name_digest_or_flag(self):
        p=Path(sys.executable);tool={'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
        self.assertFalse(check_readiness({'python':{**tool,'verified':True}},required=['python'])['ready'])
        profile=json.loads((REPO/'experiments/transition-study036/profiles/v2/env.json').read_text())
        runner=V2Runner(profile)
        result=check_readiness({'python':{**tool,'probe_args':['--version'],'expected_stdout_prefix':'Python 3.13.'}},
                              required=['python'],runner=runner,out_root=PRIVATE/'bootstrap/controls'/('python-smoke-'+uuid.uuid4().hex))
        self.assertTrue(result['ready']);self.assertFalse(check_readiness({'missing':{'path':'/missing','sha256':'0'*64}},required=['missing'])['ready'])
    def test_service_and_gc_root_admission(self):
        validate_environment_plan({'builders':[],'repair':None,'gcroots':[]})
        for value in [
            {'builders':[{'heavy':True,'tracked':False}],'repair':None,'gcroots':[]},
            {'builders':[],'repair':{'shared_critical':True,'deadline_kill':True},'gcroots':[]},
            {'builders':[],'repair':None,'gcroots':[{'path':'/missing-root','target':'/missing-output'}]},
        ]:
            with self.assertRaises(ValueError):validate_environment_plan(value)
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);target=root/'actual';target.write_bytes(b'output');(root/'gcroot').symlink_to(target)
            validate_environment_plan({'builders':[],'repair':None,'gcroots':[{'path':str(root/'gcroot'),'target':str(target)}]})
