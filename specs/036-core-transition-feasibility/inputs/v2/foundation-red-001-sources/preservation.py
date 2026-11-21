"""Selected-input preservation, no whole historical archive hashing."""
from pathlib import Path
from artifact_io import verify_ref

def verify(root,baseline):
 for ref in baseline["files"]:verify_ref(root,ref)
 checks=[]
 for ref in baseline["unrelated_files"]:
  p=Path(root)/ref["path"];s=p.stat()
  good=s.st_size==ref["bytes"] and s.st_mtime_ns==ref["mtime_ns"] and s.st_ino==ref["inode"]
  checks.append({"path":ref["path"],"metadata_equal":good})
  if not good:raise ValueError("UnrelatedFileMetadataChanged")
 return {"selected_inputs_equal":True,"selected_input_count":len(baseline["files"]),"unrelated":checks,"scope":"selected byte refs and unrelated metadata only; no whole archive scan"}
