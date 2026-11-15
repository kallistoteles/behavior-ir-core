import json
from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import protocol as io

class ArtifactContract(unittest.TestCase):
    def test_strict_wire(self):
        self.assertEqual(io.strict_loads(b'{"a":[1,null,true]}'),{'a':[1,None,True]})
        for raw in [b'{"a":1,"a":2}',b'{}{}',b'{"x":NaN}',b'{"x":1.5}',b'{"x":"\\ud800"}',b'{"x":18446744073709551616}',b'{"x":-0}',b'\xff',b'['*129+b'0'+b']'*129]:
            with self.subTest(raw=raw[:20]),self.assertRaises(ValueError):io.strict_loads(raw)
        with self.assertRaises(ValueError):io.strict_loads(b'{}',1)
    def test_distinct_outcomes(self):
        r={'format':'core035.observation.v1','semantic':'not_evaluated','mathematical':'not_run','operational':'not_run','cost':'not_measured','candidate':'undetermined','product_adoption':'unactivated','resources':{'aggregate_peak':None,'aggregate_peak_reason':'unavailable'}}
        io.validate_outcomes(r)
        for field in ['format','mathematical','operational','cost','candidate','product_adoption']:
            altered=dict(r,**{field:'invalid'})
            with self.subTest(field=field),self.assertRaises(ValueError):io.validate_outcomes(altered)
        with self.assertRaises(ValueError):io.validate_outcomes(dict(r,verified=True))
        missing=dict(r);missing.pop('mathematical')
        with self.assertRaises(ValueError):io.validate_outcomes(missing)
        missing=dict(r,resources={'aggregate_peak':None})
        with self.assertRaises(ValueError):io.validate_outcomes(missing)
    def test_graph(self):
        io.validate_graph({'source':[],'claim':['source']})
        for bad in [{'a':['a']},{'a':['b'],'b':['a']},{'a':['absent']}]:
            with self.assertRaises(ValueError):io.validate_graph(bad)
    def test_identity(self):
        a={'format':'core035.claim.v1','subject':{'x':1},'diagnostics':{'elapsed_ns':1}}
        b=dict(a,diagnostics={'elapsed_ns':99})
        self.assertEqual(io.semantic_digest(a),io.semantic_digest(b))
        b['subject']={'x':2};self.assertNotEqual(io.semantic_digest(a),io.semantic_digest(b))

class AdditionalBounds(unittest.TestCase):
    def test_limit_and_treatment_context(self):
        self.assertEqual(io.DOCUMENT_BOUND,16*1024**2);self.assertEqual(io.PACKET_BOUND,64*1024**2);self.assertEqual(io.CORE_RECORD_BOUND,8*1024**2)
        r={'format':'core035.observation.v1','semantic':'not_evaluated','mathematical':'not_run','operational':'not_run','cost':'not_measured','candidate':'undetermined','product_adoption':'unactivated','resources':{}}
        with self.assertRaises(ValueError):io.validate_outcomes(dict(r,treatment='untrusted'))
        with self.assertRaises(ValueError):io.validate_outcomes(dict(r,mode='unknown'))
        with self.assertRaises(ValueError):io.validate_outcomes(dict(r,case_id='é'*65))
        a={'subject':{'x':1},'treatment':'R','mode':'timing'};b=dict(a,treatment='GV',mode='work')
        self.assertEqual(io.semantic_digest(a),io.semantic_digest(b))
if __name__=='__main__':unittest.main()
