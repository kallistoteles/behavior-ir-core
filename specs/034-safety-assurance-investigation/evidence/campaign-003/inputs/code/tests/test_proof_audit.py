import copy,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from check_proofs import validate_proof_result
class AuditTests(unittest.TestCase):
 def fixture(self):
  targets={'roots':[{'name':'segment_safe','type_digest':'correct-type','kind':'positive'}]}
  result={'operational':'completed','fresh_replay':True,'roots':[{'name':'segment_safe','type_digest':'correct-type','axioms':['propext'],'kernel_checked':True}]}
  return result,targets
 def test_complete(self):validate_proof_result(*self.fixture())
 def test_missing_weakened_or_unreplayed(self):
  for mutation in ['missing','type','replay','kernel']:
   r,t=self.fixture()
   if mutation=='missing':r['roots']=[]
   if mutation=='type':r['roots'][0]['type_digest']='weaker'
   if mutation=='replay':r['fresh_replay']=False
   if mutation=='kernel':r['roots'][0]['kernel_checked']=False
   with self.assertRaises(ValueError):validate_proof_result(r,t)
 def test_holes_custom_native_axioms(self):
  for ax in ['sorryAx','custom','Lean.ofReduceBool']:
   r,t=self.fixture();r['roots'][0]['axioms']=[ax]
   with self.assertRaises(ValueError):validate_proof_result(r,t)
 def test_exhaustion_not_counterexample(self):
  r,t=self.fixture();r['operational']='resource_stopped'
  with self.assertRaises(ValueError):validate_proof_result(r,t)
