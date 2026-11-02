import Std

/- FIPS180-4 §§4.1.2,4.2.2,5.1.1,5.2.1,5.3.3,6.2.2.
Concrete fixed-width compression, never a free hash oracle. Source/field
lowering, streaming and finalizer proofs remain required below. -/
namespace Core033.SHA256
abbrev Bytes := List UInt8
abbrev Word := BitVec 32
abbrev Block := Fin 16 → Word

structure HashState where
  a : Word
  b : Word
  c : Word
  d : Word
  e : Word
  f : Word
  g : Word
  h : Word
  deriving DecidableEq

def initial : HashState :=
  ⟨0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19⟩

def constants : Array Word := #[0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2]

def choose (x y z : Word) : Word := (x &&& y) ^^^ ((~~~x) &&& z)
def majority (x y z : Word) : Word := (x &&& y) ^^^ (x &&& z) ^^^ (y &&& z)
def big0 (x : Word) : Word := x.rotateRight 2 ^^^ x.rotateRight 13 ^^^ x.rotateRight 22
def big1 (x : Word) : Word := x.rotateRight 6 ^^^ x.rotateRight 11 ^^^ x.rotateRight 25
def small0 (x : Word) : Word := x.rotateRight 7 ^^^ x.rotateRight 18 ^^^ x.ushiftRight 3
def small1 (x : Word) : Word := x.rotateRight 17 ^^^ x.rotateRight 19 ^^^ x.ushiftRight 10

def extendSchedule (words : Array Word) : Array Word :=
  let size := words.size
  words.push (small1 (words.getD (size-2) 0) + words.getD (size-7) 0 +
    small0 (words.getD (size-15) 0) + words.getD (size-16) 0)

def schedule (block : Block) : Array Word :=
  (List.range 48).foldl (fun words _ => extendSchedule words) (Array.ofFn block)

def round (state : HashState) (constant word : Word) : HashState :=
  let t1 := state.h + big1 state.e + choose state.e state.f state.g + constant + word
  let t2 := big0 state.a + majority state.a state.b state.c
  ⟨t1+t2,state.a,state.b,state.c,state.d+t1,state.e,state.f,state.g⟩

def addState (a b : HashState) : HashState :=
  ⟨a.a+b.a,a.b+b.b,a.c+b.c,a.d+b.d,a.e+b.e,a.f+b.f,a.g+b.g,a.h+b.h⟩

def compress (state : HashState) (block : Block) : HashState :=
  let words := schedule block
  let working := (List.range 64).foldl
    (fun current index => round current (constants.getD index 0) (words.getD index 0)) state
  addState state working

def wordFromBytes (bytes : Bytes) (offset : Nat) : Word :=
  BitVec.ofNat 32 ((bytes.getD offset 0).toNat*16777216 +
    (bytes.getD (offset+1) 0).toNat*65536 + (bytes.getD (offset+2) 0).toNat*256 +
    (bytes.getD (offset+3) 0).toNat)

def parseBlock (bytes : Bytes) : Block := fun index => wordFromBytes bytes (4*index.val)

def lengthBytes (length : Nat) : Bytes :=
  (List.range 8).map (fun index => UInt8.ofNat ((length*8) / 256^(7-index) % 256))

def zeroCount (length : Nat) : Nat := (119-length%64)%64

def pad (bytes : Bytes) : Bytes :=
  bytes ++ [128] ++ List.replicate (zeroCount bytes.length) 0 ++ lengthBytes bytes.length

def blocks (state : HashState) (bytes : Bytes) : Nat → HashState
  | 0 => state
  | count+1 => blocks (compress state (parseBlock bytes)) (bytes.drop 64) count

def stateWords (state : HashState) : List Word :=
  [state.a,state.b,state.c,state.d,state.e,state.f,state.g,state.h]

def wordBytes (word : Word) : Bytes :=
  (List.range 4).map (fun index => UInt8.ofNat (word.toNat / 256^(3-index) % 256))

def stateBytes (state : HashState) : Bytes := (stateWords state).flatMap wordBytes

def digestBytes (bytes : Bytes) : Bytes :=
  let padded := pad bytes
  stateBytes (blocks initial padded (padded.length/64))

