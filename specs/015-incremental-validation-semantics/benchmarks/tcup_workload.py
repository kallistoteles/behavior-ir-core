"""Private two-native-build TCUP experiment; no release/MCP/SC-007 compatibility claim."""
import argparse
import hashlib
import importlib.util
import json
import math
import os
import platform
import statistics
import subprocess
import sys
import tempfile
import time
from pathlib import Path

WORKLOADS=("warm","update_read","create_read")
WORK_KEYS=("universe","rows","unchanged_rows","full_parent","full_child")

def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def revision(root):return subprocess.check_output(["git","-C",str(root),"rev-parse","HEAD"],text=True).strip()
def sha(value):return isinstance(value,str) and len(value)==64 and all(c in "0123456789abcdef" for c in value)

def validate_result(data):
    runs=data.get("strategy_runs",[])
    if len(runs)!=2 or {r.get("strategy") for r in runs}!={"optimized","reference"}:raise ValueError("two distinct strategies required")
    if runs[0].get("outcomes")!=runs[1].get("outcomes"):raise ValueError("complete semantic outcomes differ")
    for run in runs:
        p=run.get("provenance",{})
        if not all(sha(p.get(k)) for k in ["extension_sha256","patch_sha256"]):raise ValueError("missing native/patch digests")
        if not p.get("core_source_sha256") or not all(sha(h) for h in p["core_source_sha256"].values()) or not p.get("build_command"):raise ValueError("missing source/build provenance")
        reference=run["strategy"]=="reference"
        if p.get("candidate_reference_full")!=reference:raise ValueError("reference must actually full-validate candidates")
        n=run.get("samples_per_series",0)
        if not isinstance(n,int) or n<1:raise ValueError("positive sample count required")
        samples=run.get("measurements",[])
        if len(samples)!=3*n:raise ValueError("all three complete series required")
        for workload in WORKLOADS:
            group=[s for s in samples if s.get("workload")==workload]
            if len(group)!=n or {s.get("sample") for s in group}!=set(range(n)):raise ValueError("missing/duplicate samples")
            for s in group:
                if not all(isinstance(s.get(k),(int,float)) and math.isfinite(s[k]) and s[k]>=0 for k in ["write_ms","read_ms","pair_ms","backend_reads"]):raise ValueError("write/read/pair and backend counters required")
                w=s.get("validation",{})
                if not all(isinstance(w.get(k),int) and w[k]>=0 for k in WORK_KEYS):raise ValueError("separate validation counters required")
                if run.get("eligible",False):
                    if not reference and (w["universe"] or w["unchanged_rows"]):raise ValueError("false zero validation work claim")
                    if reference and (not w["full_parent"] or (workload!="warm" and not w["full_child"])):raise ValueError("parent-only reference is insufficient")
    if runs[0]["provenance"]["extension_sha256"]==runs[1]["provenance"]["extension_sha256"]:raise ValueError("distinct native strategies required")

def summaries(samples):
    result={}
    for workload in WORKLOADS:
        group=[s for s in samples if s["workload"]==workload]
        result[workload]={}
        for metric in ["write_ms","read_ms","pair_ms"]:
            values=sorted(s[metric] for s in group)
            result[workload][metric]={"count":len(values),"p50":statistics.median(values),"p95":values[math.ceil(.95*len(values))-1]}
    return result

def requests(workload,i,result=None):
    if workload=="warm":return None,{}, {"type":"Material","id":"MAT-2000"}
    if workload=="update_read":
        identifier=f"ADD-{2*(i+1):04d}"
        return "record_addition_actual",{"addition_id":identifier,"actual":{"value":"2","unit":"g"},"evidence":"measured"},{"type":"Addition","id":identifier}
    return "register_material",{"name":f"extra_{i}","category":"other"},({"type":"Material","id":result["ids"]["material"]} if result is not None else {})

