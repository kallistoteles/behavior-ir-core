"""Content-preserving sharing of explicitly listed immutable completed modules."""
import json,subprocess,sys
from pathlib import Path
roots=json.loads(Path(sys.argv[1]).read_text())
if not roots or not all(Path(root).is_dir() for root in roots):raise RuntimeError('complete immutable roots required')
subprocess.run(['hardlink','--ignore-time','--respect-name','--minimum-size','1M',*roots],check=True)
