import json,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import study
from test_report_validation import fixture
from validate_report import validate_assessment
class CollectionTests(unittest.TestCase):
 def test_actual_negative_archive_is_closed_and_rejects_changed_bytes(self):
  with tempfile.TemporaryDirectory()as d:
   root=Path(d)/'unit';study.freeze(study.HERE/'profiles/diagnostic.json',root)
   authored=Path(d)/'reports';authored.mkdir();record=fixture();matrix=record['comparison'];matrix['requirement_coverage']=record['requirement_coverage']
   for name in ['comparison.json','complexity-assessment.json','decision.md','cost-assessment.md','requirement-origins.json','assurance-arguments.md','product-decisions.json']:
    (authored/name).write_text(json.dumps(matrix)if name=='comparison.json'else '{}')
   with patch.object(study,'FEATURE',authored):
    result=study.collect(root/'input-manifest.json',root/'assessment')
   self.assertEqual(result['exit_code'],0);actual=study._read(root/'assessment/assessment.json');validate_assessment(actual,root)
   self.assertTrue(all(c['operational']=='not_run'for c in actual['cases']));self.assertEqual(len(actual['controls']),15)
   original=root/actual['artifact_refs'][0]['path'];original.write_bytes(b'changed')
   with self.assertRaises(ValueError):validate_assessment(actual,root)
