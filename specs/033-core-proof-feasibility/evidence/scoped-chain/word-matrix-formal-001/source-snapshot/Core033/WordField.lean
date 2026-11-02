import Core033.WordPorts
import Core033.SHA256Words
import Core033.PackedAdd32
import Core033.CanonicalLinear
import Core033.WordIR

/- Allocated port/gate schemas for shared u32 instructions. Actual global shape,
strict matrix bytes and generated source/entrypoint binding remain mandatory. -/
namespace Core033.WordField
open R1CS
abbrev Word := WordIR.Word

/-- Packed word,32 bits and one carry occupy a fixed34-wire block. Wire0 is
reserved for the constant one. Carry is explicitly zero for non-add operations. -/
def base (register : Nat) : Nat := 1+34*register
def packed (register : Nat) : Nat := base register
def bits (register : Nat) : SHA256Words.Wires := fun i=>base register+1+i.val
def carry (register : Nat) : Nat := base register+33

def Encodes {F : Type} [Field F] (valuation : Nat → F) (register : Nat) (word : Word) : Prop :=
  valuation (packed register)=(word.toNat : F) ∧ SHA256Words.Encodes valuation (bits register) word

def packing (p register : Nat) : Row := WordPorts.packingRow p (packed register) (base register+1) 32

def booleanBits (p register : Nat) : List Row :=
  (List.range 32).map (fun i=>WordPorts.booleanRow p (base register+1+i))

def equality (p input output : Nat) : Row :=
  ⟨[⟨input,1⟩,⟨output,p-1⟩],[⟨0,1⟩],[]⟩

def bitIndices : List (Fin 32) := List.finRange 32

def operationRows (p output : Nat) : WordIR.Op → List Row
  | .literal word =>
    bitIndices.map (fun i=>SHA256Circuit.literalRow (bits output i) (word.getLsbD i.val))++
      [packing p output,SHA256Circuit.literalRow (carry output) false]
  | .band a b => bitIndices.map (fun i=>SHA256Circuit.andRow (bits a i) (bits b i) (bits output i))++
      [packing p output,SHA256Circuit.literalRow (carry output) false]
  | .bxor a b => bitIndices.map (fun i=>SHA256Circuit.xorRow p (bits a i) (bits b i) (bits output i))++
      [packing p output,SHA256Circuit.literalRow (carry output) false]
  | .bnot a => bitIndices.map (fun i=>SHA256Circuit.notRow p (bits a i) (bits output i))++
      [packing p output,SHA256Circuit.literalRow (carry output) false]
  | .badd a b => booleanBits p output++
      [WordPorts.booleanRow p (carry output),PackedAdd32.row p (packed a) (packed b) (packed output) (carry output),packing p output]
  | .rotr a shift => bitIndices.map (fun i=>equality p (SHA256Words.rotated (bits a) shift i) (bits output i))++
      [packing p output,SHA256Circuit.literalRow (carry output) false]
  | .shr a shift => bitIndices.map (fun i=>if i.val+shift<32 then
        equality p (base a+1+i.val+shift) (bits output i) else SHA256Circuit.literalRow (bits output i) false)++
      [packing p output,SHA256Circuit.literalRow (carry output) false]

def canonicalRows (p output : Nat) (operation : WordIR.Op) : List Row :=
  (operationRows p output operation).map CanonicalLinear.normalizeRow

theorem canonical_rows_exact {F : Type} [Field F] (p output : Nat) (operation : WordIR.Op) (valuation : Nat → F) :
    (∀ row∈canonicalRows p output operation,row.satisfies valuation) ↔
      ∀ row∈operationRows p output operation,row.satisfies valuation := by
  simp only [canonicalRows,List.forall_mem_map,CanonicalLinear.row_meaning]

theorem equality_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1≤p)
    (valuation : Nat → F) (input output : Nat) (one : valuation 0=1) :
    (equality p input output).satisfies valuation ↔ valuation input=valuation output := by
  simp only [equality,Row.satisfies,evalLinear,canonical_negative (F:=F) 1 positive,
    Nat.cast_one,one_mul,add_zero,one,mul_one,neg_one_mul,←sub_eq_add_neg,sub_eq_zero]

theorem packing_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (register : Nat) (word : Word) (one : valuation 0=1)
    (encoded : SHA256Words.Encodes valuation (bits register) word) :
    (packing p register).satisfies valuation ↔ valuation (packed register)=(word.toNat : F) := by
  rw [packing,WordPorts.packing_row_exact fieldBound valuation _ _ 32 (by decide) one]
  have all : ∀ i,i<32 → valuation (base register+1+i)=bitValue (word.getLsbD i) := by
    intro i bound;exact encoded ⟨i,bound⟩
  rw [weighted_congr 32 (fun i=>valuation (base register+1+i))
    (fun i=>bitValue (word.getLsbD i)) all,WordPacking.weighted_word]

