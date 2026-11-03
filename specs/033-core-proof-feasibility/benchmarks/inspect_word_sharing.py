"""Reproducible untrusted syntactic sharing count, with no optimizer authority."""
import argparse, hashlib, json
from collections import Counter
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument('--source', type=Path, required=True)
p.add_argument('--out', type=Path, required=True)
a = p.parse_args()
raw = a.source.read_bytes()
ops = json.loads(raw)
aliases = list(range(43))
unique = {}
counts = Counter()
for op in ops:
    parts = op.split()
    kind = parts[0]
    if kind == '.literal': key = (kind, int(parts[-1].rstrip(')')))
    else:
        args = [aliases[int(parts[1])]]
        if kind in ['.badd', '.band', '.bxor']: args.append(aliases[int(parts[2])])
        elif kind in ['.shr', '.rotr']: args.append(int(parts[2]))
        elif kind != '.bnot': raise ValueError('unsupported operation '+kind)
        if kind in ['.badd', '.band', '.bxor']: args.sort()
        key = (kind, *args)
    if key not in unique:
        unique[key] = 43+len(unique)
        counts[kind] += 1
    aliases.append(unique[key])
rows = 43*34+sum(count*(35 if kind=='.badd' else 34) for kind,count in counts.items())+125+82
receipt = {'outcome':'UntrustedSSACommonExpressionCount',
           'source_ops_sha256':hashlib.sha256(raw).hexdigest(),
           'driver_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
           'original_operations':len(ops), 'distinct_operations_after_recursive_operand_aliases':len(unique),
           'operation_counts':dict(sorted(counts.items())), 'conditional_same_word_encoding_rows':rows,
           'scope':'43-input/125-output/82-guard hash component only; native syntactic SSA common-expression accounting; no transformed matrix, formal optimizer theorem, equivalence run, proving cost or G1 authority',
           'g1_pass':False}
with a.out.open('x') as output: output.write(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
