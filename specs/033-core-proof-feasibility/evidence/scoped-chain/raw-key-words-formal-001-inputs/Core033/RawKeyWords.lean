import Core033.RawKeyCodec
import Core033.WordSequenceCodec

/- This is a representation relation, not a caller assertion accepted by K.
Actual request/leaf byte consumption must establish it before semantic use. -/
namespace Core033.RawKeyWords
open WordIR

def Represents (words : List Word) (key : Reference.Key) : Prop :=
  words.length=48 ∧ WordSequenceCodec.encode words=RawKeyCodec.padded key

theorem equality_exact (leftWords rightWords : List Word) (left right : Reference.Key)
    (leftRep : Represents leftWords left) (rightRep : Represents rightWords right)
    (leftBound : Codec.KeyBounded left) (rightBound : Codec.KeyBounded right) :
    leftWords=rightWords ↔ left=right := by
  constructor
  · intro same
    apply (RawKeyCodec.padded_equality_exact left right leftBound rightBound).mp
    exact leftRep.2.symm.trans ((congrArg WordSequenceCodec.encode same).trans rightRep.2)
  · intro same
    apply WordSequenceCodec.encoding_injective
    exact leftRep.2.trans ((congrArg RawKeyCodec.padded same).trans rightRep.2.symm)

end Core033.RawKeyWords
