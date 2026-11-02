import Core033.WordPorts

/- Four independent full64-bit public limbs. Each has64 Boolean constraints and
one packing constraint; digest identity uses all256 bits without field reduction. -/
namespace Core033.DigestPorts
open R1CS

def packed (base : Nat) (limb : Fin 4) : Nat := base+65*limb.val
def bits (base : Nat) (limb : Fin 4) : Nat := packed base limb+1

def limbRows (p base : Nat) (limb : Fin 4) : List Row :=
  (List.range 64).map (fun bit=>WordPorts.booleanRow p (bits base limb+bit))++
    [WordPorts.packingRow p (packed base limb) (bits base limb) 64]

def rows (p base : Nat) : List Row := (List.finRange 4).flatMap (limbRows p base)

theorem all_limb_rows {F : Type} [Field F] (p base : Nat) (valuation : Nat → F)
    (satisfied : ∀ row∈rows p base,row.satisfies valuation) (limb : Fin 4) :
    ∀ row∈limbRows p base limb,row.satisfies valuation := by
  intro row member
  exact satisfied row (List.mem_flatMap.mpr ⟨limb,List.mem_finRange limb,member⟩)

theorem four_range_checked_limbs {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (base : Nat) (valuation : Nat → F) (one : valuation 0=1)
    (satisfied : ∀ row∈rows p base,row.satisfies valuation) :
    ∃ limbs : SHA256.Limbs,∀ limb,
      valuation (packed base limb)=((limbs limb).toNat : F) ∧
      ∀ bit,bit<64 → valuation (bits base limb+bit)=bitValue ((limbs limb).getLsbD bit) := by
  classical
  have decoded : ∀ limb : Fin 4,∃ word : BitVec 64,
      valuation (packed base limb)=(word.toNat : F) ∧
      ∀ bit,bit<64 → valuation (bits base limb+bit)=bitValue (word.getLsbD bit) := by
    intro limb
    have all:=all_limb_rows p base valuation satisfied limb
    apply WordPorts.full_port_sound large valuation (packed base limb) (bits base limb) 64 (by decide) one
    · intro bit bound
      apply all
      exact List.mem_append_left _ (List.mem_map.mpr ⟨bit,List.mem_range.mpr bound,rfl⟩)
    · exact all _ (List.mem_append_right _ (by simp))
  exact ⟨fun limb=>Classical.choose (decoded limb),fun limb=>Classical.choose_spec (decoded limb)⟩

theorem all_four_limbs_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (base : Nat) (valuation : Nat → F) (one : valuation 0=1)
    (limbs : SHA256.Limbs)
    (encoded : ∀ limb,valuation (packed base limb)=((limbs limb).toNat : F) ∧
      ∀ bit,bit<64 → valuation (bits base limb+bit)=bitValue ((limbs limb).getLsbD bit)) :
    ∀ row∈rows p base,row.satisfies valuation := by
  intro row member
  obtain ⟨limb,inside,rowMember⟩:=List.mem_flatMap.mp member
  have all:=WordPorts.full_port_complete large valuation (packed base limb) (bits base limb) 64
    (by decide) one (limbs limb) (encoded limb).1 (encoded limb).2
  rcases List.mem_append.mp rowMember with boolean|packing
  · obtain ⟨bit,bound,rfl⟩:=List.mem_map.mp boolean
    exact all.1 bit (List.mem_range.mp bound)
  · simpa only [List.mem_singleton] using packing ▸ all.2

theorem public_values_bind_all_digest_bytes {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (a b : SHA256.Digest)
    (same : ∀ limb,((SHA256.digestLimbs a limb).toNat : F)=((SHA256.digestLimbs b limb).toNat : F)) : a=b := by
  apply SHA256.all_limbs_preserve_full_digest
  funext limb
  exact WordPorts.full_port_unique large 64 (by decide) _ _ (same limb)

theorem exactly_four_ranges (p base : Nat) : (rows p base).length=260 := by
  simp [rows,limbRows]

theorem distinct_packed_ports (base : Nat) (a b : Fin 4) : packed base a=packed base b ↔ a=b := by
  constructor
  · intro same
    apply Fin.ext
    unfold packed at same
    omega
  · intro same;rw [same]

end Core033.DigestPorts
