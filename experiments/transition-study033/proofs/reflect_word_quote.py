"""Prepare bounded-depth generic list reflection for a complete actual IR quote.

No literals, operation count, port or source bytes change. A fresh kernel check
of the generated scan, extensional proof and safety theorem is still required.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
parser=argparse.ArgumentParser()
parser.add_argument('--previous',type=Path,required=True)
parser.add_argument('--module',required=True)
parser.add_argument('--model-program',required=True)
parser.add_argument('--out',type=Path,required=True)
a=parser.parse_args()
for name in [a.module,a.model_program]:
 if not re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*',name):raise ValueError('invalid subject')
old=a.previous.resolve();out=a.out.resolve()
meta=json.loads((old/'quote.json').read_text());raw=Path(meta['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=meta['source_sha256']:raise ValueError('actual source changed')
source=old/'proof-inputs'/(a.module+'.lean');code=source.read_text()
pattern=r'theorem ir_exact : program='+re.escape(a.model_program)+r' := by core033_kernel_decide'
if len(re.findall(pattern,code))!=1:raise ValueError('original complete exact-IR target required')
proof='''theorem list_equal_of_scan {α : Type} [DecidableEq α] (left : List α) : ∀ right,
    left.isEqv right (fun a b=>decide (a=b))=true → left=right := by
  induction left with
  | nil => intro right same;cases right with
    | nil => rfl
    | cons first rest => cases same
  | cons first rest ih =>
    intro right same
    cases right with
    | nil => cases same
    | cons next tail =>
      change (decide (first=next) && rest.isEqv tail (fun a b=>decide (a=b)))=true at same
      obtain ⟨heads,tails⟩:=Bool.and_eq_true_iff.mp same
      have head:=of_decide_eq_true heads
      cases head
      exact congrArg (List.cons first) (ih tail tails)
theorem program_equal (left right : WordIR.Program)
    (inputs : left.inputCount=right.inputCount)
    (operations : left.operations=right.operations)
    (outputs : left.outputs=right.outputs) : left=right := by
  cases left
  cases right
  cases inputs
  cases operations
  cases outputs
  rfl
theorem operation_scan : program.operations.isEqv MODEL.operations
    (fun a b=>decide (a=b))=true := by core033_kernel_decide
theorem ir_exact : program=MODEL := by
  apply program_equal
  · rfl
  · exact list_equal_of_scan _ _ operation_scan
  · core033_kernel_decide'''.replace('MODEL',a.model_program)
updated=re.sub(pattern,lambda _:proof,code)
out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');shutil.copytree(old/'proof-inputs',out/'proof-inputs')
(out/'proof-inputs'/(a.module+'.lean')).write_text(updated)
literals=(old/'operation-literals.json').read_bytes();(out/'operation-literals.json').write_bytes(literals)
meta['reflection']='generic list scan and Program extensionality; every actual literal retained; kernel proof pending'
meta['previous_quotation_sha256']=hashlib.sha256((old/'quote.json').read_bytes()).hexdigest()
meta['operation_literals_sha256']=hashlib.sha256(literals).hexdigest()
(out/'quote.json').write_text(json.dumps(meta,indent=2,sort_keys=True)+'\n')
print(json.dumps({'outcome':'PreparedUncheckedReflection','operations':meta['operations'],'g1_pass':False}))
