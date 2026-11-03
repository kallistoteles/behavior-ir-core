"""Compactly reify actual canonical matrix data independently of the expected IR/compiler.

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

# Build data-only row dictionaries from the independently parsed actual rows.
# Wire zero is the literal constant port; every other distinct wire is an
# explicit argument. No WordIR/expected compiler participates in this encoding.
families=[];family_index={};instances=[]
for row in rows:
 wires=[];wire_index={};pattern=[]
 for linear in row:
  terms=[]
  for wire,coefficient in linear:
   if wire==0:slot=-1
   else:
    if wire not in wire_index:wire_index[wire]=len(wires);wires.append(wire)
    slot=wire_index[wire]
   terms.append((slot,coefficient))
  pattern.append(tuple(terms))
 key=tuple(pattern)
 if key not in family_index:
  family_index[key]=len(families);families.append((key,len(wires)))
 instances.append((family_index[key],wires))

def expand_instance(family,wires):
 pattern,arity=families[family]
 if len(wires)!=arity:raise ValueError('row dictionary arity changed')
 return [[(0 if slot<0 else wires[slot],coefficient) for slot,coefficient in linear] for linear in pattern]
if [expand_instance(family,wires) for family,wires in instances]!=rows:
 raise ValueError('independent actual row dictionary inverse differs')

def family_call(family,args):return 'rowFamily'+str(family)+(' '+' '.join(args) if args else '')

def quote_instances(chunk):
 pieces=[];restored=[];index=0
 while index<len(chunk):
  family,first=chunk[index];stop=index+1;steps=[]
  if stop<len(chunk) and chunk[stop][0]==family:
   steps=[b-a for a,b in zip(first,chunk[stop][1])]
   if all(step>=0 for step in steps):
    while stop<len(chunk) and chunk[stop][0]==family and chunk[stop][1]==[a+(stop-index)*step for a,step in zip(first,steps)]:stop+=1
  length=stop-index
  if length>=3:
   args=[str(value) if step==0 else '(index+'+str(value)+')' if step==1 else '('+str(value)+'+'+str(step)+'*index)' for value,step in zip(first,steps)]
   pieces.append('(List.range '+str(length)+').map (fun index=>'+family_call(family,args)+')')
   restored.extend((family,[value+offset*step for value,step in zip(first,steps)]) for offset in range(length))
  else:
   length=1;pieces.append('['+family_call(family,list(map(str,first)))+']');restored.append((family,first))
  index+=length
 if restored!=chunk:raise ValueError('actual affine row-run inverse differs')
 return '++'.join(pieces) if pieces else '[]'

out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'quoter.py');shutil.copyfile(a.groups,out/'groups.json')
namespace=a.namespace;module_prefix=a.module_prefix
constants=['import Core033.R1CS','namespace '+namespace,'set_option Elab.async false','set_option maxRecDepth 16384']
for i,v in enumerate(coefficients):constants.append(f'def coefficient{i} : Nat := {v}')
for family,(pattern,arity) in enumerate(families):
 parameters=(' ('+' '.join('wire'+str(i) for i in range(arity))+': Nat)') if arity else ''
 columns=['['+','.join('⟨'+('0' if slot<0 else 'wire'+str(slot))+',coefficient'+str(coefficient)+'⟩' for slot,coefficient in linear)+']' for linear in pattern]
 constants.append('def rowFamily'+str(family)+parameters+' : Core033.R1CS.Row := ⟨'+','.join(columns)+'⟩')

constants += [f'def actualModulus : Nat := {p}',f'def actualVariableCount : Nat := {count}',f'def actualConstantOne : Nat := {one}','def actualInputPorts : List Nat := '+quote_naturals(ports[:ni]),'def actualPrivatePorts : List Nat := '+quote_naturals(ports[ni:ni+np]),'def actualOutputPorts : List Nat := '+quote_naturals(ports[ni+np:]),'end '+namespace]
(out/(module_prefix+'Constants.lean')).write_text('\n'.join(constants)+'\n')
position=0;metadata=[]
for file_index,start_group in enumerate(range(0,len(groups),64)):
 code=['import '+module_prefix+'Constants','namespace '+namespace,'set_option Elab.async false','set_option maxRecDepth 16384']
 for g in range(start_group,min(start_group+64,len(groups))):
  n=groups[g];chunk=rows[position:position+n]
  code.append(f'def actualRows{g} : List Core033.R1CS.Row := '+quote_instances(instances[position:position+n]))
  metadata.append({'group':g,'first_row':position,'row_count':n,'encoded_bytes':sum(row_bytes[position:position+n]),'term_count':sum(len(linear) for row in chunk for linear in row)})
  position+=n
 code.append('end '+namespace);(out/f'{module_prefix}Data{file_index}.lean').write_text('\n'.join(code)+'\n')
if position!=nr:raise ValueError('quoted row cover mismatch')
r={'format_version':'core033.actual-matrix-data-quote.v1','outcome':'QuotedActualDataUnchecked','namespace':namespace,'module_prefix':module_prefix,'source':str(a.matrix.resolve()),'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'rows':nr,'terms':sum(len(l) for r in rows for l in r),'groups':metadata,'coefficients':len(coefficients),'actual_data_row_families':len(families),'quotation_representation':'independent actual row dictionary and checked inverse of affine wire runs; every original row/term/order retained','independent_inverse_byte_equal':True,'kernel_checked':False,'actual_matrix_correspondence':False,'g1_pass':False}
(out/'quote.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({k:r[k] for k in ['outcome','source_sha256','source_bytes','rows','coefficients','kernel_checked']}))
