import Core033.ParentMetadataProgram
import Core033.BranchCheckedProgram
import Core033.WordInlineOutputs

/- Child digests/counts/flags are the only inputs. The parent total/aggregate
flags are computed, then the exact same registers feed the frozen branch bytes
and admission checks. Child authentication and path direction stay explicit. -/
namespace Core033.ParentBranchProgram
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 26
def metadataPorts (index : Nat) : Nat := 18+index
def metadata := WordInline.inline initial ParentMetadataProgram.program metadataPorts
def metadataRegister (position : Nat) := WordInlineOutputs.register initial ParentMetadataProgram.program metadataPorts position

def branchPorts (index : Nat) : Nat :=
  if index<22 then index else metadataRegister (if index=22 then 0 else if index=23 then 1 else if index=24 then 3 else 4)
def branch := WordInline.inline metadata.2 BranchCheckedProgram.program branchPorts

def program : Program := ⟨26,branch.2.operations,
  branch.1++[metadataRegister 2,metadataRegister 5,metadataRegister 6,metadataRegister 7,metadataRegister 8]⟩

theorem metadata_valid : ParentMetadataProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem branch_valid : BranchCheckedProgram.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

theorem metadata_arity : ParentMetadataProgram.program.outputs.length=9 := by core033_kernel_decide

theorem metadata_ports : ∀ index,index<ParentMetadataProgram.program.inputCount → metadataPorts index<initial.next := by
  intro index bound
  change index<8 at bound
  change 18+index<26
  omega

theorem metadata_register_bound (position : Nat) (bound : position<9) : metadataRegister position<metadata.2.next :=
  (WordInlineOutputs.exact_output initial ParentMetadataProgram.program metadata_valid metadataPorts metadata_ports
    (fun _=>0) position (by rw [metadata_arity];exact bound)).1

theorem branch_ports : ∀ index,index<BranchCheckedProgram.program.inputCount → branchPorts index<metadata.2.next := by
  intro index bound
  by_cases original : index<22
  · simp only [branchPorts,if_pos original]
    have nextBound:=extends_next initial metadata.2 (WordInline.builder_extends _ _ _)
    change 26≤metadata.2.next at nextBound
    omega
  · simp only [branchPorts,if_neg original]
    apply metadata_register_bound
    split <;> (try split) <;> (try split) <;> decide

def metadataInputs (inputs : Nat → Word) (index : Nat) : Word := inputs (18+index)
def branchInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index<22 then inputs index else
    (ParentMetadataProgram.expected (metadataInputs inputs)).getD
      (if index=22 then 0 else if index=23 then 1 else if index=24 then 3 else 4) 0

theorem metadata_value (inputs : Nat → Word) (position : Nat) (bound : position<9) :
    Meaning metadata.2 inputs (metadataRegister position)
      ((ParentMetadataProgram.expected (metadataInputs inputs)).getD position 0) := by
  have result:=WordInlineOutputs.exact_output initial ParentMetadataProgram.program metadata_valid metadataPorts metadata_ports
    inputs position (by rw [metadata_arity];exact bound)
  simpa only [ParentMetadataProgram.program_meaning] using result

theorem branch_input_values (inputs : Nat → Word) (index : Nat) :
    metadata.2.values inputs (branchPorts index)=branchInputs inputs index := by
  by_cases original : index<22
  · simp only [branchPorts,branchInputs,if_pos original]
    exact extends_values initial metadata.2 (WordInline.builder_extends _ _ _) inputs index (by change index<26;omega)
  · simp only [branchPorts,branchInputs,if_neg original]
    apply (metadata_value inputs _ _).2
    split <;> (try split) <;> (try split) <;> decide

theorem branch_meaning (inputs : Nat → Word) :
    branch.1.map (branch.2.values inputs)=BranchCheckedProgram.program.eval (branchInputs inputs) := by
  have result:=WordInline.complete_meaning metadata.2 BranchCheckedProgram.program branch_valid branchPorts branch_ports inputs
  have same : (fun index=>metadata.2.values inputs (branchPorts index))=branchInputs inputs := funext (branch_input_values inputs)
  rw [same] at result
  exact result

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    BranchCheckedProgram.program.eval (branchInputs inputs)++
      [2,5,6,7,8].map (fun position=>(ParentMetadataProgram.expected (metadataInputs inputs)).getD position 0) := by
  change (branch.1++[metadataRegister 2,metadataRegister 5,metadataRegister 6,metadataRegister 7,metadataRegister 8]).map
    (branch.2.values inputs)=_
  rw [List.map_append,branch_meaning]
  have kept (position : Nat) (bound : position<9) :=
    meaning_extends metadata.2 branch.2 (WordInline.builder_extends _ _ _) inputs _ _ (metadata_value inputs position bound)
  simp only [List.map_cons,List.map_nil,(kept 2 (by decide)).2,(kept 5 (by decide)).2,
    (kept 6 (by decide)).2,(kept 7 (by decide)).2,(kept 8 (by decide)).2]

end Core033.ParentBranchProgram
