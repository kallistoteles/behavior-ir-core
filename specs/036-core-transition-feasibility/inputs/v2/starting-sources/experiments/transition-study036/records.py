"""Bounded strict036 evidence records, never execution authority."""
import json,math,re
from pathlib import PurePosixPath
CONTROL=4*1024**2;DOCUMENT=64*1024**2;MANIFEST=32*1024**2
REQUIRED={"format","campaign_id","revision_id","case_id","role","outcome","product_adoption","input_refs"}
OPTIONAL={"reason","blocking_ref","evidence_refs","details","obligations","measurements","prerequisites","clock","source_context","assessment","status","requirements","criteria"}
FORMATS={"core036.gate.v1","core036.assessment.v1","core036.operation.v1","core036.session.v1","core036.correspondence.v1","core036.reconstruction.v1"}
OUTCOMES={"met","unmet","blocked","completed","failed","resource_stopped","not_run","equal","mismatch","not_evaluated","proved_for_declared_subject","checked_conformance_only","explicit_external_premise","unestablished","refuted"}
def pairs(items):
 d={}
 for k,v in items:
  if k in d:raise ValueError("DuplicateKey")
  d[k]=v
 return d
def loads(raw,limit=CONTROL):
 if not isinstance(raw,(bytes,str)) or len(raw.encode() if isinstance(raw,str) else raw)>limit:raise ValueError("ByteBound")
 try:return json.loads(raw,object_pairs_hook=pairs,parse_constant=lambda _:(_ for _ in ()).throw(ValueError("NonfiniteNumber")))
 except (UnicodeError,json.JSONDecodeError,RecursionError) as e:raise ValueError("InvalidJSON") from e
def validate_ref(ref):
 if not isinstance(ref,dict) or set(ref)!={"path","bytes","sha256"} or type(ref["bytes"]) is not int or ref["bytes"]<0 or not isinstance(ref["sha256"],str) or not re.fullmatch("[a-f0-9]{64}",ref["sha256"]):raise ValueError("ReferenceFields")
 name=ref["path"]
 if not isinstance(name,str) or not name or len(name.encode())>1024 or "\\" in name:raise ValueError("ReferencePath")
 p=PurePosixPath(name)
 if p.is_absolute() or ".." in p.parts or str(p)!=name:raise ValueError("ReferencePath")
 return ref
def validate_record(d):
 if not isinstance(d,dict) or not REQUIRED<=d.keys() or d.keys()-REQUIRED-OPTIONAL:raise ValueError("RecordFields")
 if d["format"] not in FORMATS or d["outcome"] not in OUTCOMES or d["product_adoption"]!="unactivated":raise ValueError("RecordVersionOrOutcome")
 for k in ["campaign_id","revision_id","case_id","role"]:
  if not isinstance(d[k],str) or not 0<len(d[k].encode())<=256:raise ValueError("IDBound")
 if not isinstance(d["input_refs"],list) or len(d["input_refs"])>20000:raise ValueError("ReferenceBound")
 for ref in d["input_refs"]:validate_ref(ref)
 if "blocking_ref" in d:validate_ref(d["blocking_ref"])
 if d["outcome"] in {"blocked","not_run","resource_stopped","unestablished"} and (not isinstance(d.get("reason"),str) or not d["reason"] or not d.get("blocking_ref")):raise ValueError("MissingBlocker")
 return d
def validate_workload(d):
 if set(d)!={"N","H","requests"} or type(d["N"]) is not int or not 2<=d["N"]<=256 or type(d["H"]) is not int or not 0<=d["H"]<=128 or not isinstance(d["requests"],list) or len(d["requests"])>128:raise ValueError("WorkloadBound")
 return d
def quantity(value,unit,reason="",scope="declared",method="direct"):
 if value is None and not reason:raise ValueError("UnavailableReason")
 if value is not None and (type(value) not in {int,float} or value<0 or not math.isfinite(value)):raise ValueError("Quantity")
 return {"value":value,"unit":unit,"scope":scope,"method":method,"reason_if_unavailable":reason if value is None else None}
