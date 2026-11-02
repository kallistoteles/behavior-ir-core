"""Compose a checked actual base matrix with independently quoted guard rows.

A separate complete closed-value-to-file byte binding is mandatory for the
composed prefix. No generator-output equality is semantic proof authority.
"""
import argparse,hashlib,json,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';inputs.mkdir()
base=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/scalar-ranges-matrix-packet-001').resolve();schema=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/scalar-range-guards-formal-001').resolve();allNames=[]
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
quotes={};rawFiles={};targets={}
for label in ['boolean','byte','short']:
 q=Path('experiments/transition-study033/generated/guarded-scalar-'+label+'-quote-001');quote=json.loads((q/'quote.json').read_text());raw=Path(quote['source']).read_bytes()
 if hashlib.sha256(raw).hexdigest()!=quote['source_sha256'] or not quote['independent_inverse_byte_equal']:raise driver.ProofError('changed independent actual scalar binary')
 quotes[label]=quote;rawFiles[label]=raw
 prefix='ActualGuardedScalar'+label.capitalize()+'Matrix'
 for module in [prefix+'Constants',prefix+'Data0']:
  shutil.copyfile(q/(module+'.lean'),inputs/(module+'.lean'));targets[module]=[]
code='''import ActualGuardedScalarBooleanMatrixData0
import ActualGuardedScalarByteMatrixData0
import ActualGuardedScalarShortMatrixData0
import ActualRangeMatrixPacket
import Core033.ScalarRangeGuards
import Core033.KernelDecide
namespace CheckedGuardedScalarMatrices
open Core033
namespace Data
abbrev modulus := ActualGuardedScalarBooleanData.actualModulus
end Data
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
abbrev original := ActualRangeMatrixPacket.actualMatrix
abbrev program := ScalarRangeGuards.program

theorem expected_program : ActualRangeMatrixPacket.expectedProgram=program :=
  ActualRangeMatrixPacket.expected_program_exact.trans ActualRangeIR.ir_exact

theorem program_valid : program.Valid := by
  rw [←expected_program]
  exact ActualRangeMatrixPacket.program_valid

theorem output_base : WordMatrix.outputBase program=1871 := by
  have counts:=ActualRangeMatrixPacket.program_counts
  rw [expected_program] at counts
  simp only [WordMatrix.outputBase,WordMatrix.wordCount,counts.1,counts.2.1]

def actualTail : ScalarRangeGuards.Kind → List R1CS.Row
  | .boolean=>ActualGuardedScalarBooleanData.actualRows56
  | .byte=>ActualGuardedScalarByteData.actualRows56
  | .short=>ActualGuardedScalarShortData.actualRows56

theorem guard_tail_exact (kind : ScalarRangeGuards.Kind) : actualTail kind=
    (ScalarRangeGuards.wires kind).map (fun wire=>SHA256Circuit.literalRow wire true) := by
  cases kind <;> simp only [actualTail,ScalarRangeGuards.wires,ScalarRangeGuards.Kind.position,
    output_base,List.map_cons,List.map_nil]
  all_goals core033_kernel_decide

def actualMatrix (kind : ScalarRangeGuards.Kind) : R1CS.Matrix :=
  ⟨Data.modulus,ActualGuardedScalarBooleanData.actualVariableCount,
    ActualGuardedScalarBooleanData.actualInputPorts,ActualGuardedScalarBooleanData.actualPrivatePorts,
    ActualGuardedScalarBooleanData.actualOutputPorts,ActualGuardedScalarBooleanData.actualConstantOne,
    original.rows++actualTail kind⟩

theorem forced_base_exact (kind : ScalarRangeGuards.Kind) : actualMatrix kind=GuardMatrix.force original (ScalarRangeGuards.wires kind) := by
  unfold actualMatrix GuardMatrix.force
  rw [guard_tail_exact]
  rfl

theorem guarded_model_exact (kind : ScalarRangeGuards.Kind) : actualMatrix kind=ScalarRangeGuards.compile Data.modulus kind := by
  rw [forced_base_exact]
  unfold original
  rw [ActualRangeMatrixPacket.actual_matrix_exact,expected_program]
  rfl

theorem actual_shape (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).wellFormed=true := by
  rw [forced_base_exact]
  apply GuardMatrix.well_formed
  · exact ActualRangeMatrixPacket.actual_well_formed
  · decide
  · unfold original
    rw [ActualRangeMatrixPacket.actual_matrix_exact,expected_program]
    exact ScalarRangeGuards.guard_wire_bounds _ kind

theorem tail_stats (kind : ScalarRangeGuards.Kind) : (actualTail kind).length=1 ∧
    MatrixRowBlocks.rowsWeight (actualTail kind)=120 := by
  cases kind <;> unfold actualTail <;> core033_kernel_decide

theorem row_stats (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).rows.length=1877 ∧ MatrixRowBlocks.rowsWeight (actualMatrix kind).rows=278124 := by
  change (original.rows++actualTail kind).length=1877 ∧
    MatrixRowBlocks.rowsWeight (original.rows++actualTail kind)=278124
  simp only [List.length_append,MatrixRowBlocks.rows_weight_append,
    ActualRangeMatrixPacket.actual_rows_size.1,ActualRangeMatrixPacket.actual_rows_size.2,
    (tail_stats kind).1,(tail_stats kind).2]
  decide

theorem port_stats (kind : ScalarRangeGuards.Kind) : (actualMatrix kind).inputPorts.length=1 ∧ (actualMatrix kind).privatePorts.length=1869 ∧
    (actualMatrix kind).outputPorts.length=3 := by
  change ActualGuardedScalarBooleanData.actualInputPorts.length=1 ∧
    ActualGuardedScalarBooleanData.actualPrivatePorts.length=1869 ∧ ActualGuardedScalarBooleanData.actualOutputPorts.length=3
  simp only [ActualGuardedScalarBooleanData.actualInputPorts,ActualGuardedScalarBooleanData.actualPrivatePorts,
    ActualGuardedScalarBooleanData.actualOutputPorts,List.length_append,List.length_range',List.length_cons,List.length_nil]
  decide

theorem binary_size (kind : ScalarRangeGuards.Kind) : (MatrixCodec.encode (actualMatrix kind)).length=285702 := by
  rw [MatrixRowBlocks.encoded_matrix_size,(port_stats kind).1,(port_stats kind).2.1,(port_stats kind).2.2,(row_stats kind).2]

theorem parsed_actual (kind : ScalarRangeGuards.Kind) : Matrix.parse (MatrixCodec.encode (actualMatrix kind))=some (actualMatrix kind) := by
  apply MatrixCodecPayload.matrix_roundtrip (actualMatrix kind) (actual_shape kind)
  · rw [(row_stats kind).1];decide
  · rw [binary_size];decide

theorem actual_guards {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (kind : ScalarRangeGuards.Kind) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (actualMatrix kind).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 0).toNat<2^kind.bits := by
  rw [guarded_model_exact] at accepted
  exact ScalarRangeGuards.accepted_range R1CS.modulus_larger_than_word program_valid kind valuation inputs accepted inputValues

def actualBoolean := actualMatrix .boolean
def actualByte := actualMatrix .byte
def actualShort := actualMatrix .short

end CheckedGuardedScalarMatrices
'''
(inputs/'CheckedGuardedScalarMatrices.lean').write_text(code);targets['CheckedGuardedScalarMatrices']=allNames+['CheckedGuardedScalarMatrices.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)]
r=driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[base/'kernel/compiled',schema/'compiled'])
for label,quote in quotes.items():
 if Path(quote['source']).read_bytes()!=rawFiles[label]:raise driver.ProofError('actual scalar matrix changed')
 (out/(label+'-matrix.bin')).write_bytes(rawFiles[label])
receipt={'format_version':'core033.actual-guarded-scalar-family.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'variants':{label:{'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)} for label,raw in rawFiles.items()},'prefix_binding':'complete checked-value-to-file equality required separately for every variant','scope':'exact selected Boolean/u8/u16 guard matrices and strict parser; physical authenticated record framing and whole machine remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
