"""Seal or verify retained study files; no semantic or runtime acceptance authority."""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import subprocess


def file_digest(path):
    digest = hashlib.sha256()
    count = 0
    with path.open('rb') as stream:
        for block in iter(lambda:stream.read(1024*1024),b''):
            digest.update(block)
            count += len(block)
    return count,digest.hexdigest()


def safe_path(root, relative):
    value = Path(relative)
    if value.is_absolute() or '..' in value.parts or not value.parts:
        raise ValueError('unsafe manifest path')
    path = root/value
    # Recorded symlinks are hashed as links; do not follow a directory link out
    # of the owned tree while reading a regular file or archive part.
    if not path.parent.resolve().is_relative_to(root.resolve()):
        raise ValueError('manifest parent escapes root')
    return path


def archived_digest(root, archive):
    base = safe_path(root,archive)
    if not base.resolve().is_relative_to(root.resolve()):
        raise ValueError('archive escapes root')
    manifest = json.loads((base/'manifest.json').read_text())
    digest, size = hashlib.sha256(),0
    for index, entry in enumerate(manifest['chunks']):
        if entry['name'] != f'part-{index:06d}.bin':
            raise ValueError('noncanonical or reordered archive part')
        path = safe_path(root, str(Path(archive)/entry['name']))
        part_digest, part_size = hashlib.sha256(),0
        with path.open('rb') as stream:
            for block in iter(lambda:stream.read(1024*1024),b''):
                digest.update(block)
                part_digest.update(block)
                size += len(block)
                part_size += len(block)
        if part_size != entry['bytes'] or part_digest.hexdigest() != entry['sha256']:
            raise ValueError('archive part mismatch')
    result = size,digest.hexdigest()
    if result != (manifest['bytes'],manifest['sha256']):
        raise ValueError('complete reconstructed archive mismatch')
    return result


def verify(root, manifest):
    if (manifest.get('format_version') != 'core033.retained-study-seal.v1'
            or not isinstance(manifest.get('files'),list) or not manifest['files']):
        raise ValueError('nonempty supported study manifest required')
    seen, cache, archived = set(),{},0
    for entry in manifest['files']:
        name = entry['path']
        if name in seen:
            raise ValueError('duplicate manifest file')
        seen.add(name)
        path = safe_path(root,name)
        if entry['availability'] == 'RestorableExactFromGitChunks' and not path.exists():
            actual = archived_digest(root,entry['archive'])
            archived += 1
        elif entry['kind'] == 'symlink':
            if not path.is_symlink():
                raise ValueError('missing recorded symlink: '+name)
            raw = os.fsencode(os.readlink(path))
            actual = len(raw),hashlib.sha256(raw).hexdigest()
        else:
            if path.is_symlink():
                raise ValueError('regular file replaced by symlink: '+name)
            stat = path.stat()
            key = stat.st_dev,stat.st_ino,stat.st_size,stat.st_mtime_ns
            if key not in cache:
                cache[key] = file_digest(path)
            actual = cache[key]
        if actual != (entry['bytes'],entry['sha256']):
            raise ValueError('retained artifact mismatch: '+name)
    return {'outcome':'RetainedArtifactHashesVerified','files':len(seen),
            'large_originals_verified_from_chunks':archived,'g1_pass':False,
            'scope':'storage integrity only; no full Core correctness, proof or performance authority'}


def seal(root, output, exclusions, completed):
    for relative in completed:
        record = json.loads(safe_path(root,relative).read_text())
        if type(record.get('exit_code')) is not int:
            raise ValueError('required engineering attempt has no completion record')
    scopes = ['specs/033-core-proof-feasibility','experiments/transition-study033']
    result = subprocess.run(['git','ls-files','--cached','--others','--exclude-standard','-z','--',*scopes],
                            cwd=root,capture_output=True,check=True)
    paths = {part.decode() for part in result.stdout.split(b'\0') if part}
    originals = {f'specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-preprocessed-export-001/artifacts/{name}':
        f'specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-preprocessed-large-artifacts-001/{name}'
        for name in ['parameters.bin','compression_prover_key.bin']}
    paths.update(originals)
    excluded = set(exclusions)|{str(output.relative_to(root))}
    files,cache = [],{}
    for name in sorted(paths-excluded):
        path = safe_path(root,name)
        stat = path.lstat()
        if path.is_symlink():
            raw = os.fsencode(os.readlink(path))
            size,sha = len(raw),hashlib.sha256(raw).hexdigest()
            kind = 'symlink'
        else:
            key = stat.st_dev,stat.st_ino,stat.st_size,stat.st_mtime_ns
            if key not in cache:
                cache[key] = file_digest(path)
            size,sha = cache[key]
            if path.stat().st_mtime_ns != stat.st_mtime_ns:
                raise ValueError('file changed while sealing: '+name)
            kind = 'file'
        entry = {'path':name,'kind':kind,'bytes':size,'sha256':sha,
                 'availability':'RestorableExactFromGitChunks' if name in originals else 'Git'}
        if name in originals:
            entry['archive'] = originals[name]
            if archived_digest(root,entry['archive']) != (size,sha):
                raise ValueError('Git archive does not reconstruct retained original')
        files.append(entry)
    manifest = {'format_version':'core033.retained-study-seal.v1',
        'at':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'files':files,'file_count':len(files),
        'logical_bytes':sum(entry['bytes'] for entry in files),
        'excluded_mutable_or_self_records':sorted(excluded),
        'external_material':'Pinned Nix toolchains and Lake packages are reconstructed from their retained locks/provenance, not stored in this artifact seal. Ignored build/scratch caches are outside retained study support.',
        'independent_full_workspace_reproduction':'NotEstablished',
        'g1_pass':False,'scope':'retained study/source/proof/artifact integrity, including failures; no successful release or implementation-complete claim'}
    pending = output.with_suffix('.pending.tmp')
    created = False
    try:
        with pending.open('x') as stream:
            created = True
            json.dump(manifest,stream,indent=2,sort_keys=True)
            stream.write('\n')
            stream.flush()
            os.fsync(stream.fileno())
        os.link(pending,output)
    finally:
        if created:
            pending.unlink(missing_ok=True)
    return {'outcome':'RetainedStudySealed','files':len(files),
            'logical_bytes':sum(entry['bytes'] for entry in files),'g1_pass':False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode',choices=['seal','verify'])
    parser.add_argument('--root',type=Path,default=Path.cwd())
    parser.add_argument('--manifest',type=Path,required=True)
    parser.add_argument('--exclude',action='append',default=[])
    parser.add_argument('--completed',action='append',default=[])
    parser.add_argument('--policy',type=Path)
    args = parser.parse_args()
    if args.policy:
        policy = json.loads(args.policy.read_text())
        for key in ['exclude','completed']:
            if not isinstance(policy.get(key),list) or not all(isinstance(v,str) for v in policy[key]):
                raise ValueError('explicit string-list seal policy required')
        args.exclude += policy['exclude']
        args.completed += policy['completed']
    root = args.root.resolve()
    output = args.manifest.resolve()
    result = (seal(root,output,args.exclude,args.completed) if args.mode=='seal'
              else verify(root,json.loads(output.read_text())))
    print(json.dumps(result))


if __name__ == '__main__':
    main()
