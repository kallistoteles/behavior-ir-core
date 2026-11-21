import json
import tempfile
import unittest
from pathlib import Path
from campaign import WorkLedger
from gates import runnable, gate_valid, checked_gate

class CampaignV2Tests(unittest.TestCase):
    def test_append_only_successor_and_boot_boundaries(self):
        with tempfile.TemporaryDirectory() as d:
            ledger=WorkLedger(Path(d),'w001')
            a=ledger.declare('ENV',profile={'wall_seconds':600,'reserve_seconds':300},subject='s1',slots=['one'])
            ledger.start(a,now_ns=100,boot_id='b1')
            ledger.close(a,now_ns=200,boot_id='b1',outcome='resource_stopped',reason='work did not fit',closed_tree=True)
            with self.assertRaises(ValueError):ledger.successor(a,correction='',profile={'wall_seconds':600,'reserve_seconds':300})
            b=ledger.successor(a,correction='use measured larger allocation',profile={'wall_seconds':900,'reserve_seconds':300})
            ledger.start(b,now_ns=5,boot_id='b2');ledger.close(b,now_ns=55,boot_id='b2',outcome='succeeded',closed_tree=True)
            self.assertEqual(ledger.active_ns(),150)
            self.assertFalse(ledger.feature_complete())
            reloaded=WorkLedger(Path(d),'w001');self.assertEqual(reloaded.active_ns(),150)
            with self.assertRaises(ValueError):reloaded.start(a,now_ns=300,boot_id='b1')
    def test_source_gates_not_report_flags_or_global_deadline(self):
        self.assertTrue(runnable('Q',{'native_ready':True}))
        self.assertTrue(runnable('NATIVE',{'native_ready':True,'analysis_ready':True}))
        self.assertFalse(runnable('DIAG',{'native_ready':True,'proof':False,'quality':True}))
        self.assertTrue(runnable('ENGINEERING',{}))
        self.assertFalse(gate_valid({'subject':'old','status':'met'},'new'))
        self.assertFalse(gate_valid({'subject':'new','status':'met','verified':True},'new'))

    def test_actual_positive_gate_and_rejected_check(self):
        good=checked_gate('s1',kind='unit',check=lambda:True)
        bad=checked_gate('s1',kind='unit',check=lambda:False)
        self.assertTrue(gate_valid(good,'s1'))
        self.assertFalse(gate_valid(good,'other'))
        self.assertFalse(gate_valid(bad,'s1'))
    def test_wrong_boot_and_unclosed_attempt_cannot_advance(self):
        with tempfile.TemporaryDirectory() as d:
            ledger=WorkLedger(Path(d),'w001')
            a=ledger.declare('ENV',profile={'wall_seconds':600,'reserve_seconds':300},subject='s1',slots=['one'])
            ledger.start(a,now_ns=100,boot_id='b1')
            for now,boot,closed in [(99,'b1',True),(200,'other',True),(200,'b1',False)]:
                with self.subTest(now=now,boot=boot,closed=closed),self.assertRaises(ValueError):
                    ledger.close(a,now_ns=now,boot_id=boot,outcome='succeeded',closed_tree=closed)
            with self.assertRaises(ValueError):ledger.successor(a,correction='unclosed parent',profile={'wall_seconds':900,'reserve_seconds':300})
    def test_event_stream_tampering_is_detected(self):
        with tempfile.TemporaryDirectory() as d:
            ledger=WorkLedger(Path(d),'w001')
            ledger.declare('ENV',profile={'wall_seconds':600,'reserve_seconds':300},subject='s1',slots=['one'])
            path=Path(d)/'events.jsonl';text=path.read_text();path.write_text(text.replace('s1','s2'))
            with self.assertRaises(ValueError):WorkLedger(Path(d),'w001')
