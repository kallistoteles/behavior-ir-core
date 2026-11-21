"""Bounded selective source preparation and explicitly warm native dependencies."""
import json,os,shutil,subprocess,urllib.request,hashlib
from pathlib import Path
import sources
from artifact_io import write_once,digest
ROOT=Path(__file__).resolve().parents[2];E=Path(__file__).resolve().parent

def prepare():
 out=E/"private/core"
 m=sources.export(ROOT,sources.CORE_REV,out,patches=sources.reviewed_patches())
 sources.validate_index([r["path"] for r in m["files"]])
 old=ROOT/"experiments/reuse-study035/private/cargo"
 total=sum((Path(d)/n).lstat().st_size for d,_,ns in os.walk(old) for n in ns)
 if total>1024**3:raise ValueError("WarmSourceCopyBound")
 shutil.copytree(old,E/"private/cargo",symlinks=True)
 tools=json.loads((ROOT/"experiments/reuse-study035/toolchain.json").read_text())
 for x in tools["tools"].values():
  if digest(x["path"])!=x["sha256"]:raise ValueError("NativeToolBytes")
 write_once(E/"toolchain.json",tools)
 write_once(ROOT/"specs/036-core-transition-feasibility/evidence/campaign-001/roles/preparation/prepared.json",{"source_files":len(m["files"]),"source_bytes":sum(x["bytes"] for x in m["files"]),"warm_cargo_copied_bytes":total,"cold_installation":False,"source_revision":sources.CORE_REV,"native_tools_verified":True,"analysis_support":"not_established"})

def metadata():
 out=E/"private/analysis";out.mkdir(parents=True,exist_ok=False)
 results={}
 for project in ["aeneas","charon"]:
  url=f"https://api.github.com/repos/AeneasVerif/{project}/releases?per_page=3"
  req=urllib.request.Request(url,headers={"User-Agent":"core036-bounded-investigation"})
  try:
   with urllib.request.urlopen(req,timeout=20) as f:raw=f.read(2*1024**2+1)
   if len(raw)>2*1024**2:raise ValueError("ReleaseMetadataBound")
   (out/(project+"-releases.json")).write_bytes(raw)
   data=json.loads(raw)
   results[project]=[{"tag":x["tag_name"],"target":x["target_commitish"],"assets":[{"name":a["name"],"bytes":a["size"],"url":a["browser_download_url"],"digest":a.get("digest")} for a in x["assets"]]} for x in data]
  except Exception as exc:results[project]={"error":type(exc).__name__+":"+str(exc)}
 write_once(ROOT/"specs/036-core-transition-feasibility/evidence/campaign-001/roles/preparation/analysis-releases.json",results)
 print(json.dumps(results))
if __name__=="__main__":
 import sys
 if len(sys.argv)>1 and sys.argv[1]=="native-v2":
  import argparse
  from environment import native_stage
  p=argparse.ArgumentParser();p.add_argument("command");p.add_argument("--declaration",required=True);p.add_argument("--out",required=True);a=p.parse_args()
  raise SystemExit(native_stage(Path(a.declaration),Path(a.out)))
 import sys
 {"sources":prepare,"metadata":metadata}[sys.argv[1]]()
