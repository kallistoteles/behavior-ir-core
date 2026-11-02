"""Bounded diagnostic to isolate source-assembly normalization, never authority."""
import os,sys,shutil
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
previous=Path(sys.argv[1]).resolve();until=sys.argv[2];out=Path(sys.argv[3]).resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');raw=(previous/'proof-inputs/ArtifactIngressBlocks.lean').read_text();prefix=raw.split('theorem '+until,1)[0]+'\nend ArtifactIngressBlocks\n';source=out/'Diagnostic.lean';source.write_text(prefix)
seed=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/block-ingress-source-blocks-001/kernel/compiled').resolve();env=dict(os.environ,LEAN_PATH=':'.join(map(str,[seed,*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
check_targets._call(['lean','-j1','-o',str(out/'Diagnostic.olean'),str(source)],cwd=out,env=env,log=out/'kernel.txt');print('Diagnostic prefix compiled; no mathematical receipt or source acceptance authority.')
