"""Lossless artifact storage in bounded Git files; no proof/semantic authority."""
import argparse
import hashlib
import json
import os
from pathlib import Path

CHUNK_BYTES = 64 * 1024**2


def pack(source, expected, out, chunk_bytes=CHUNK_BYTES):
    if not 0 < chunk_bytes <= CHUNK_BYTES:
        raise ValueError('invalid chunk bound')
    out.mkdir(exist_ok=False)
    digest = hashlib.sha256()
    chunks = []
    total = 0
    with source.open('rb') as stream:
        while data := stream.read(chunk_bytes):
            name = f'part-{len(chunks):06d}.bin'
            with (out/name).open('xb') as file:
                file.write(data)
            chunks.append({'name':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
            digest.update(data)
            total += len(data)
    if digest.hexdigest() != expected:
        raise ValueError('original artifact hash differs')
    manifest = {'format_version':'core033.lossless-artifact-chunks.v1',
                'name':source.name,'bytes':total,'sha256':expected,'chunks':chunks,
                'scope':'byte-preserving storage only; original proof/diagnostic scope unchanged',
                'g1_pass':False}
    (out/'manifest.json').write_text(json.dumps(manifest, indent=2, sort_keys=True)+'\n')
    return manifest


def restore(archive, out):
    manifest = json.loads((archive/'manifest.json').read_text())
    if manifest['format_version'] != 'core033.lossless-artifact-chunks.v1':
        raise ValueError('unknown archive format')
    name = manifest['name']
    if name in ['', '.', '..'] or Path(name).name != name or '/' in name or '\\' in name:
        raise ValueError('invalid artifact name')
    for index, entry in enumerate(manifest['chunks']):
        if entry['name'] != f'part-{index:06d}.bin' or not 0 < entry['bytes'] <= CHUNK_BYTES:
            raise ValueError('invalid ordered chunk')
    out.mkdir(exist_ok=False)
    partial = out/'.artifact.partial'
    digest = hashlib.sha256()
    total = 0
    with partial.open('xb') as file:
        for entry in manifest['chunks']:
            path = archive/entry['name']
            if path.stat().st_size != entry['bytes']:
                raise ValueError('chunk byte count differs')
            data = path.read_bytes()
            if hashlib.sha256(data).hexdigest() != entry['sha256']:
                raise ValueError('chunk hash differs')
            file.write(data)
            digest.update(data)
            total += len(data)
    if total != manifest['bytes'] or digest.hexdigest() != manifest['sha256']:
        raise ValueError('complete artifact differs')
    os.link(partial, out/name)  # Create once; never overwrite another artifact.
    partial.unlink()
    return out/name


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    p = sub.add_parser('pack')
    p.add_argument('source', type=Path)
    p.add_argument('--expected-sha256', required=True)
    p.add_argument('--out', type=Path, required=True)
    p = sub.add_parser('restore')
    p.add_argument('archive', type=Path)
    p.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    if args.command == 'pack':
        result = pack(args.source, args.expected_sha256, args.out)
        print(json.dumps({'outcome':'StoredExactArtifactChunks','bytes':result['bytes'],
                          'sha256':result['sha256'],'g1_pass':False}))
    else:
        result = restore(args.archive, args.out)
        print(json.dumps({'outcome':'RestoredExactArtifact','path':str(result),'g1_pass':False}))
