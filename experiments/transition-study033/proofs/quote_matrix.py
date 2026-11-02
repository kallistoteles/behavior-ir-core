"""Reify actual canonical matrix data independently of the expected IR/compiler.

Only input-data quotation is produced. Exact independent re-encoding must equal
the original bytes; the kernel must still validate parser/shape/semantic binding.
Group cuts are arbitrary untrusted partitions; no row/term may be omitted.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('matrix',type=Path);parser.add_argument('--groups',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);parser.add_argument('--namespace',default='ActualSHAWordMatrixData');parser.add_argument('--module-prefix',default='ActualMatrix');a=parser.parse_args()
if not all(re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*',v) for v in [a.namespace,a.module_prefix]):raise ValueError('invalid quotation namespace/module prefix')
raw=a.matrix.resolve().read_bytes()
if len(raw)>1073741824:raise ValueError('matrix exceeds frozen byte bound')
cursor=0

def take(n):
 global cursor
 if n>len(raw)-cursor:raise ValueError('truncated actual data')
 v=raw[cursor:cursor+n];cursor+=n;return v

def number(n):return int.from_bytes(take(n),'little')
def u32():return number(4)
magic=take(22)
if magic!=b'core033.semantic.v1\0\x60\0':raise ValueError('wrong actual format magic/version')
p=number(32);count,ni,np,no,nr,one,nports=[u32() for _ in range(7)]
if not 0<count<=16777216 or not 0<nr<=16777216 or nports!=ni+np+no or nports*4>len(raw)-cursor:raise ValueError('actual header bounds')
ports=[u32() for _ in range(nports)]
if u32()!=nr:raise ValueError('actual repeated row count mismatch')
rows=[];row_bytes=[];coefficients=[];coefficient_index={}
for _ in range(nr):
 start=cursor;row=[]
 for _ in range(3):
  n=u32()
  if n>16777216 or n*36>len(raw)-cursor:raise ValueError('actual column bound')
  linear=[]
  for _ in range(n):
   wire=u32();coefficient=number(32)
   if coefficient not in coefficient_index:
    coefficient_index[coefficient]=len(coefficients);coefficients.append(coefficient)
   linear.append((wire,coefficient_index[coefficient]))
  row.append(linear)
 rows.append(row);row_bytes.append(cursor-start)
if cursor!=len(raw):raise ValueError('trailing actual bytes')
groups=json.loads(a.groups.read_text())['group_sizes']
if not groups or any(type(n) is not int or not 0<n<=4096 for n in groups) or sum(groups)!=nr:raise ValueError('row partition loses/duplicates data')
# Independent inverse of primitive data quotation, with no expected matrix input.
rebuilt=bytearray(magic)+p.to_bytes(32,'little')
for v in [count,ni,np,no,nr,one,nports]:rebuilt+=v.to_bytes(4,'little')
for v in ports:rebuilt+=v.to_bytes(4,'little')
rebuilt+=nr.to_bytes(4,'little')
for row in rows:
 for linear in row:
  rebuilt+=len(linear).to_bytes(4,'little')
  for wire,coefficient in linear:rebuilt+=wire.to_bytes(4,'little')+coefficients[coefficient].to_bytes(32,'little')
if bytes(rebuilt)!=raw:raise ValueError('integer/data quotation changed actual bytes')

def quote_naturals(values):
 parts=[];restored=[];i=0
 while i<len(values):
  end=i+1
  while end<len(values) and values[end]==values[end-1]+1:end+=1
  if end-i>=3:
   parts.append(f"List.range' {values[i]} {end-i}");restored.extend(range(values[i],values[i]+end-i))
  else:
   parts.append('['+','.join(map(str,values[i:end]))+']');restored.extend(values[i:end])
  i=end
 if restored!=values:raise ValueError('port run quotation changed data')
 return '++'.join(parts) if parts else '[]'

def quote_linear(linear):return '['+','.join(f'⟨{wire},coefficient{coefficient}⟩' for wire,coefficient in linear)+']'
def quote_row(row):return '⟨'+','.join(quote_linear(linear) for linear in row)+'⟩'
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'quoter.py');shutil.copyfile(a.groups,out/'groups.json')
namespace=a.namespace;module_prefix=a.module_prefix
constants=['import Core033.R1CS','namespace '+namespace,'set_option Elab.async false']
for i,v in enumerate(coefficients):constants.append(f'def coefficient{i} : Nat := {v}')
constants += [f'def actualModulus : Nat := {p}',f'def actualVariableCount : Nat := {count}',f'def actualConstantOne : Nat := {one}','def actualInputPorts : List Nat := '+quote_naturals(ports[:ni]),'def actualPrivatePorts : List Nat := '+quote_naturals(ports[ni:ni+np]),'def actualOutputPorts : List Nat := '+quote_naturals(ports[ni+np:]),'end '+namespace]
(out/(module_prefix+'Constants.lean')).write_text('\n'.join(constants)+'\n')
position=0;metadata=[]
for file_index,start_group in enumerate(range(0,len(groups),64)):
 code=['import '+module_prefix+'Constants','namespace '+namespace,'set_option Elab.async false']
 for g in range(start_group,min(start_group+64,len(groups))):
  n=groups[g];chunk=rows[position:position+n]
  code.append(f'def actualRows{g} : List Core033.R1CS.Row := [\n'+',\n'.join(quote_row(row) for row in chunk)+']')
  metadata.append({'group':g,'first_row':position,'row_count':n,'encoded_bytes':sum(row_bytes[position:position+n]),'term_count':sum(len(linear) for row in chunk for linear in row)})
  position+=n
 code.append('end '+namespace);(out/f'{module_prefix}Data{file_index}.lean').write_text('\n'.join(code)+'\n')
if position!=nr:raise ValueError('quoted row cover mismatch')
r={'format_version':'core033.actual-matrix-data-quote.v1','outcome':'QuotedActualDataUnchecked','namespace':namespace,'module_prefix':module_prefix,'source':str(a.matrix.resolve()),'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'rows':nr,'terms':sum(len(l) for r in rows for l in r),'groups':metadata,'coefficients':len(coefficients),'independent_inverse_byte_equal':True,'kernel_checked':False,'actual_matrix_correspondence':False,'g1_pass':False}
(out/'quote.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({k:r[k] for k in ['outcome','source_sha256','source_bytes','rows','coefficients','kernel_checked']}))
