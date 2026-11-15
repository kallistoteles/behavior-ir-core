import sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from validate_report import validate_origins,validate_decisions
from test_origins import fixture
class OriginDecisionTests(unittest.TestCase):
 def test_age_or_fresh_wording_not_original_intent(self):
  for inference in ['earliest_occurrence','fresh_verification_wording','experiment_approval']:
   o,s,c,r=fixture();o['origins'][0].update(original_user_intent='established',intent_basis=inference)
   with self.assertRaises(ValueError):validate_origins(o,s,c,r)
 def test_no_historical_product_approval(self):
  record={'format':'core034.product-decisions.v1','product_adoption':'unactivated','decisions':[{'id':'D1','topic':'authority','status':'explicitly_decided','rationale':'experiment approved','approval':{'scope':'historical_experiment','kind':'explicit_user_decision'}}]}
  with self.assertRaises(ValueError):validate_decisions(record)
 def test_unresolved_and_proposed_not_adopted(self):
  record={'format':'core034.product-decisions.v1','product_adoption':'unactivated','decisions':[{'id':'D1','topic':'authority','status':'unresolved','rationale':'investigate trust','approval':None}]}
  validate_decisions(record)
  record['product_adoption']='activated'
  with self.assertRaises(ValueError):validate_decisions(record)
 def test_failed_obligation_cannot_be_trusted_away(self):
  record={'format':'core034.product-decisions.v1','product_adoption':'unactivated','decisions':[{'id':'D1','topic':'authority','status':'proposed','rationale':'trust failed proof','approval':None,'failed_module_proof':'explicit_trust'}]}
  with self.assertRaises(ValueError):validate_decisions(record)
