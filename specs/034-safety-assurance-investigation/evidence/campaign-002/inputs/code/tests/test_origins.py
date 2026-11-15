import copy,hashlib,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from validate_report import CATEGORIES,validate_origins,validate_source_contexts

def fixture():
 raw=b'Program preservation under enforcement.\nNo runtime history claim.\n'
 s={'id':'S','commit':'a'*40,'path':'spec.md','sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw),'lines':2}
 c={'id':'ctx','source_id':'S','start_line':1,'end_line':2,'text':raw.decode(),'original_scope':'program safety only'}
 entries=[{'id':'R'+str(i),'category':cat,'guarantee':'named guarantee','beneficiary':'consumer','lifecycle':'certification','subject':'exact module','premises':['enforcement'],'context_refs':['ctx'],'interpretation':'conditional preservation, not actual execution','classification':'explicit','justification':'document states this scoped requirement','scope':'historical_document_contract','original_user_intent':'unestablished','decision_dependencies':['D1']} for i,cat in enumerate(sorted(CATEGORIES))]
 return {'format':'core034.origins.v1','origins':entries}, {'sources':[s]}, {'contexts':[c]},lambda _:raw
class OriginsTests(unittest.TestCase):
 def test_complete_and_bound(self):
  args=fixture();validate_origins(*args)
 def test_missing_or_repeated_category(self):
  for mutation in ['missing','repeat']:
   o,s,c,r=fixture();o['origins'].pop()
   if mutation=='repeat':o['origins'].append(copy.deepcopy(o['origins'][0]))
   with self.assertRaises(ValueError):validate_origins(o,s,c,r)
 def test_missing_interpretation_and_dangling_context(self):
  for key,value in [('interpretation',''),('context_refs',['absent']),('justification',''),('classification','assumed')]:
   o,s,c,r=fixture();o['origins'][0][key]=value
   with self.assertRaises(ValueError):validate_origins(o,s,c,r)
 def test_source_and_locator_corruption(self):
  for key,value in [('text','invented'),('start_line',2),('source_id','missing')]:
   o,s,c,r=fixture();c['contexts'][0][key]=value
   with self.assertRaises(ValueError):validate_source_contexts(s,c,r)
  o,s,c,r=fixture()
  with self.assertRaises(ValueError):validate_source_contexts(s,c,lambda _:b'modified')
