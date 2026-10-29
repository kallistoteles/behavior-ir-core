import tempfile
import unittest
from pathlib import Path
from campaign import CampaignError, expected_keys, validate_coverage, normalize_reference

class CampaignTests(unittest.TestCase):
    def test_primary_axes_are_independent_and_repetitions_never_drop_failures(self):
        manifest={'cases':[{'case_id':'n128'},{'case_id':'n512'}],'candidates':['reference','A','B'],'profiles':['existing','study'],'repetitions':3}
        keys=expected_keys(manifest);self.assertEqual(len(keys),36)
        rows=[dict(zip(['case_id','candidate','mode','repetition'],key),outcome='ResourceExhausted') for key in keys]
        validate_coverage(manifest,rows)
        for bad in [rows[:-1],rows+rows[:1]]:
            with self.assertRaises(CampaignError):validate_coverage(manifest,bad)
    def test_reference_normalization_preserves_complete_records_and_lifetime_state(self):
        state={'snapshot':{'format':'behavior.snapshot_export.v1','schema':'s','state':'head','source_history':{'format':'behavior.history_ref.v1','position':0,'record':'r','state':'head','store':'o'},'seed':[{'entity':'E','value':{'id':'x','x':1,'padding':''}}]},'used':[['E','old'],['E','x']]}
        frame={'format':'core032.full-reference.v1','behavior':'b','observations':[{'before':state,'after':state,'observed':{'core_record':{'result':'DENY','trace':[1]},'store_error':None,'committed_record':None},'metrics':{'evaluate_ms':1}}]}
        normalized=normalize_reference(frame,[{'action':'Emit'}]);self.assertEqual(normalized[0]['core_record']['trace'],[1]);self.assertEqual(len(normalized[0]['before']['used']),2)
        with self.assertRaises(CampaignError):normalize_reference(frame,[])
        import copy
        bad=copy.deepcopy(frame);bad['observations'][0]['before']['snapshot']['state']='unlinked'
        with self.assertRaises(CampaignError):normalize_reference(bad,[{'action':'Emit'}])
        bad=copy.deepcopy(frame);bad['observations'][0]['before']['snapshot']['seed'][0]['value']['x']=True
        with self.assertRaises(CampaignError):normalize_reference(bad,[{'action':'Emit'}])

if __name__=='__main__':unittest.main()
