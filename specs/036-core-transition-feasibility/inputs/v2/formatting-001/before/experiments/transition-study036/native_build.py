"""Bounded development build of the actual selected source, never a proof."""
import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import tomllib
from pathlib import Path
from artifact_io import digest, read, write_once
from environment import check_prepared_native_v2
from records import MANIFEST

E=Path(__file__).resolve().parent
R=E.parents[1]


def validate_embedded_inputs(root):
    """Build inventory guard for literal include_str!/include_bytes! inputs.

    This is an early packaging check, not a Rust parser or a semantic proof.
    Cargo remains the authority for compilation and other dependency forms.
    """
    from artifact_io import RootRegistry
    root=Path(root).resolve();registry=RootRegistry({'worker':root},readonly=['worker'])
    names=set()
    for source in (root/'src').rglob('*.rs'):
        for name in re.findall(r'include_(?:str|bytes)!\s*\(\s*"([^"\\]+)"\s*\)',source.read_text()):
            path=(source.parent/name).resolve()
            if not path.is_relative_to(root) or not path.is_file():raise ValueError('V2MissingEmbeddedInput:'+name)
            relative=str(path.relative_to(root));registry.path('worker',relative)
            names.add(relative)
    return [{k:ref[k] for k in ('path','bytes','sha256')}
            for name in sorted(names) for ref in [registry.reference('worker',name)]]


