import Core033.OwnBranchEncoding
import Core033.PathRoundDispatchTrace

namespace Core033.OwnBranchHash
open WordIR OwnBranchCoordinates
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

/- The initial adapter is consumed once. All three subsequent steps use the
same controlled state, whose record fields are preserved through both hashes.
The caller still has to bind the returned metadata and completed old opening. -/
def returned (inputs : Nat → Word) : Nat → Word :=
  PathRoundDispatchTrace.next (PathRoundDispatchTrace.next
    (PathRoundDispatchTrace.next (OwnBranchRouting.routed inputs)))

theorem original_full_hash (inputs : Nat → Word)
    (start : inputs 24=1) (heightPositive : 0<(inputs 0).toNat)
    (heightBound : (inputs 0).toNat<256) (positive covered : Bool)
    (positiveWord : inputs 22=WordControl.boolWord positive)
    (coveredWord : inputs 23=WordControl.boolWord covered) :
    ((List.range 8).map (fun index=>returned inputs (11+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (BranchCodec.encode (OwnBranchEncoding.branch inputs positive covered)) := by
  have phase : OwnBranchRouting.routed inputs 0=1 := start
  have root:=PathRoundDispatchTrace.complete_original_root_bytes (OwnBranchRouting.routed inputs) phase
  have encoded:=OwnBranchEncoding.original_message inputs heightPositive heightBound
    positive covered positiveWord coveredWord
  exact root.trans (congrArg SHA256.digestBytes encoded)

theorem controlled_return_phase (inputs : Nat → Word) (start : inputs 24=1) :
    returned inputs 0=4 :=
  PathRoundDispatchTrace.return_phase (OwnBranchRouting.routed inputs) start

end Core033.OwnBranchHash
