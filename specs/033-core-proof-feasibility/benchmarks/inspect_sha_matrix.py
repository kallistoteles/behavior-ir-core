"""Independent bounded canonical-format diagnostic, not a kernel/matrix receipt."""
import argparse,hashlib,json,struct
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False)
source=Path('experiments/transition-study033/generated/sha-word-matrix-001/matrix.bin').resolve();raw=source.read_bytes()
if len(raw)>1073741824:raise ValueError('matrix byte bound')
cursor=0
p=0;count=0

def take(n):
 global cursor
 if n>len(raw)-cursor:raise ValueError('truncated actual matrix')
 part=raw[cursor:cursor+n];cursor+=n;return part

def natural(n):return int.from_bytes(take(n),'little')
def u32():return natural(4)
if take(22)!=b'core033.semantic.v1\0\x60\0':raise ValueError('matrix magic/version')
p=natural(32)
if p!=int('40000000000000000000000000000000224698fc0994a8dd8c46eb2100000001',16):raise ValueError('wrong field modulus')
count,inputs,private,outputs,constraints,one,ports_count=[u32() for _ in range(7)]
if not 0<count<=16777216 or not 0<constraints<=16777216:raise ValueError('shape bound')
if ports_count!=inputs+private+outputs or ports_count+1!=count:raise ValueError('port arity')
ports=[u32() for _ in range(ports_count)]
if one!=0 or len(set(ports+[one]))!=count or set(ports+[one])!=set(range(count)):raise ValueError('port cover/alias')
if inputs!=24 or outputs!=8 or ports[:inputs]!=[1+34*i for i in range(24)]:raise ValueError('public input layout')
output_base=1+34*(24+2360)
if ports[-outputs:]!=list(range(output_base,output_base+8)):raise ValueError('public output layout')
if u32()!=constraints:raise ValueError('row count mismatch')
terms_total=0;largest_linear=0;nonempty_output_rows=0
for row in range(constraints):
 for column in range(3):
  terms=u32()
  if terms>16777216 or terms*36>len(raw)-cursor:raise ValueError('linear bound')
  largest_linear=max(largest_linear,terms);terms_total+=terms
  previous=-1
  for _ in range(terms):
   wire=u32();coefficient=natural(32)
   if not previous<wire<count or not 0<coefficient<p:raise ValueError('noncanonical actual term')
   previous=wire
  if column==2 and terms:nonempty_output_rows+=1
if cursor!=len(raw):raise ValueError('trailing actual bytes')
r={'format_version':'core033.sha-matrix-diagnostic.v1','outcome':'DiagnosticCanonicalFormat','matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'variables':count,'rows':constraints,'inputs':inputs,'outputs':outputs,'private':private,'constant_one':one,'terms':terms_total,'largest_linear':largest_linear,'nonempty_c_columns':nonempty_output_rows,'kernel_checked':False,'actual_matrix_correspondence':False,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps(r))
