import Core033.Utf8Encoding

namespace Core033.Utf8Stream
open Utf8Encoding

/-- Witnesses select valid scalars, but the bytes remain authoritative. Every
scalar consumes exactly its canonical bytes; the endpoint rejects a suffix. -/
def consume : List Witness → Codec.Bytes → Option Codec.Bytes
  | [],input => some input
  | witness::rest,input => do
      let (actual,remaining) ← Codec.readBytes (encoding witness.word).length input
      if actual=encoding witness.word then consume rest remaining else none

theorem read_bytes_shape (count : Nat) (input actual remaining : Codec.Bytes)
    (read : Codec.readBytes count input=some (actual,remaining)) :
    actual.length=count ∧ input=actual++remaining := by
  unfold Codec.readBytes at read
  split at read
  · rename_i bound
    have pair:=Option.some.inj read
    cases pair
    constructor
    · simp only [List.length_take,Nat.min_eq_left bound]
    · exact (List.take_append_drop count input).symm
  · cases read

theorem consume_suffix (witnesses : List Witness) (suffix : Codec.Bytes) :
    consume witnesses (witnessBytes witnesses++suffix)=some suffix := by
  induction witnesses with
  | nil => rfl
  | cons witness rest ih =>
    simp only [witnessBytes,List.flatMap_cons,List.append_assoc,consume,
      Codec.read_bytes_suffix,Bind.bind,Option.bind,if_pos rfl]
    exact ih

theorem consume_sound (witnesses : List Witness) (input suffix : Codec.Bytes)
    (accepted : consume witnesses input=some suffix) : input=witnessBytes witnesses++suffix := by
  induction witnesses generalizing input with
  | nil => exact Option.some.inj accepted
  | cons witness rest ih =>
    unfold consume at accepted
    cases read : Codec.readBytes (encoding witness.word).length input with
    | none => simp [read,Bind.bind,Option.bind] at accepted
    | some pair =>
      rcases pair with ⟨actual,remaining⟩
      simp only [read,Bind.bind,Option.bind] at accepted
      split at accepted
      · rename_i same
        have shape:=(read_bytes_shape _ _ _ _ read).2
        rw [same,ih remaining accepted] at shape
        simpa only [witnessBytes,List.flatMap_cons,List.append_assoc] using shape
      · cases accepted

theorem consume_exact (witnesses : List Witness) (input suffix : Codec.Bytes) :
    consume witnesses input=some suffix ↔ input=witnessBytes witnesses++suffix := by
  constructor
  · exact consume_sound witnesses input suffix
  · intro same
    rw [same]
    exact consume_suffix witnesses suffix

def verifyText (witnesses : List Witness) (input : Codec.Bytes) : Option String := do
  let suffix ← consume witnesses input
  if suffix=[] then some (witnessText witnesses) else none

theorem verify_exact (witnesses : List Witness) (input : Codec.Bytes) (text : String) :
    verifyText witnesses input=some text ↔ input=witnessBytes witnesses ∧ text=witnessText witnesses := by
  unfold verifyText
  cases consumed : consume witnesses input with
  | none =>
    simp only [consumed,Bind.bind,Option.bind,reduceCtorEq,false_iff,not_and]
    intro same
    have yes:=consume_suffix witnesses []
    simp only [List.append_nil] at yes
    rw [←same,consumed] at yes
    cases yes
  | some suffix =>
    simp only [consumed,Bind.bind,Option.bind]
    have shape:=consume_sound witnesses input suffix consumed
    by_cases empty : suffix=[]
    · rw [if_pos empty]
      simp only [empty,List.append_nil] at shape
      simp [shape,eq_comm]
    · rw [if_neg empty]
      simp only [reduceCtorEq,false_iff,not_and]
      intro same
      have size:=congrArg List.length shape
      simp only [same,List.length_append] at size
      have : suffix=[] := by
        cases suffix with
        | nil => rfl
        | cons head tail => simp only [List.length_cons] at size;omega
      exact False.elim (empty this)

theorem verified_original_decoder (witnesses : List Witness) (input : Codec.Bytes) (text : String)
    (accepted : verifyText witnesses input=some text) : Codec.decodeText input=some text := by
  have exactness:=(verify_exact witnesses input text).mp accepted
  rw [exactness.1,exactness.2]
  exact accepted_text_decode witnesses

theorem every_text_verifiable (text : String) :
    ∃ witnesses,verifyText witnesses (Codec.textBytes text)=some text := by
  obtain ⟨witnesses,sameText,sameBytes⟩:=text_witness_complete text
  exact ⟨witnesses,(verify_exact witnesses _ text).mpr ⟨sameBytes.symm,sameText.symm⟩⟩

end Core033.Utf8Stream
