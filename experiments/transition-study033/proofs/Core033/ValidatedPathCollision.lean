import Core033.ValidatedPathReuse
import Core033.LiveNodeCodec
import Core033.UsedNodeCodec

/- Instantiate the positive-state specialization with original canonical SHA
messages. Typed bounds and physical genesis/root/path bindings remain mandatory. -/
namespace Core033.ValidatedPathCollision
open Views

theorem wrong_live_full_opening (env : Machine.Environment) (boundary : Machine.Boundary)
    (valid : Machine.BoundaryValid env boundary) (opening : Opening LiveValue 256)
    (actualBounded : ∀ node∈boundary.live.pathNodes LiveNodeCodec.hash LeafInterpretation.positive opening.path,
      LiveNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈opening.nodes LiveNodeCodec.hash LeafInterpretation.positive,
      LiveNodeCodec.Bounded node)
    (root : (opening.fold LiveNodeCodec.hash LeafInterpretation.positive).digest=
      (boundary.live.summary LiveNodeCodec.hash LeafInterpretation.positive).digest)
    (wrong : opening≠boundary.live.opening LiveNodeCodec.hash LeafInterpretation.positive opening.path) :
    ∃ actual∈boundary.live.pathNodes LiveNodeCodec.hash LeafInterpretation.positive opening.path,
      ∃ claimed∈opening.nodes LiveNodeCodec.hash LeafInterpretation.positive,
        LiveNodeCodec.encode actual≠LiveNodeCodec.encode claimed ∧
        SHA256.digestBytes (LiveNodeCodec.encode actual)=SHA256.digestBytes (LiveNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    PositivePathBinding.wrong_full_opening_has_path_collision LiveNodeCodec.hash
      LeafInterpretation.positive boundary.live opening
      (ValidatedPathReuse.boundary_live_root_positive LiveNodeCodec.hash env boundary valid) root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    LiveNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

theorem wrong_used_full_opening (tree : UsedTree) (opening : Opening Unit 256)
    (actualBounded : ∀ node∈tree.pathNodes UsedNodeCodec.hash (fun _=>true) opening.path,
      UsedNodeCodec.Bounded node)
    (claimedBounded : ∀ node∈opening.nodes UsedNodeCodec.hash (fun _=>true),UsedNodeCodec.Bounded node)
    (root : (opening.fold UsedNodeCodec.hash (fun _=>true)).digest=
      (tree.summary UsedNodeCodec.hash (fun _=>true)).digest)
    (wrong : opening≠tree.opening UsedNodeCodec.hash (fun _=>true) opening.path) :
    ∃ actual∈tree.pathNodes UsedNodeCodec.hash (fun _=>true) opening.path,
      ∃ claimed∈opening.nodes UsedNodeCodec.hash (fun _=>true),
        UsedNodeCodec.encode actual≠UsedNodeCodec.encode claimed ∧
        SHA256.digestBytes (UsedNodeCodec.encode actual)=SHA256.digestBytes (UsedNodeCodec.encode claimed) := by
  obtain ⟨actual,actualMember,claimed,claimedMember,different,same⟩:=
    PositivePathBinding.wrong_full_opening_has_path_collision UsedNodeCodec.hash (fun _=>true)
      tree opening (PositivePathBinding.true_predicate_root UsedNodeCodec.hash tree) root wrong
  exact ⟨actual,actualMember,claimed,claimedMember,
    UsedNodeCodec.wrong_node_hash_exposes_concrete_collision actual claimed
      (actualBounded actual actualMember) (claimedBounded claimed claimedMember) different same⟩

end Core033.ValidatedPathCollision
