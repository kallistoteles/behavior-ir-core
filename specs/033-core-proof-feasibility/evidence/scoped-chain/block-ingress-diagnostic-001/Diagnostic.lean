import Core033.ControlPrimitives
import Core033.WordSequence

namespace Core033.BlockIngress
open WordIR WordStage

/-- Every supplied byte is a full u32 input. Its high 24 bits must be zero;
no implicit UInt8 truncation is permitted at this boundary. -/
def byteGuard (word : Word) : Word := WordControl.zeroWord (word.ushiftRight 8)

theorem byte_guard_exact (word : Word) :
    byteGuard word=WordControl.boolWord (decide (word.toNat<256)) := by
  unfold byteGuard
  rw [WordControl.zero_word_exact]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  constructor
  · intro zero
    have value:=congrArg BitVec.toNat zero
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow] at value
    change word.toNat/256=0 at value
    omega
  · intro bound
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.ushiftRight_eq,BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow]
    change word.toNat/256=0
    omega

theorem rotated_byte (word : Word) (bound : word.toNat<256) (rotation : Nat)
    (admitted : rotation=8 ∨ rotation=16 ∨ rotation=24) :
    word.rotateRight rotation=BitVec.ofNat 32 (word.toNat*2^(32-rotation)) := by
  apply BitVec.eq_of_toNat_eq
  rcases admitted with rfl|rfl|rfl
  all_goals simp only [BitVec.toNat_rotateRight,BitVec.toNat_ofNat,Nat.shiftRight_eq_div_pow,Nat.shiftLeft_eq]
  all_goals norm_num only [Nat.reduceMod,Nat.reduceSub,Nat.reducePow]
  all_goals rw [Nat.div_eq_of_lt (by omega),Nat.zero_or]

def pack (a b c d : Word) : Word :=
  a.rotateRight 8+b.rotateRight 16+c.rotateRight 24+d

theorem pack_exact (a b c d : Word) (ha : a.toNat<256) (hb : b.toNat<256)
    (hc : c.toNat<256) :
    pack a b c d=BitVec.ofNat 32
      (a.toNat*16777216+b.toNat*65536+c.toNat*256+d.toNat) := by
  unfold pack
  rw [rotated_byte a ha 8 (by simp),rotated_byte b hb 16 (by simp),rotated_byte c hc 24 (by simp)]
  rw [←BitVec.ofNat_toNat d,←BitVec.ofNat_add,←BitVec.ofNat_add,←BitVec.ofNat_add]
  rfl

def packExpr (offset : Nat) : WordStage.Expr :=
  .badd (.badd (.badd (.rotr (.input offset) 8) (.rotr (.input (offset+1)) 16))
    (.rotr (.input (offset+2)) 24)) (.input (offset+3))

def guardExpr (offset : Nat) : WordStage.Expr :=
  ControlPrimitives.zero (.shr (.input offset) 8)

theorem pack_expression (inputs : Nat → Word) (offset : Nat) :
    (packExpr offset).eval inputs=pack (inputs offset) (inputs (offset+1))
      (inputs (offset+2)) (inputs (offset+3)) := rfl

theorem guard_expression (inputs : Nat → Word) (offset : Nat) :
    (guardExpr offset).eval inputs=byteGuard (inputs offset) := rfl

def expressions : List WordStage.Expr :=
  (List.range 16).map (fun index=>packExpr (4*index))++
    (List.range 64).map guardExpr

def program : WordIR.Program := WordSequence.program 64 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 64 := by
  intro expression member
  simp only [expressions,List.mem_append,List.mem_map,List.mem_range] at member
  rcases member with ⟨index,bound,rfl⟩|⟨index,bound,rfl⟩
  · simp only [packExpr,WordStage.Expr.Bounded]
    omega
  · simp only [guardExpr,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,WordStage.Expr.Bounded]
    omega

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=(List.range 16).map (fun index=>pack (inputs (4*index))
      (inputs (4*index+1)) (inputs (4*index+2)) (inputs (4*index+3)))++
      (List.range 64).map (fun index=>byteGuard (inputs index)) := by
  rw [program,WordSequence.program_meaning 64 expressions expressions_bounded]
  simp only [expressions,List.map_append,List.map_map,Function.comp_def,pack_expression,guard_expression]

end Core033.BlockIngress
