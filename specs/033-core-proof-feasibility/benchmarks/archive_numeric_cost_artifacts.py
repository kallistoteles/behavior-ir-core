"""Retain completed oversized diagnostic files as exact, tested Git chunks."""
import argparse
import hashlib
import json
from pathlib import Path
import tempfile

from artifact_chunks import pack, restore

parser = argparse.ArgumentParser()
parser.add_argument('--export', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
raw_receipt = (args.export/'receipt.json').read_bytes()
receipt = json.loads(raw_receipt)
if receipt['outcome'] not in ['DiagnosticComplete','DiagnosticFailed'] or not receipt['identities_unchanged']:
    raise ValueError('completed unchanged export required; outcome is not promoted')
args.out.mkdir(exist_ok=False)
archived = {}
for name, entry in receipt['exported_artifacts'].items():
    if Path(name).name != name:
        raise ValueError('unexpected export filename')
    if entry['bytes'] <= 95*1024**2:
        continue
    source = args.export/'artifacts'/name
    if source.stat().st_size != entry['bytes']:
        raise ValueError('changed artifact byte count')
    archive = args.out/name
    manifest = pack(source, entry['sha256'], archive)
    with tempfile.TemporaryDirectory(prefix='core033-artifact-roundtrip-') as temporary:
        rebuilt = restore(archive, Path(temporary)/'restored')
        with source.open('rb') as original, rebuilt.open('rb') as result:
            while True:
                left, right = original.read(1024**2), result.read(1024**2)
                if left != right:
                    raise ValueError('full restored artifact bytes differ')
                if not left:
                    break
    archived[name] = {'original':str(source),'bytes':manifest['bytes'],'sha256':manifest['sha256'],
        'archive':str(archive),'manifest_sha256':hashlib.sha256((archive/'manifest.json').read_bytes()).hexdigest(),
        'full_restored_byte_equality':True}
if (args.export/'receipt.json').read_bytes() != raw_receipt:
    raise ValueError('export receipt changed')
result = {'format_version':'core033.large-diagnostic-artifact-storage.v1',
    'outcome':'ExactArtifactChunkRoundTrips','export_outcome_unchanged':receipt['outcome'],
    'export_receipt_sha256':hashlib.sha256(raw_receipt).hexdigest(),'artifacts':archived,
    'scope':'storage representation only; originals retained locally; no proof, semantic or runtime authority',
    'g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print(json.dumps(result))
