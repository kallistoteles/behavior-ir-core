"""Actual canonical full-matrix mutations, independent quotation and rejection.

All modified numeric data must equal the explicitly described record change in
the kernel. Strict-parser acceptance is established before exact-relation refusal.
"""
import argparse,hashlib,json,re,shutil,struct,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--genuine',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();g=a.genuine.resolve();gr=json.loads((g/'receipt.json').read_text())
if gr['outcome']!='Checked' or not gr['fresh_kernel_replay']:raise driver.ProofError('genuine full source/matrix receipt required')
raw=(g/'matrix.bin').read_bytes()
if hashlib.sha256(raw).hexdigest()!=gr['matrix_sha256']:raise driver.ProofError('genuine matrix identity changed')
modulus=int.from_bytes(raw[22:54],'little');metadata=struct.unpack('<7I',raw[54:82]);nr=metadata[4];ports=metadata[6];start=82+4*ports
if metadata!=(2048,7,2033,7,2056,0,2047) or struct.unpack('<I',raw[start:start+4])[0]!=nr:raise driver.ProofError('unexpected genuine metadata')
first=start+4;pos=first;decoded=[]
for _ in range(3):
 n=struct.unpack('<I',raw[pos:pos+4])[0];pos+=4;column=[]
 for _ in range(n):column.append((int.from_bytes(raw[pos:pos+4],'little'),int.from_bytes(raw[pos+4:pos+36],'little')));pos+=36
 decoded.append(column)
