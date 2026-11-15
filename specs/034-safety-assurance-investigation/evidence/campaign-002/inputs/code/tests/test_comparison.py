import copy,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from comparison import validate_comparison,validate_prior_scope
REQUESTED={'S1':['Q3','Q4','Q5','Q6'],'S2':['Q1'],'S3':['Q1','Q2','Q4','Q6'],'S4':['Q3','Q4','Q5'],'S5':['Q3','Q4','Q5'],'S6':['Q3','Q4','Q5'],'S7':['Q3','Q4','Q5'],'S8':['Q1','Q2','Q3','Q4','Q5','Q6']}
def fixture():
 return {'format':'core034.comparison.v1','cells':[{'arrangement':a,'situation':s,'requested_claims':q,'established_claims':[],'premises':['explicit_trust: Core implementation','explicit_trust: all-writer host control'] if a=='A' else ['explicit_trust: Core verifier and independent anchor'],'gaps':['no matching completed subject'],'required_work':['actual independent checks'],'disposition':'unestablished','storage':'memory' if a!='C' else 'prior-exact-scope','finality':'non-durable' if a!='C' else 'unestablished','evidence_refs':[],'reason':'test case with no claimed positive result'} for a in ['A','B','C'] for s,q in REQUESTED.items()]}
class ComparisonTests(unittest.TestCase):
 def test_complete_negative_matrix(self):validate_comparison(fixture())
 def test_missing_repeated_and_weakened_claim(self):
  for mode in ['missing','repeat','claim']:
   r=fixture()
   if mode=='missing':r['cells'].pop()
   if mode=='repeat':r['cells'][-1]=copy.deepcopy(r['cells'][0])
   if mode=='claim':r['cells'][3]['requested_claims']=['Q2']
   with self.assertRaises(ValueError):validate_comparison(r)
 def test_hidden_trust_or_memory_durable_relabel(self):
  for key,value in [('premises',[]),('finality','durable'),('established_claims',['Q6'])]:
   r=fixture();r['cells'][0][key]=value
   with self.assertRaises(ValueError):validate_comparison(r)
 def test_old_identity_or_absent_certificate_not_ld8_proof(self):
  for kind in ['identity_only','x_count_only','local_k','missing_prefix_certificate']:
   index={'format':'core034.prior-study-index.v1','entries':[{'id':'C1','subject':'old closed subject','evidence_kind':kind,'certificate_available':False,'promoted_to_ld8':True,'assurance':'established_under_premises','source_refs':['original']}]}
   with self.assertRaises(ValueError):validate_prior_scope(index)
 def test_correctly_scoped_negative_prior_evidence(self):
  validate_prior_scope({'format':'core034.prior-study-index.v1','entries':[{'id':'C1','subject':'original proof attempt','evidence_kind':'missing_prefix_certificate','certificate_available':False,'promoted_to_ld8':False,'assurance':'unestablished','source_refs':['original'],'scope_limit':'No LD8 or complete durable publication evidence'}]})
