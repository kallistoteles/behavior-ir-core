"""Verified bounded publisher archives. Extraction support is not assumed."""
import hashlib,json,tarfile,urllib.request
from pathlib import Path
from artifact_io import digest,write_once

def extract_archive(archive,out,expected,max_bytes):
 if digest(archive)!=expected:raise ValueError("ArchiveDigest")
 out=Path(out)
 with tarfile.open(archive,"r:gz") as t:
  members=t.getmembers()
  if len(members)>20000 or sum(x.size for x in members)>max_bytes:raise ValueError("ArchiveExpansionBound")
  for x in members:
   if Path(x.name).is_absolute() or ".." in Path(x.name).parts:raise ValueError("ArchivePath")
   if x.issym() and (Path(x.linkname).is_absolute() or ".." in Path(x.linkname).parts):raise ValueError("ArchiveLink")
   if not(x.isfile() or x.isdir() or x.issym() or x.islnk()):raise ValueError("ArchiveMember")
  out.mkdir(parents=True,exist_ok=False)
  try:t.extractall(out,members=members,filter="data")
  except (tarfile.FilterError,OSError) as exc:raise ValueError("ArchiveFilter") from exc

def fetch(url,out,expected=None,max_bytes=512*1024**2):
 if not url.startswith(("https://api.github.com/repos/AeneasVerif/","https://github.com/AeneasVerif/","https://raw.githubusercontent.com/AeneasVerif/")):raise ValueError("ToolPublisherURL")
 h=hashlib.sha256();n=0
 req=urllib.request.Request(url,headers={"User-Agent":"core036-bounded-investigation"})
 with urllib.request.urlopen(req,timeout=30) as src,Path(out).open("xb") as dst:
  while b:=src.read(1024**2):
   n+=len(b)
   if n>max_bytes:raise ValueError("DownloadBound")
   h.update(b);dst.write(b)
 if expected and h.hexdigest()!=expected:raise ValueError("DownloadDigest")
 return {"url":url,"bytes":n,"sha256":h.hexdigest()}

def acquire():
 E=Path(__file__).resolve().parent;F=E.parents[1]/"specs/036-core-transition-feasibility";base=E/"private/analysis"
 meta=json.loads((F/"evidence/campaign-001/roles/preparation/analysis-releases.json").read_text())
 release=meta["aeneas"][0]
 if release["tag"]!="nightly-2026.11.15-1dc8ad3":raise ValueError("PinnedReleaseTag")
 refpath=base/"aeneas-tag.json";fetch("https://api.github.com/repos/AeneasVerif/aeneas/git/ref/tags/"+release["tag"],refpath,max_bytes=65536)
 target=json.loads(refpath.read_text())["object"]
 if target["type"]=="tag":
  q=base/"aeneas-annotated-tag.json";fetch("https://api.github.com/repos/AeneasVerif/aeneas/git/tags/"+target["sha"],q,max_bytes=65536);target=json.loads(q.read_text())["object"]
 if target["sha"]!="1dc8ad31b1b062a77c50e29144a6c7bba955fa09":raise ValueError("ReleaseSourcePin")
 asset=next(x for x in release["assets"] if x["name"]=="aeneas-linux-x86_64.tar.gz")
 expected=asset["digest"].removeprefix("sha256:")
 archive=base/asset["name"];receipt=fetch(asset["url"],archive,expected,max_bytes=200*1024**2)
 extract_archive(archive,base/"aeneas",expected,2*1024**3)
 write_once(F/"evidence/campaign-001/roles/preparation/aeneas-package.json",{"release":release["tag"],"source_commit":target["sha"],"download":receipt,"publisher_build_trust":"official source-tagged release; source-level compiler/extractor correctness remains an external premise","files":[str(p.relative_to(base/"aeneas")) for p in sorted((base/"aeneas").rglob("*")) if p.is_file()]})
 print("source-tagged package acquired")
if __name__=="__main__":acquire()
