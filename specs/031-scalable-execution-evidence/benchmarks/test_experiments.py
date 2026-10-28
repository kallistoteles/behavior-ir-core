import copy
import tempfile
import unittest
from pathlib import Path
import artifacts as a
import run as r
from test_compare import observation
from test_artifacts import sample
from test_run import rows

class ShortcutControls(unittest.TestCase):
    def test_omissions_and_stale_subjects_are_not_equivalence(self):
        for mutate in [lambda x:x.pop('versions'),lambda x:x['records'].clear(),
                       lambda x:x['subject'].update(history=999),
                       lambda x:x['subject'].update(profile='wrong'),
                       lambda x:x['records'][0].update(result='DENY')]:
            changed=observation();mutate(changed)
            with self.assertRaises(a.InvalidArtifact):a.compare_complete(observation(),changed)

    def test_failed_experiment_cannot_leave_passing_assessment(self):
        data=rows();data[0].update(collection_status='tool-failure',execution_outcome=None,equivalence='not-compared')
        with tempfile.TemporaryDirectory() as d:
            result=r.write_assessment(Path(d)/'assessment.json',data,sample(),'baseline','production-like')
            self.assertEqual(result['status'],'failed')

if __name__=='__main__':unittest.main()
