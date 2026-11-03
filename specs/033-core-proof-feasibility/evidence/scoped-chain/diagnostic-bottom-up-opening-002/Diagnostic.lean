import Core033.OwnNodeOpening

/- One authenticated sibling per frame, consumed from leaf to root. Old/new
summaries can be folded together without a 256-frame mutable stack. Actual
controller, source/matrix ports and own-node SHA bindings remain separate. -/
namespace Core033.BottomUpOpening
open Views Reference OwnNodeOpening

structure Frame (α : Type) where
  height : Nat
  changedRight : Bool
  sibling : Node α

def frames : Witness α n → List (Frame α)
  | .leaf _ => []
  | @Witness.left _ height child sibling => frames child++[⟨height+1,false,sibling⟩]
  | @Witness.right _ height sibling child => frames child++[⟨height+1,true,sibling⟩]

def step (hash : Node α → Digest) (summary : Summary) (frame : Frame α) : Summary :=
  let sibling:=AuthenticatedSibling.summarize hash frame.sibling
  if frame.changedRight then branchSummary hash frame.height (sibling.count+summary.count) sibling summary
  else branchSummary hash frame.height (summary.count+sibling.count) summary sibling

def fold (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n)
    (value : Option (Key × α)) : Summary :=
  (frames witness).foldl (step hash) (leafSummary hash positive value)

theorem frame_count (witness : Witness α n) : (frames witness).length=n := by
  induction witness with
  | leaf value => rfl
  | left child sibling ih => simp only [frames,List.length_append,List.length_cons,List.length_nil,ih]
  | right sibling child ih => simp only [frames,List.length_append,List.length_cons,List.length_nil,ih]

theorem original_fold (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n)
    (value : Option (Key × α)) :
    fold hash positive witness value=((witness.opening hash positive).replaceTip value).fold hash positive := by
  induction witness with
  | leaf old => rfl
  | left child sibling ih =>
    simp only [fold,frames,List.foldl_append,List.foldl_cons,List.foldl_nil,step,if_false]
    rw [←fold,ih]
    rfl
  | right sibling child ih =>
    simp only [fold,frames,List.foldl_append,List.foldl_cons,List.foldl_nil,step,if_true]
    rw [←fold,ih]
    rfl

theorem original_tip (opening : Opening α n) : opening.replaceTip opening.value=opening := by
  induction opening with
  | leaf value => rfl
  | left child sibling ih => exact congrArg (fun opening=>Opening.left opening sibling) ih
  | right sibling child ih => exact congrArg (Opening.right sibling) ih

theorem original_root (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n) :
    fold hash positive witness (witness.opening hash positive).value=(witness.opening hash positive).fold hash positive := by
  rw [original_fold,original_tip]

def pairStep (hash : Node α → Digest) (summaries : Summary × Summary) (frame : Frame α) : Summary × Summary :=
  (step hash summaries.1 frame,step hash summaries.2 frame)

theorem paired_fold (hash : Node α → Digest) (positive : α → Bool) (witness : Witness α n)
    (before after : Option (Key × α)) :
    (frames witness).foldl (pairStep hash) (leafSummary hash positive before,leafSummary hash positive after)=
      (fold hash positive witness before,fold hash positive witness after) := by
  have independent (frames : List (Frame α)) (left right : Summary) :
      frames.foldl (pairStep hash) (left,right)=
        (frames.foldl (step hash) left,frames.foldl (step hash) right) := by
    induction frames generalizing left right with
    | nil => rfl
    | cons frame rest ih => exact ih _ _
  exact independent _ _ _

theorem exact_updated_summary (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (witness : Witness α n) (key : Key) (value : α) {next : Tree α n}
    (good : tree.Good) (result : tree.put (witness.opening hash positive).path key value=.ok next)
    (root : ((witness.opening hash positive).fold hash positive).digest=(tree.summary hash positive).digest)
    (binding : Binding hash positive tree witness) :
    fold hash positive witness (some (key,value))=next.summary hash positive := by
  rw [original_fold]
  exact OwnNodeOpening.exact_updated_summary hash positive tree witness key value good result root binding

end Core033.BottomUpOpening
