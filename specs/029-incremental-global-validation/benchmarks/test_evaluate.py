"""Controls for the evaluator, not synthetic evidence of implementation performance."""
import copy,json,unittest,subprocess,sys,tempfile
from pathlib import Path
import evaluate as subject
ROOT=Path(__file__).resolve().parents[1]
class EvaluationTests(unittest.TestCase):
    def setUp(self):
        self.profile=json.loads((ROOT/'evaluation-profile.json').read_text());self.corpus=json.loads((ROOT/'benchmarks/corpus.json').read_text());p=self.profile
        self.manifest={'reference_runner_sha256':'reference-runner','gates_passed':True,'gated_revision':'tested','source_revision':'tested','reference_exit_code':0,'toolchain':p['toolchain'],'equivalent_harness_sha256':p['harness_sha256'],'binaries':{'/'.join(k):'/'.join(k) for k in subject.GROUPS}}
        self.manifest['binaries']['released-baseline/production-like']=p['baseline_build']['timing_binary_sha256']
        self.manifest['binaries']['released-baseline/instrumented']=p['baseline_build']['instrumented_binary_sha256']
        self.rows=[]
        for c in p['cases']:
            n,steps,rule,workload,batch,rules=c['case']
            for (strategy,mode),repeats in subject.GROUPS.items():
                for rep in range(repeats):
                    r={'n':n,'steps':steps,'rule':rule,'workload':workload,'batch':batch,'rules':rules,'mode':mode,'observations_digest':c['observations_digest'],'observation_bytes':c['observation_bytes'],'final_e_members':n+(steps*batch if workload=='create' else 0),'final_other_members':steps if workload=='unrelated' else 0,'process_hwm':'VmHWM:\t1 kB','work':None if mode=='production-like' else {'snapshot_rows':0,'provider_rows':0,'query_rows':0,'store_value_rows':0,'decoded_rows':1,'predicate_evaluations':1}}
                    r.update({k:0.01 for k in subject.TIMES});r['including_setup_ms']=0.02
                    self.rows.append({'case':c['case'],'strategy':strategy,'mode':mode,'repetition':rep,'returncode':0,'result':r,'process_wall_ms':0.1,'provenance':{'binary_sha256':self.manifest['binaries'][f'{strategy}/{mode}'],'cpu_affinity':p['platform']['reference_cpu_affinity'],'platform':p['platform']['uname'],'runner_sha256':('reference-runner' if strategy=='full-reference' else p['harness_sha256']['specs/029-incremental-global-validation/benchmarks/run.py'])}})
    def run_evaluation(self):return subject.evaluate(self.profile,self.corpus,self.rows,self.manifest)
    def test_complete_positive_control(self):self.assertTrue(self.run_evaluation()['passed'])
    def test_all_missing_or_malformed_budgets_fail(self):
        for key in ['max_cycle_ms','max_process_wall_ms','baseline_median_cycle_ms']:
            for invalid in [None,float('nan'),False,-1]:
                p=copy.deepcopy(self.profile);p['cases'][0][key]=invalid
                with self.assertRaises(ValueError):subject.profile_valid(p,self.corpus)
    def test_missing_repetition_failed_attempt_and_duplicate_fail(self):
        for kind in ['missing','failed','duplicate']:
            rows=copy.deepcopy(self.rows)
            if kind=='missing':rows.pop()
            elif kind=='failed':rows[0]['returncode']=1
            else:rows.append(copy.deepcopy(rows[0]))
            with self.assertRaises(ValueError):subject.evaluate(self.profile,self.corpus,rows,self.manifest)
    def test_semantics_modes_drain_provenance_and_dimensions_fail(self):
        for section,key,value in [('result','observations_digest','wrong'),('result','mode','wrong'),('result','drain_ms',0),('result','total_ms',float('nan')),('result','n',True),('provenance','binary_sha256','wrong'),('provenance','cpu_affinity',[999]),('provenance','platform',[]),('provenance','runner_sha256','wrong')]:
            rows=copy.deepcopy(self.rows);rows[0][section][key]=value
            with self.assertRaises(ValueError):subject.evaluate(self.profile,self.corpus,rows,self.manifest)
    def test_ungated_source_and_changed_toolchain_fail(self):
        for key,value in [('gates_passed',False),('gated_revision','wrong'),('reference_exit_code',1),('toolchain',{}),('equivalent_harness_sha256',{})]:
            m=copy.deepcopy(self.manifest);m[key]=value
            with self.assertRaises(ValueError):subject.evaluate(self.profile,self.corpus,self.rows,m)
    def test_timing_failures_are_failed_acceptance(self):
        row=next(r for r in self.rows if r['strategy']=='candidate' and r['mode']=='production-like');row['result']['total_ms']=1e12;row['result']['including_setup_ms']=1e12
        self.assertFalse(self.run_evaluation()['passed'])
    def test_hidden_full_validation_fails_work_criteria(self):
        row=next(r for r in self.rows if r['strategy']=='candidate' and r['mode']=='instrumented');row['result']['work']['snapshot_rows']=1
        self.assertFalse(self.run_evaluation()['passed'])
    def test_failed_cli_cannot_leave_a_stale_passing_artifact(self):
        with tempfile.TemporaryDirectory() as tmp:
            out=Path(tmp)/'acceptance.json';out.write_text('{"passed":true}')
            missing=Path(tmp)/'missing'
            run=subprocess.run([sys.executable,str(ROOT/'benchmarks/evaluate.py'),'--rows',str(missing),'--manifest',str(missing),'--output',str(out)],capture_output=True)
            self.assertNotEqual(run.returncode,0);self.assertFalse(json.loads(out.read_text())['passed'])
    def test_harness_adaptation_is_byte_bounded(self):
        actual,equivalent=subject.harness_identities(ROOT.parents[1],self.profile)
        self.assertEqual(equivalent,self.profile['harness_sha256']);self.assertEqual(len(actual),5)
if __name__=='__main__':unittest.main()
