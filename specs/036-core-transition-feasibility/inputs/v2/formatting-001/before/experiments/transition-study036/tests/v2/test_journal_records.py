import json
import tempfile
import unittest
from pathlib import Path
from artifact_io import RootRegistry
from campaign import WorkLedger
from records import validate_v2_record

class JournalRecordTests(unittest.TestCase):
    def test_each_new_event_has_strict_common_envelope_and_immutable_source_bytes(self):
        with tempfile.TemporaryDirectory() as d:
            ledger=WorkLedger(Path(d),'w001')
            ledger.declare('ENV',profile={'wall_seconds':600,'reserve_seconds':300},subject='subject',slots=['slot'])
            event=json.loads((Path(d)/'events.jsonl').read_text().splitlines()[0])
            validate_v2_record(event,extra_fields={'sequence','previous_sha256','at_utc','event','sha256'})
            ledger.registry.verify(event['source_subject_ref'])
            self.assertEqual(event['source_subject_ref']['root_id'],'work')
            self.assertEqual(event['outcome']['acceptance'],'blocked')
            self.assertFalse(WorkLedger(Path(d),'w001').feature_complete())