theorem word_add_mod (a b : Word) : (a+b).toNat = (a.toNat+b.toNat)%2^32 := rfl

theorem constants_count : constants.size = 64 := by decide

theorem schedule_size (block : Block) : (schedule block).size = 64 := by
  have size (steps : List Nat) : ∀ words : Array Word,
      (steps.foldl (fun current _ => extendSchedule current) words).size = words.size+steps.length := by
    induction steps with
    | nil => intro words; rfl
    | cons step rest ih =>
        intro words
        simpa only [List.foldl_cons,extendSchedule,Array.size_push,List.length_cons,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]
          using ih (extendSchedule words)
  simpa only [schedule,Array.size_ofFn,List.length_range] using size (List.range 48) (Array.ofFn block)

theorem schedule_reads_in_bounds (size : Nat) (enough : 16 ≤ size) :
    size-2 < size ∧ size-7 < size ∧ size-15 < size ∧ size-16 < size := by omega

theorem length_bytes_size (length : Nat) : (lengthBytes length).length = 8 := by
  simp [lengthBytes]

theorem zero_count_bound (length : Nat) : zeroCount length < 64 := Nat.mod_lt _ (by decide)

theorem padded_size (bytes : Bytes) : (pad bytes).length = bytes.length+9+zeroCount bytes.length := by
  simp [pad,length_bytes_size]
  omega

theorem padding_alignment (bytes : Bytes) : (pad bytes).length % 64 = 0 := by
  rw [padded_size]
  have remainder := Nat.mod_lt bytes.length (by decide : 0 < 64)
  unfold zeroCount
  omega

theorem message_length_no_wrap (length : Nat) (profile : length ≤ 1073741824) : length*8 < 2^64 := by
  omega

theorem padding_keeps_message (bytes : Bytes) : (pad bytes).take bytes.length = bytes := by
  simp [pad]

theorem word_bytes_size (word : Word) : (wordBytes word).length = 4 := by simp [wordBytes]

theorem state_bytes_size (state : HashState) : (stateBytes state).length = 32 := by
  simp [stateBytes,stateWords,word_bytes_size]

theorem digest_size (bytes : Bytes) : (digestBytes bytes).length = 32 := state_bytes_size _