theorem port_range_sound {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (register : Nat) (one : valuation 0=1)
    (booleans : ∀ row∈booleanBits p register,row.satisfies valuation)
    (packedRow : (packing p register).satisfies valuation) : ∃ word,Encodes valuation register word := by
  obtain ⟨word,value,encoded⟩ := WordPorts.full_port_sound fieldBound valuation (packed register) (base register+1) 32 (by decide) one
    (by intro i hi;apply booleans;exact List.mem_map.mpr ⟨i,List.mem_range.mpr hi,rfl⟩) packedRow
  refine ⟨word,value,?_⟩
  intro i;exact encoded i.val i.isLt

theorem bitwise_finish_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (output : Nat) (word : Word) (one : valuation 0=1)
    (gates : Fin 32 → Row)
    (gateExact : (∀ i,(gates i).satisfies valuation) ↔ SHA256Words.Encodes valuation (bits output) word) :
    (∀ row∈bitIndices.map gates++[packing p output,SHA256Circuit.literalRow (carry output) false],row.satisfies valuation) ↔
      Encodes valuation output word ∧ valuation (carry output)=0 := by
  simp only [List.forall_mem_append,List.forall_mem_map,List.forall_mem_cons,
    bitIndices,List.mem_finRange,true_implies]
  constructor
  · rintro ⟨rows,packedRow,carryRow⟩
    have encoded:=gateExact.mp rows
    have value:=(packing_exact fieldBound valuation output word one encoded).mp packedRow
    have zero:=(SHA256Circuit.literal_row_exact valuation _ false one).mp carryRow.1
    exact ⟨⟨value,encoded⟩,zero⟩
  · rintro ⟨⟨value,encoded⟩,zero⟩
    exact ⟨gateExact.mpr encoded,(packing_exact fieldBound valuation output word one encoded).mpr value,
      ⟨(SHA256Circuit.literal_row_exact valuation _ false one).mpr zero,by simp⟩⟩

theorem and_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a b output : Nat) (x y : Word) (one : valuation 0=1)
    (inputA : Encodes valuation a x) (inputB : Encodes valuation b y) :
    (∀ row∈operationRows p output (.band a b),row.satisfies valuation) ↔
      Encodes valuation output (x &&& y) ∧ valuation (carry output)=0 :=
  bitwise_finish_exact fieldBound valuation output _ one _
    (SHA256Words.and_word_exact valuation _ _ _ x y inputA.2 inputB.2)

theorem xor_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a b output : Nat) (x y : Word) (one : valuation 0=1)
    (inputA : Encodes valuation a x) (inputB : Encodes valuation b y) :
    (∀ row∈operationRows p output (.bxor a b),row.satisfies valuation) ↔
      Encodes valuation output (x ^^^ y) ∧ valuation (carry output)=0 :=
  bitwise_finish_exact fieldBound valuation output _ one _
    (SHA256Words.xor_word_exact (by omega) valuation _ _ _ x y inputA.2 inputB.2)

theorem not_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a output : Nat) (x : Word) (one : valuation 0=1)
    (input : Encodes valuation a x) :
    (∀ row∈operationRows p output (.bnot a),row.satisfies valuation) ↔
      Encodes valuation output (~~~x) ∧ valuation (carry output)=0 :=
  bitwise_finish_exact fieldBound valuation output _ one _
    (SHA256Words.not_word_exact (by omega) valuation _ _ x one input.2)

theorem literal_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (output : Nat) (word : Word) (one : valuation 0=1) :
    (∀ row∈operationRows p output (.literal word),row.satisfies valuation) ↔
      Encodes valuation output word ∧ valuation (carry output)=0 := by
  apply bitwise_finish_exact fieldBound valuation output word one
  apply forall_congr'
  intro i
  exact SHA256Circuit.literal_row_exact valuation _ _ one

theorem rotate_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a output shift : Nat) (x : Word) (one : valuation 0=1)
    (input : Encodes valuation a x) :
    (∀ row∈operationRows p output (.rotr a shift),row.satisfies valuation) ↔
      Encodes valuation output (x.rotateRight shift) ∧ valuation (carry output)=0 := by
  apply bitwise_finish_exact fieldBound valuation output _ one
  have rotated:=SHA256Words.rotation_exact valuation (bits a) x shift input.2
  constructor
  · intro rows i
    have equal:=(equality_exact (by omega) valuation _ _ one).mp (rows i)
    exact equal.symm.trans (rotated i)
  · intro encoded i
    apply (equality_exact (by omega) valuation _ _ one).mpr
    exact (rotated i).trans (encoded i).symm