def collect(args):
    sys.path[:0]=[str(args.tcup_root/"src"),str(args.tcup_root/"tests")]
    import behavior
    import behavior._engine as extension
    from tcup.app import model
    from tcup.host import generations
    from tcup.host.backend import JsonlBackend
    from tcup.mcp.server import TcupServer
    from lab import ACTOR
    provenance=json.loads(args.build_manifest.read_text())
    if digest(extension.__file__)!=provenance["extension_sha256"]:raise ValueError("loaded extension differs from build manifest")
    calls={}
    for name in ["genesis","head","record","version_at","version","removed_at","incoming_at","keys_at","keys_by_field_at","used_at"]:
        if not hasattr(JsonlBackend,name):continue
        original=getattr(JsonlBackend,name)
        def wrapped(self,*a,_name=name,_original=original,**kw):
            calls[_name]=calls.get(_name,0)+1
            return _original(self,*a,**kw)
        setattr(JsonlBackend,name,wrapped)
    spec=importlib.util.spec_from_file_location("tcup_perf_seed",args.tcup_root/"tests/integration/test_performance.py")
    seed_module=importlib.util.module_from_spec(spec);spec.loader.exec_module(seed_module)
    rows=seed_module.seed();semantic_model=model()
    data={"strategy":args.strategy,"samples_per_series":args.samples,"provenance":provenance,"entities":len(rows),"seed_sha256":hashlib.sha256(json.dumps(rows,sort_keys=True).encode()).hexdigest(),"model_sha256":hashlib.sha256(semantic_model.module.to_wire_json().encode()).hexdigest(),"tcup_revision":revision(args.tcup_root),"python":sys.version,"platform":platform.platform(),"declared_versions":behavior.versions(),"measurements":[],"outcomes":[]}
    with tempfile.TemporaryDirectory(prefix="behavior-015-tcup-paired-") as directory:
        root=Path(directory);log=root/"validation.jsonl";log.touch();os.environ["BEHAVIOR_015_WORK_LOG"]=str(log)
        setup=time.perf_counter();lab=root/"lab";generations.init(lab,semantic_model,rows);server=TcupServer(lab,"kalle",semantic_model,clock=lambda:"2026-09-27T12:00:00Z")
        def call(name,arguments):
            start=time.perf_counter();result=server.call(name,arguments,actor=ACTOR);elapsed=(time.perf_counter()-start)*1000
            if result.get("outcome") in {"rejected","error"}:raise ValueError(result)
            return result,elapsed
        # Establish the initial committed parent's validity; setup excluded from samples.
        call("get_record",{"type":"Material","id":"MAT-2000"});data["setup_ms"]=(time.perf_counter()-setup)*1000
        for workload in WORKLOADS:
            for i in range(args.samples):
                log.write_text("");calls.clear();pair=time.perf_counter();write_ms=0.0
                write_tool,write_args,read_args=requests(workload,i)
                if write_tool is not None:
                    write,write_ms=call(write_tool,write_args)
                    if write.get("outcome")!="accepted":raise ValueError(write)
                    data["outcomes"].append(write)
                    _,_,read_args=requests(workload,i,write)
                read,read_ms=call("get_record",read_args);pair_ms=(time.perf_counter()-pair)*1000;data["outcomes"].append(read)
                work=dict.fromkeys(WORK_KEYS,0)
                for line in log.read_text().splitlines():
                    note=json.loads(line);kind=note["kind"];work["universe"]+=int(kind!="candidate");work["rows"]+=note["rows"];work["unchanged_rows"]+=note["unchanged_rows"];work["full_parent"]+=int(kind=="parent");work["full_child"]+=int(kind=="child")
                data["measurements"].append({"workload":workload,"sample":i,"write_ms":write_ms,"read_ms":read_ms,"pair_ms":pair_ms,"backend_reads":sum(calls.values()),"backend_calls":dict(calls),"validation":work})
        opened=server.service.opened
        data["outcomes"].append({"head":opened.backend.head(),"records":[opened.backend.record(p) for p in range(1,opened.store.current().position+1)]})
    data["eligible"]=all(s["validation"]["universe"]==0 for s in data["measurements"]) if args.strategy=="optimized" else True
    data["summary"]=summaries(data["measurements"]);args.output.write_text(json.dumps(data,indent=2,sort_keys=True)+"\n")

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("--strategy",choices=["optimized","reference"])
    parser.add_argument("--tcup-root",type=Path)
    parser.add_argument("--build-manifest",type=Path)
    parser.add_argument("--samples",type=int,default=30)
    parser.add_argument("--optimized-json",type=Path)
    parser.add_argument("--reference-json",type=Path)
    parser.add_argument("--output",type=Path,required=True)
    args=parser.parse_args()
    if args.strategy:collect(args);return
    data={"kind":"private two-native-build Core 015 experiment","transport":"real TcupServer.call handlers and JSONL; no live MCP round trip","version_caveat":"unreleased experiment; canonical Core/ecosystem/TCUP pins and SC-007 untouched","strategy_runs":[json.loads(args.optimized_json.read_text()),json.loads(args.reference_json.read_text())]}
    if data["strategy_runs"][0]["seed_sha256"]!=data["strategy_runs"][1]["seed_sha256"] or data["strategy_runs"][0]["model_sha256"]!=data["strategy_runs"][1]["model_sha256"]:raise ValueError("different canonical seeds/models")
    data["strategy_runs"][1]["eligible"]=data["strategy_runs"][0]["eligible"]
    validate_result(data);data["semantic_outcomes_equal"]=True;args.output.write_text(json.dumps(data,indent=2,sort_keys=True)+"\n")

if __name__=="__main__":main()
