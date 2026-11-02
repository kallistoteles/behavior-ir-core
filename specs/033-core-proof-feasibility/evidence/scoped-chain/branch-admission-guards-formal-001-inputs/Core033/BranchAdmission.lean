import Core033.BranchWordEncoding
import Core033.NodeCountProgram
import Core033.WordEquality

namespace Core033.BranchAdmission
open WordIR

def left (inputs : Nat → Word) : WideControl.Pair := ⟨inputs 18,inputs 19⟩
def right (inputs : Nat → Word) : WideControl.Pair := ⟨inputs 20,inputs 21⟩
def total (inputs : Nat → Word) : WideControl.Pair := ⟨inputs 22,inputs 23⟩
def kindFlag (word : Word) : Word := WordControl.lessWord 0 word &&& WordControl.lessWord word 3

theorem kind_flag_exact (word : Word) : kindFlag word=WordControl.boolWord (decide (word.toNat=1 ∨ word.toNat=2)) := by
  rw [kindFlag,WordControl.less_word_exact,WordControl.less_word_exact,WordControl.bool_and]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [Bool.and_eq_true,decide_eq_true_eq]
  have zero : (0 : Word).toNat=0 := by decide
  have three : (3 : Word).toNat=3 := by decide
  rw [zero,three]
  omega

def flags (inputs : Nat → Word) : List Word :=
  let sum:=WideControl.add (left inputs) (right inputs)
  [kindFlag (inputs 0),ScalarRanges.flag 8 (inputs 1),
    ScalarRanges.flag 1 (inputs 24),ScalarRanges.flag 1 (inputs 25),
    WordEquality.equalWord sum.low (total inputs).low,
    WordEquality.equalWord sum.high (total inputs).high,
    NodeCounts.allowed (left inputs) (right inputs)]

def Admitted (inputs : Nat → Word) : Prop := ∀ flag∈flags inputs,flag=1

theorem bool_word_one (value : Bool) : WordControl.boolWord value=1 ↔ value=true := by
  cases value <;> decide

theorem admitted_fields (inputs : Nat → Word) (admitted : Admitted inputs) :
    ((inputs 0).toNat=1 ∨ (inputs 0).toNat=2) ∧ (inputs 1).toNat<256 ∧
    (∃ positive,BooleanValues.decode (inputs 24)=some positive) ∧
    (∃ covered,BooleanValues.decode (inputs 25)=some covered) ∧
    (total inputs).raw=(left inputs).raw+(right inputs).raw ∧ (total inputs).raw≤1048576 := by
  have all : kindFlag (inputs 0)=1 ∧ ScalarRanges.flag 8 (inputs 1)=1 ∧
      ScalarRanges.flag 1 (inputs 24)=1 ∧ ScalarRanges.flag 1 (inputs 25)=1 ∧
      WordEquality.equalWord (WideControl.add (left inputs) (right inputs)).low (total inputs).low=1 ∧
      WordEquality.equalWord (WideControl.add (left inputs) (right inputs)).high (total inputs).high=1 ∧
      NodeCounts.allowed (left inputs) (right inputs)=1 := by
    simpa [Admitted,flags] using admitted
  have kind:=all.1
  rw [kind_flag_exact,bool_word_one] at kind
  have depth:=all.2.1
  rw [ScalarRanges.flag_exact,bool_word_one] at depth
  have low:=all.2.2.2.2.1
  have high:=all.2.2.2.2.2.1
  rw [WordEquality.equal_word_exact,bool_word_one] at low high
  have bounded:=all.2.2.2.2.2.2
  rw [NodeCounts.allowed_exact,bool_word_one] at bounded
  have bound:=(of_decide_eq_true bounded)
  have same : total inputs=WideControl.add (left inputs) (right inputs) := by
    cases t : total inputs
    cases s : WideControl.add (left inputs) (right inputs)
    simp only [t,s] at low high
    have lo:=of_decide_eq_true low
    have hi:=of_decide_eq_true high
    cases lo
    cases hi
    rfl
  have totalExact : (total inputs).raw=(left inputs).raw+(right inputs).raw := by
    rw [same,NodeCounts.exact_sum _ _ bound]
  exact ⟨of_decide_eq_true kind,of_decide_eq_true depth,
    (BooleanValues.guard_admits_exactly_booleans _).mp all.2.2.1,
    (BooleanValues.guard_admits_exactly_booleans _).mp all.2.2.2.1,totalExact,by rw [totalExact];exact bound⟩

theorem admitted_original_encoding (inputs : Nat → Word) (admitted : Admitted inputs) :
    ∃ positive covered,
      BranchCodec.Framed (BranchWordEncoding.branch inputs positive covered) ∧
      BranchCodec.MetadataAdmitted (BranchWordEncoding.branch inputs positive covered) ∧
      BranchWordEncoding.emittedBytes inputs=BranchCodec.encode (BranchWordEncoding.branch inputs positive covered) := by
  obtain ⟨kind,depth,⟨positive,positiveDecoded⟩,⟨covered,coveredDecoded⟩,totalExact,bounded⟩:=admitted_fields inputs admitted
  refine ⟨positive,covered,BranchWordEncoding.represented_fields_framed inputs positive covered kind depth,
    ⟨totalExact,bounded⟩,?_⟩
  exact BranchWordEncoding.exact_original_branch_encoding inputs positive covered
    (BooleanValues.decoded_reconstructs _ _ positiveDecoded).symm
    (BooleanValues.decoded_reconstructs _ _ coveredDecoded).symm

theorem admitted_complete (inputs : Nat → Word)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (depth : (inputs 1).toNat<256)
    (positive : ∃ value,BooleanValues.decode (inputs 24)=some value)
    (covered : ∃ value,BooleanValues.decode (inputs 25)=some value)
    (same : total inputs=WideControl.add (left inputs) (right inputs))
    (bounded : (left inputs).raw+(right inputs).raw≤1048576) : Admitted inputs := by
  have positiveOne:=(BooleanValues.guard_admits_exactly_booleans (inputs 24)).mpr positive
  have coveredOne:=(BooleanValues.guard_admits_exactly_booleans (inputs 25)).mpr covered
  have kindOne : kindFlag (inputs 0)=1 := by rw [kind_flag_exact,bool_word_one];exact decide_eq_true kind
  have depthOne : ScalarRanges.flag 8 (inputs 1)=1 := by rw [ScalarRanges.flag_exact,bool_word_one];exact decide_eq_true depth
  have countOne : NodeCounts.allowed (left inputs) (right inputs)=1 := by
    rw [NodeCounts.allowed_exact,bool_word_one];exact decide_eq_true bounded
  simp [Admitted,flags,same,kindOne,depthOne,positiveOne,coveredOne,countOne,WordEquality.equal_word_exact,WordControl.boolWord]

end Core033.BranchAdmission
