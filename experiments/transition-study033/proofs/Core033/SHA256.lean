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

end Core033.SHA256
