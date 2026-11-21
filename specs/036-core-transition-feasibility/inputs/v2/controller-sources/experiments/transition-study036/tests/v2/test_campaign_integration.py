"""Supervisor controls; pure fixtures never stand for native theorem closure."""
import copy
import json
import tempfile
import unittest
from pathlib import Path
from campaign import WorkLedger
from controller_v2 import validate_slot_selection, execute_status, cli_exit
from gates import checked_gate, gate_valid

class SupervisorV2Tests(unittest.TestCase):
    def test_actual_closed_successor_keeps_failed_time_and_pending_feature(self):
        with tempfile.TemporaryDirectory() as d:
            ledger=WorkLedger(Path(d),'w001')
            a=ledger.declare('ENV',profile={'wall_seconds':600,'reserve_seconds':300},subject='bad-source',slots=['native-smoke'])
            ledger.start(a,now_ns=100,boot_id='b')
            ledger.close(a,now_ns=200,boot_id='b',outcome='failed',reason='actual failed smoke',closed_tree=True)
            b=ledger.successor(a,correction='fixed source binding',subject='corrected-source',profile={'wall_seconds':600,'reserve_seconds':300})
            ledger.start(b,now_ns=300,boot_id='b');ledger.close(b,now_ns=350,boot_id='b',outcome='succeeded',closed_tree=True)
            status=execute_status(ledger)
            self.assertFalse(status['feature_complete']);self.assertEqual(status['actual_closed_attempt_ns'],150)
            self.assertEqual(status['attempts'][a]['outcome'],'failed')
            self.assertEqual(status['initial_authority'],'unverified')
            self.assertIn('ENGINEERING',status['runnable'])
    def test_slot_inventory_unknown_flags_and_bounded_exit_classes(self):
        self.assertEqual(validate_slot_selection({'slots':['one']},known=['one','two']),['one'])
        for value in [{'slots':['unknown']},{'slots':['one','one']},{'slots':['one'],'verified':True},{'slots':[]}]:
            with self.subTest(value=value),self.assertRaises(ValueError):validate_slot_selection(value,known=['one'])
        self.assertEqual(cli_exit(None),0)
        self.assertEqual(cli_exit(AssertionError('actual assertion')),1)
        self.assertEqual(cli_exit(ValueError('invalid schema')),2)
        self.assertEqual(cli_exit(NotImplementedError('pending stage')),3)
    def test_dependencies_and_wrong_kind_cannot_be_promoted(self):
        gate=checked_gate('source',kind='unit',check=lambda:True,dependencies=('original','endpoint'))
        self.assertTrue(gate_valid(gate,'source',current_dependencies=('original','endpoint')))
        self.assertFalse(gate_valid(gate,'source',current_dependencies=('changed','endpoint')))
        self.assertFalse(gate_valid(gate,'source',kind='native_proof'))
        with self.assertRaises(ValueError):checked_gate('source',kind='native_proof',check=lambda:True)
