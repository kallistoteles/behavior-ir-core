"""Immutable early experiment inputs, independent of comparative collection."""
import hashlib
import json
from pathlib import Path
import shutil

from artifacts import ArtifactError, read_json
from profile import load_profile, profile_digest

class CampaignError(ValueError):
    pass


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def write_new(path, value):
    path=Path(path)
    with path.open('x') as handle:
        json.dump(value,handle,sort_keys=True,indent=2,allow_nan=False)
        handle.write('\n')


def _json(path):
    try:
        return read_json(Path(path), {'type':'object'})
    except (ArtifactError,OSError) as exc:
        raise CampaignError(str(exc)) from exc


def _parameter_input(index_path):
    index_path=Path(index_path).resolve();index=_json(index_path)
    if index.get('format')!='core032.early-index.v1' or index.get('mode')!='first-use':
        raise CampaignError('reuse requires a completed independently verified first-use index')
    if index.get('complete') is not True or not index.get('records'):
        raise CampaignError('reuse provenance is incomplete')
    # Every primary repetition must have succeeded, not just one convenient result.
    for row in index['records']:
        if row.get('proof')!='Verified' or row.get('bridge')!='Matched':
            raise CampaignError('first-use consumer did not verify the complete primary group')
    row=index['records'][0]
    record=index_path.parent/row['consumer_report']
    if sha(record)!=row['consumer_report_sha256']:
        raise CampaignError('verified first-use report changed')
    report=_json(record)
    if report.get('mode')!='first-use' or report.get('status')!='Verified':
        raise CampaignError('parameters are not from an independent first-use consumer')
    exported=report['parameter_export'];params=record.parent/'parameters.bin'
    if sha(params)!=exported['sha256']:
        raise CampaignError('independently derived parameter artifact changed')
    return params,exported,{'index_sha256':sha(index_path),'consumer_report_sha256':sha(record),'parameter_recipe':report['parameter_recipe']}


def freeze(path, *, binary, cases, sources, mode, parameters_from):
    path=Path(path).resolve()
    if path.exists():raise CampaignError('manifest is immutable; select a new campaign')
    if mode not in ('first-use','reuse') or (mode=='first-use' and parameters_from is not None) or (mode=='reuse' and parameters_from is None):
        raise CampaignError('first-use has no cached parameters; reuse requires exact verified provenance')
    parameters=None;provenance=None
    if mode=='reuse':
        parameters,exported,provenance=_parameter_input(parameters_from)
    inputs=path.parent/(path.stem+'.inputs')
    path.parent.mkdir(parents=True,exist_ok=True)
    try:inputs.mkdir()
    except FileExistsError as exc:raise CampaignError('input archive already exists') from exc
    rows=[]
    def archive(source,role):
        source=Path(source).resolve()
        if not source.is_file():raise CampaignError(f'missing {role} input {source}')
        destination=inputs/(f'{len(rows):04d}-'+source.name)
        shutil.copyfile(source,destination)
        if role=='binary':destination.chmod(0o755)
        row={'path':str(destination.relative_to(path.parent)),'sha256':sha(destination),'bytes':destination.stat().st_size,'role':role,'origin':str(source)}
        rows.append(row);return row['path']
    program=archive(binary,'binary');case_paths=[archive(c,'case') for c in cases]
    for source in dict.fromkeys(map(str,sources)):archive(source,'source')
    parameter_path=archive(parameters,'parameters') if parameters is not None else None
    profile=load_profile()
    manifest={'format':'core032.early-manifest.v1','mode':mode,'repetitions':3,'binary':program,'cases':case_paths,'files':rows,
              'profile':profile,'profile_sha256':profile_digest(profile),'parameters':None if parameters is None else {'path':parameter_path,**exported,'provenance':provenance},
              'baseline':'fc73fa36b959aeaf54cff2f38dd190c4389c3fa1','protocol':'fresh workspace, whole producer/consumer phases; exact Core bridge included; all failures retained'}
    write_new(path,manifest)
    with path.with_suffix(path.suffix+'.sha256').open('x') as handle:handle.write(sha(path)+'\n')
    return manifest


def verify_manifest(path):
    path=Path(path).resolve();value=_json(path)
    anchor=path.with_suffix(path.suffix+'.sha256')
    if not anchor.is_file() or anchor.read_text().strip()!=sha(path):raise CampaignError('manifest changed from its frozen local anchor')
    required={'format','mode','repetitions','binary','cases','files','profile','profile_sha256','parameters','baseline','protocol'}
    if set(value)!=required or value['format']!='core032.early-manifest.v1' or value['mode'] not in ('first-use','reuse') or type(value['repetitions']) is not int or value['repetitions']!=3:
        raise CampaignError('unknown/incomplete early manifest')
    if profile_digest(value['profile'])!=value['profile_sha256'] or value['profile_sha256']!=profile_digest(load_profile()):
        raise CampaignError('frozen protocol changed; create a new campaign')
    if (value['parameters'] is None)!=(value['mode']=='first-use'):
        raise CampaignError('parameter mode/provenance mismatch')
    files={}
    for row in value['files']:
        if set(row)!={'path','sha256','bytes','role','origin'} or type(row['bytes']) is not int or row['bytes']<0 or not all(type(row[k]) is str for k in ('path','sha256','role','origin')) or row['path'] in files:raise CampaignError('invalid/duplicate archived input')
        resolved=(path.parent/row['path']).resolve()
        if not resolved.is_relative_to(path.parent/(path.stem+'.inputs')):raise CampaignError('input escapes frozen archive')
        if not resolved.is_file() or sha(resolved)!=row['sha256'] or resolved.stat().st_size!=row['bytes']:raise CampaignError('archived source/binary/case changed')
        files[row['path']]=row
    if value['binary'] not in files or files[value['binary']]['role']!='binary' or not value['cases'] or any(c not in files or files[c]['role']!='case' for c in value['cases']):raise CampaignError('missing binary/case inventory')
    if value['parameters'] is not None:
        p=value['parameters']
        if p['path'] not in files or p['sha256']!=files[p['path']]['sha256'] or not p['provenance']:raise CampaignError('invalid reuse provenance')
    return value
