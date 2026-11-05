"""Kernel-check all actual Rust bytes for one emitted local control window."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil

import check_targets as driver
from source_quote import lean_ascii_expression


def quote(raw):
    text = lean_ascii_expression(raw)
    suffix = '.toByteArray.data.toList'
    if not text.endswith(suffix):
        raise driver.ProofError('unexpected exact quote format')
    return 'Core033.SourceLiteralBytes.quoted ' + text[:-len(suffix)]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--kind', choices=['reload', 'finalize'], required=True)
    parser.add_argument('--ir', type=Path, required=True)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    p = Path(__file__).resolve().parent
    root, out = args.ir.resolve(), args.out.resolve()
    report = json.loads((root/'report.json').read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise driver.ProofError('fresh checked literal/model equality required')
    model = 'PairedPathReload' if args.kind == 'reload' else 'PairedPathFinalize'
    ir = 'Actual' + model + 'IR'
    namespace = 'Artifact' + model + 'Source'
    identity = report['modules'][ir]
    literal = (root/identity['source_snapshot']).read_text()
    if hashlib.sha256(literal.encode()).hexdigest() != identity['source_sha256']:
        raise driver.ProofError('changed actual IR source')
    match = re.search(r'def program : WordIR.Program := ⟨(\d+),operationChunks.flatten,\[(.*?)\]⟩', literal)
    if not match:
        raise driver.ProofError('complete emitted literal interface required')
    ni = int(match[1])
    outputs = [int(n) for n in match[2].split(',')]
    no = len(outputs)
    artifact = Path('experiments/transition-study033/generated/paired-path-control-windows-001')/args.kind
    source = artifact/'checker_step.rs'
    raw = source.read_bytes()
    operations = json.loads((artifact/'operation-literals.json').read_text())
    lines = raw.splitlines(keepends=True)
    header, body, footer = lines[:ni+2], lines[ni+2:-2], b''.join(lines[-2:])
    if len(body) != len(operations) or not operations:
        raise driver.ProofError('complete statement inventory required')
    out.mkdir(exist_ok=False)
    shutil.copyfile(__file__, out/'driver.py')
    inputs = out/'proof-inputs'
    (inputs/'Core033').mkdir(parents=True)
    seeds = out/'filtered-seeds'
    seeds.mkdir()
    expected = {Path(*n.split('.')).with_suffix('.olean').as_posix():e['olean_sha256']
                for n,e in report['modules'].items()}
    expected.update({n:e['sha256'] for n,e in report['seeded_modules'].items()})
    selected = {}
    for name, sha in expected.items():
        if not (name.startswith('Core033/') or name in ['CoreMath.olean', ir+'.olean']):
            continue
        if name == 'Core033/SourceLiteralBytes.olean':
            continue
        data = (root/'compiled'/name).read_bytes()
        if hashlib.sha256(data).hexdigest() != sha:
            raise driver.ProofError('changed checked dependency '+name)
        destination = seeds/name
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes(data)
        selected[name] = sha
    (out/'seed-provenance.json').write_text(json.dumps(selected, indent=2, sort_keys=True)+'\n')
    shutil.copyfile(p/'Core033/SourceLiteralBytes.lean', inputs/'Core033/SourceLiteralBytes.lean')
    targets = {'Core033.SourceLiteralBytes':['Core033.SourceLiteralBytes.ascii_control']}

    def write(module, code):
        text = '\n'.join(code)+'\n'
        (inputs/(module+'.lean')).write_text(text)
        targets[module] = [module+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)', text, re.M)]

    def preamble(module, extra=()):
        return ['import '+ir, 'import Core033.SourceLiteralBytes',
                'import Core033.KernelDecide', *('import '+n for n in extra),
                'namespace '+module, 'open Core033 WordSource WordSourceBlocks',
                'set_option Elab.async false', 'set_option maxRecDepth 16384',
                'set_option maxHeartbeats 8000000']

    hm = namespace+'Header'
    code = preamble(hm, ['Core033.SourceParameters'])
    for i, line in enumerate(header[1:-1]):
        code += [f'def line{i} : Bytes := '+quote(line),
                 f'theorem lineChecked{i} : line{i}=parameterBytes {i} 1 ∧ line{i}.length={len(line)} := by core033_kernel_decide']
    code += ['def parameters : List Bytes := ['+','.join(f'line{i}' for i in range(ni))+']',
             'def preamble : Bytes := '+quote(header[0]), 'def ending : Bytes := '+quote(header[-1]),
             'def actualHeader : Bytes := preamble++parameters.flatten++ending',
             f'theorem preambleChecked : preamble=Codec.textBytes "pub fn checker_step(\\n" ∧ preamble.length={len(header[0])} := by core033_kernel_decide',
             f'theorem endingChecked : ending=Codec.textBytes ") -> [u32; 0x"++hexDigits 8 {no}++Codec.textBytes "_usize] {{\\n" ∧ ending.length={len(header[-1])} := by core033_kernel_decide',
             'theorem parameterChain : SourceParameters.Chain 0 parameters := by', '  unfold parameters']
    chain = '(.empty _)'
    for i in reversed(range(ni)):
        chain = f'(.cons _ _ _ lineChecked{i}.1 {chain})'
    code += ['  exact '+chain,
             f'theorem checked : actualHeader=headerBytes {ni} {no} ∧ actualHeader.length={sum(map(len,header))} := by',
             '  constructor', '  · unfold actualHeader headerBytes',
             '    rw [preambleChecked.1,SourceParameters.chain_exact parameterChain,endingChecked.1]', '    rfl',
             '  · simp only [actualHeader,List.length_append,WordSource.chunk_sizes_exact,parameters,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,preambleChecked.2,endingChecked.2,'+','.join(f'lineChecked{i}.2' for i in range(ni))+']',
             '    decide', 'end '+hm]
    write(hm, code)

    # Quote the whole output list in bounded groups, including its last member.
    fm = namespace+'Footer'
    opening, ending = b'    [', b']\n}\n'
    if not footer.startswith(opening) or not footer.endswith(ending):
        raise driver.ProofError('actual footer framing differs')
    tokens = footer[len(opening):-len(ending)].split(b', ')
    if len(tokens) != no:
        raise driver.ProofError('complete actual return inventory required')
    parts = [outputs[start:min(start+16,no-1)] for start in range(0,no-1,16)]
    code = preamble(fm, ['Core033.SourceReturns'])+['open SourceReturns']
    for g, indices in enumerate(parts):
        chunk = b''.join(token+b', ' for token in tokens[g*16:g*16+len(indices)])
        code += [f'def indices{g} : List Nat := ['+','.join(map(str,indices))+']',
                 f'def chunk{g} : Bytes := '+quote(chunk),
                 f'theorem checked{g} : chunk{g}=namePrefix indices{g} ∧ chunk{g}.length={len(chunk)} := by core033_kernel_decide']
    code += ['def parts : List (List Nat) := ['+','.join(f'indices{g}' for g in range(len(parts)))+']',
             'def chunks : List Bytes := ['+','.join(f'chunk{g}' for g in range(len(parts)))+']',
             'def before : List Nat := parts.flatten', f'def lastIndex : Nat := {outputs[-1]}',
             'def lastBytes : Bytes := '+quote(tokens[-1]), 'def opening : Bytes := '+quote(opening),
             'def ending : Bytes := '+quote(ending), 'def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending',
             f'theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length={len(tokens[-1])} := by core033_kernel_decide',
             'theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length=5 := by core033_kernel_decide',
             'theorem endingChecked : ending=Codec.textBytes "]\\n}\\n" ∧ ending.length=4 := by core033_kernel_decide',
             f'theorem outputPartition : {ir}.program.outputs=before++[lastIndex] := rfl',
             'theorem prefixExact : chunks.flatten=namePrefix before := by', '  rw [before,namePrefix_flatten]',
             '  simp only [chunks,parts,List.map_cons,List.map_nil,'+','.join(f'checked{g}.1' for g in range(len(parts)))+']',
             f'theorem checked : actualFooter=suffix {ir}.program.outputs ∧ actualFooter.length={len(footer)} := by',
             '  constructor',
             '  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]',
             '  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,'+','.join(f'checked{g}.2' for g in range(len(parts)))+']',
             '    decide', 'end '+fm]
    write(fm, code)

    groups = (len(operations)+63)//64
    for g in range(groups):
        start, stop = g*64, min((g+1)*64, len(operations))
        module = namespace+'Group'+str(g)
        code = preamble(module)
        for i in range(start, stop):
            code += [f'def op{i} : List WordIR.Op := [{operations[i]}]',
                     f'def bytes{i} : Bytes := '+quote(body[i]),
                     f'theorem checked{i} : bytes{i}=statementBytes {ni+i} (op{i}.map lower) ∧ bytes{i}.length={len(body[i])} := by core033_kernel_decide']
        code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'op{i}' for i in range(start,stop))+']',
                 'def chunks : List Bytes := ['+','.join(f'bytes{i}' for i in range(start,stop))+']',
                 'def partOps : List WordIR.Op := blocks.flatten', 'def partBytes : Bytes := chunks.flatten',
                 f'theorem partChain : BlockChain {ni+start} blocks chunks := by', '  unfold blocks chunks']
        chain = '(.empty _)'
        for i in reversed(range(start,stop)):
            chain = f'(.cons _ _ _ _ _ checked{i}.1 {chain})'
        code += ['  exact '+chain,
                 f'theorem partChecked : partBytes=statementBytes {ni+start} (partOps.map lower) := by',
                 '  rw [partBytes,chain_exact partChain,body_exact];rfl',
                 f'theorem partLength : partOps.length={stop-start} := rfl',
                 f'theorem partSize : partBytes.length={sum(map(len,body[start:stop]))} := by',
                 '  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'checked{i}.2' for i in range(start,stop))+']',
                 '  decide', 'end '+module]
        write(module, code)
        # Individual closed equations remain in the transitive fresh closure.
        targets[module] = [module+'.'+n for n in ['partChain','partChecked','partLength','partSize']]
    code = preamble(namespace, [hm, fm]+[namespace+'Group'+str(g) for g in range(groups)])
    code += ['def blocks : List (List WordIR.Op) := ['+','.join(namespace+f'Group{g}.partOps' for g in range(groups))+']',
             'def actualBody : List Bytes := ['+','.join(namespace+f'Group{g}.partBytes' for g in range(groups))+']',
             f'def actualHeader : Bytes := {hm}.actualHeader', f'def actualFooter : Bytes := {fm}.actualFooter',
             'def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter',
             f'theorem partition_checked : {ir}.program.operations=blocks.flatten := rfl',
             f'theorem body_checked : BlockChain {ni} blocks actualBody := by', '  unfold blocks actualBody']
    for g in range(groups):
        code += [f'  apply BlockChain.cons _ _ _ _ _ {namespace}Group{g}.partChecked',
                 f'  simp only [{namespace}Group{g}.partLength]']
    code += ['  exact .empty _', 'theorem actual_size : actualBytes.length≤8388608 := by',
             '  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+hm+'.checked.2,'+fm+'.checked.2,'+','.join(namespace+f'Group{g}.partSize' for g in range(groups))+']',
             '  decide', f'theorem actual_validated : validate {ir}.program actualBytes=true :=',
             f'  validate_from_facts {ir}.program actualBytes {ir}.safe_checked',
             f'    (assembled_bytes_exact {ir}.program blocks partition_checked actualHeader actualFooter actualBody {hm}.checked.1 {fm}.checked.1 body_checked) actual_size',
             f'theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs ({ir}.program.eval inputs) :=',
             f'  actual_bytes_sound {ir}.program actualBytes actual_validated inputs', 'end '+namespace]
    write(namespace, code)
    (out/'targets.json').write_text(json.dumps(targets, indent=2)+'\n')
    result = driver.check_modules(inputs, targets, out/'kernel', audit_source=p/'Audit.lean',
        dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')), seeded_modules=[seeds])
    if source.read_bytes() != raw:
        raise driver.ProofError('actual Rust source changed')
    (out/'checker_step.rs').write_bytes(raw)
    receipt = {'outcome':result['outcome'], 'fresh_kernel_replay':result['fresh_kernel_replay'],
        'targets':len(result['theorems']), 'source_bytes':len(raw),
        'source_sha256':hashlib.sha256(raw).hexdigest(), 'ir_report_sha256':hashlib.sha256((root/'report.json').read_bytes()).hexdigest(),
        'actual_statement_count':len(operations), 'output_count':no,
        'scope':'complete actual local Rust source against exact checked literal/model program; numeric matrix, full path/caller and Nova embedding remain separate',
        'release_relation_complete':False, 'g1_pass':False}
    (out/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print(json.dumps(receipt))


if __name__ == '__main__':
    main()
