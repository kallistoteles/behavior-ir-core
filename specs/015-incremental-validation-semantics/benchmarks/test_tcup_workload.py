"""Collected stdlib regression tests for the private experiment evidence contract."""
import copy
import unittest
import tcup_workload


def evidence():
    runs=[]
    for strategy in ["optimized","reference"]:
        samples=[]
        for workload in ["warm","update_read","create_read"]:
            for i in range(2):
                samples.append({"workload":workload,"sample":i,"write_ms":0 if workload=="warm" else 1,"read_ms":1,"pair_ms":2,"backend_reads":3,"validation":{"universe":int(strategy=="reference"),"rows":10 if strategy=="reference" else 1,"unchanged_rows":10 if strategy=="reference" else 0,"full_parent":int(strategy=="reference"),"full_child":int(strategy=="reference" and workload!="warm")}})
        runs.append({"strategy":strategy,"samples_per_series":2,"eligible":True,"outcomes":[{"record":"same"}],"provenance":{"extension_sha256":("a" if strategy=="optimized" else "b")*64,"core_source_sha256":{"store.rs":"c"*64},"patch_sha256":"d"*64,"candidate_reference_full":strategy=="reference","build_command":"isolated native build"},"measurements":samples})
    return {"strategy_runs":runs}


class EvidenceContract(unittest.TestCase):
    def test_accepts_complete_paired_native_evidence(self):
        tcup_workload.validate_result(evidence())

    def test_rejects_parent_only_reference(self):
        d=evidence();d["strategy_runs"][1]["provenance"]["candidate_reference_full"]=False
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)
        d=evidence()
        for sample in d["strategy_runs"][1]["measurements"]:sample["validation"]["full_child"]=0
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)

    def test_rejects_missing_native_provenance(self):
        for key in ["extension_sha256","core_source_sha256","patch_sha256","build_command"]:
            d=evidence();del d["strategy_runs"][1]["provenance"][key]
            with self.assertRaises(ValueError):tcup_workload.validate_result(d)

    def test_rejects_mismatched_semantic_outputs(self):
        d=evidence();d["strategy_runs"][1]["outcomes"]=[{"record":"different"}]
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)

    def test_rejects_missing_series_or_pair_samples(self):
        d=evidence();d["strategy_runs"][1]["measurements"].pop()
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)
        d=evidence();del d["strategy_runs"][0]["measurements"][0]["write_ms"]
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)

    def test_rejects_false_zero_work_claim(self):
        d=evidence();d["strategy_runs"][0]["measurements"][0]["validation"]["universe"]=1
        with self.assertRaises(ValueError):tcup_workload.validate_result(d)



class RealHandlerArguments(unittest.TestCase):
    def test_requests_follow_tcup_contract_and_result_identity(self):
        self.assertEqual(tcup_workload.requests("warm",0), (None,{}, {"type":"Material","id":"MAT-2000"}))
        tool,args,read=tcup_workload.requests("update_read",0)
        self.assertEqual(tool,"record_addition_actual");self.assertEqual(args,{"addition_id":"ADD-0002","actual":{"value":"2","unit":"g"},"evidence":"measured"});self.assertEqual(read,{"type":"Addition","id":"ADD-0002"})
        tool,args,read=tcup_workload.requests("create_read",0,{"ids":{"material":"MAT-4001"}})
        self.assertEqual(tool,"register_material");self.assertEqual(args,{"name":"extra_0","category":"other"});self.assertEqual(read,{"type":"Material","id":"MAT-4001"})

if __name__=="__main__":unittest.main()
