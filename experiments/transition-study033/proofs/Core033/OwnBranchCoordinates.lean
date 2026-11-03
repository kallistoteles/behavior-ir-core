import Core033.OwnBranchRouting

namespace Core033.OwnBranchCoordinates
open WordIR OwnBranchRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def frameInputs (inputs : Nat → Word) (index : Nat) := routed inputs (1+index)

theorem original_kind (inputs : Nat → Word) : frameInputs inputs 0=inputs 1 := rfl
theorem controlled_phase (inputs : Nat → Word) : routed inputs 0=inputs 24 := rfl

theorem processed_exact (inputs : Nat → Word) (positive : 0<(inputs 0).toNat) :
    (frameInputs inputs 1).toNat=(inputs 0).toNat-1 := by
  change (inputs 0+4294967295).toNat=_
  rw [BitVec.toNat_add]
  change ((inputs 0).toNat+4294967295)%4294967296=(inputs 0).toNat-1
  have bound:=(inputs 0).isLt
  omega

theorem depth_exact (inputs : Nat → Word) (positive : 0<(inputs 0).toNat)
    (bounded : (inputs 0).toNat<256) :
    (PathCounterProgram.depth (frameInputs inputs 1)).toNat=256-(inputs 0).toNat := by
  rw [PathCounterProgram.depth_exact,processed_exact inputs positive,
    Nat.mod_eq_of_lt (by omega : (inputs 0).toNat-1<256)]
  omega

theorem original_root_word (inputs : Nat → Word) (index : Nat) (bound : index<16) :
    frameInputs inputs (10+index)=inputs (2+index) := by
  unfold frameInputs routed
  rw [if_neg (by omega : 1+(10+index)≠0),if_neg (by omega : 1+(10+index)≠1),
    if_neg (by omega : 1+(10+index)≠2),if_neg (by omega : ¬1+(10+index)<11),
    if_pos (by omega : 1+(10+index)<31)]
  congr 1
  omega

theorem address_zero (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    frameInputs inputs (2+index)=0 := by
  unfold frameInputs routed
  rw [if_neg (by omega : 1+(2+index)≠0),if_neg (by omega : 1+(2+index)≠1),
    if_neg (by omega : 1+(2+index)≠2),if_pos (by omega : 1+(2+index)<11)]

theorem own_positive (inputs : Nat → Word) : frameInputs inputs 30=inputs 22 := rfl
theorem synthetic_positive (inputs : Nat → Word) : frameInputs inputs 31=1 := rfl
theorem own_covered (inputs : Nat → Word) : frameInputs inputs 32=inputs 23 := rfl
theorem synthetic_covered (inputs : Nat → Word) : frameInputs inputs 33=1 := rfl

end Core033.OwnBranchCoordinates
