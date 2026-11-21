"""Create-once, bounded byte references under caller-chosen roots."""
import hashlib,json,os,re
from pathlib import Path,PurePosixPath
from records import loads,CONTROL

def write_once(path,value):
 path=Path(path);path.parent.mkdir(parents=True,exist_ok=True)
 raw=value if isinstance(value,bytes) else (json.dumps(value,sort_keys=True,ensure_ascii=False,indent=2,allow_nan=False)+"\n").encode()
 with path.open("xb") as f:f.write(raw);f.flush();os.fsync(f.fileno())
def safe_path(root,name):
 if not isinstance(name,str) or not name or len(name.encode())>1024 or "\\" in name:raise ValueError("ArtifactPath")
 p=PurePosixPath(name)
 if p.is_absolute() or ".." in p.parts or str(p)!=name:raise ValueError("ArtifactPath")
 root=Path(root).resolve();out=(root/name).resolve()
 if not out.is_relative_to(root):raise ValueError("ArtifactPathEscape")
 return out
def digest(path):
 h=hashlib.sha256()
 with Path(path).open("rb") as f:
  for b in iter(lambda:f.read(1024**2),b""):h.update(b)
 return h.hexdigest()
def artifact_ref(root,name):
 p=safe_path(root,name)
 if not p.is_file():raise ValueError("ArtifactMissing")
 return {"path":name,"bytes":p.stat().st_size,"sha256":digest(p)}
def verify_ref(root,ref):
 if not isinstance(ref,dict) or set(ref)!={"path","bytes","sha256"} or type(ref["bytes"]) is not int or ref["bytes"]<0 or not re.fullmatch("[a-f0-9]{64}",ref["sha256"]):raise ValueError("ArtifactRefFields")
 if artifact_ref(root,ref["path"])!=ref:raise ValueError("ArtifactBytes")
 return safe_path(root,ref["path"])
def read(path,limit=CONTROL):
 with Path(path).open("rb") as f:raw=f.read(limit+1)
 return loads(raw,limit)
def seal(root):
 root=Path(root);files=[]
 for p in sorted(root.rglob("*")):
  if p.is_symlink():raise ValueError("ArchiveSymlink")
  if p.is_file() and p.name!="closed-artifacts.json":files.append(artifact_ref(root,str(p.relative_to(root))))
 if len(files)>20000:raise ValueError("ArchiveReferenceBound")
 result={"format":"core036.closed.v1","files":files};write_once(root/"closed-artifacts.json",result);return result
