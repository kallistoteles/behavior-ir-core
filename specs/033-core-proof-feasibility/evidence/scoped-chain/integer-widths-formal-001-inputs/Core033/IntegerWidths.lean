import Core033.IntegerIngress

namespace Core033.IntegerWidths

/-- Zero fill is only an arithmetic specialization after the strict reader has
obtained the declared field width. It never authorizes a truncated field. -/
def sample (count : Nat) (bytes : Codec.Bytes) : Codec.Bytes :=
  (List.range count).map (fun index=>bytes.getD index 0)

theorem sample_cons (count : Nat) (byte : UInt8) (bytes : Codec.Bytes) :
    sample (count+1) (byte::bytes)=byte::sample count bytes := by
  simp only [sample,List.range_succ_eq_map,List.map_cons,List.map_map,Function.comp_def,
    List.getD_cons_zero,List.getD_cons_succ,Nat.succ_eq_add_one]

theorem sample_nil_decodes_zero (count : Nat) : Codec.decodeLE (sample count [])=0 := by
  induction count with
  | zero => rfl
  | succ count ih =>
    have expanded : sample (count+1) []=(0 : UInt8)::sample count [] := by
      simp [sample,List.range_succ_eq_map,List.map_map]
    rw [expanded,Codec.decodeLE,ih]
    rfl

theorem decoded_padding_exact (count : Nat) (bytes : Codec.Bytes) (bounded : bytes.length≤count) :
    Codec.decodeLE (sample count bytes)=Codec.decodeLE bytes := by
  induction count generalizing bytes with
  | zero =>
    cases bytes with
    | nil => rfl
    | cons head tail => simp only [List.length_cons] at bounded;omega
  | succ count ih =>
    cases bytes with
    | nil => exact sample_nil_decodes_zero _
    | cons head tail =>
      rw [sample_cons,Codec.decodeLE,Codec.decodeLE,ih tail (by simp only [List.length_cons] at bounded;omega)]

theorem exact_byte_inputs (bytes : Codec.Bytes) :
    (List.range 8).map (fun index=>UInt8.ofNat (BlockIngress.byteInputs bytes index).toNat)=sample 8 bytes := by
  unfold sample
  apply List.map_congr_left
  intro index member
  rw [BlockIngress.byte_inputs_nat]
  apply UInt8.toNat.inj
  rw [UInt8.toNat_ofNat',Nat.mod_eq_of_lt (bytes.getD index 0).toNat_lt_size]

theorem actual_program_decodes_width (bytes : Codec.Bytes) (bounded : bytes.length≤8) :
    (((IntegerIngress.program.eval (BlockIngress.byteInputs bytes)).getD 0 0).toNat+
      4294967296*((IntegerIngress.program.eval (BlockIngress.byteInputs bytes)).getD 1 0).toNat)=
        Codec.decodeLE bytes := by
  rw [IntegerIngress.program_meaning]
  change (IntegerIngress.packLE _ _ _ _).toNat+4294967296*(IntegerIngress.packLE _ _ _ _).toNat=_
  rw [IntegerIngress.full_u64_exact (BlockIngress.byteInputs bytes)
    (fun index _=>BlockIngress.byte_inputs_bounded bytes index),exact_byte_inputs]
  exact decoded_padding_exact 8 bytes bounded

theorem fixed_widths_supported (bytes : Codec.Bytes)
    (width : bytes.length=1 ∨ bytes.length=2 ∨ bytes.length=4 ∨ bytes.length=8) :
    (((IntegerIngress.program.eval (BlockIngress.byteInputs bytes)).getD 0 0).toNat+
      4294967296*((IntegerIngress.program.eval (BlockIngress.byteInputs bytes)).getD 1 0).toNat)=
        Codec.decodeLE bytes :=
  actual_program_decodes_width bytes (by omega)

end Core033.IntegerWidths
