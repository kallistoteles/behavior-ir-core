"""Adopt an actual reviewed-recorder start; evidence never creates semantic authority."""
import hashlib,json,os
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
EXPECTED={"campaign_seconds":21600,"stages":{"S0":1200,"S1":5400,"Q":2400,"S2":1800,"S3":5400,"S4":3600,"S5":1800},"ordinary_child_seconds":900,"extended_child_seconds":1800,"closing_reserve_seconds":1800,"address_space_bytes":8*1024**3,"cache_bytes":6*1024**3,"artifacts_bytes":2*1024**3,"temporary_bytes":1024**3,"combined_bytes":8*1024**3,"launch_free_bytes":16*1024**3,"stop_free_bytes":4*1024**3,"sample_seconds":1}
def profile_digest(p):return hashlib.sha256(json.dumps(p,sort_keys=True,separators=(",",":")).encode()).hexdigest()
def validate_profile(p):
 if p.get("format")!="core036.profile.v1" or p.get("product_adoption")!="unactivated" or p.get("limits")!=EXPECTED:raise ValueError("ProfileLimitsOrVersion")
 e=ROOT/"experiments/transition-study036";f=ROOT/"specs/036-core-transition-feasibility"
 if p.get("owned_roots")!={"cache":str(e/"private"),"temporary":str(e/"private/tmp"),"artifacts":str(f/"evidence")}:raise ValueError("OwnedRoots")
 return p
def adopt(profile,receipt,digest,out,now_ns,boot_id):
 validate_profile(profile)
 if profile_digest(profile)!=digest:raise ValueError("BootstrapProfileBinding")
 if receipt.get("format")!="core035.bounded.v1" or receipt.get("boot_id")!=boot_id or type(receipt.get("start_monotonic_ns")) is not int or receipt["start_monotonic_ns"]>now_ns:raise ValueError("BootstrapClock")
 if not receipt.get("tree_empty") or not receipt.get("group_empty") or receipt.get("stop_reason") is not None:raise ValueError("BootstrapNotClosed")
 if (now_ns-receipt["start_monotonic_ns"])>profile["limits"]["campaign_seconds"]*10**9:raise ValueError("BudgetExpired")
 result={"format":"core036.session-manifest.v1","campaign_id":profile["campaign_id"],"profile":profile,"profile_sha256":digest,"clock":{"started_ns":receipt["start_monotonic_ns"],"boot_id":boot_id},"bootstrap_exit":receipt["exit_code"],"product_adoption":"unactivated"}
 out=Path(out);out.parent.mkdir(parents=True,exist_ok=True)
 with out.open("x") as f:json.dump(result,f,indent=2);f.write("\n");f.flush();os.fsync(f.fileno())
 return result
