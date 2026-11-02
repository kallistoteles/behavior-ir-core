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
  all_goals simp only [show 8%32=8 by decide,show 16%32=16 by decide,show 24%32=24 by decide]
  all_goals rw [Nat.div_eq_of_lt (by omega),Nat.zero_or]

def pack (a b c d : Word) : Word :=
  a.rotateRight 8+b.rotateRight 16+c.rotateRight 24+d

theorem pack_exact (a b c d : Word) (ha : a.toNat<256) (hb : b.toNat<256)
    (hc : c.toNat<256) :
    pack a b c d=BitVec.ofNat 32
      (a.toNat*16777216+b.toNat*65536+c.toNat*256+d.toNat) := by
  unfold pack
  rw [rotated_byte a ha 8 (by simp),rotated_byte b hb 16 (by simp),rotated_byte c hc 24 (by simp)]
  rw [←(show BitVec.ofNat 32 d.toNat=d from BitVec.eq_of_toNat_eq (Nat.mod_eq_of_lt d.isLt)),←BitVec.ofNat_add,←BitVec.ofNat_add,←BitVec.ofNat_add]
  simp only [BitVec.toNat_ofNat,Nat.mod_eq_of_lt d.isLt]
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
  · simp [guardExpr,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,WordStage.Expr.Bounded,bound]

theorem program_meaning (inputs : Nat → Word) :
    program.eval inputs=(List.range 16).map (fun index=>pack (inputs (4*index))
      (inputs (4*index+1)) (inputs (4*index+2)) (inputs (4*index+3)))++
      (List.range 64).map (fun index=>byteGuard (inputs index)) := by
  rw [program,WordSequence.program_meaning 64 expressions expressions_bounded]
  simp only [expressions,List.map_append,List.map_map,Function.comp_def,pack_expression,guard_expression]

def byteInputs (bytes : SHA256.Bytes) (index : Nat) : Word :=
  BitVec.ofNat 32 (bytes.getD index 0).toNat

theorem byte_inputs_nat (bytes : SHA256.Bytes) (index : Nat) :
    (byteInputs bytes index).toNat=(bytes.getD index 0).toNat := by
  apply Nat.mod_eq_of_lt
  have bound:=(bytes.getD index 0).toNat_lt_size
  change (bytes.getD index 0).toNat<256 at bound
  omega

theorem byte_inputs_bounded (bytes : SHA256.Bytes) (index : Nat) :
    (byteInputs bytes index).toNat<256 := by
  rw [byte_inputs_nat]
  exact (bytes.getD index 0).toNat_lt_size

theorem byte_input_pack (bytes : SHA256.Bytes) (offset : Nat) :
    pack (byteInputs bytes offset) (byteInputs bytes (offset+1))
      (byteInputs bytes (offset+2)) (byteInputs bytes (offset+3))=
      SHA256.wordFromBytes bytes offset := by
  rw [pack_exact _ _ _ _ (byte_inputs_bounded bytes offset)
    (byte_inputs_bounded bytes (offset+1)) (byte_inputs_bounded bytes (offset+2))]
  simp only [byte_inputs_nat,SHA256.wordFromBytes]

theorem byte_input_guard (bytes : SHA256.Bytes) (index : Nat) :
    byteGuard (byteInputs bytes index)=1 := by
  rw [byte_guard_exact]
  simp only [decide_eq_true (byte_inputs_bounded bytes index),WordControl.boolWord]

theorem accepted_byte_is_bounded (word : Word) (accepted : byteGuard word=1) :
    word.toNat<256 := by
  by_cases bound : word.toNat<256
  · exact bound
  · rw [byte_guard_exact] at accepted
    simp [bound,WordControl.boolWord] at accepted

theorem complete_block_ingress (bytes : SHA256.Bytes) :
    program.eval (byteInputs bytes)=
      (List.range 16).map (fun index=>SHA256.wordFromBytes bytes (4*index))++
        List.replicate 64 1 := by
  rw [program_meaning]
  simp only [byte_input_pack,byte_input_guard,List.map_const,List.length_range]

end Core033.BlockIngress
