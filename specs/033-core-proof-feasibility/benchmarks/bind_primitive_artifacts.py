import subprocess,sys
from pathlib import Path
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain')
items=[
('sha-source','sha-actual-source-composed-001','ArtifactSHABlocks','actualBytes','bytes','sha-word-001/checker_step.rs'),
('sha-matrix','sha-matrix-packet-003','ActualSHAMatrixPacket','actualMatrix','matrix','sha-word-matrix-001/matrix.bin'),
('control-source','control-actual-source-composed-001','ActualControlBytes','actualBytes','bytes','control-primitives-001/checker_step.rs'),
('control-matrix','control-actual-matrix-003','CheckedControlMatrix','actualMatrix','matrix','control-primitives-001/matrix.bin'),
('digest-source','digest-actual-source-composed-001','ActualDigestBytes','actualBytes','bytes','digest-words-001/checker_step.rs'),
('counter-source','counter-actual-source-composed-001','ActualCounterBytes','actualBytes','bytes','counter-words-001/checker_step.rs'),
('signed-source','signed-actual-source-composed-001','ActualSignedBytes','actualBytes','bytes','signed-positive-001/checker_step.rs')]
for label,receipt,module,value,kind,artifact in items:
 command=[sys.executable,'experiments/transition-study033/proofs/bind_checked_value.py','--kernel',str(root/receipt/'kernel'),'--module',module,'--value',module+'.'+value,'--kind',kind,'--expected','experiments/transition-study033/generated/'+artifact,'--out',str(root/(label+'-closed-value-binding-001'))]
 result=subprocess.run(command,check=False)
 if result.returncode:sys.exit(result.returncode)
