"""Source-sensitive gates and the inherited whole-investigation budget."""
import time,json
from pathlib import Path
from artifact_io import digest,read,write_once
from bootstrap import validate_profile
from recorder import Ledger

def eligible(stage,g):
 if stage in {"S0","S5"}:return True
 if stage=="Q":return g.get("native_ready") is True
 if stage=="S1":return g.get("native_ready") is True and g.get("analysis_ready") is True
 if not(g.get("S1") is True and g.get("Q") is True):return False
 if stage in {"S2","S3"}:return stage=="S2" or g.get("S2") is True
 if stage=="S4":return g.get("S2") is True and g.get("S3") is True
 raise ValueError("UnknownStage")
def check_revision(expected,actual):
 if expected!=actual:raise ValueError("SourceRevisionChanged")
def budget_remaining(total,elapsed,reserve):return max(0,total-elapsed-reserve)
def context(session):
 s=read(session);validate_profile(s["profile"])
 Ledger(s["clock"]["started_ns"],s["clock"]["boot_id"],21600).remaining_ns(time.monotonic_ns(),Path("/proc/sys/kernel/random/boot_id").read_text().strip())
 return s
