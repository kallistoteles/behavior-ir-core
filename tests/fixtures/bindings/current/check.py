#!/usr/bin/env python3
"""Execute the published current corpus unchanged with one explicit Core CLI."""
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys

# Shared strict fixture loading from the packaged current-only authoring tool.
spec = importlib.util.spec_from_file_location('binding_inputs', Path(__file__).resolve().parent.parent/'generate_current.py')
inputs = importlib.util.module_from_spec(spec)
spec.loader.exec_module(inputs)


def difference(expected, actual, path=''):
    if type(expected) is not type(actual):
        return path + ': JSON type differs'
    if isinstance(expected, dict):
        for key in sorted(set(expected) | set(actual)):
            p = path + '/' + key
            if key not in expected or key not in actual:
                return p + ': field presence differs'
            result = difference(expected[key],actual[key],p)
            if result:
                return result
    elif isinstance(expected,list):
        if len(expected) != len(actual):
            return path + ': array length differs'
        for index,(a,b) in enumerate(zip(expected,actual)):
            result = difference(a,b,path+'/'+str(index))
            if result:
                return result
    elif expected != actual:
        return path + ': expected ' + repr(expected) + ', actual ' + repr(actual)
    return None


def require_equal(case, stage, expected, actual):
    problem = difference(expected,actual)
    if problem:
        raise ValueError(f'{case} {stage}: {problem}')
    if inputs.canonical(expected) != inputs.canonical(actual):
        raise ValueError(f'{case} {stage}: canonical bytes differ')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root',type=Path,required=True)
    parser.add_argument('--cli',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    args = parser.parse_args()
    root, output = args.root.resolve(), args.output.resolve()
    if not Path(__file__).resolve().is_relative_to(root):
        raise ValueError('runner must belong to explicit package root')
    if not args.cli.is_absolute() or not args.cli.is_file() or not os.access(args.cli,os.X_OK):
        raise ValueError('--cli must be an absolute executable path')
    cli = args.cli.resolve()
    if output.is_relative_to(root) or root.is_relative_to(output):
        raise ValueError('output must be separate from the supplied package')
    output.mkdir(parents=True,exist_ok=True)
    inventory, _ = inputs.load_inputs(root,require_requests=True)
    metadata = {'cli':str(cli),'cli_sha256':hashlib.sha256(cli.read_bytes()).hexdigest(),
                'semantic_reference':inventory['semantic_reference'],'root':str(root),'commands':[]}

    def run(case,stage,arguments,status):
        command = [str(cli),*map(str,arguments)]
        result = subprocess.run(command,capture_output=True,text=True)
        destination = output/case.replace('/','.')
        destination.mkdir(exist_ok=True)
        (destination/(stage+'.json')).write_text(result.stdout,encoding='utf-8')
        (destination/(stage+'.stderr.txt')).write_text(result.stderr,encoding='utf-8')
        metadata['commands'].append({'case':case,'stage':stage,'command':command,'status':result.returncode})
        if result.returncode != status:
            raise ValueError(f'{case} {stage}: expected exit {status}, got {result.returncode}: {result.stderr}')
        return result.stdout

    try:
        metadata['engine_info'] = inputs.strict(run('metadata','engine-info',['engine-info'],0))
        for domain,module in inventory['modules'].items():
            path = inputs.within(root,module['path'])
            admitted = inputs.strict(run(domain,'admit',['admit',path],0))
            if admitted.get('ok') is not True or admitted.get('errors') != []:
                raise ValueError(domain+' admission refused')
            require_equal(domain,'behavior identity',module['behavior_version'],admitted['behavior_version'])
            require_equal(domain,'complete item identities',module['items'],admitted['items'])
            actual_schema = run(domain,'schema-hash',['schema-hash',path],0).strip()
            require_equal(domain,'schema identity',module['schema_hash'],actual_schema)
        summary = []
        for case in inventory['cases']:
            case_id = case['id']; module = inputs.within(root,inventory['modules'][case['module']]['path'])
            request = inputs.within(root,case['request']); expected_path = inputs.within(root,case['expected'])
            expected = inputs.read(expected_path)
            metadata.setdefault('inputs',{})[case_id] = {
                'request_sha256':hashlib.sha256(request.read_bytes()).hexdigest(),
                'expected_sha256':hashlib.sha256(expected_path.read_bytes()).hexdigest()}
            records = []
            for label in ('a.record','b.record'):
                text = run(case_id,label,['eval',module,request],case['exit_code'])
                actual = inputs.strict(text)
                require_equal(case_id,label,expected,actual)
                if actual['result'] != ('ALLOW' if case['scenario']=='allowed' else 'DENY'):
                    raise ValueError(case_id+' wrong behavioral result class')
                if case['scenario']=='refused' and not any(x.get('code')=='PRECONDITION_FAILED' for x in actual['reasons']):
                    raise ValueError(case_id+' wrong behavioral refusal')
                path = output/case_id.replace('/','.')/(label+'.json')
                replay = inputs.strict(run(case_id,label+'.replay',['replay',module,path],0))
                if replay.get('matches') is not True:
                    raise ValueError(case_id+' replay mismatch')
                records.append(actual)
            require_equal(case_id,'twice-run identity',records[0],records[1])
            summary.append({'id':case_id,'record_sha256':hashlib.sha256(inputs.canonical(records[0])).hexdigest()})
        semantic = {'cases':summary}
        (output/'summary.json').write_bytes(inputs.canonical(semantic))
        print(inputs.canonical(semantic).decode())
    finally:
        (output/'execution.json').write_text(json.dumps(metadata,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    return 0


if __name__ == '__main__':
    try:
        raise SystemExit(main())
    except (ValueError,OSError,KeyError,TypeError) as error:
        print('binding conformance: '+str(error),file=sys.stderr)
        raise SystemExit(1)
