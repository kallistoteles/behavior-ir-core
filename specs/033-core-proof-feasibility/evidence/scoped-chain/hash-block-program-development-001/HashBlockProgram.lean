import Core033.WordInlineOutputs
import Core033.HashPipeline
import Core033.WordSourceValidity
import Core033.KernelDecide

/- One physical SHA block: state words and all 64 full-u32 byte inputs share
registers with ingress, compression and all byte admission flags. This does not
establish the caller's stream/state/control bindings. -/
namespace Core033.HashBlockProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 72
def bytePorts (index : Nat) : Nat := 8+index
def ingress := WordInline.inline initial BlockIngress.program bytePorts
def ingressRegister (position : Nat) := WordInlineOutputs.register initial BlockIngress.program bytePorts position

def shaPorts (index : Nat) : Nat := if index<8 then index else ingressRegister (index-8)
def compressed := WordInline.inline ingress.2 SHAMaterialized.program shaPorts
def shaRegister (position : Nat) := WordInlineOutputs.register ingress.2 SHAMaterialized.program shaPorts position

def outputs : List Nat := (List.range 8).map shaRegister++(List.range 64).map (fun index=>ingressRegister (16+index))
def program : Program := ⟨72,compressed.2.operations,outputs⟩

theorem ingress_valid : BlockIngress.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem sha_valid : SHAMaterialized.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem ingress_arity : BlockIngress.program.outputs.length=80 := by core033_kernel_decide

theorem sha_arity : SHAMaterialized.program.outputs.length=8 := by core033_kernel_decide

theorem byte_ports : ∀ index,index<BlockIngress.program.inputCount → bytePorts index<initial.next := by
  intro index bound
  change index<64 at bound
  change 8+index<72
  omega

theorem ingress_register_bound (position : Nat) (bound : position<80) : ingressRegister position<ingress.2.next :=
  (WordInlineOutputs.exact_output initial BlockIngress.program ingress_valid bytePorts byte_ports
    (fun _=>0) position (by rw [ingress_arity];exact bound)).1

theorem sha_ports : ∀ index,index<SHAMaterialized.program.inputCount → shaPorts index<ingress.2.next := by
  intro index bound
  change index<24 at bound
  by_cases state : index<8
  · simp only [shaPorts,if_pos state]
    have nextBound:=extends_next initial ingress.2 (WordInline.builder_extends initial BlockIngress.program bytePorts)
    change 72≤ingress.2.next at nextBound
    omega
  · simp only [shaPorts,if_neg state]
    exact ingress_register_bound (index-8) (by omega)

theorem sha_register_bound (position : Nat) (bound : position<8) : shaRegister position<compressed.2.next :=
  (WordInlineOutputs.exact_output ingress.2 SHAMaterialized.program sha_valid shaPorts sha_ports
    (fun _=>0) position (by rw [sha_arity];exact bound)).1

theorem program_valid : program.Valid := by
  have ingressTop:=WordInline.topological initial BlockIngress.program ingress_valid (by trivial) bytePorts byte_ports
  have shaTop:=WordInline.topological ingress.2 SHAMaterialized.program sha_valid ingressTop shaPorts sha_ports
  refine ⟨shaTop,?_⟩
  intro register member
  simp only [program,outputs,List.mem_append,List.mem_map,List.mem_range] at member
  rcases member with ⟨position,bound,rfl⟩|⟨position,bound,rfl⟩
  · exact sha_register_bound position bound
  · have nextBound:=extends_next ingress.2 compressed.2 (WordInline.builder_extends _ _ _)
    exact Nat.lt_of_lt_of_le (ingress_register_bound (16+position) (by omega)) nextBound

def ingressInputs (inputs : Nat → Word) (index : Nat) : Word := inputs (8+index)
def compressionInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index<8 then inputs index else (BlockIngress.program.eval (ingressInputs inputs)).getD (index-8) 0

theorem ingress_value (inputs : Nat → Word) (position : Nat) (bound : position<80) :
    Meaning ingress.2 inputs (ingressRegister position)
      ((BlockIngress.program.eval (ingressInputs inputs)).getD position 0) :=
  WordInlineOutputs.exact_output initial BlockIngress.program ingress_valid bytePorts byte_ports
    inputs position (by rw [ingress_arity];exact bound)

theorem sha_input_values (inputs : Nat → Word) (index : Nat) (bound : index<SHAMaterialized.program.inputCount) :
    ingress.2.values inputs (shaPorts index)=compressionInputs inputs index := by
  change index<24 at bound
  by_cases state : index<8
  · simp only [shaPorts,compressionInputs,if_pos state]
    exact extends_values initial ingress.2 (WordInline.builder_extends _ _ _) inputs index (by change index<72;omega)
  · simp only [shaPorts,compressionInputs,if_neg state]
    exact (ingress_value inputs (index-8) (by omega)).2

theorem compressed_value (inputs : Nat → Word) (position : Nat) (bound : position<8) :
    Meaning compressed.2 inputs (shaRegister position)
      ((SHAMaterialized.program.eval (compressionInputs inputs)).getD position 0) := by
  have result:=WordInlineOutputs.exact_output ingress.2 SHAMaterialized.program sha_valid shaPorts sha_ports
    inputs position (by rw [sha_arity];exact bound)
  have same:=WordInline.input_congr SHAMaterialized.program sha_valid
    (fun index=>ingress.2.values inputs (shaPorts index)) (compressionInputs inputs) (sha_input_values inputs)
  rw [same] at result
  exact result

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    SHAMaterialized.program.eval (compressionInputs inputs)++
      (List.range 64).map (fun index=>BlockIngress.byteGuard (inputs (8+index))) := by
  change outputs.map (compressed.2.values inputs)=_
  simp only [outputs,List.map_append,List.map_map,Function.comp_def]
  have sha : (List.range 8).map (fun position=>compressed.2.values inputs (shaRegister position))=
      SHAMaterialized.program.eval (compressionInputs inputs) := by
    have length : (SHAMaterialized.program.eval (compressionInputs inputs)).length=8 := by
      simp only [WordIR.Program.eval,List.length_map,sha_arity]
    apply List.ext_getElem?
    intro index
    by_cases bound : index<8
    · simp only [List.getElem?_map,List.getElem?_range bound,Option.map_some]
      have value:=(compressed_value inputs index bound).2
      rw [List.getD_eq_getElem?_getD,List.getElem?_eq_getElem (by rw [length];exact bound),Option.getD_some] at value
      rw [value,List.getElem?_eq_getElem (by rw [length];exact bound)]
    · rw [List.getElem?_eq_none (by simpa using bound),List.getElem?_eq_none (by simpa [length] using bound)]
  rw [sha]
  congr 1
  apply List.map_congr_left
  intro index member
  have bound:=List.mem_range.mp member
  have result:=meaning_extends ingress.2 compressed.2 (WordInline.builder_extends _ _ _) inputs _ _
    (ingress_value inputs (16+index) (by omega))
  rw [BlockIngress.program_meaning] at result
  have packLength : ((List.range 16).map (fun index=>BlockIngress.pack
      (ingressInputs inputs (4*index)) (ingressInputs inputs (4*index+1))
      (ingressInputs inputs (4*index+2)) (ingressInputs inputs (4*index+3)))).length=16 := by simp
  rw [PaddingStream.getD_append_cases,packLength,if_neg (by omega),Nat.add_sub_cancel_left] at result
  simpa only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some,ingressInputs] using result.2

end Core033.HashBlockProgram
