import Core033.WordField
import Core033.CanonicalShape

namespace Core033.WordRowShape
open R1CS CanonicalLinear

def rowShape (p count : Nat) (row : Row) : Bool :=
  linearWellFormed p count row.a && linearWellFormed p count row.b && linearWellFormed p count row.c

theorem boolean_shape (p count wire : Nat) (large : 2^64<p) (positive : 0<wire) (bound : wire<count) :
    rowShape p count (normalizeRow (WordPorts.booleanRow p wire))=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  have nonzero : p-1≠0 := by omega
  simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,WordPorts.booleanRow,linearWellFormed,
    pOne,countPositive,coefficient,nonzero,positive,bound]

theorem literal_shape (p count output : Nat) (large : 2^64<p) (positive : 0<output) (bound : output<count) (value : Bool) :
    rowShape p count (normalizeRow (SHA256Circuit.literalRow output value))=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  cases value <;> simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,SHA256Circuit.literalRow,linearWellFormed,pOne,countPositive,bound]

theorem equality_shape (p count input output : Nat) (large : 2^64<p) (earlier : input<output) (bound : output<count) :
    rowShape p count (normalizeRow (WordField.equality p input output))=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  have inputBound : input<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  have nonzero : p-1≠0 := by omega
  simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,WordField.equality,linearWellFormed,
    pOne,countPositive,inputBound,coefficient,nonzero,earlier,bound]

theorem and_shape (p count a b output : Nat) (large : 2^64<p)
    (boundA : a<count) (boundB : b<count) (boundOutput : output<count) :
    rowShape p count (normalizeRow (SHA256Circuit.andRow a b output))=true := by
  have pOne : 1<p := by omega
  simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,SHA256Circuit.andRow,linearWellFormed,
    pOne,boundA,boundB,boundOutput]

theorem not_shape (p count input output : Nat) (large : 2^64<p)
    (inputPositive : 0<input) (inputBound : input<count) (outputBound : output<count) :
    rowShape p count (normalizeRow (SHA256Circuit.notRow p input output))=true := by
  have pOne : 1<p := by omega
  have countPositive : 0<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  have nonzero : p-1≠0 := by omega
  simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,SHA256Circuit.notRow,linearWellFormed,
    pOne,countPositive,coefficient,nonzero,inputPositive,inputBound,outputBound]

theorem xor_shape (p count a b output : Nat) (large : 2^64<p)
    (beforeA : a<output) (beforeB : b<output) (outputBound : output<count) :
    rowShape p count (normalizeRow (SHA256Circuit.xorRow p a b output))=true := by
  have pOne : 1<p := by omega
  have pTwo : 2<p := by omega
  have countPositive : 0<count := by omega
  have boundA : a<count := by omega
  have boundB : b<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  have nonzero : p-1≠0 := by omega
  rcases lt_trichotomy a b with earlier|same|later
  · have reverse : ¬b<a := by omega
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      SHA256Circuit.xorRow,linearWellFormed,pOne,pTwo,countPositive,boundA,boundB,
      coefficient,nonzero,beforeA,beforeB,outputBound,earlier,reverse]
  · subst b
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      SHA256Circuit.xorRow,linearWellFormed,pOne,pTwo,countPositive,boundA,
      coefficient,nonzero,beforeA,outputBound]
  · have forward : ¬a<b := by omega
    have different : a≠b := by omega
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      SHA256Circuit.xorRow,linearWellFormed,pOne,pTwo,countPositive,boundA,boundB,
      coefficient,nonzero,beforeA,beforeB,outputBound,later,forward,different]

theorem add_shape (p count a b output carryWire : Nat) (large : 2^64<p)
    (beforeA : a<output) (beforeB : b<output) (carryAfter : output<carryWire) (carryBound : carryWire<count) :
    rowShape p count (normalizeRow (PackedAdd32.row p a b output carryWire))=true := by
  have pOne : 1<p := by omega
  have pTwo : 2<p := by omega
  have countPositive : 0<count := by omega
  have boundA : a<count := by omega
  have boundB : b<count := by omega
  have outputBound : output<count := by omega
  have coefficient : 0<p-1 ∧ p-1<p := by omega
  have nonzero : p-1≠0 := by omega
  have carryCoefficient : 0<p-4294967296 ∧ p-4294967296<p := by omega
  have carryNonzero : p-4294967296≠0 := by omega
  have carryA : a<carryWire := by omega
  have carryB : b<carryWire := by omega
  rcases lt_trichotomy a b with earlier|same|later
  · have reverse : ¬b<a := by omega
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      PackedAdd32.row,linearWellFormed,pOne,pTwo,countPositive,boundA,boundB,
      coefficient,nonzero,carryCoefficient,carryNonzero,beforeA,beforeB,outputBound,
      carryAfter,carryBound,carryA,carryB,earlier,reverse]
  · subst b
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      PackedAdd32.row,linearWellFormed,pOne,pTwo,countPositive,boundA,
      coefficient,nonzero,carryCoefficient,carryNonzero,beforeA,outputBound,carryAfter,carryBound,carryA]
  · have forward : ¬a<b := by omega
    have different : a≠b := by omega
    simp [rowShape,CanonicalLinear.normalizeRow,CanonicalLinear.normalize,CanonicalLinear.insert,
      PackedAdd32.row,linearWellFormed,pOne,pTwo,countPositive,boundA,boundB,
      coefficient,nonzero,carryCoefficient,carryNonzero,beforeA,beforeB,outputBound,
      carryAfter,carryBound,carryA,carryB,later,forward,different]

end Core033.WordRowShape