theorem blocks_split (state : HashState) (bytes : Bytes) (first second : Nat) :
    blocks state bytes (first+second) =
      blocks (blocks state bytes first) (bytes.drop (64*first)) second := by
  induction first generalizing state bytes with
  | zero => simp [blocks]
  | succ first ih =>
      simpa only [Nat.succ_add,blocks,List.drop_drop,Nat.mul_succ,
        Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using
        ih (compress state (parseBlock bytes)) (bytes.drop 64)

theorem padding_all_consumed (bytes : Bytes) :
    (pad bytes).drop (64*((pad bytes).length/64)) = [] := by
  have division := Nat.mod_add_div (pad bytes).length 64
  rw [padding_alignment] at division
  simp only [Nat.zero_add] at division
  rw [division]
  exact List.drop_length

theorem one_block_per_step (state : HashState) (bytes : Bytes) (remaining : Nat) :
    blocks state bytes (remaining+1) =
      blocks (compress state (parseBlock bytes)) (bytes.drop 64) remaining := rfl

/-- The byte order is the codec's order: byte zero supplies the low eight
bits of the first u64 limb. This is separate from SHA's big-endian words. -/
def fromBits : (n : Nat) → (Fin n → Bool) → BitVec n
  | 0, _ => 0
  | n+1, bits => BitVec.concat (fromBits n (fun i => bits i.succ)) (bits 0)

theorem fromBits_bit (n : Nat) (bits : Fin n → Bool) (i : Fin n) :
    (fromBits n bits).getLsbD i.val = bits i := by
  induction n with
  | zero => exact Fin.elim0 i
  | succ n ih =>
      cases i using Fin.cases with
      | zero =>
          change (BitVec.concat _ (bits 0)).getLsbD 0 = bits 0
          rw [BitVec.concat,BitVec.getLsbD_append]
          simp
      | succ i =>
          change (BitVec.concat _ (bits 0)).getLsbD (i.val+1) = bits i.succ
          rw [BitVec.concat,BitVec.getLsbD_append]
          simpa using ih (fun j => bits j.succ) i

abbrev Digest := Fin 32 → UInt8
abbrev Limbs := Fin 4 → BitVec 64

def digestVector (bytes : Digest) : BitVec 256 :=
  fromBits 256 (fun i => (bytes ⟨i.val/8,by omega⟩).toBitVec.getLsbD (i.val%8))

def digestLimbs (bytes : Digest) : Limbs :=
  fun i => (digestVector bytes).extractLsb' (64*i.val) 64

def digest (bytes : Bytes) : Digest := fun i => (digestBytes bytes).getD i.val 0

theorem limb_range (bytes : Digest) (i : Fin 4) : (digestLimbs bytes i).toNat < 2^64 :=
  (digestLimbs bytes i).isLt

theorem digest_limb_bit (bytes : Digest) (i : Fin 4) (j : Fin 64) :
    (digestLimbs bytes i).getLsbD j.val =
      (bytes ⟨8*i.val+j.val/8,by omega⟩).toBitVec.getLsbD (j.val%8) := by
  simp only [digestLimbs,BitVec.getLsbD_extractLsb',j.isLt,decide_true,Bool.true_and]
  have bound : 64*i.val+j.val < 256 := by omega
  rw [show digestVector bytes = fromBits 256 _ from rfl,fromBits_bit 256 _ ⟨_,bound⟩]
  have div : (64*i.val+j.val)/8 = 8*i.val+j.val/8 := by omega
  have rem : (64*i.val+j.val)%8 = j.val%8 := by omega
  simp only [div,rem]

theorem digestVector_injective (a b : Digest) (same : digestVector a = digestVector b) : a = b := by
  funext i
  apply UInt8.toBitVec_inj.mp
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro bit bound
  have indexBound : 8*i.val+bit < 256 := by omega
  have equal := congrArg (fun word : BitVec 256 => word.getLsbD (8*i.val+bit)) same
  simp only [digestVector,fromBits_bit 256 _ ⟨_,indexBound⟩] at equal
  have div : (8*i.val+bit)/8 = i.val := by omega
  have rem : (8*i.val+bit)%8 = bit := by omega
  simpa only [div,rem] using equal

theorem all_limbs_preserve_full_digest (a b : Digest) (same : digestLimbs a = digestLimbs b) : a = b := by
  apply digestVector_injective
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro bit bound
  let limb : Fin 4 := ⟨bit/64,by omega⟩
  let offset : Fin 64 := ⟨bit%64,Nat.mod_lt _ (by decide)⟩
  have equal := congrArg (fun ls : Limbs => (ls limb).getLsbD offset.val) same
  simp only [digestLimbs,BitVec.getLsbD_extractLsb',offset.isLt,decide_true,Bool.true_and] at equal
  have coordinate : 64*limb.val+offset.val = bit := by dsimp [limb,offset]; omega
  simpa only [coordinate] using equal

theorem padding_length_suffix (bytes : Bytes) :
    (pad bytes).drop (bytes.length+1+zeroCount bytes.length) = lengthBytes bytes.length := by
  unfold pad
  apply List.drop_left'
  simp [Nat.add_assoc,Nat.add_comm]

theorem length_byte_at (length : Nat) (i : Fin 8) :
    (lengthBytes length)[i.val]'(by simpa only [length_bytes_size] using i.isLt) =
      UInt8.ofNat ((length*8) / 256^(7-i.val) % 256) := by
  simp [lengthBytes]

theorem digest_all_bytes (bytes : Bytes) : List.ofFn (digest bytes) = digestBytes bytes := by
  apply List.ext_getElem
  · simp [digest_size]
  · intro index left right
    rw [List.getElem_ofFn left]
    simp only [digest,List.getD_eq_getElem?_getD,List.getElem?_eq_getElem right,Option.getD_some]

theorem equal_limbs_equal_hash_bytes (a b : Bytes)
    (same : digestLimbs (digest a) = digestLimbs (digest b)) : digestBytes a = digestBytes b := by
  rw [← digest_all_bytes a,← digest_all_bytes b,all_limbs_preserve_full_digest _ _ same]

end Core033.SHA256
