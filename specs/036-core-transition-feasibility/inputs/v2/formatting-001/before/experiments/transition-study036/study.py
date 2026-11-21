"""036 fixed supervisor; no supplied evidence selects an executable or verifier."""
import argparse,importlib,json,sys,time
from pathlib import Path
from artifact_io import read,write_once,verify_ref,digest,safe_path,artifact_ref
from bootstrap import adopt
from campaign import context,eligible
ROOT=Path(__file__).resolve().parents[2]
E=Path(__file__).resolve().parent
F=ROOT/"specs/036-core-transition-feasibility"

def parser():
 p=argparse.ArgumentParser();s=p.add_subparsers(dest="command",required=True)
 q=s.add_parser("preflight");q.add_argument("--profile",required=True);q.add_argument("--bootstrap-receipt",required=True);q.add_argument("--out",required=True)
 q=s.add_parser("prepare");q.add_argument("--session",required=True)
 q=s.add_parser("freeze");q.add_argument("--session",required=True);q.add_argument("--revision",required=True);q.add_argument("--inputs",required=True)
 q=s.add_parser("run");q.add_argument("--session",required=True);q.add_argument("--revision",required=True);q.add_argument("--stage",choices=["S0","S1","Q","S2","S3","S4","S5"],required=True)
 q=s.add_parser("collect");q.add_argument("--session",required=True);q.add_argument("--out",required=True)
 return p

def frozen(path,ctx):
 p=Path(path).resolve();base=(F/"evidence/campaign-001/revisions").resolve()
 if not p.is_relative_to(base):raise ValueError("RevisionOwnership")
 m=read(p,32*1024**2)
 if m.get("format")!="core036.source-revision.v1" or m.get("clock")!=ctx["clock"]:raise ValueError("RevisionContext")
 for ref in m["inputs"]["files"]:verify_ref(ROOT,ref)
 return m

def execute(a):
 if a.command=="preflight":
  profile=read(a.profile);receipt=read(a.bootstrap_receipt);binding=read(F/"inputs/bootstrap-input.json")
  out=Path(a.out).resolve()
  if out!=(F/"evidence/campaign-001").resolve():raise ValueError("SessionOutputOwnership")
  out.mkdir(parents=True,exist_ok=False)
  adopt(profile,receipt,binding["profile_sha256"],out/"session.json",time.monotonic_ns(),Path("/proc/sys/kernel/random/boot_id").read_text().strip())
  return 0
 ctx=context(a.session)
 if a.command=="prepare":
  import sources
  m=read(E/"private/core/source-export.json")
  sources.verify_export(E/"private/core",m)
  for tool in read(E/"toolchain.json")["tools"].values():
   if digest(tool["path"])!=tool["sha256"]:raise ValueError("NativeToolBytes")
  return 0
 if a.command=="freeze":
  if not a.revision.isalnum() or len(a.revision)>256:raise ValueError("RevisionID")
  inputs=read(a.inputs,32*1024**2)
  if not isinstance(inputs.get("files"),list) or not inputs["files"]:raise ValueError("RevisionSources")
  for ref in inputs["files"]:verify_ref(ROOT,ref)
  out=Path(a.session).parent/"revisions"/a.revision;out.mkdir(parents=True,exist_ok=False)
  for ref in inputs["files"]:
   src=verify_ref(ROOT,ref);dst=safe_path(out/"sources",ref["path"]);write_once(dst,src.read_bytes())
  write_once(out/"input-manifest.json",{"format":"core036.source-revision.v1","revision_id":a.revision,"clock":ctx["clock"],"profile_sha256":ctx["profile_sha256"],"inputs":inputs})
  return 0
 if a.command=="collect":
  from assessment import collect
  return collect(ctx,Path(a.out))
 m=frozen(a.revision,ctx)
 fixed={"S1":"extract","Q":"quality","S2":"costs","S3":"lifecycle_costs","S4":"compact_costs"}
 if a.stage not in fixed:raise ValueError("StageHasDedicatedCommand")
 if a.stage in {"S2","S3","S4"}:
  from check_proofs import native_verified
  if not native_verified(None):raise NotImplementedError("Native correspondence gate unmet; dependent stage blocked")
 module=importlib.import_module(fixed[a.stage]);return module.run_stage(ctx,m)

def main():
 if any(flag in sys.argv[1:] for flag in ('--work','--previous-index')) or (len(sys.argv)>1 and sys.argv[1] in {'init','declare','resume','status','finalize'}):
  from controller_v2 import main as v2_main
  return v2_main()
 a=parser().parse_args()
 try:return execute(a)
 except (ValueError,FileExistsError) as exc:print(str(exc),file=sys.stderr);return 2
 except (ModuleNotFoundError,NotImplementedError,OSError) as exc:print("Unavailable: "+str(exc),file=sys.stderr);return 3
if __name__=="__main__":raise SystemExit(main())
