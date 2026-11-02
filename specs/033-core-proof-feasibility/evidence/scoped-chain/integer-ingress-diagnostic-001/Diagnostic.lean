import Core033.BlockIngress
import Core033.Codec

namespace Core033.IntegerIngress
open WordIR WordStage

def packLE (a b c d : Word) : Word := BlockIngress.pack d c b a

theorem pack_le_exact (a b c d : Word) (ha : a.toNat<256) (hb : b.toNat<256)
    (hc : c.toNat<256) (hd : d.toNat<256) :
    (packLE a b c d).toNat=a.toNat+256*b.toNat+65536*c.toNat+16777216*d.toNat := by
  rw [packLE,BlockIngress.pack_exact d c b a hd hc hb,BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

def packExpr (offset : Nat) : WordStage.Expr :=
  .badd (.badd (.badd (.rotr (.input (offset+3)) 8) (.rotr (.input (offset+2)) 16))
    (.rotr (.input (offset+1)) 24)) (.input offset)

def expressions : List WordStage.Expr :=
  [packExpr 0,packExpr 4]++(List.range 8).map BlockIngress.guardExpr

def program : WordIR.Program := WordSequence.program 8 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 8 := by
  simp only [expressions,List.forall_mem_append,List.forall_mem_cons,List.forall_mem_nil,and_true,List.forall_mem_map]
  constructor
  · simp [packExpr,WordStage.Expr.Bounded]
  · intro index member
    have bound:=List.mem_range.mp member
    simpa only [BlockIngress.guardExpr,ControlPrimitives.zero,WordControl.zeroExpr,
      WordStage.Expr.Bounded,and_true,and_self] using bound

def expected (inputs : Nat → Word) : List Word :=
  [packLE (inputs 0) (inputs 1) (inputs 2) (inputs 3),
    packLE (inputs 4) (inputs 5) (inputs 6) (inputs 7)]++
      (List.range 8).map (fun index=>BlockIngress.byteGuard (inputs index))

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 8 expressions expressions_bounded]
  simp only [expressions,List.map_append,List.map_cons,List.map_nil,List.map_map,
    Function.comp_def,BlockIngress.guard_expression]
  rfl

theorem full_u64_exact (inputs : Nat → Word) (bounded : ∀ index,index<8 → (inputs index).toNat<256) :
    (packLE (inputs 0) (inputs 1) (inputs 2) (inputs 3)).toNat+
      4294967296*(packLE (inputs 4) (inputs 5) (inputs 6) (inputs 7)).toNat=
        Codec.decodeLE ((List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat)) := by
  rw [pack_le_exact _ _ _ _ (bounded 0 (by decide)) (bounded 1 (by decide))
    (bounded 2 (by decide)) (bounded 3 (by decide)),
    pack_le_exact _ _ _ _ (bounded 4 (by decide)) (bounded 5 (by decide))
    (bounded 6 (by decide)) (bounded 7 (by decide))]
  change _=Codec.decodeLE [UInt8.ofNat (inputs 0).toNat,UInt8.ofNat (inputs 1).toNat,
    UInt8.ofNat (inputs 2).toNat,UInt8.ofNat (inputs 3).toNat,UInt8.ofNat (inputs 4).toNat,
    UInt8.ofNat (inputs 5).toNat,UInt8.ofNat (inputs 6).toNat,UInt8.ofNat (inputs 7).toNat]
  simp only [Codec.decodeLE,UInt8.toNat_ofNat',Nat.mod_eq_of_lt (bounded 0 (by decide)),
    Nat.mod_eq_of_lt (bounded 1 (by decide)),Nat.mod_eq_of_lt (bounded 2 (by decide)),
    Nat.mod_eq_of_lt (bounded 3 (by decide)),Nat.mod_eq_of_lt (bounded 4 (by decide)),
    Nat.mod_eq_of_lt (bounded 5 (by decide)),Nat.mod_eq_of_lt (bounded 6 (by decide)),
    Nat.mod_eq_of_lt (bounded 7 (by decide))]
  omega

end Core033.IntegerIngress
