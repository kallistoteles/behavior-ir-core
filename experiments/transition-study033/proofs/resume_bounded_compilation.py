"""Resume interrupted ordinary compilations; retain every audit and fresh replay.

Reused compiled files are inputs, never proof receipts. Full imported fresh
kernel replay and the original complete theorem inventory remain mandatory.
"""
import argparse
import hashlib
import json
from pathlib import Path
import shutil

import check_targets as driver


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--previous', type=Path, required=True)
    parser.add_argument('--sources', type=Path, required=True)
    parser.add_argument('--targets', type=Path, required=True)
    parser.add_argument('--replacements', type=Path,
                        help='new source only for modules without successful compile receipts')
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    previous, sources, out = (p.resolve() for p in
                              (args.previous, args.sources, args.out))
    targets = json.loads(args.targets.read_text())
    original = [name for names in targets.values() for name in names]
    if not original or len(original) != len(set(original)):
        raise driver.ProofError('complete unique theorem inventory required')
    inputs = out.with_name(out.name + '-inputs')
    inputs.mkdir(exist_ok=False)
    shutil.copyfile(__file__, inputs/'driver.py')
    (inputs/'original-targets.json').write_bytes(args.targets.read_bytes())
    seeds = inputs/'compiled-seeds'
    seeds.mkdir()
    remaining, reused, provenance = {}, [], {}
    for module, names in targets.items():
        relative = Path(*module.split('.'))
        source = sources/relative.with_suffix('.lean')
        if not source.exists() and args.replacements:
            source = args.replacements.resolve()/relative.with_suffix('.lean')
        destination = inputs/relative.with_suffix('.lean')
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
        command_path = previous/(module+'.compile.command.json')
        compiled = previous/'compiled'/relative.with_suffix('.olean')
        snapshot = previous/'source-snapshot'/relative.with_suffix('.lean')
        if not command_path.exists():
            if args.replacements:
                replacement = args.replacements.resolve()/relative.with_suffix('.lean')
                if replacement.exists():
                    shutil.copyfile(replacement, destination)
            remaining[module] = names
            continue
        command = json.loads(command_path.read_text())
        if command['exit_code'] != 0 or command['timed_out']:
            if args.replacements:
                replacement = args.replacements.resolve()/relative.with_suffix('.lean')
                if replacement.exists():
                    shutil.copyfile(replacement, destination)
            remaining[module] = names
            continue
        if args.replacements and (args.replacements.resolve()/relative.with_suffix('.lean')).exists():
            raise driver.ProofError('replacement attempts to alter successful compilation: '+module)
        if (str(source) not in command['argv'] or str(compiled) not in command['argv']
                or source.read_bytes() != snapshot.read_bytes()):
            raise driver.ProofError('different actual prefix source: '+module)
        reused.extend(names)
        provenance[module] = {'source_sha256': digest(source),
                              'olean_sha256': digest(compiled),
                              'command_sha256': digest(command_path)}
    # Import every original module, including modules with zero audit targets.
    # Reused declarations are still inspected by the same complete audit.
    aggregate = 'ResumedCompleteInventory'
    if aggregate in targets:
        raise driver.ProofError('reserved aggregate module name')
    (inputs/(aggregate+'.lean')).write_text(
        ''.join('import '+module+'\n' for module in targets))
    remaining[aggregate] = reused
    owned = {Path(*name.split('.')).with_suffix('.olean') for name in remaining}
    seed_hashes = {}
    for source in sorted((previous/'compiled').rglob('*.olean')):
        relative = source.relative_to(previous/'compiled')
        if relative in owned or source.name in {'Audit.olean', 'Core033Checked.olean'}:
            continue
        destination = seeds/relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
        seed_hashes[str(relative)] = digest(source)
    (inputs/'resume-provenance.json').write_text(json.dumps({
        'previous': str(previous), 'reused_compilations': provenance,
        'seed_sha256': seed_hashes, 'original_targets': len(original),
        'scope': 'ordinary compiled inputs only; no previous acceptance assumed',
    }, indent=2, sort_keys=True)+'\n')
    proofs = Path(__file__).resolve().parent
    result = driver.check_modules(inputs, remaining, out,
        audit_source=proofs/'Audit.lean',
        dependency_paths=sorted((proofs/'.lake/packages').glob('*/.lake/build/lib/lean')),
        seeded_modules=[seeds])
    if sorted(row['target'] for row in result['theorems']) != sorted(original):
        raise driver.ProofError('changed complete theorem inventory')
    for name, sha in seed_hashes.items():
        if digest(previous/'compiled'/name) != sha:
            raise driver.ProofError('previous compiled input changed')
    receipt = {'outcome': result['outcome'], 'targets': len(original),
        'fresh_kernel_replay': result['fresh_kernel_replay'],
        'reused_compilations': len(provenance), 'g1_pass': False,
        'scope': 'all original bounded targets and complete imported fresh replay; '
                 'component acceptance only, no full Core or G1 authority'}
    (out/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print(json.dumps(receipt))


if __name__ == '__main__':
    main()
