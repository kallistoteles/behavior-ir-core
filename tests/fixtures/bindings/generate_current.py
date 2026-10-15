#!/usr/bin/env python3
"""Generate only the ten current requests from explicit reviewed parent worlds."""
import argparse
import copy
import hashlib
import json
from pathlib import Path
import sys

DOMAINS = ('accounts', 'invoice', 'ledger', 'orders', 'project_margin')
CURRENT = Path('tests/fixtures/bindings/current')
SOURCE_SHA256 = {
    'accounts': '559c222647dc52e1b46832bba91b9336282b961506836f245cd9f8eb19de722d',
    'invoice': 'ed02f4d4309ac24fb387850779e2f41c5ef60359e545dcf8556237c3f82b3a8d',
    'ledger': '9ecf35e4aae879d1f1af4e116b8950de5b6769884110ee022959c6e87afe5b14',
    'orders': '47596b03bf7edac67110e124c182d1b366a3a7eeeadad057864da5cd05fc60e2',
    'project_margin': 'ca6a2e8a3502a0e96eb4c3a5c26e496a067c12a3207c96cfb5dd021e8cda25ad',
}


def fail(message):
    raise ValueError(message)


def strict(text):
    def pairs(entries):
        result = {}
        for key, value in entries:
            if key in result:
                fail('duplicate JSON key: ' + key)
            result[key] = value
        return result
    def integer(text):
        value = int(text)
        if text == '-0' or not -(2**63) <= value < 2**64:
            fail('unsupported JSON integer')
        return value
    return json.loads(text, object_pairs_hook=pairs, parse_int=integer,
                      parse_float=lambda _: fail('JSON floats are unsupported'),
                      parse_constant=lambda _: fail('non-JSON numeric constant'))


def read(path):
    return strict(path.read_text(encoding='utf-8'))


def canonical(value):
    text = json.dumps(value, sort_keys=True, separators=(',', ':'), ensure_ascii=False)
    strict(text)
    return text.encode('utf-8')


def closed(value, fields, label):
    if not isinstance(value, dict) or set(value) != set(fields):
        fail(label + ': unsupported or missing fields')


def within(root, name, required=True):
    if not isinstance(name, str) or Path(name).is_absolute():
        fail('expected archive-relative path')
    path = (root / name).resolve()
    if not path.is_relative_to(root.resolve()):
        fail('path escapes package root: ' + name)
    if required and not path.is_file():
        fail('missing file: ' + name)
    return path


def load_inputs(root, require_requests=False):
    inventory = read(within(root,str(CURRENT/'cases.json')))
    worlds = read(within(root,str(CURRENT/'worlds.json')))
    closed(inventory, ('format', 'semantic_reference', 'modules', 'cases'), 'inventory')
    if inventory['format'] != 'behavior.binding_conformance.v1':
        fail('unsupported corpus format')
    if inventory['semantic_reference'] != {
        'core_commit': 'a24b65d26efaf62342daf5ab0f455540dfd61ed1',
        'source_engine_version': '0.13.0', 'record_version': '0.8',
        'validation_profile': 'behavior.complete_resulting_state.v1',
    }:
        fail('unsupported semantic reference/profile')
    closed(inventory['modules'], DOMAINS, 'module domain')
    expected_ids = {d+'/'+s for d in DOMAINS for s in ('allowed', 'refused')}
    closed(worlds, expected_ids, 'world domain')
    ids, paths = set(), set()
    if not isinstance(inventory['cases'], list) or len(inventory['cases']) != 10:
        fail('exactly ten current cases required')
    for case in inventory['cases']:
        closed(case, ('id','module','scenario','request','expected','world','exit_code'), 'case')
        domain, scenario = case['module'], case['scenario']
        case_id = f'{domain}/{scenario}'
        if case_id not in expected_ids or case_id in ids:
            fail('duplicate or unknown case: ' + case_id)
        ids.add(case_id)
        if case['id'] != case_id or case['world'] != case_id or type(case['exit_code']) is not int or case['exit_code'] != (0 if scenario == 'allowed' else 1):
            fail(case_id + ': inconsistent case classification')
        for key, directory in (('request','requests'),('expected','expectations')):
            prescribed = str(CURRENT / directory / f'{domain}.{scenario}.json')
            if case[key] != prescribed or case[key] in paths:
                fail(case_id + ': inconsistent or repeated ' + key + ' path')
            paths.add(case[key]); within(root,case[key],require_requests or key == 'expected')
    if ids != expected_ids:
        fail('missing current case')
    names = {f'{d}.{s}.json' for d in DOMAINS for s in ('allowed','refused')}
    for directory in ('expectations', 'requests'):
        path = root / CURRENT / directory
        if directory == 'expectations' or require_requests:
            if not path.is_dir() or {p.name for p in path.iterdir()} != names:
                fail('missing/extra/unclassified ' + directory)
            for p in path.iterdir():
                within(root,str(p.relative_to(root)))
    for domain, metadata in inventory['modules'].items():
        closed(metadata, ('path','sha256','behavior_version','items','schema_hash'), domain+' metadata')
        if metadata['path'] != f'tests/fixtures/bindings/{domain}.json':
            fail(domain + ': incorrect module path')
        module_path = within(root,metadata['path'])
        if hashlib.sha256(module_path.read_bytes()).hexdigest() != metadata['sha256']:
            fail(domain + ': module byte digest changed')
        module = read(module_path)
        types = {entity['name']: {'id', *(f['name'] for f in entity['fields'])} for entity in module['entities']}
        for scenario in ('allowed','refused'):
            world = worlds[domain+'/'+scenario]
            closed(world, ('parent','child'), domain+'/'+scenario)
            for phase in ('parent','child'):
                closed(world[phase], types, domain+'/'+scenario+'/'+phase)
                for entity, rows in world[phase].items():
                    if not isinstance(rows,list):
                        fail('membership must be a list')
                    seen = set()
                    for row in rows:
                        closed(row,types[entity],entity+' row')
                        identity = row['id']
                        if not isinstance(identity,str) or not identity or identity in seen:
                            fail(entity+': duplicate/invalid identity')
                        seen.add(identity)
    return inventory, worlds


