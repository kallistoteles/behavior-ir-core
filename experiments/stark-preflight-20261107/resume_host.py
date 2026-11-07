"""One resume of existing build outputs within the original1800s wall budget."""
import datetime
import json
import os
from pathlib import Path
import shutil
import subprocess
import time

HERE = Path(__file__).resolve().parent
source = json.loads((HERE/'results/host-dependencies-input-001.json').read_text())
env = dict(os.environ)
for key in ('CARGO_ENCODED_RUSTFLAGS','RUSTC_WRAPPER','RUSTC_WORKSPACE_WRAPPER','RISC0_RUST_SRC'):
    env.pop(key,None)
env.update(CARGO_HOME=str(HERE/'cargo-cache'),RUSTUP_HOME=str(HERE/'rustup-private'),
           RISC0_HOME=str(HERE/'risc0'),CARGO_BUILD_JOBS='1',CARGO_INCREMENTAL='0',
           RUSTC=str(Path(shutil.which('rustc')).resolve()),
           CC=str(Path(shutil.which('cc')).resolve()),CXX=str(Path(shutil.which('c++')).resolve()),
           RUSTFLAGS=source['rustflags'],CXXFLAGS=source['cxxflags'])
subprocess.run(source['argv'],env=env,check=True)
first = json.loads((HERE/'results/host-dependencies-build-001/receipt.json').read_text())
elapsed = time.time()-datetime.datetime.fromisoformat(first['started_at_utc']).timestamp()
(HERE/'results/host-resume-complete.json').write_text(json.dumps({
    'format':'core-next.host-build-resume-result.v1','status':'DependenciesBuilt',
    'elapsed_from_original_scenario_start_seconds':elapsed,
    'cumulative_scenario_ceiling_seconds':1800,'cold_build_claim':False,'g1_pass':False},indent=2)+'\n')
print('SDK dependencies completed within original build scenario; binary still required')
