"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/hash-block-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/hash-block-raw-formal-001').resolve();allNames=[]
for kernel in [base/'kernel',schema]:
 report=json.loads((kernel/'report.json').read_text())
 if report['outcome']!='Checked' or not report['fresh_kernel_replay']:raise driver.ProofError('genuine checked base and guarded schema required')
 for module,entry in report['modules'].items():
  file=kernel/'compiled'/Path(*module.split('.')).with_suffix('.olean')
  if hashlib.sha256(file.read_bytes()).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('changed checked module')
 for relative,entry in report['seeded_modules'].items():
  if hashlib.sha256((kernel/'compiled'/relative).read_bytes()).hexdigest()!=entry['sha256']:raise driver.ProofError('changed checked dependency')
 for target in report['theorems']:
  if target['target'] not in allNames:allNames.append(target['target'])
q=Path('experiments/transition-study033/generated/guarded-hash-block-matrix-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independently quoted binary')
targets={}
for module in ['ActualGuardedHashBlockMatrixConstants','ActualGuardedHashBlockMatrixData57']:
 shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedHashBlockMatrixData57
import ActualHashBlockMatrixPacket
import Core033.HashBlockRaw
import Core033.KernelDecide
namespace CheckedGuardedHashBlockMatrix
open Core033
namespace Data
abbrev modulus := ActualGuardedHashBlockData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualHashBlockMatrixPacket.actualMatrix
abbrev program := HashBlockGuards.program

theorem expected_program : ActualHashBlockMatrixPacket.expectedProgram=program :=
  ActualHashBlockMatrixPacket.expected_program_exact.trans ActualHashBlockIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualHashBlockMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=125121 := by
  have counts:=ActualHashBlockMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

theorem guard_tail_exact : ActualGuardedHashBlockData.actualRows3681=
    HashBlockGuards.wires.map (fun wire=>SHA256Circuit.literalRow wire true) := by
  simp only [HashBlockGuards.wires,output_base]
  core033_kernel_decide

def actualMatrix : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedHashBlockData.actualVariableCount,
    ActualGuardedHashBlockData.actualInputPorts,ActualGuardedHashBlockData.actualPrivatePorts,
    ActualGuardedHashBlockData.actualOutputPorts,ActualGuardedHashBlockData.actualConstantOne,
    original.rows++ActualGuardedHashBlockData.actualRows3681⟩

theorem forced_base_exact : actualMatrix=GuardMatrix.force original HashBlockGuards.wires := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact : actualMatrix=HashBlockGuards.compile Data.modulus := by
  rw [forced_base_exact]
  unfold original
  rw [ActualHashBlockMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape : actualMatrix.wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualHashBlockMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualHashBlockMatrixPacket.actual_matrix_exact,expected_program]
    exact HashBlockGuards.guard_wire_bounds _

theorem tail_stats : ActualGuardedHashBlockData.actualRows3681.length=64 ∧
    MatrixRowBlocks.rowsWeight ActualGuardedHashBlockData.actualRows3681=7680 := by core033_kernel_decide

theorem row_stats : actualMatrix.rows.length=125968 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=ROW_WEIGHT := by
  change (original.rows++ActualGuardedHashBlockData.actualRows3681).length=125968 ∧
    MatrixRowBlocks.rowsWeight (original.rows++ActualGuardedHashBlockData.actualRows3681)=ROW_WEIGHT
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualHashBlockMatrixPacket.actual_rows_size.1,ActualHashBlockMatrixPacket.actual_rows_size.2,
    tail_stats.1,tail_stats.2]
  decide

theorem port_stats : actualMatrix.inputPorts.length=72 ∧ actualMatrix.privatePorts.length=125048 ∧
    actualMatrix.outputPorts.length=72 := by
  change ActualGuardedHashBlockData.actualInputPorts.length=72 ∧
    ActualGuardedHashBlockData.actualPrivatePorts.length=125048 ∧ ActualGuardedHashBlockData.actualOutputPorts.length=72
  simp only [ActualGuardedHashBlockData.actualInputPorts,ActualGuardedHashBlockData.actualPrivatePorts,
    ActualGuardedHashBlockData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size : (MatrixCodec.encode actualMatrix).length=BINARY_BYTES := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]

theorem parsed_actual : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<64 → (inputs (8+index)).toNat<256 := by
  rw [guarded_model_exact] at accepted
  exact HashBlockGuards.accepted_bytes (p:=R1CS.pallasScalarModulus)
    R1CS.modulus_larger_than_word valuation inputs accepted inputValues

theorem actual_compression_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<8) :
    valuation (WordMatrix.outputBase program+index)=
      (((SHA256.stateWords (SHA256.compress (HashBlockRaw.state inputs)
        (SHA256.parseBlock (HashBlockRaw.bytes inputs)))).getD index 0).toNat : F) := by
  rw [guarded_model_exact] at accepted
  exact HashBlockRaw.accepted_output R1CS.modulus_larger_than_word valuation inputs accepted inputValues index bound

end CheckedGuardedHashBlockMatrix
'''
code=code.replace('ROW_WEIGHT',str(sum(group['encoded_bytes'] for group in quote['groups']))).replace('BINARY_BYTES',str(len(raw)))
(inputs/'CheckedGuardedHashBlockMatrix.lean').write_text(code);targets['CheckedGuardedHashBlockMatrix']=allNames+['CheckedGuardedHashBlockMatrix.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
if Path(quote['source']).read_bytes()!=raw:raise driver.ProofError('actual guarded matrix changed')
(out/'matrix.bin').write_bytes(raw)
receipt={'format_version':'core033.actual-guarded-hash-block-matrix.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'matrix_sha256':hashlib.sha256(raw).hexdigest(),'matrix_bytes':len(raw),'rows':125968,'base_mathematical_receipt_sha256':hashlib.sha256((base/'receipt.json').read_bytes()).hexdigest(),'guard_tail':'independent actual numeric quotation, 64 literal-one rows, kernel checked','prefix_binding':'checked actual base data composed with actual guarded header/tail; complete checked-value-to-file equality required separately','scope':'exact original SHA compression at all eight actual field-output ports with all 64 forced full-byte ranges, complete numeric rows and strict parser; physical stream/controller bindings remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