theorem boolean_value_exists {F : Type} [Field F] (value : F) (row : value*(value-1)=0) :
    ∃ flag : Bool,value=bitValue flag := by
  rcases boolean_sound value row with zero|one
  · exact ⟨false,zero⟩
  · exact ⟨true,one⟩

theorem add_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a b output : Nat) (x y : Word) (one : valuation 0=1)
    (inputA : Encodes valuation a x) (inputB : Encodes valuation b y) :
    (∀ row∈operationRows p output (.badd a b),row.satisfies valuation) ↔
      Encodes valuation output (x+y) ∧ valuation (carry output)=bitValue (decide (2^32≤x.toNat+y.toNat)) := by
  have positive : 1≤p := by omega
  simp only [operationRows,List.forall_mem_append,List.forall_mem_cons]
  constructor
  · rintro ⟨booleans,carryRow,addRow,packRow,tail⟩
    obtain ⟨result,encoded⟩:=port_range_sound fieldBound valuation output one booleans packRow
    obtain ⟨flag,carryValue⟩:=boolean_value_exists (valuation (carry output))
      ((WordPorts.boolean_row_exact positive valuation _ one).mp carryRow)
    have meaning:=(PackedAdd32.row_exact fieldBound valuation _ _ _ _ one x y result flag
      inputA.1 inputB.1 encoded.1 carryValue).mp addRow
    rw [meaning.1] at encoded
    exact ⟨encoded,carryValue.trans (congrArg (fun flag=>bitValue (F:=F) flag) meaning.2)⟩
  · rintro ⟨encoded,carryValue⟩
    have booleanRows : ∀ row∈booleanBits p output,row.satisfies valuation := by
      intro row member
      obtain ⟨i,hi,rfl⟩:=List.mem_map.mp member
      have bound:=List.mem_range.mp hi
      apply (WordPorts.boolean_row_exact positive valuation _ one).mpr
      rw [show valuation (base output+1+i)=bitValue ((x+y).getLsbD i) from encoded.2 ⟨i,bound⟩]
      cases (x+y).getLsbD i <;> simp [bitValue]
    refine ⟨booleanRows,?_,?_,(packing_exact fieldBound valuation output (x+y) one encoded.2).mpr encoded.1,by simp⟩
    · apply (WordPorts.boolean_row_exact positive valuation _ one).mpr
      rw [carryValue]
      cases decide (2^32≤x.toNat+y.toNat) <;> simp [bitValue]
    · exact (PackedAdd32.row_exact fieldBound valuation _ _ _ _ one x y (x+y) _
        inputA.1 inputB.1 encoded.1 carryValue).mpr ⟨rfl,rfl⟩

theorem shift_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a output shift : Nat) (x : Word) (one : valuation 0=1)
    (input : Encodes valuation a x) :
    (∀ row∈operationRows p output (.shr a shift),row.satisfies valuation) ↔
      Encodes valuation output (x.ushiftRight shift) ∧ valuation (carry output)=0 := by
  apply bitwise_finish_exact fieldBound valuation output _ one
  have shifted (i : Fin 32) : bitValue (F:=F) ((x.ushiftRight shift).getLsbD i.val)=bitValue (x.getLsbD (i.val+shift)) := by
    rw [BitVec.ushiftRight_eq,BitVec.getLsbD_ushiftRight,Nat.add_comm shift i.val]
  have inputValue (i : Fin 32) (bound : i.val+shift<32) :
      valuation (base a+1+i.val+shift)=bitValue (x.getLsbD (i.val+shift)) := by
    have result:=input.2 ⟨i.val+shift,bound⟩
    simpa only [bits,Nat.add_assoc] using result
  constructor
  · intro rows i
    rw [shifted]
    by_cases bound : i.val+shift<32
    · have equal:=(equality_exact (by omega) valuation _ _ one).mp (by simpa only [if_pos bound] using rows i)
      exact equal.symm.trans (inputValue i bound)
    · have zero:=(SHA256Circuit.literal_row_exact valuation _ false one).mp (by simpa only [if_neg bound] using rows i)
      rw [BitVec.getLsbD_of_ge x (i.val+shift) (by omega)]
      exact zero
  · intro encoded i
    have outputValue:=encoded i
    rw [shifted] at outputValue
    by_cases bound : i.val+shift<32
    · simp only [if_pos bound]
      apply (equality_exact (by omega) valuation _ _ one).mpr
      exact (inputValue i bound).trans outputValue.symm
    · simp only [if_neg bound]
      apply (SHA256Circuit.literal_row_exact valuation _ false one).mpr
      rw [BitVec.getLsbD_of_ge x (i.val+shift) (by omega)] at outputValue
      exact outputValue

end Core033.WordField
