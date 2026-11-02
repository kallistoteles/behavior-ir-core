import Core033.MatrixCodec

namespace Core033.MatrixCodecHeader
open R1CS MatrixCodec

structure Header where
  modulus : Nat
  variableCount : Nat
  inputCount : Nat
  privateCount : Nat
  outputCount : Nat
  constraints : Nat
  constantOne : Nat
  portCount : Nat
  deriving DecidableEq, Repr

def Header.Valid (h : Header) : Prop :=
  h.modulus<2^256 ∧ 0<h.variableCount ∧ h.variableCount≤16777216 ∧
  h.inputCount≤h.variableCount ∧ h.privateCount≤h.variableCount ∧ h.outputCount≤h.variableCount ∧
  0<h.constraints ∧ h.constraints≤16777216 ∧ h.constantOne<2^32 ∧
  h.portCount=h.inputCount+h.privateCount+h.outputCount ∧ h.portCount≤16777216

def preamble : Bytes := Matrix.magic++[96,0]

def encodeHeader (h : Header) : Bytes := preamble++Codec.encodeLE 32 h.modulus++
  [h.variableCount,h.inputCount,h.privateCount,h.outputCount,h.constraints,h.constantOne,h.portCount].flatMap (Codec.encodeLE 4)

def readHeader : Matrix.Read Header := do
  let prefixBytes ← Matrix.take (Matrix.magic.length+2)
  Matrix.require (prefixBytes=Matrix.magic++[96,0])
  let p ← Matrix.natural 32
  let count ← Matrix.u32
  let inputCount ← Matrix.u32
  let privateCount ← Matrix.u32
  let outputCount ← Matrix.u32
  let constraints ← Matrix.u32
  let one ← Matrix.u32
  Matrix.require (0<count ∧ count≤16777216)
  Matrix.require (inputCount≤count ∧ privateCount≤count ∧ outputCount≤count)
  Matrix.require (0<constraints ∧ constraints≤16777216)
  let portCount ← Matrix.u32
  Matrix.require (portCount=inputCount+privateCount+outputCount ∧ portCount≤16777216)
  return ⟨p,count,inputCount,privateCount,outputCount,constraints,one,portCount⟩

def readPayload (h : Header) : Matrix.Read R1CS.Matrix := do
  let available ← Matrix.remaining
  Matrix.require (h.portCount*4≤available)
  let ports ← Matrix.many h.portCount Matrix.u32
  let rowCount ← Matrix.u32
  Matrix.require (rowCount=h.constraints)
  let available ← Matrix.remaining
  Matrix.require (rowCount*12≤available)
  let rows ← Matrix.many rowCount Matrix.row
  let matrix : R1CS.Matrix := ⟨h.modulus,h.variableCount,ports.take h.inputCount,
    (ports.drop h.inputCount).take h.privateCount,ports.drop (h.inputCount+h.privateCount),h.constantOne,rows⟩
  Matrix.require (matrix.wellFormed=true)
  return matrix

theorem parser_factorization : Matrix.readMatrix=(do let h ← readHeader;readPayload h) := by
  simp [Matrix.readMatrix,readHeader,readPayload,bind_assoc]

theorem header_roundtrip (h : Header) (valid : h.Valid) (suffix : Bytes) :
    readHeader.run ⟨encodeHeader h++suffix,(encodeHeader h++suffix).length⟩=some (h,⟨suffix,suffix.length⟩) := by
  have modulusBound : h.modulus<256^32 := by simpa using valid.1
  have countBound : h.variableCount<256^4 := by have := valid.2.2.1;omega
  have inputBound : h.inputCount<256^4 := by have := valid.2.2.2.1;omega
  have privateBound : h.privateCount<256^4 := by have := valid.2.2.2.2.1;omega
  have outputBound : h.outputCount<256^4 := by have := valid.2.2.2.2.2.1;omega
  have constraintBound : h.constraints<256^4 := by have := valid.2.2.2.2.2.2.2.1;omega
  have oneBound : h.constantOne<256^4 := by have := valid.2.2.2.2.2.2.2.2.1;simpa using this
  have portsBound : h.portCount<256^4 := by have := valid.2.2.2.2.2.2.2.2.2.2;omega
  have prefixSize : preamble.length=Matrix.magic.length+2 := by simp [preamble]
  unfold readHeader encodeHeader
  simp only [List.flatMap_cons,List.flatMap_nil,List.append_nil,List.append_assoc,bind_run,Matrix.u32]
  rw [←prefixSize,take_actual_suffix]
  simp only [Option.bind_some]
  rw [require_true _ (show preamble=Matrix.magic++[96,0] from rfl)]
  simp only [Option.bind_some]
  rw [read_integer_suffix 32 h.modulus modulusBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.variableCount countBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.inputCount inputBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.privateCount privateBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.outputCount outputBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.constraints constraintBound]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.constantOne oneBound]
  simp only [Option.bind_some]
  rw [require_true _ ⟨valid.2.1,valid.2.2.1⟩]
  simp only [Option.bind_some]
  rw [require_true _ ⟨valid.2.2.2.1,valid.2.2.2.2.1,valid.2.2.2.2.2.1⟩]
  simp only [Option.bind_some]
  rw [require_true _ ⟨valid.2.2.2.2.2.2.1,valid.2.2.2.2.2.2.2.1⟩]
  simp only [Option.bind_some]
  rw [read_integer_suffix 4 h.portCount portsBound]
  simp only [Option.bind_some]
  rw [require_true _ ⟨valid.2.2.2.2.2.2.2.2.2.1,valid.2.2.2.2.2.2.2.2.2.2⟩]
  simp only [Option.bind_some,pure_run]

end Core033.MatrixCodecHeader