if decoded!=[[(2,1)],[(0,modulus-1),(2,1)],[]] or pos-first!=120:raise driver.ProofError('different actual first constraint')
removed=bytearray(raw[:first]+raw[pos:]);removed[70:74]=(nr-1).to_bytes(4,'little');removed[start:start+4]=(nr-1).to_bytes(4,'little')
changedMod=bytearray(raw);changedMod[22:54]=(modulus+2).to_bytes(32,'little')
changedCoef=bytearray(raw);changedCoef[first+48:first+80]=(modulus-2).to_bytes(32,'little')
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';(inputs/'Core033').mkdir(parents=True);shutil.copyfile(p/'Core033/MatrixPacket.lean',inputs/'Core033/MatrixPacket.lean')
targets={'Core033.MatrixPacket':['Core033.MatrixPacket.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',(p/'Core033/MatrixPacket.lean').read_text(),re.M)]};cases=[]
for label,data,rows in [('Deleted',bytes(removed),2055),('Modulus',bytes(changedMod),2056),('Coefficient',bytes(changedCoef),2056)]:
 path=out/(label+'.bin');path.write_bytes(data);groups=[64]*(rows//64)+([rows%64] if rows%64 else []);gp=out/(label+'-groups.json');gp.write_text(json.dumps({'group_sizes':groups})+'\n');quote=out/(label+'-quote')
 argv=[sys.executable,str(p/'quote_matrix.py'),str(path),'--groups',str(gp),'--out',str(quote),'--namespace','MutatedControlData'+label,'--module-prefix','MutatedControlMatrix'+label]
 r=subprocess.run(argv,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False);(out/(label+'-quotation.txt')).write_bytes(r.stdout)
 if r.returncode:raise driver.ProofError('independent actual mutation quotation failed')
 qr=json.loads((quote/'quote.json').read_text())
 if not qr['independent_inverse_byte_equal'] or qr['source_sha256']!=hashlib.sha256(data).hexdigest():raise driver.ProofError('actual mutation quote identity mismatch')
 for suffix in ['Constants','Data0']:
  name='MutatedControlMatrix'+label+suffix;shutil.copyfile(quote/(name+'.lean'),inputs/(name+'.lean'));targets[name]=[]
 cases.append({'name':label,'file':path.name,'sha256':qr['source_sha256'],'bytes':len(data),'rows':rows,'groups':len(groups)})
code=['import CheckedControlMatrix','import Core033.MatrixPacket','import Core033.KernelDecide']+[f'import MutatedControlMatrix{c["name"]}Data0' for c in cases]+['namespace ControlMatrixMutations','open Core033','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000','abbrev good := CheckedControlMatrix.actualMatrix','def deleted : R1CS.Matrix := {good with rows:=good.rows.tail}','def changedModulus : R1CS.Matrix := {good with modulus:=good.modulus+2}','def wrongRow : R1CS.Row := ⟨[⟨2,1⟩],[⟨0,good.modulus-2⟩,⟨2,1⟩],[]⟩','def changedCoefficient : R1CS.Matrix := {good with rows:=wrongRow::good.rows.tail}','theorem original_accepted : MatrixPacket.validate good (MatrixCodec.encode good)=true :=','  (MatrixPacket.decoded_acceptance good good _ CheckedControlMatrix.actual_parsed).mpr rfl','theorem deleted_shape : deleted.wellFormed=true :=','  MatrixPacket.row_subset_preserves_shape good CheckedControlMatrix.matrix_shape _ (by intro row member;exact List.mem_of_mem_tail member)','theorem modulus_shape : changedModulus.wellFormed=true :=','  MatrixPacket.modulus_increase_preserves_shape good CheckedControlMatrix.matrix_shape _ (by omega) (by decide)','theorem wrong_row_shape : R1CS.linearWellFormed good.modulus good.variableCount wrongRow.a=true ∧','    R1CS.linearWellFormed good.modulus good.variableCount wrongRow.b=true ∧','    R1CS.linearWellFormed good.modulus good.variableCount wrongRow.c=true := by core033_kernel_decide','theorem coefficient_shape : changedCoefficient.wellFormed=true := by','  apply MatrixPacket.replacement_rows_preserve_shape good CheckedControlMatrix.matrix_shape','  intro row member','  change row∈wrongRow::good.rows.tail at member','  rcases List.mem_cons.mp member with same|inside','  · subst row;exact wrong_row_shape','  · exact MatrixPacket.rows_are_well_formed good CheckedControlMatrix.matrix_shape row (List.mem_of_mem_tail inside)']
for case in cases:
 label=case['name'];ns='MutatedControlData'+label;derived={'Deleted':'deleted','Modulus':'changedModulus','Coefficient':'changedCoefficient'}[label];shape={'Deleted':'deleted_shape','Modulus':'modulus_shape','Coefficient':'coefficient_shape'}[label]
 fields=[f'{ns}.actual'+n for n in ['Modulus','VariableCount','InputPorts','PrivatePorts','OutputPorts','ConstantOne']];rows='['+','.join(f'{ns}.actualRows{i}' for i in range(case['groups']))+'].flatten'
 code += [f'def quoted{label} : R1CS.Matrix := ⟨'+','.join(fields+[rows])+'⟩',f'theorem actual_change{label} : quoted{label}={derived} := by core033_kernel_decide',f'theorem row_bound{label} : 0<{derived}.rows.length ∧ {derived}.rows.length≤16777216 := by core033_kernel_decide',f'theorem byte_bound{label} : (MatrixCodec.encode {derived}).length≤1073741824 := by', '  rw [MatrixRowBlocks.encoded_matrix_size]','  core033_kernel_decide',f'theorem parsed{label} : Matrix.parse (MatrixCodec.encode quoted{label})=some quoted{label} := by',f'  rw [actual_change{label}]',f'  exact MatrixCodecPayload.matrix_roundtrip {derived} {shape} row_bound{label} byte_bound{label}']
code += ['theorem different_deleted : quotedDeleted≠good := by','  intro same','  have count:=congrArg (fun matrix : R1CS.Matrix=>matrix.rows.length) same','  rw [actual_changeDeleted] at count','  have original:=CheckedControlMatrix.row_stats.1','  simp only [deleted,List.length_tail] at count','  omega','theorem different_modulus : quotedModulus≠good := by','  intro same','  have different : changedModulus.modulus≠good.modulus := by change good.modulus+2≠good.modulus;omega','  exact different (congrArg R1CS.Matrix.modulus (actual_changeModulus.symm.trans same))','theorem different_coefficient : quotedCoefficient≠good := by','  intro same','  have different : changedCoefficient.rows.head?≠good.rows.head? := by core033_kernel_decide','  exact different (congrArg (fun matrix : R1CS.Matrix=>matrix.rows.head?) (actual_changeCoefficient.symm.trans same))']
for label,proof in [('Deleted','different_deleted'),('Modulus','different_modulus'),('Coefficient','different_coefficient')]:
 code += [f'theorem rejected{label} : MatrixPacket.validate good (MatrixCodec.encode quoted{label})=false :=',f'  MatrixPacket.decoded_mismatch_rejected good quoted{label} _ parsed{label} {proof}']
code.append('end ControlMatrixMutations');text='\n'.join(code)+'\n';(inputs/'ControlMatrixMutations.lean').write_text(text);targets['ControlMatrixMutations']=['ControlMatrixMutations.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',text,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[g/'kernel/compiled'])
for case in cases:
 if hashlib.sha256((out/case['file']).read_bytes()).hexdigest()!=case['sha256']:raise driver.ProofError('mutated actual file changed')
 case['outcome']='StrictParserAcceptedThenExactRelationRejected'
receipt={'format_version':'core033.actual-control-matrix-mutations.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'genuine_matrix_sha256':gr['matrix_sha256'],'positive_control':'original_accepted','cases':cases,'input_quotation':'independent full actual numeric quotation, inverse primitive encoding byte-equal; kernel checks complete quoted data equals explicit record mutation','scope':'actual full control matrix only; not Nova embedding or K release','g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps({'outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'cases':len(cases),'g1_pass':False}))
