#!/usr/bin/env python3
"""Package frozen public research bytes; lossless gzip is not a Core evidence format."""
import argparse
import gzip
import io
import json
from pathlib import Path
import tarfile
import artifacts as a


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    args=p.parse_args();m=a.load(args.manifest);a.validate_manifest(m)
    root=args.manifest.resolve().parent;out=args.output.resolve()
    a.require(not out.exists(),'fresh packaging output required')
    out.mkdir(parents=True);(out/'objects').mkdir()
    entries={};components={}
    def encoded(value):return a.canonical(value)[:-1]
    for case in m['cases']:
        key=case['case_id'];ref=m['references'][key];raw=a.read_artifact(root,ref)
        name='objects/'+ref['sha256'].split(':')[1]+'.json.gz'
        packed=gzip.compress(raw,compresslevel=6,mtime=0);(out/name).write_bytes(packed)
        entry={'path':name,'sha256':ref['sha256'],'bytes':len(raw),'compression':'gzip',
               'compressed_sha256':a.digest(packed),'compressed_bytes':len(packed)}
        a.require(a.read_packed_artifact(out,entry)==raw,'exact original recovery')
        entries[key]=entry;value=json.loads(raw)
        a.require(encoded(value)==raw,'native canonical roundtrip for size attribution')
        steps=case['factors']['steps'];history=case['factors']['history']
        components[key]={'whole_audit_envelope_bytes':len(raw),
            'cycle_decision_records_bytes':sum(len(encoded(v)) for v in value['records'][:steps+1]),
            'cold_decision_record_bytes':len(encoded(value['records'][-1])),
            'cycle_bundles_bytes':sum(len(encoded(v)) for v in value['bundles']),
            'prepared_archived_commits_bytes':sum(len(encoded(v)) for v in value['commits'][:history]),
            'window_archived_commits_bytes':sum(len(encoded(v)) for v in value['commits'][history:]),
            'final_versions_bytes':len(encoded(value['versions'])),'read_record_bytes':len(encoded(value['reads'][0])),
            'page_bytes':len(encoded(value['commands'])),'page_items':len(value['commands']['items']),
            'paired_drain_cold_records_identical':value['records'][steps]==value['records'][-1]}
        del value,raw,packed
    source=root/'source';modes={};archive=out/'measured-source.tar.gz'
    repo=Path(__file__).resolve().parents[3]
    with archive.open('wb') as rawstream,gzip.GzipFile(filename='',mode='wb',fileobj=rawstream,mtime=0) as stream,tarfile.open(fileobj=stream,mode='w|') as tar:
        for name,h in sorted(m['subject']['files'].items()):
            rel=Path(name);path=(source/rel).resolve()
            a.require(not rel.is_absolute() and '..' not in rel.parts and path.is_relative_to(source.resolve()),'source archive path')
            data=path.read_bytes();a.require(a.digest(data)==h,'frozen source content')
            mode=0o755 if (repo/rel).exists() and (repo/rel).stat().st_mode&0o111 else 0o644
            info=tarfile.TarInfo(name);info.size=len(data);info.mode=mode;info.mtime=0;info.uid=info.gid=0
            tar.addfile(info,io.BytesIO(data));modes[name]=mode
    with tarfile.open(archive,'r:gz') as tar:
        names=[]
        for member in tar:
            a.require(member.isfile() and member.name in m['subject']['files'],'source member inventory')
            a.require(a.digest(tar.extractfile(member).read())==m['subject']['files'][member.name],'source member recovery')
            names.append(member.name)
        a.require(len(names)==len(set(names))==len(m['subject']['files']),'complete source archive')
    index={'format':'core031.portable-observations.v1','reference_manifest_sha256':a.digest(args.manifest.read_bytes()),
           'objects':entries,'source_archive':{'path':archive.name,'sha256':a.digest(archive.read_bytes()),'bytes':archive.stat().st_size,
             'source_content_tree_sha256':m['subject']['tree_sha256'],'files':len(modes),'executable_paths':[k for k,v in modes.items() if v==0o755]},
           'scope':'Exact frozen native observations, deduplicated across matching repetitions. Container hashes establish integrity, not semantic validity. Source content verified per manifest; restore over its source_commit checkout. No compiled binary is distributed here.'}
    (out/'index.json').write_bytes(a.canonical(index));(out/'components.json').write_bytes(a.canonical(components))
    print(json.dumps({'cases':len(entries),'raw_bytes':sum(v['bytes'] for v in entries.values()),
                      'compressed_bytes':sum(v['compressed_bytes'] for v in entries.values()),'source_archive_bytes':archive.stat().st_size}))


if __name__=='__main__':main()
