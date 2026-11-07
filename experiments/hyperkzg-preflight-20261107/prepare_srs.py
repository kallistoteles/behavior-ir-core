"""Retrieve a publisher-pinned SRS in bounded files, then copy exact sections.

No curve setup is generated. Digest matching is publisher-based provenance,
not independent verification of ceremony contributions or secret destruction.
"""
import argparse
import hashlib
import json
import struct
import time
from pathlib import Path
import urllib.request

CHUNK = 64 * 1024**2
MAX_TOTAL = 768 * 1024**2


class Parts:
    def __init__(self, directory, receipt):
        self.directory, self.receipt, self.position = directory, receipt, 0
        self.size = receipt['bytes']

    def seek(self, position):
        assert 0 <= position <= self.size
        self.position = position

    def read(self, size):
        assert size >= 0 and self.position + size <= self.size, 'truncated section'
        output = bytearray()
        while size:
            number, offset = divmod(self.position, CHUNK)
            entry = self.receipt['chunks'][number]
            count = min(size, entry['bytes']-offset)
            assert count > 0
            with (self.directory/entry['name']).open('rb') as f:
                f.seek(offset)
                raw = f.read(count)
            assert len(raw) == count
            output.extend(raw)
            self.position += count
            size -= count
        return bytes(output)


def fetch(protocol_path, out):
    protocol = json.loads(protocol_path.read_text())
    identity = protocol['full_artifact']
    out.mkdir(exist_ok=False, parents=True)
    start = time.monotonic()
    blake, sha, chunks, total = hashlib.blake2b(), hashlib.sha256(), [], 0
    request = urllib.request.Request(identity['url'], headers={
        'Accept-Encoding':'identity', 'Cache-Control':'no-cache',
        'User-Agent':'Core-proof-feasibility/20261107'})
    with urllib.request.urlopen(request, timeout=30) as response:
        assert response.status == 200, 'full object requires HTTP200, not a partial range'
        advertised = response.headers.get('Content-Length')
        if advertised is not None:
            assert int(advertised) <= MAX_TOTAL, 'object exceeds frozen preparation bound'
        while True:
            data = response.read(CHUNK)
            if not data:
                break
            assert time.monotonic()-start <= 300, 'download wall bound'
            total += len(data)
            assert total <= MAX_TOTAL
            # read(n) fills n except at EOF; Parts relies on full intermediate chunks.
            name = f'part-{len(chunks):06d}.bin'
            with (out/name).open('xb') as f:
                f.write(data)
            blake.update(data)
            sha.update(data)
            chunks.append({'name':name,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
    assert chunks and all(e['bytes'] == CHUNK for e in chunks[:-1])
    actual = blake.hexdigest()
    assert actual == identity['blake2b512'], 'published artifact digest differs'
    receipt = {'format':'core-next.publisher-pinned-srs.v1',
               'status':'OfficialDigestMatched', 'url':identity['url'],
               'bytes':total, 'blake2b512':actual,'sha256':sha.hexdigest(),
               'chunks':chunks,'elapsed_seconds':time.monotonic()-start,
               'transcript_verification':'NotRun', 'g1_pass':False}
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:receipt[k] for k in ('status','bytes','blake2b512','elapsed_seconds')}))


def prune(directory, out, generators):
    assert 0 < generators <= 524288
    receipt = json.loads((directory/'receipt.json').read_text())
    assert receipt['status'] == 'OfficialDigestMatched'
    blake = hashlib.blake2b()
    for number, entry in enumerate(receipt['chunks']):
        assert entry['name'] == f'part-{number:06d}.bin'
        raw = (directory/entry['name']).read_bytes()
        assert len(raw) == entry['bytes'] and hashlib.sha256(raw).hexdigest() == entry['sha256']
        blake.update(raw)
    assert blake.hexdigest() == receipt['blake2b512']
    reader = Parts(directory,receipt)
    assert reader.read(4) == b'ptau'
    version, count = struct.unpack('<II',reader.read(8))
    assert version == 1 and count == 11
    sections = {}
    for _ in range(count):
        identifier, size = struct.unpack('<IQ',reader.read(12))
        assert identifier not in sections, 'duplicate section'
        sections[identifier] = (reader.position,size)
        reader.seek(reader.position+size)
    assert reader.position == reader.size
    for identifier in (1,2,3):
        assert identifier in sections
    assert sections[1][1] <= 1024
    assert sections[2][1] >= generators*64 and sections[3][1] >= 2*128
    out.mkdir(exist_ok=False, parents=True)
    destination = out/'powersOfTau28_hez_final_19.nova-pruned.ptau'
    copied = []
    with destination.open('xb') as f:
        f.write(b'ptau'+struct.pack('<II',1,3))
        for identifier,size in ((1,sections[1][1]),(2,generators*64),(3,256)):
            f.write(struct.pack('<IQ',identifier,size))
            reader.seek(sections[identifier][0])
            digest = hashlib.sha256()
            remaining = size
            while remaining:
                raw = reader.read(min(remaining,1024**2))
                f.write(raw)
                digest.update(raw)
                remaining -= len(raw)
            copied.append({'section':identifier,'source_offset':sections[identifier][0],
                           'bytes':size,'sha256':digest.hexdigest()})
    digest = hashlib.sha256(destination.read_bytes()).hexdigest()
    result = {'format':'core-next.exact-srs-section-copy.v1',
              'status':'ExactOriginalSectionsCopied', 'original_blake2b512':receipt['blake2b512'],
              'original_sha256':receipt['sha256'],'kept_g1':generators,'kept_g2':2,
              'file':destination.name,'bytes':destination.stat().st_size,'sha256':digest,
              'sections':copied, 'curve_and_point_checks':'RequiredByActualNovaLoader;NotRunHere',
              'transcript_verification':'NotRun','g1_pass':False}
    (out/'receipt.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command',required=True)
    p = sub.add_parser('fetch'); p.add_argument('protocol',type=Path); p.add_argument('out',type=Path)
    p = sub.add_parser('prune'); p.add_argument('directory',type=Path); p.add_argument('out',type=Path)
    p.add_argument('--generators',type=int,required=True)
    a = parser.parse_args()
    if a.command == 'fetch': fetch(a.protocol,a.out)
    else: prune(a.directory,a.out,a.generators)
