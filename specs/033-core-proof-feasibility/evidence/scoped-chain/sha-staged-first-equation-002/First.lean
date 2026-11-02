import Core033.SHA256Compiled
namespace Core033.SHAMaterialized
open WordIR WordStage
set_option Elab.async false
set_option maxHeartbeats 4000000
def ops0 : List WordIR.Op := []
attribute [irreducible] ops0
theorem len0 : ops0.length=0 := rfl
def b0 : Builder := ⟨24,ops0⟩
def w0 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
def ops1 : List WordIR.Op := [.badd 35 8,.badd 29 34,.bxor 32 33,.shr 9 3,.bxor 30 31,.rotr 9 18,.rotr 9 7,.badd 28 17,.bxor 26 27,.shr 22 10,.bxor 24 25,.rotr 22 19,.rotr 22 17]++ops0
attribute [irreducible] ops1
theorem len1 : ops1.length=13 := by simp only [ops1,List.length_append,List.length_cons,List.length_nil,len0]
def b1 : Builder := ⟨24,ops1⟩
def w1 : Array Nat := #[8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,36]
theorem step1 : SHA256Schedule.extend b0 w0 = (w1,b1) := by
  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w0,b0,WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len0]
  unfold w1 b1 ops1
  rfl
end Core033.SHAMaterialized