def main():
    p=argparse.ArgumentParser();p.add_argument('--declaration',required=True);p.add_argument('--out',required=True);a=p.parse_args()
    declaration=read(a.declaration)
    private=Path(declaration['profile']['roots']['cache'])
    out=Path(a.out)
    if out!=private/'native-builds'/declaration['record_id'] or out.exists():raise ValueError('V2NativeBuildOutput')
    prepared=check_prepared_native_v2(E/'toolchain-v2.json')
    tools=prepared['tools']
    out.mkdir(parents=True)
    worker=out/'worker';worker.mkdir()
    for name in ('src','tests','expected'):shutil.copytree(E/name,worker/name)
    shutil.copytree(E/'oracle',worker/'oracle',ignore=shutil.ignore_patterns('target','__pycache__'))
    embedded_inputs=validate_embedded_inputs(worker)
    template=(E/'build-inputs/v2/native/Cargo.toml').read_text()
    core=Path(prepared['sources']['core-reuse']['path'])
    template=template.replace('path = "private/core/crates/behavior-engine"','path = '+json.dumps(str(core/'crates/behavior-engine')))
    template+='\n[[test]]\nname = "v2_protocol"\npath = "tests/v2_protocol.rs"\n'
    write_once(worker/'Cargo.toml',template.encode())
    original_lock=(E/'build-inputs/v2/native/Cargo.lock').read_bytes()
    write_once(worker/'Cargo.lock',original_lock)
    # An explicitly linked continuation can reuse the previous disposable
    # compiler cache. Sources/logs remain separate, and this is a warm build.
    target=private/'disposable'/('native-'+declaration['record_id'])/'target'
    cache_reused=False
    if declaration['predecessor'] is not None:
        from artifact_io import RootRegistry
        previous=RootRegistry({'repository':R,'work':R/'specs/036-core-transition-feasibility/evidence/v2'/declaration['work_id']},readonly=['repository','work'])
        checkpoint=previous.read(declaration['predecessor'])
        prior=private/'native-builds'/checkpoint['attempt_id']/'result.json'
        if prior.exists():
            saved=read(prior)
            candidate=Path(saved['target'])
            if candidate.is_relative_to(private/'disposable') and candidate.is_dir():
                target=candidate;cache_reused=True
    env={**os.environ,'CARGO_HOME':str(private/'cargo'),'CARGO_NET_OFFLINE':'true','CARGO_INCREMENTAL':'0',
        'CARGO_BUILD_JOBS':'1','RUSTC':tools['rustc']['path'],'CC':tools['cc']['path'],
        'PATH':os.pathsep.join(dict.fromkeys(str(Path(t['path']).parent) for t in tools.values())),
        'CARGO_TARGET_DIR':str(target),'CARGO_PROFILE_DEV_DEBUG':'0','CARGO_PROFILE_TEST_DEBUG':'0',
        'RUSTFLAGS':'-C target-cpu=x86-64 -C linker='+tools['cc']['path']}
    def command(name,argv):
        path=out/name;path.mkdir()
        with (path/'stdout.txt').open('xb') as stdout,(path/'stderr.txt').open('xb') as stderr:
            result=subprocess.run(argv,env=env,stdout=stdout,stderr=stderr,check=False,cwd=worker)
        write_once(path/'result.json',{'argv':argv,'exit_code':result.returncode,
            'stdout_sha256':digest(path/'stdout.txt'),'stderr_sha256':digest(path/'stderr.txt')})
        return result.returncode
    cargo=tools['cargo']['path']
    metadata=command('metadata',[cargo,'metadata','--locked','--offline','--format-version','1','--manifest-path',str(worker/'Cargo.toml')])
    if metadata!=0:return 1
    graph=read(out/'metadata/stdout.txt',MANIFEST)
    for name in ('behavior-engine','behavior-core','behavior-store'):
        packages=[row for row in graph['packages'] if row['name']==name]
        if len(packages)!=1 or not Path(packages[0]['manifest_path']).is_relative_to(core):
            raise ValueError('V2CompiledCoreIdentity:'+name)
    oracle=worker/'oracle'
    original_core=Path(prepared['sources']['core-original']['path'])
    oracle_template=(E/'build-inputs/v2/oracle/Cargo.toml').read_text()
    oracle_template+='\n[patch."https://github.com/kallistoteles/behavior-ir-core"]\nbehavior-engine = { path = '+json.dumps(str(original_core/'crates/behavior-engine'))+' }\n'
    # The copied oracle is an input template, not a retained built artifact.
    (oracle/'Cargo.toml').write_text(oracle_template)
    oracle_lock=(E/'build-inputs/v2/oracle/Cargo.lock').read_bytes()
    write_once(out/'original-oracle-Cargo.lock',oracle_lock)
    (oracle/'Cargo.lock').write_bytes(oracle_lock)
    oracle_metadata=command('oracle-metadata',[cargo,'metadata','--offline','--format-version','1','--manifest-path',str(oracle/'Cargo.toml')])
    if oracle_metadata!=0:return 1
    before=tomllib.loads(oracle_lock.decode())['package']
    after=tomllib.loads((oracle/'Cargo.lock').read_text())['package']
    identity=lambda package:(package['name'],package['version'],package.get('checksum'))
    if sorted(map(identity,before))!=sorted(map(identity,after)):
        raise ValueError('V2OracleDependencyVersionsChanged')
    changed=[]
    previous={(x['name'],x['version']):x for x in before}
    for package in after:
        old=previous[(package['name'],package['version'])]
        if old.get('source')!=package.get('source'):
            if (not old.get('source','').startswith('git+https://github.com/kallistoteles/behavior-ir-core?rev='+__import__('sources').CORE_REV)
                or package.get('source') is not None):raise ValueError('V2UnexpectedOracleLockSourceChange')
            changed.append(package['name'])
    original_graph=read(out/'oracle-metadata/stdout.txt',MANIFEST)
    for name in ('behavior-engine','behavior-core','behavior-store'):
        packages=[row for row in original_graph['packages'] if row['name']==name]
        if len(packages)!=1 or not Path(packages[0]['manifest_path']).is_relative_to(original_core):
            raise ValueError('V2OriginalOracleCoreIdentity:'+name)
    write_once(out/'oracle-lock-normalization.json',{'changed_source_packages':changed,
        'all_package_versions_and_checksums_unchanged':True,'original_core':str(original_core),
        'original_lock_sha256':hashlib.sha256(oracle_lock).hexdigest(),
        'normalized_lock_sha256':digest(oracle/'Cargo.lock')})
    code=command('protocol',[cargo,'test','--locked','--offline','--manifest-path',str(worker/'Cargo.toml'),'--test','v2_protocol','--','--test-threads=1'])
    scoped_quality={}
    if code==0:
        scoped_quality['format']=command('format',[cargo,'fmt','--manifest-path',str(worker/'Cargo.toml'),'--all','--check'])
        scoped_quality['clippy']=command('clippy',[cargo,'clippy','--locked','--offline','--manifest-path',str(worker/'Cargo.toml'),'--all-targets','--','-D','warnings'])
    if (worker/'Cargo.lock').read_bytes()!=original_lock:raise ValueError('V2NativeLockChanged')
    check_prepared_native_v2(E/'toolchain-v2.json')
    write_once(out/'result.json',{'format':'core036.native-protocol-build.v2','cargo_exit_code':code,
        'compiled_core':str(core),'manifest_sha256':digest(worker/'Cargo.toml'),
        'lock_sha256':digest(worker/'Cargo.lock'),'target':str(target),
        'compiler_cache_reused':cache_reused,'embedded_inputs':embedded_inputs,
        'scoped_quality':scoped_quality,'oracle_original_core':str(original_core),
        'source_subject_ref':declaration['source_subject_ref'],'native_proof':'unestablished',
        'product_adoption':'unactivated'})
    return 0 if code==0 and all(value==0 for value in scoped_quality.values()) else 1

if __name__=='__main__':raise SystemExit(main())
