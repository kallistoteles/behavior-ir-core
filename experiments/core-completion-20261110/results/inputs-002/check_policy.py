"""Prove a parser/denotation statement about exact actual Rust source bytes."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', type=Path, required=True)
    args = ap.parse_args()
    args.out.mkdir(exist_ok=False, parents=True)
    source = (HERE / 'gate.rs').read_text()
    parser = (HERE / 'PolicyParser.lean').read_text()
    variants = {
        'actual': source,
        'changed-id-reuse': source.replace('else { 2 }', 'else { 1 }'),
        'trailing-rust': source + '\nfn unexamined() {}\n',
    }
    # rustfmt may place each literal on its own line; mutate that token exactly.
    if variants['changed-id-reuse'] == source:
        import re
        changed, count = re.subn(r'\b2\b', '1', source, count=1)
        assert count == 1
        variants['changed-id-reuse'] = changed
    records = []
    for name, text in variants.items():
        proof = parser + '\nnamespace PublicationPolicy\n'
        proof += 'def actualSource : List Nat := ' + json.dumps(list(text.encode())) + '\n'
        proof += '''theorem parsed_actual : parse actualSource = some expected := by decide
theorem actual_source_matches_policy (existing same parent proof must : Bool) :
    (parse actualSource).map (eval ⟨existing,same,parent,proof,must⟩) =
      some (policy ⟨existing,same,parent,proof,must⟩) := by
  rw [parsed_actual]
  exact congrArg some (ir_matches_policy existing same parent proof must)
#print axioms parsed_actual
#print axioms actual_source_matches_policy
end PublicationPolicy
'''
        path = args.out / (name + '.lean');path.write_text(proof)
        # lean4.30 inside the same pinned Nix shell as the build.
        command = ['lean', '-j1', '-s65536', '-o', str(args.out / (name + '.olean')), str(path)]
        ran = subprocess.run(command, capture_output=True, text=True, timeout=180)
        (args.out / (name + '.stdout.txt')).write_text(ran.stdout)
        (args.out / (name + '.stderr.txt')).write_text(ran.stderr)
        if name == 'actual':
            assert ran.returncode == 0, ran.stdout + ran.stderr
            assert 'sorryAx' not in ran.stdout and 'Lean.ofReduceBool' not in ran.stdout
            assert 'Classical.choice' not in ran.stdout
        else:
            assert ran.returncode == 1 and ('tactic' in ran.stdout or 'error' in ran.stdout)
        records.append({'variant': name, 'exit_code': ran.returncode,
                        'source_sha256': hashlib.sha256(text.encode()).hexdigest(),
                        'proof_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
                        'status': 'KernelChecked' if name == 'actual' else 'TargetedKernelRejection'})
    receipt = {'format': 'core.actual-policy-correspondence.v1', 'records': records,
               'scope': 'Actual restricted Rust publication gate only; pure Boolean conditionals andu32 literals0..4. Ordinary compiler and source-byte binding in TCB. Not complete native K/codec/hash or SQLite correctness.',
               'g1_pass': False}
    (args.out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
    print(json.dumps(receipt))


if __name__ == '__main__':
    main()
