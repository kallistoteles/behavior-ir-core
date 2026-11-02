import Core033.WordSourceChunks

/- Compositional actual-byte checking. Small equations can be kernel-checked
separately, then composed into the unchanged whole-source validator. No hash,
parser guess or unchecked generated block can grant acceptance. -/
namespace Core033.WordSourceBlocks
open WordIR WordSource

def headerBytes (inputCount outputCount : Nat) : Bytes :=
  Codec.textBytes "pub fn checker_step(\n"++parameterBytes 0 inputCount++
  Codec.textBytes ") -> [u32; 0x"++hexDigits 8 outputCount++Codec.textBytes "_usize] {\n"

def suffix (outputs : List Nat) : Bytes :=
  Codec.textBytes "    ["++returnBytes outputs++Codec.textBytes "]\n}\n"

theorem whole_decomposition (function : Function) : function.bytes=
    headerBytes function.inputCount function.outputs.length++statementBytes function.inputCount function.statements++suffix function.outputs := by
  simp only [Function.bytes,headerBytes,suffix,List.append_assoc]

theorem statements_append (first : Nat) (a b : List Expr) :
    statementBytes first (a++b)=statementBytes first a++statementBytes (first+a.length) b := by
  induction a generalizing first with
  | nil => simp [statementBytes]
  | cons expr rest ih =>
    simp [statementBytes,ih,List.append_assoc,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]

def body : Nat → List (List WordIR.Op) → Bytes
  | _,[] => []
  | first,block::rest => statementBytes first (block.map lower)++body (first+block.length) rest

theorem body_exact (blocks : List (List WordIR.Op)) : ∀ first,
    body first blocks=statementBytes first (blocks.flatten.map lower) := by
  induction blocks with
  | nil => intro first;rfl
  | cons block rest ih =>
    intro first
    simp only [body,List.flatten_cons,List.map_append,statements_append,List.length_map,ih]

inductive BlockChain : Nat → List (List WordIR.Op) → List Bytes → Prop where
  | empty (first : Nat) : BlockChain first [] []
  | cons (first : Nat) (block : List WordIR.Op) (rest : List (List WordIR.Op)) (actual : Bytes) (tail : List Bytes)
      (checked : actual=statementBytes first (block.map lower))
      (remaining : BlockChain (first+block.length) rest tail) : BlockChain first (block::rest) (actual::tail)

theorem chain_exact {first : Nat} {blocks : List (List WordIR.Op)} {actual : List Bytes}
    (checked : BlockChain first blocks actual) : actual.flatten=body first blocks := by
  induction checked with
  | empty => rfl
  | cons first block rest bytes tail exactBytes remaining ih =>
    simp only [List.flatten_cons,body,exactBytes,ih]

theorem validate_from_facts (program : Program) (actual : Bytes)
    (safe : checkSafe (lowerFunction program)=true) (same : actual=(lowerFunction program).bytes)
    (size : actual.length≤8388608) : validate program actual=true := by
  simp only [validate,Bool.and_eq_true,decide_eq_true_eq]
  exact ⟨⟨safe,same⟩,size⟩

theorem assembled_bytes_exact (program : Program) (blocks : List (List WordIR.Op))
    (partition : program.operations=blocks.flatten) (actualPrefix actualSuffix : Bytes) (actualBody : List Bytes)
    (header : actualPrefix=headerBytes program.inputCount program.outputs.length)
    (footer : actualSuffix=suffix program.outputs)
    (checked : BlockChain program.inputCount blocks actualBody) :
    actualPrefix++actualBody.flatten++actualSuffix=(lowerFunction program).bytes := by
  rw [header,footer,chain_exact checked,body_exact]
  rw [whole_decomposition]
  simp only [lowerFunction,partition]

end Core033.WordSourceBlocks
