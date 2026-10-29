"""Bounded lossless retained artifacts; byte identity never implies proof validity."""
import gzip
import hashlib
from pathlib import Path
import shutil
from artifacts import read_gzip,ArtifactError

def pack_file(path,*,remove_workspace_file=False,max_bytes=1024**3):
    path=Path(path);size=path.stat().st_size
    if size>max_bytes:raise ArtifactError('raw retention capacity exceeded')
    digest=hashlib.sha256()
    with path.open('rb') as source:
        for block in iter(lambda:source.read(1024*1024),b''):digest.update(block)
    target=path.with_suffix(path.suffix+'.gz')
    with target.open('xb') as sink:
        with gzip.GzipFile(filename='',mode='wb',fileobj=sink,mtime=0,compresslevel=6) as compressed:
            with path.open('rb') as source:shutil.copyfileobj(source,compressed,1024*1024)
    raw_sha=digest.hexdigest()
    # Stream verification avoids allocating a second whole large evidence object.
    verified=hashlib.sha256();count=0
    with gzip.open(target,'rb') as source:
        while block:=source.read(1024*1024):
            count+=len(block)
            if count>max_bytes:raise ArtifactError('expanded retention capacity exceeded')
            verified.update(block)
    if count!=size or verified.hexdigest()!=raw_sha:raise ArtifactError('lossless retention check failed')
    report={'path':target.name,'container_sha256':hashlib.sha256(target.read_bytes()).hexdigest(),'container_bytes':target.stat().st_size,'raw_sha256':raw_sha,'raw_bytes':size}
    if remove_workspace_file:path.unlink()  # Only the caller-owned new scratch file, after verified retention.
    return report

def unpack_file(container,metadata,output,*,max_bytes=1024**3):
    container=Path(container)
    if hashlib.sha256(container.read_bytes()).hexdigest()!=metadata['container_sha256']:raise ArtifactError('container changed')
    raw=read_gzip(container,raw_sha256=metadata['raw_sha256'],raw_bytes=metadata['raw_bytes'],max_bytes=max_bytes)
    with Path(output).open('xb') as sink:sink.write(raw)
