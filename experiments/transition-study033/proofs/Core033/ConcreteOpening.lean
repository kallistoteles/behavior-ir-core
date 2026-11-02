import Core033.LiveNodeCodec
import Core033.UsedNodeCodec

/- A wrong opening under the original sparse-view meaning exposes two
*different actual messages* with equal concrete SHA digests. The only bounds
premises are the typed node admission obligations that physical K must realize.
No globally injective finite hash and no hash oracle is assumed. -/
namespace Core033.ConcreteOpening
open Views

theorem wrong_live_opening (tree : Tree LiveValue n) (opening : Opening LiveValue n)
    (actualBounded : ∀ node∈tree.pathNodes LiveNodeCodec.hash LeafInterpretation.positive opening.path,LiveNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈opening.nodes LiveNodeCodec.hash LeafInterpretation.positive,LiveNodeCodec.Bounded node)
    (root : (opening.fold LiveNodeCodec.hash LeafInterpretation.positive).digest=
      (tree.summary LiveNodeCodec.hash LeafInterpretation.positive).digest)
    (wrong : opening.value≠tree.lookup opening.path) :
    ∃ actual∈tree.pathNodes LiveNodeCodec.hash LeafInterpretation.positive opening.path,
      ∃ claimed∈opening.nodes LiveNodeCodec.hash LeafInterpretation.positive,
        LiveNodeCodec.encode actual≠LiveNodeCodec.encode claimed ∧
        SHA256.digestBytes (LiveNodeCodec.encode actual)=SHA256.digestBytes (LiveNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    Views.wrong_opening_has_collision LiveNodeCodec.hash LeafInterpretation.positive tree opening root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    LiveNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

theorem wrong_used_opening (tree : Tree Unit n) (opening : Opening Unit n)
    (actualBounded : ∀ node∈tree.pathNodes UsedNodeCodec.hash (fun _=>true) opening.path,UsedNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈opening.nodes UsedNodeCodec.hash (fun _=>true),UsedNodeCodec.Bounded node)
    (root : (opening.fold UsedNodeCodec.hash (fun _=>true)).digest=(tree.summary UsedNodeCodec.hash (fun _=>true)).digest)
    (wrong : opening.value≠tree.lookup opening.path) :
    ∃ actual∈tree.pathNodes UsedNodeCodec.hash (fun _=>true) opening.path,
      ∃ claimed∈opening.nodes UsedNodeCodec.hash (fun _=>true),
        UsedNodeCodec.encode actual≠UsedNodeCodec.encode claimed ∧
        SHA256.digestBytes (UsedNodeCodec.encode actual)=SHA256.digestBytes (UsedNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    Views.wrong_opening_has_collision UsedNodeCodec.hash (fun _=>true) tree opening root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    UsedNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

end Core033.ConcreteOpening
