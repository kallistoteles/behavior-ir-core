import copy,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from validate_report import validate_assessment
from test_comparison import fixture as comparison_fixture
CASES=['bootstrap','proofs','integration','certification-cold-2','certification-cold-3','controls',*[f'growth-D{i}' for i in range(1,7)]]
def fixture():
 return {'format':'core034.assessment.v1','research_completeness':'complete','candidate':'conditional','implementation_gate':'blocked','product_adoption':'unactivated','comparison':comparison_fixture(),'controls':[{'control_id':f'E{i:02}','control_result':'operationally_unresolved','valid_control':{'operational':'not_run','gate_ref':'bootstrap'},'reason':'Actual bootstrap prerequisite failed; no control was run','evidence_refs':[]}for i in range(1,16)],'formal':{'operational':'not_run','fresh_replay':False,'roots':[],'blocking_ref':'bootstrap'},'cases':[{'case_id':c,'operational':'resource_stopped' if c=='bootstrap' else 'not_run','reason':'Concrete bootstrap resource stop','gate_ref':'bootstrap'}for c in CASES],'observations':[],'costs':{'percentile_claims':[],'summed_unrelated_medians':False},'requirement_coverage':{**{f'FR-{i:03}':{'disposition':'addressed_with_blocking_gap','reason':'Concrete blocked campaign accounted for'}for i in range(1,23)},**{f'SC-{i:03}':{'disposition':'addressed_with_blocking_gap','reason':'No unrun positive claim'}for i in range(1,9)}},'blocking_evidence':['bootstrap'],'artifact_refs':[]}
class ReportTests(unittest.TestCase):
 def test_complete_negative_is_separate_from_positive_assurance(self):validate_assessment(fixture())
 def test_missing_cells_controls_and_valid_control_fail(self):
  for mode in ['cell','control','positive']:
   r=fixture()
   if mode=='cell':r['comparison']['cells'].pop()
   if mode=='control':r['controls'].pop()
   if mode=='positive':r['controls'][0]['control_result']='targeted_rejection'
   with self.assertRaises(ValueError):validate_assessment(r)
 def test_formal_missing_weakened_native_axiom_or_fake_certificate_fail(self):
  for mode in ['roots','axiom','certificate']:
   r=fixture();r['formal']={'operational':'completed','fresh_replay':True,'roots':[]}
   if mode=='axiom':r['formal']['roots']=[{'name':'unrelated','type_digest':'weakened','axioms':['sorryAx'],'kernel_checked':True}]
   if mode=='certificate':r['formal']['certificate_available']=True
   with self.assertRaises(ValueError):validate_assessment(r)
 def test_unrun_passed_hidden_trust_or_durability_fail(self):
  for mode in ['unrun','host','durable']:
   r=fixture()
   if mode=='unrun':r['cases'][1]['operational']='completed';r['cases'][1]['assurance']='established_under_premises'
   if mode=='host':r['comparison']['cells'][0]['premises']=[]
   if mode=='durable':r['comparison']['cells'][0]['finality']='durable'
   with self.assertRaises(ValueError):validate_assessment(r)
 def test_resources_unknown_or_client_peak_cannot_be_relabelled(self):
  for resources in [{'aggregate_peak':0,'aggregate_peak_reason':'Unavailable'},{'aggregate_peak':15,'aggregate_peak_scope':'direct_child'}]:
   r=fixture();r['observations']=[{'resources':resources}]
   with self.assertRaises(ValueError):validate_assessment(r)
 def test_no_small_sample_percentile_or_sum_of_unrelated_medians(self):
  r=fixture();r['costs']['percentile_claims']=[{'n_complete':3,'p95_ns':1}]
  with self.assertRaises(ValueError):validate_assessment(r)
  r=fixture();r['costs']['summed_unrelated_medians']=True
  with self.assertRaises(ValueError):validate_assessment(r)
 def test_every_fr_sc_and_real_blocker_required(self):
  r=fixture();r['requirement_coverage'].pop('FR-022')
  with self.assertRaises(ValueError):validate_assessment(r)
  r=fixture();r['blocking_evidence']=[]
  with self.assertRaises(ValueError):validate_assessment(r)
