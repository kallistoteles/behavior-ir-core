import Core033.OwnNodeOpening

/- Incorrect complete metadata/value openings with own sibling preimages expose
an actual finite SHA collision. Full typed bounds and physical port realization
remain K obligations; no global finite-hash injectivity axiom is introduced. -/
namespace Core033.ConcreteOwnNodeOpening
open Views

theorem wrong_live_full_opening (tree : Tree LiveValue n) (witness : OwnNodeOpening.Witness LiveValue n)
    (actualBounded : ∀ node∈OwnNodeOpening.actualMessages LiveNodeCodec.hash LeafInterpretation.positive tree
      (witness.opening LiveNodeCodec.hash LeafInterpretation.positive).path,LiveNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈witness.messages LiveNodeCodec.hash LeafInterpretation.positive,LiveNodeCodec.Bounded node)
    (root : ((witness.opening LiveNodeCodec.hash LeafInterpretation.positive).fold LiveNodeCodec.hash LeafInterpretation.positive).digest=
      (tree.summary LiveNodeCodec.hash LeafInterpretation.positive).digest)
    (wrong : witness.opening LiveNodeCodec.hash LeafInterpretation.positive≠
      tree.opening LiveNodeCodec.hash LeafInterpretation.positive (witness.opening LiveNodeCodec.hash LeafInterpretation.positive).path) :
    ∃ actual∈OwnNodeOpening.actualMessages LiveNodeCodec.hash LeafInterpretation.positive tree
        (witness.opening LiveNodeCodec.hash LeafInterpretation.positive).path,
      ∃ claimed∈witness.messages LiveNodeCodec.hash LeafInterpretation.positive,
        LiveNodeCodec.encode actual≠LiveNodeCodec.encode claimed ∧
        SHA256.digestBytes (LiveNodeCodec.encode actual)=SHA256.digestBytes (LiveNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    OwnNodeOpening.wrong_full_opening_has_collision LiveNodeCodec.hash LeafInterpretation.positive tree witness root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    LiveNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

theorem wrong_used_full_opening (tree : Tree Unit n) (witness : OwnNodeOpening.Witness Unit n)
    (actualBounded : ∀ node∈OwnNodeOpening.actualMessages UsedNodeCodec.hash (fun _=>true) tree
      (witness.opening UsedNodeCodec.hash (fun _=>true)).path,UsedNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈witness.messages UsedNodeCodec.hash (fun _=>true),UsedNodeCodec.Bounded node)
    (root : ((witness.opening UsedNodeCodec.hash (fun _=>true)).fold UsedNodeCodec.hash (fun _=>true)).digest=
      (tree.summary UsedNodeCodec.hash (fun _=>true)).digest)
    (wrong : witness.opening UsedNodeCodec.hash (fun _=>true)≠
      tree.opening UsedNodeCodec.hash (fun _=>true) (witness.opening UsedNodeCodec.hash (fun _=>true)).path) :
    ∃ actual∈OwnNodeOpening.actualMessages UsedNodeCodec.hash (fun _=>true) tree
        (witness.opening UsedNodeCodec.hash (fun _=>true)).path,
      ∃ claimed∈witness.messages UsedNodeCodec.hash (fun _=>true),
        UsedNodeCodec.encode actual≠UsedNodeCodec.encode claimed ∧
        SHA256.digestBytes (UsedNodeCodec.encode actual)=SHA256.digestBytes (UsedNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    OwnNodeOpening.wrong_full_opening_has_collision UsedNodeCodec.hash (fun _=>true) tree witness root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    UsedNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

end Core033.ConcreteOwnNodeOpening
