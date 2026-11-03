import Core033.ScalarRanges
import Core033.ControlPrimitives

namespace Core033.WordAddressCoordinates
open WordIR WordStage

def index (depth : Word) : Word := depth.ushiftRight 5
def amount (depth : Word) : Word := ~~~depth &&& 31

theorem index_exact (depth : Word) : (index depth).toNat=depth.toNat/32 := by
  simp only [index,BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]

theorem amount_exact (depth : Word) : (amount depth).toNat=31-depth.toNat%32 := by
  simp only [amount,BitVec.toNat_and]
  change (~~~depth).toNat &&& (2^5-1)=_
  rw [Nat.and_two_pow_sub_one_eq_mod,BitVec.toNat_not]
  have bound:=depth.isLt
  change (4294967295-depth.toNat)%32=31-depth.toNat%32
  omega

theorem amount_bounded (depth : Word) : (amount depth).toNat<32 := by
  rw [amount_exact]
  omega

theorem index_bounded (depth : Word) (bound : depth.toNat<256) : (index depth).toNat<8 := by
  rw [index_exact]
  omega

def expressions : List Expr := [.shr (.input 8) 5,.band (.bnot (.input 8)) (.literal 31),
  ControlPrimitives.zero (.shr (.input 8) 8)]
def program : Program := WordSequence.program 9 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 9 := by
  simp [expressions,Expr.Bounded,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry]

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=[index (inputs 8),amount (inputs 8),ScalarRanges.flag 8 (inputs 8)] := by
  rw [program,WordSequence.program_meaning 9 expressions expressions_bounded]
  rfl

theorem admission_exact (inputs : Nat → Word) :
    (program.eval inputs).getD 2 0=WordControl.boolWord (decide ((inputs 8).toNat<256)) := by
  rw [program_meaning]
  exact ScalarRanges.flag_exact _ _

end Core033.WordAddressCoordinates
