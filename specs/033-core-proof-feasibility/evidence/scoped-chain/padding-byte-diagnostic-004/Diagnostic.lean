import Core033.WordEquality
import Core033.PaddingStream

namespace Core033.PaddingByte
open WordIR WordStage

def choose (condition yes no : Word) : Word := ControlPrimitives.selectRaw condition yes no

theorem choose_bool (condition : Bool) (yes no : Word) :
    choose (WordControl.boolWord condition) yes no=(if condition then yes else no) := by
  exact WordControl.select_word_exact condition yes no

def chooseEqual (a b yes no : Word) : Word := choose (WordEquality.equalWord a b) yes no

theorem choose_equal (a b yes no : Word) : chooseEqual a b yes no=(if a=b then yes else no) := by
  rw [chooseEqual,WordEquality.equal_word_exact,choose_bool]
  simp only [decide_eq_true_eq]

def totalMinus (length : Word) (amount : Nat) : Word :=
  PaddingWords.totalSize length+BitVec.ofNat 32 (4294967296-amount)

theorem total_minus_nat (length : Word) (profile : length.toNat≤1073741824)
    (amount : Nat) (positive : 0<amount) (small : amount≤8) :
    (totalMinus length amount).toNat=(PaddingWords.totalSize length).toNat-amount := by
  have total:=PaddingWords.total_size_exact length profile
  have zeros:=SHA256.zero_count_bound length.toNat
  simp only [totalMinus,BitVec.toNat_add,BitVec.toNat_ofNat]
  change ((PaddingWords.totalSize length).toNat+(4294967296-amount)%4294967296)%4294967296=_
  omega

theorem word_equal_nat (a b : Word) : a=b ↔ a.toNat=b.toNat := by
  constructor
  · intro same;rw [same]
  · exact BitVec.eq_of_toNat_eq

theorem choose_equal_position (length position yes no : Word)
    (profile : length.toNat≤1073741824) (amount : Nat) (positive : 0<amount) (small : amount≤8) :
    chooseEqual position (totalMinus length amount) yes no=
      if position.toNat=(PaddingWords.totalSize length).toNat-amount then yes else no := by
  rw [choose_equal,word_equal_nat position (totalMinus length amount),total_minus_nat length profile amount positive small]

def suffixWord (length position : Word) : Word :=
  chooseEqual position (totalMinus length 5) (PaddingWords.bitLengthHigh length)
    (chooseEqual position (totalMinus length 4) (LengthBytes.lowByte (length.ushiftRight 21))
      (chooseEqual position (totalMinus length 3) (LengthBytes.lowByte (length.ushiftRight 13))
        (chooseEqual position (totalMinus length 2) (LengthBytes.lowByte (length.ushiftRight 5))
          (chooseEqual position (totalMinus length 1) (LengthBytes.lowByte (PaddingWords.bitLengthLow length)) 0))))

theorem suffix_word_meaning (length position : Word) (profile : length.toNat≤1073741824) :
    suffixWord length position=
      if position.toNat=(PaddingWords.totalSize length).toNat-5 then PaddingWords.bitLengthHigh length
      else if position.toNat=(PaddingWords.totalSize length).toNat-4 then LengthBytes.lowByte (length.ushiftRight 21)
      else if position.toNat=(PaddingWords.totalSize length).toNat-3 then LengthBytes.lowByte (length.ushiftRight 13)
      else if position.toNat=(PaddingWords.totalSize length).toNat-2 then LengthBytes.lowByte (length.ushiftRight 5)
      else if position.toNat=(PaddingWords.totalSize length).toNat-1 then LengthBytes.lowByte (PaddingWords.bitLengthLow length)
      else 0 := by
  unfold suffixWord
  rw [choose_equal_position length position _ _ profile 5 (by decide) (by decide),
    choose_equal_position length position _ _ profile 4 (by decide) (by decide),
    choose_equal_position length position _ _ profile 3 (by decide) (by decide),
    choose_equal_position length position _ _ profile 2 (by decide) (by decide),
    choose_equal_position length position _ _ profile 1 (by decide) (by decide)]

theorem suffix_as_length_words (length position : Word) (profile : length.toNat≤1073741824)
    (within : position.toNat<(PaddingWords.totalSize length).toNat) :
    suffixWord length position=
      if (PaddingWords.totalSize length).toNat-8≤position.toNat
      then (LengthBytes.words length).getD (position.toNat-((PaddingWords.totalSize length).toNat-8)) 0
      else 0 := by
  rw [suffix_word_meaning length position profile]
  have total:=PaddingWords.total_size_exact length profile
  by_cases located : (PaddingWords.totalSize length).toNat-8≤position.toNat
  · have offsetBound : position.toNat-((PaddingWords.totalSize length).toNat-8)<8 := by omega
    have cases : position.toNat-((PaddingWords.totalSize length).toNat-8)=0 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=1 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=2 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=3 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=4 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=5 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=6 ∨
        position.toNat-((PaddingWords.totalSize length).toNat-8)=7 := by omega
    rcases cases with h|h|h|h|h|h|h|h
    all_goals simp (disch := omega) [located,h,LengthBytes.words]
  · simp (disch := omega) [located]

