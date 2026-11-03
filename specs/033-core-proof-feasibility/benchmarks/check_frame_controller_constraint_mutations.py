"""Independent actual numeric-row diagnostics; no kernel/semantic authority."""
import argparse,hashlib,json,re,resource,shutil,struct
from pathlib import Path
resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/frame-hash-controller-003/checker_step.rs');matrix=source.with_name('matrix.bin');raw=matrix.read_bytes();sourceRaw=source.read_bytes()
if raw[:22]!=b'core033.semantic.v1\0\x60\0':raise ValueError('wrong matrix format')
modulus=int.from_bytes(raw[22:54],'little');count,ni,np,no,nr,one,nports=struct.unpack_from('<7I',raw,54)
if (count,ni,np,no,nr,one,nports)!=(301706,43,301537,125,302936,0,301705):raise ValueError('wrong actual controller matrix header')
ports=list(struct.unpack_from('<'+str(nports)+'I',raw,82));cursor=82+4*nports
if struct.unpack_from('<I',raw,cursor)[0]!=nr:raise ValueError('row count alias')
cursor+=4;rows=[]
for _ in range(nr):
 row=[]
 for _ in range(3):
  size=struct.unpack_from('<I',raw,cursor)[0];cursor+=4;column=[]
  for _ in range(size):
   wire=struct.unpack_from('<I',raw,cursor)[0];coefficient=int.from_bytes(raw[cursor+4:cursor+36],'little');cursor+=36
   if not 0<=wire<count or not 0<coefficient<modulus:raise ValueError('noncanonical actual term')
   column.append((wire,coefficient))
  if [wire for wire,_ in column]!=sorted({wire for wire,_ in column}):raise ValueError('noncanonical actual column')
  row.append(column)
 rows.append(row)
if cursor!=len(raw):raise ValueError('trailing matrix data')
operations=[];lines=sourceRaw.splitlines()
for line in lines[45:-2]:
 m=re.fullmatch(rb'    let r([0-9a-f]{8}): u32 = (.*);',line)
 if not m or int(m[1],16)!=43+len(operations):raise ValueError('actual source destination')
 operations.append(m[2].decode())
returns=[int(x,16) for x in re.findall(rb'r([0-9a-f]{8})',lines[-2])]
if len(operations)!=8827 or len(returns)!=125:raise ValueError('wrong actual source shape')

def execute(inputs):
 words=list(inputs);carries=[0]*43
 for expression in operations:
  carry=0
  if m:=re.fullmatch(r'0x([0-9a-f]{8})_u32',expression):value=int(m[1],16)
  elif m:=re.fullmatch(r'r([0-9a-f]{8})\.wrapping_add\(r([0-9a-f]{8})\)',expression):
   total=words[int(m[1],16)]+words[int(m[2],16)];value=total&0xffffffff;carry=total>>32
  elif m:=re.fullmatch(r'r([0-9a-f]{8}) ([&^]) r([0-9a-f]{8})',expression):
   left,right=words[int(m[1],16)],words[int(m[3],16)];value=left&right if m[2]=='&' else left^right
  elif m:=re.fullmatch(r'!r([0-9a-f]{8})',expression):value=words[int(m[1],16)]^0xffffffff
  elif m:=re.fullmatch(r'r([0-9a-f]{8}) >> 0x([0-9a-f]{8})_u32',expression):value=words[int(m[1],16)]>>int(m[2],16)
  elif m:=re.fullmatch(r'r([0-9a-f]{8})\.rotate_right\(0x([0-9a-f]{8})_u32\)',expression):
   value=words[int(m[1],16)];shift=int(m[2],16)%32;value=((value>>shift)|(value<<((32-shift)%32)))&0xffffffff
  else:raise ValueError('unknown actual source operation')
  words.append(value);carries.append(carry)
 valuation=[0]*count;valuation[0]=1
 for index,word in enumerate(words):
  base=1+34*index;valuation[base]=word
  for bit in range(32):valuation[base+1+bit]=(word>>bit)&1
  valuation[base+33]=carries[index]
 output=[words[index] for index in returns]
 for index,word in enumerate(output):valuation[301581+index]=word
 if [valuation[wire] for wire in ports[:43]]!=inputs:raise ValueError('actual input port layout')
 if [valuation[wire] for wire in ports[-125:]]!=output:raise ValueError('actual output port layout')
 return valuation,output

def bad_rows(valuation):
 failures=[]
 for index,(left,right,result) in enumerate(rows):
  total=lambda column:sum(valuation[wire]*coefficient for wire,coefficient in column)%modulus
  if total(left)*total(right)%modulus!=total(result):failures.append(index)
 return failures

base=[1,1,0]+[0]*24+[11,0,7,0,1,1,1,1]+[0xfeedbeef]*8
if len(base)!=43:raise ValueError('independent witness input width')
cases=[]
for label,changed,expectedFlag in [('Honest',{},None),('InvalidPhase',{0:257},81),('TerminalCounter',{2:256},12)]:
 inputs=list(base)
 for index,value in changed.items():inputs[index]=value
 valuation,outputs=execute(inputs);failures=bad_rows(valuation)
 expected=[] if expectedFlag is None else [nr-82+expectedFlag]
 if failures!=expected:raise ValueError('unexpected actual numeric-row failures '+label+': '+str(failures[:20]))
 if expectedFlag is not None:
  row=rows[expected[0]];wire=301581+43+expectedFlag
  if row!=[[(0,1)],[(0,1)],[(wire,1)]]:raise ValueError('changed literal-one guard-row schema')
  if outputs[43+expectedFlag]!=0:raise ValueError('missing rejection flag')
 cases.append({'case':label,'inputs':inputs,'output_state':outputs[:43],'flags':outputs[43:],'failed_rows':failures,'mutation':None if expectedFlag is None else {'kind':'remove exactly this guard constraint','row':expected[0],'wire':wire,'remaining_rows_all_satisfied':True}})
if matrix.read_bytes()!=raw or source.read_bytes()!=sourceRaw:raise ValueError('actual input artifact changed')
receipt={'format_version':'core033.actual-controller-constraint-diagnostic.v1','outcome':'DiagnosticConstraintAgreement','matrix_sha256':hashlib.sha256(raw).hexdigest(),'source_sha256':hashlib.sha256(sourceRaw).hexdigest(),'rows_per_case':nr,'cases':cases,'scope':'independent actual numeric field-row evaluation and exact single-constraint deletion diagnostics; no kernel authority, actual source/matrix proof or G1 latency','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps({'outcome':receipt['outcome'],'cases':len(cases),'rows_per_case':nr,'g1_pass':False}))