def generate(root):
    inventory, worlds = load_inputs(root)
    outputs = {}
    for case in inventory['cases']:
        domain = case['module']; case_id = case['id']
        source = within(root,'tests/fixtures/bindings/'+domain+'.request.json')
        if hashlib.sha256(source.read_bytes()).hexdigest() != SOURCE_SHA256[domain]:
            fail(case_id + ': unreviewed historical source drift')
        request = copy.deepcopy(read(source)[case['scenario']])
        parent = worlds[case_id]['parent']
        module = read(root / inventory['modules'][domain]['path'])
        action = next(a for a in module['actions'] if a['name'] == request['action'])
        for param in action['params']:
            if param['role'] == 'state':
                entity = param['type']['name']; row = request['state'][param['name']]
                if row not in parent[entity]:
                    fail(case_id+': original bound state conflicts with authored parent')
        facts = request.get('facts', {})
        for observed in facts.get('universe', []):
            if observed['entity'] not in parent or any(row not in parent[observed['entity']] for row in observed['members']):
                fail(case_id+': original universe conflicts with authored parent')
        facts['universe'] = [{'entity':entity,'members':sorted(rows,key=lambda r:r['id'])}
                             for entity,rows in sorted(parent.items())]
        request['facts'] = facts
        outputs[f"{domain}.{case['scenario']}.json"] = canonical(request)
    return outputs


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--output-dir',type=Path)
    group.add_argument('--check',action='store_true')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[3]
    outputs = generate(root)
    destination = (args.output_dir or root/CURRENT/'requests').resolve()
    default = (root/CURRENT/'requests').resolve()
    if destination.is_relative_to(root) and destination != default:
        fail('output destination could overwrite protected package files')
    if args.check:
        if not destination.is_dir() or {p.name for p in destination.iterdir()} != set(outputs):
            fail('missing/extra current generated requests')
        for name, data in outputs.items():
            if (destination/name).read_bytes() != data:
                fail(name+': current request differs from authoritative generation')
    else:
        if destination.exists() and any(p.name not in outputs or p.is_symlink() for p in destination.iterdir()):
            fail('output directory contains unclassified or symbolic entries')
        destination.mkdir(parents=True,exist_ok=True)
        for name,data in outputs.items():
            (destination/name).write_bytes(data)
    return 0


if __name__ == '__main__':
    try:
        raise SystemExit(main())
    except (ValueError, OSError, KeyError, TypeError, StopIteration) as error:
        print('binding generator: '+str(error),file=sys.stderr)
        raise SystemExit(1)