def byteWord (length position raw : Word) : Word :=
  choose (WordControl.lessWord position length) raw (chooseEqual position length 128 (suffixWord length position))

theorem byte_word_branches (length position raw : Word) :
    byteWord length position raw=
      if position.toNat<length.toNat then raw
      else if position.toNat=length.toNat then 128 else suffixWord length position := by
  rw [byteWord,WordControl.less_word_exact,choose_bool,choose_equal,word_equal_nat position length]
  simp only [decide_eq_true_eq]

def encodeByte (byte : UInt8) : Word := BitVec.ofNat 32 byte.toNat

theorem encode_byte_word (word : Word) (bound : word.toNat<256) :
    encodeByte (UInt8.ofNat word.toNat)=word := by
  apply BitVec.eq_of_toNat_eq
  simp only [encodeByte,BitVec.toNat_ofNat,UInt8.toNat_ofNat']
  rw [Nat.mod_eq_of_lt bound,Nat.mod_eq_of_lt word.isLt]

theorem length_word_byte (length : Word) (index : Nat) :
    (LengthBytes.words length).getD index 0=encodeByte ((SHA256.lengthBytes length.toNat).getD index 0) := by
  have exactBytes:=congrArg (fun bytes : List UInt8=>bytes.getD index 0) (LengthBytes.exact_length_bytes length)
  have mapped : ((LengthBytes.words length).map (fun word=>UInt8.ofNat word.toNat)).getD index 0=
      UInt8.ofNat ((LengthBytes.words length).getD index 0).toNat := by
    simp only [List.getD_eq_getElem?_getD,List.getElem?_map]
    cases (LengthBytes.words length)[index]? <;> rfl
  rw [mapped] at exactBytes
  have bounded : ((LengthBytes.words length).getD index 0).toNat<256 := by
    cases found : (LengthBytes.words length)[index]? with
    | none =>
      simp only [List.getD_eq_getElem?_getD,found,Option.getD_none]
      change 0<256;decide
    | some word =>
      simp only [List.getD_eq_getElem?_getD,found,Option.getD_some]
      exact LengthBytes.words_are_bytes length word (List.mem_of_getElem? found)
  rw [←exactBytes]
  exact (encode_byte_word _ bounded).symm

theorem exact_padding_byte (bytes : SHA256.Bytes) (length position raw : Word)
    (represented : length.toNat=bytes.length) (profile : length.toNat≤1073741824)
    (within : position.toNat<(PaddingWords.totalSize length).toNat)
    (rawExact : position.toNat<length.toNat → raw=encodeByte (bytes.getD position.toNat 0)) :
    byteWord length position raw=encodeByte (PaddingStream.byteAt bytes position.toNat) := by
  rw [byte_word_branches]
  by_cases dataByte : position.toNat<length.toNat
  · rw [if_pos dataByte,rawExact dataByte]
    simp only [PaddingStream.byteAt,←represented,if_pos dataByte]
  · rw [if_neg dataByte]
    by_cases marker : position.toNat=length.toNat
    · rw [if_pos marker]
      simp only [PaddingStream.byteAt,←represented,if_neg dataByte,if_pos marker]
      rfl
    · rw [if_neg marker,suffix_as_length_words length position profile within]
      have total:=PaddingWords.total_size_exact length profile
      have ending : PaddingStream.dataEnd bytes=(PaddingWords.totalSize length).toNat-8 := by
        unfold PaddingStream.dataEnd
        rw [←represented]
        omega
      by_cases tailByte : (PaddingWords.totalSize length).toNat-8≤position.toNat
      · rw [if_pos tailByte,length_word_byte]
        simp only [PaddingStream.byteAt,←represented,if_neg dataByte,if_neg marker,ending,
          if_neg (by omega : ¬position.toNat<(PaddingWords.totalSize length).toNat-8)]
      · rw [if_neg tailByte]
        simp only [PaddingStream.byteAt,←represented,if_neg dataByte,if_neg marker,ending,
          if_pos (by omega : position.toNat<(PaddingWords.totalSize length).toNat-8)]
        rfl

end Core033.PaddingByte
