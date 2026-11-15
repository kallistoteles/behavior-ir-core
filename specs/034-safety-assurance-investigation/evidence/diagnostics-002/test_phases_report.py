import json,os,unittest
from pathlib import Path
class ActualReportTests(unittest.TestCase):
 def test_actual_independent_history_report_has_scoped_phases_and_counts(self):
  report=json.loads(Path(os.environ['CORE034_PHASE_REPORT']).read_text());diagnostics=report.get('diagnostics',{})
  self.assertIsInstance(diagnostics.get('fresh_phases_ns'),dict,'Actual independent-check report has no phase observations')
  for key in ['subject','reconstruct','data_replay','behavior_replay','own_origin','attempt_parent','invocation_replay','own_invoke_commit','historical_property','compare_and_reopen']:
   self.assertIs(type(diagnostics['fresh_phases_ns'][key]),int);self.assertGreaterEqual(diagnostics['fresh_phases_ns'][key],0)
  self.assertEqual(diagnostics['public_work_counts']['requests_rederived'],report['attempts'])
  self.assertEqual(diagnostics['public_work_counts']['original_state_checks'],report['attempts']+1)
if __name__=='__main__':unittest.main()
