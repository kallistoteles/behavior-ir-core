import Core033.Reference

/- Concrete finite sparse-tree meaning and checked-path maintenance. A leaf
retains the full typed key. SHA/byte encodings and actual native/field execution
are separate later obligations; no hash oracle certifies a Core transition here. -/
namespace Core033.Views
open Reference

inductive Path : Nat → Type where
  | here : Path 0
  | left : Path n → Path (n+1)
  | right : Path n → Path (n+1)
  deriving DecidableEq

inductive Tree (α : Type) : Nat → Type where
  | leaf : Option (Key × α) → Tree α 0
  | branch : Nat → Tree α n → Tree α n → Tree α (n+1)

def Tree.count : Tree α n → Nat
  | .leaf none => 0
  | .leaf (some _) => 1
  | .branch count _ _ => count

def Tree.actualCount : Tree α n → Nat
  | .leaf none => 0
  | .leaf (some _) => 1
  | .branch _ left right => left.actualCount + right.actualCount

def Tree.Good : Tree α n → Prop
  | .leaf _ => True
  | .branch count left right => left.Good ∧ right.Good ∧ count = left.count + right.count

def Tree.empty : (n : Nat) → Tree α n
  | 0 => .leaf none
  | n+1 => .branch 0 (empty n) (empty n)

def Tree.lookup : Tree α n → Path n → Option (Key × α)
  | .leaf value, .here => value
  | .branch _ left _, .left path => left.lookup path
  | .branch _ _ right, .right path => right.lookup path

/-- Distinct full keys at the same256-bit address are an explicit collision,
never overwritten or treated as the same used identity. -/
def Tree.put (tree : Tree α n) (path : Path n) (key : Key) (value : α) : Except Key (Tree α n) :=
  match tree,path with
  | .leaf none,.here => .ok (.leaf (some (key,value)))
  | .leaf (some (previous,_)),.here =>
      if previous = key then .ok (.leaf (some (key,value))) else .error previous
  | .branch _ left right,.left rest =>
      Except.map (fun next => .branch (next.count+right.count) next right) (left.put rest key value)
  | .branch _ left right,.right rest =>
      Except.map (fun next => .branch (left.count+next.count) left next) (right.put rest key value)

def Tree.Addressed (tree : Tree α n) (address : Key → Path n) : Prop :=
  ∀ path key value, tree.lookup path = some (key,value) → address key = path

inductive Lookup (α : Type) where
  | absent
  | found (value : α)
  | addressCollision (existing : Key)

def Tree.find (tree : Tree α n) (address : Key → Path n) (key : Key) : Lookup α :=
  match tree.lookup (address key) with
  | none => .absent
  | some (stored,value) => if stored = key then .found value else .addressCollision stored

structure LiveValue where
  x : Reference.Int64
  padding : String
  deriving DecidableEq

abbrev LiveTree := Tree LiveValue 256
abbrev UsedTree := Tree Unit 256

theorem count_exact (tree : Tree α n) (good : tree.Good) : tree.count = tree.actualCount := by
  induction tree with
  | leaf value => cases value <;> rfl
  | branch count left right ihl ihr =>
      change count = left.actualCount + right.actualCount
      rw [good.2.2,ihl good.1,ihr good.2.1]

theorem empty_count (n : Nat) : (Tree.empty (α:=α) n).count = 0 := by
  cases n <;> rfl

theorem empty_good (n : Nat) : (Tree.empty (α:=α) n).Good := by
  induction n with
  | zero => trivial
  | succ n ih => exact ⟨ih,ih,by
      change 0 = (Tree.empty (α:=α) n).count + (Tree.empty (α:=α) n).count
      simp only [empty_count,Nat.zero_add]⟩

theorem empty_lookup (path : Path n) : (Tree.empty (α:=α) n).lookup path = none := by
  induction path with
  | here => rfl
  | left path ih => exact ih
  | right path ih => exact ih

theorem put_good (tree : Tree α n) : ∀ (path : Path n) (key : Key) (value : α) {next : Tree α n},
    tree.Good → tree.put path key value = .ok next → next.Good := by
  induction tree with
  | leaf previous =>
      intro path key value next good result
      cases path
      cases previous with
      | none => simp [Tree.put] at result; subst next; trivial
      | some previous =>
          by_cases same : previous.1 = key
          · simp [Tree.put,same] at result; subst next; trivial
          · simp [Tree.put,same] at result
  | branch count left right ihl ihr =>
      intro path key value next good result
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result
              subst next
              exact ⟨ihl rest key value good.1 child,good.2.1,rfl⟩
      | right rest =>
          cases child : right.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result
              subst next
              exact ⟨good.1,ihr rest key value good.2.1 child,rfl⟩

theorem put_target (tree : Tree α n) : ∀ (path : Path n) (key : Key) (value : α) {next : Tree α n},
    tree.put path key value = .ok next → next.lookup path = some (key,value) := by
  induction tree with
  | leaf previous =>
      intro path key value next result
      cases path
      cases previous with
      | none => simp [Tree.put] at result; subst next; rfl
      | some previous =>
          by_cases same : previous.1 = key
          · simp [Tree.put,same] at result; subst next; rfl
          · simp [Tree.put,same] at result
  | branch count left right ihl ihr =>
      intro path key value next result
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              exact ihl rest key value child
      | right rest =>
          cases child : right.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              exact ihr rest key value child

theorem put_other (tree : Tree α n) : ∀ (path other : Path n) (key : Key) (value : α) {next : Tree α n},
    tree.put path key value = .ok next → other ≠ path → next.lookup other = tree.lookup other := by
  induction tree with
  | leaf previous =>
      intro path other key value next result different
      cases path; cases other
      exact False.elim (different rfl)
  | branch count left right ihl ihr =>
      intro path other key value next result different
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              cases other with
              | left other => exact ihl rest other key value child (by intro equal; cases equal; exact different rfl)
              | right other => rfl
      | right rest =>
          cases child : right.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              cases other with
              | left other => rfl
              | right other => exact ihr rest other key value child (by intro equal; cases equal; exact different rfl)

theorem put_count (tree : Tree α n) : ∀ (path : Path n) (key : Key) (value : α) {next : Tree α n},
    tree.Good → tree.put path key value = .ok next →
    next.count = tree.count + (if (tree.lookup path).isNone then 1 else 0) := by
  induction tree with
  | leaf previous =>
      intro path key value next good result
      cases path
      cases previous with
      | none => simp [Tree.put] at result; subst next; rfl
      | some previous =>
          by_cases same : previous.1 = key
          · simp [Tree.put,same] at result; subst next; rfl
          · simp [Tree.put,same] at result
  | branch count left right ihl ihr =>
      intro path key value next good result
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              have delta := ihl rest key value good.1 child
              have cached := good.2.2
              change updated.count + right.count = count + (if (left.lookup rest).isNone then 1 else 0)
              omega
      | right rest =>
          cases child : right.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              have delta := ihr rest key value good.2.1 child
              have cached := good.2.2
              change left.count + updated.count = count + (if (right.lookup rest).isNone then 1 else 0)
              omega

theorem put_collision (tree : Tree α n) : ∀ (path : Path n) (key : Key) (value : α) (existing : Key),
    tree.put path key value = .error existing →
    ∃ previous, tree.lookup path = some (existing,previous) ∧ existing ≠ key := by
  induction tree with
  | leaf previous =>
      intro path key value existing result
      cases path
      cases previous with
      | none => simp [Tree.put] at result
      | some previous =>
          by_cases same : previous.1 = key
          · simp [Tree.put,same] at result
          · simp [Tree.put,same] at result; subst existing
            exact ⟨previous.2,rfl,same⟩
  | branch count left right ihl ihr =>
      intro path key value existing result
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision =>
              simp [Tree.put,child,Except.map] at result; subst existing
              exact ihl rest key value collision child
          | ok updated => simp [Tree.put,child,Except.map] at result
      | right rest =>
          cases child : right.put rest key value with
          | error collision =>
              simp [Tree.put,child,Except.map] at result; subst existing
              exact ihr rest key value collision child
          | ok updated => simp [Tree.put,child,Except.map] at result

theorem put_addressed (tree : Tree α n) (address : Key → Path n) (path : Path n) (key : Key) (value : α)
    {next : Tree α n} (addressed : tree.Addressed address) (atAddress : path = address key)
    (result : tree.put path key value = .ok next) : next.Addressed address := by
  intro other stored previous found
  by_cases same : other = path
  · subst other
    have equal : (stored,previous) = (key,value) :=
      Option.some.inj (found.symm.trans (put_target tree path key value result))
    exact (congrArg address (congrArg Prod.fst equal)).trans atAddress.symm
  · exact addressed other stored previous ((put_other tree path other key value result same).symm.trans found)

abbrev Digest := Fin (2^256)

structure Summary where
  count : Nat
  digest : Digest
  positive : Bool
  covered : Bool
  deriving DecidableEq

/-- Typed node preimages. Their injective bounded byte encoding and concrete
SHA256 interpretation remain explicit Codec/SHA256 obligations. -/
inductive Node (α : Type) where
  | empty
  | occupied (key : Key) (value : α) (positive : Bool)
  | branch (height totalCount : Nat) (leftRoot rightRoot : Digest)
      (leftCount rightCount : Nat) (positive covered : Bool)

def leafNode (positive : α → Bool) : Option (Key × α) → Node α
  | none => .empty
  | some (key,value) => .occupied key value (positive value)

def leafSummary (hash : Node α → Digest) (positive : α → Bool) (value : Option (Key × α)) : Summary :=
  ⟨if value.isSome then 1 else 0,hash (leafNode positive value),
    value.all (fun pair => positive pair.2),true⟩

def branchNode (height count : Nat) (left right : Summary) : Node α :=
  .branch height count left.digest right.digest left.count right.count
    (left.positive && right.positive) (left.covered && right.covered)

def branchSummary (hash : Node α → Digest) (height count : Nat) (left right : Summary) : Summary :=
  ⟨count,hash (branchNode height count left right),left.positive && right.positive,left.covered && right.covered⟩

def Tree.summary (hash : Node α → Digest) (positive : α → Bool) : Tree α n → Summary
  | .leaf value => leafSummary hash positive value
  | @Tree.branch _ height count left right =>
      branchSummary hash (height+1) count (left.summary hash positive) (right.summary hash positive)

def Tree.nodeInput (hash : Node α → Digest) (positive : α → Bool) : Tree α n → Node α
  | .leaf value => leafNode positive value
  | @Tree.branch _ height count left right =>
      branchNode (height+1) count (left.summary hash positive) (right.summary hash positive)

theorem summary_count (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    (tree.summary hash positive).count = tree.count := by
  cases tree with
  | leaf value => cases value <;> rfl
  | branch count left right => rfl

theorem summary_digest (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    (tree.summary hash positive).digest = hash (tree.nodeInput hash positive) := by
  cases tree <;> rfl

inductive Opening (α : Type) : Nat → Type where
  | leaf : Option (Key × α) → Opening α 0
  | left : Opening α n → Summary → Opening α (n+1)
  | right : Summary → Opening α n → Opening α (n+1)

def Opening.path : Opening α n → Path n
  | .leaf _ => .here
  | .left child _ => .left child.path
  | .right _ child => .right child.path

def Opening.value : Opening α n → Option (Key × α)
  | .leaf value => value
  | .left child _ => child.value
  | .right _ child => child.value

def Opening.fold (hash : Node α → Digest) (positive : α → Bool) : Opening α n → Summary
  | .leaf value => leafSummary hash positive value
  | @Opening.left _ height child sibling =>
      let current := child.fold hash positive
      branchSummary hash (height+1) (current.count+sibling.count) current sibling
  | @Opening.right _ height sibling child =>
      let current := child.fold hash positive
      branchSummary hash (height+1) (sibling.count+current.count) sibling current

def Opening.nodeInput (hash : Node α → Digest) (positive : α → Bool) : Opening α n → Node α
  | .leaf value => leafNode positive value
  | @Opening.left _ height child sibling =>
      let current := child.fold hash positive
      branchNode (height+1) (current.count+sibling.count) current sibling
  | @Opening.right _ height sibling child =>
      let current := child.fold hash positive
      branchNode (height+1) (sibling.count+current.count) sibling current

theorem opening_digest (hash : Node α → Digest) (positive : α → Bool) (opening : Opening α n) :
    (opening.fold hash positive).digest = hash (opening.nodeInput hash positive) := by
  cases opening <;> rfl

def Tree.opening (hash : Node α → Digest) (positive : α → Bool) :
    Tree α n → Path n → Opening α n
  | .leaf value,.here => .leaf value
  | .branch _ left right,.left path => .left (left.opening hash positive path) (right.summary hash positive)
  | .branch _ left right,.right path => .right (left.summary hash positive) (right.opening hash positive path)

theorem honest_path (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ path, (tree.opening hash positive path).path = path := by
  induction tree with
  | leaf value => intro path; cases path; rfl
  | branch count left right ihl ihr =>
      intro path
      cases path with
      | left rest => exact congrArg Path.left (ihl rest)
      | right rest => exact congrArg Path.right (ihr rest)

theorem honest_value (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ path, (tree.opening hash positive path).value = tree.lookup path := by
  induction tree with
  | leaf value => intro path; cases path; rfl
  | branch count left right ihl ihr =>
      intro path
      cases path with
      | left rest => exact ihl rest
      | right rest => exact ihr rest

theorem honest_root (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ path, tree.Good → (tree.opening hash positive path).fold hash positive = tree.summary hash positive := by
  induction tree with
  | leaf value => intro path good; cases path; rfl
  | branch count left right ihl ihr =>
      intro path good
      cases path with
      | left rest =>
          change branchSummary hash _ _ _ _ = branchSummary hash _ _ _ _
          rw [ihl rest good.1,summary_count,summary_count,← good.2.2]
      | right rest =>
          change branchSummary hash _ _ _ _ = branchSummary hash _ _ _ _
          rw [ihr rest good.2.1,summary_count,summary_count,← good.2.2]

def Tree.pathNodes (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (path : Path n) : List (Node α) :=
  tree.nodeInput hash positive :: match tree,path with
  | .leaf _,.here => []
  | .branch _ left _,.left rest => left.pathNodes hash positive rest
  | .branch _ _ right,.right rest => right.pathNodes hash positive rest

def Opening.nodes (hash : Node α → Digest) (positive : α → Bool) (opening : Opening α n) : List (Node α) :=
  opening.nodeInput hash positive :: match opening with
  | .leaf _ => []
  | .left child _ => child.nodes hash positive
  | .right _ child => child.nodes hash positive

/-- A finite transcript condition, not an axiom of globally injective finite
hashing. A violated premise gives two distinct node preimages with equal hashes.
Concrete byte injectivity and SHA security connect this to a real collision. -/
def PathBinding (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (opening : Opening α n) : Prop :=
  ∀ actual ∈ tree.pathNodes hash positive opening.path,
    ∀ claimed ∈ opening.nodes hash positive, hash actual = hash claimed → actual = claimed

theorem root_on_path (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) (path : Path n) :
    tree.nodeInput hash positive ∈ tree.pathNodes hash positive path := by
  cases path <;> cases tree <;> exact List.mem_cons_self

theorem opening_root_in_nodes (hash : Node α → Digest) (positive : α → Bool) (opening : Opening α n) :
    opening.nodeInput hash positive ∈ opening.nodes hash positive := by
  cases opening <;> exact List.mem_cons_self

def Node.leftRoot : Node α → Option Digest
  | .branch _ _ root _ _ _ _ _ => some root
  | _ => none

def Node.rightRoot : Node α → Option Digest
  | .branch _ _ _ root _ _ _ _ => some root
  | _ => none

theorem branch_left_root {height count height' count' : Nat} {a b c d : Summary}
    (equal : (branchNode height count a b : Node α) = branchNode height' count' c d) :
    a.digest = c.digest := by
  exact Option.some.inj (congrArg Node.leftRoot equal)

theorem branch_right_root {height count height' count' : Nat} {a b c d : Summary}
    (equal : (branchNode height count a b : Node α) = branchNode height' count' c d) :
    b.digest = d.digest := by
  exact Option.some.inj (congrArg Node.rightRoot equal)

theorem leaf_injective (positive : α → Bool) (a b : Option (Key × α))
    (equal : leafNode positive a = leafNode positive b) : a = b := by
  cases a with
  | none => cases b <;> simp_all [leafNode]
  | some a =>
      cases b with
      | none => simp [leafNode] at equal
      | some b =>
          simp only [leafNode,Node.occupied.injEq] at equal
          exact congrArg some (Prod.ext equal.1 equal.2.1)

theorem opening_sound (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ opening : Opening α n,
      (opening.fold hash positive).digest = (tree.summary hash positive).digest →
      PathBinding hash positive tree opening → opening.value = tree.lookup opening.path := by
  induction tree with
  | leaf actual =>
      intro opening root binding
      have input := binding (Tree.nodeInput hash positive (.leaf actual)) (root_on_path hash positive _ opening.path)
        (opening.nodeInput hash positive) (opening_root_in_nodes hash positive opening)
        (by simpa only [summary_digest,opening_digest] using root.symm)
      cases opening with
      | leaf claimed => exact (leaf_injective positive actual claimed input).symm
  | branch count left right ihl ihr =>
      intro opening root binding
      have input := binding (Tree.nodeInput hash positive (.branch count left right)) (root_on_path hash positive _ opening.path)
        (opening.nodeInput hash positive) (opening_root_in_nodes hash positive opening)
        (by simpa only [summary_digest,opening_digest] using root.symm)
      cases opening with
      | left child sibling =>
          have childRoot : (child.fold hash positive).digest = (left.summary hash positive).digest :=
            (branch_left_root input).symm
          apply ihl child childRoot
          intro actual ha claimed hc equal
          exact binding actual (List.mem_cons_of_mem _ ha) claimed (List.mem_cons_of_mem _ hc) equal
      | right sibling child =>
          have childRoot : (child.fold hash positive).digest = (right.summary hash positive).digest :=
            (branch_right_root input).symm
          apply ihr child childRoot
          intro actual ha claimed hc equal
          exact binding actual (List.mem_cons_of_mem _ ha) claimed (List.mem_cons_of_mem _ hc) equal

/-- An accepted wrong opening exposes a collision among this check's actual and
claimed path inputs. No globally collision-free finite hash is postulated. -/
theorem wrong_opening_has_collision (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (opening : Opening α n)
    (root : (opening.fold hash positive).digest = (tree.summary hash positive).digest)
    (wrong : opening.value ≠ tree.lookup opening.path) :
    ∃ actual ∈ tree.pathNodes hash positive opening.path,
      ∃ claimed ∈ opening.nodes hash positive, actual ≠ claimed ∧ hash actual = hash claimed := by
  classical
  apply Classical.byContradiction
  intro absent
  apply wrong
  apply opening_sound hash positive tree opening root
  intro actual ha claimed hc equal
  apply Classical.byContradiction
  intro different
  exact absent ⟨actual,ha,claimed,hc,different,equal⟩

theorem put_rejects_different_key (tree : Tree α n) :
    ∀ (path : Path n) (existing : Key) (previous : α) (key : Key) (value : α),
      tree.lookup path = some (existing,previous) → existing ≠ key →
      tree.put path key value = .error existing := by
  induction tree with
  | leaf old =>
      intro path existing previous key value found different
      cases path
      change old = some (existing,previous) at found
      subst old
      simp [Tree.put,different]
  | branch count left right ihl ihr =>
      intro path existing previous key value found different
      cases path with
      | left rest => simp [Tree.put,ihl rest existing previous key value found different,Except.map]
      | right rest => simp [Tree.put,ihr rest existing previous key value found different,Except.map]

theorem put_keeps_all_keys (tree : Tree α n) (path : Path n) (key : Key) (value : α)
    {next : Tree α n} (result : tree.put path key value = .ok next)
    (other : Path n) (existing : Key) (previous : α) (found : tree.lookup other = some (existing,previous)) :
    ∃ current, next.lookup other = some (existing,current) := by
  by_cases same : other = path
  · subst other
    by_cases sameKey : existing = key
    · subst existing
      exact ⟨value,put_target tree path key value result⟩
    · have rejected := put_rejects_different_key tree path existing previous key value found sameKey
      rw [result] at rejected
      cases rejected
  · exact ⟨previous,(put_other tree path other key value result same).trans found⟩

def Opening.replaceTip (opening : Opening α n) (value : Option (Key × α)) : Opening α n :=
  match opening with
  | .leaf _ => .leaf value
  | .left child sibling => .left (child.replaceTip value) sibling
  | .right sibling child => .right sibling (child.replaceTip value)

theorem put_opening (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    ∀ (path : Path n) (key : Key) (value : α) {next : Tree α n},
      tree.put path key value = .ok next →
      next.opening hash positive path = (tree.opening hash positive path).replaceTip (some (key,value)) := by
  induction tree with
  | leaf previous =>
      intro path key value next result
      cases path
      cases previous with
      | none => simp [Tree.put] at result; subst next; rfl
      | some previous =>
          by_cases same : previous.1 = key
          · simp [Tree.put,same] at result; subst next; rfl
          · simp [Tree.put,same] at result
  | branch count left right ihl ihr =>
      intro path key value next result
      cases path with
      | left rest =>
          cases child : left.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              exact congrArg (fun opening => Opening.left opening (right.summary hash positive))
                (ihl rest key value child)
      | right rest =>
          cases child : right.put rest key value with
          | error collision => simp [Tree.put,child,Except.map] at result
          | ok updated =>
              simp [Tree.put,child,Except.map] at result; subst next
              exact congrArg (fun opening => Opening.right (left.summary hash positive) opening)
                (ihr rest key value child)

theorem updated_opening_root (hash : Node α → Digest) (positive : α → Bool)
    (tree : Tree α n) (path : Path n) (key : Key) (value : α) {next : Tree α n}
    (good : tree.Good) (result : tree.put path key value = .ok next) :
    ((tree.opening hash positive path).replaceTip (some (key,value))).fold hash positive =
      next.summary hash positive := by
  rw [← put_opening hash positive tree path key value result]
  exact honest_root hash positive next path (put_good tree path key value good result)

def Tree.All (positive : α → Bool) (tree : Tree α n) : Prop :=
  ∀ path key value, tree.lookup path = some (key,value) → positive value = true

theorem summary_positive_exact (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    (tree.summary hash positive).positive = true ↔ tree.All positive := by
  induction tree with
  | leaf value =>
      cases value with
      | none =>
          constructor
          · intro _ path key value found; cases path; cases found
          · intro _; rfl
      | some pair =>
          constructor
          · intro correct path key value found
            cases path
            have equal : pair.2 = value := congrArg Prod.snd (Option.some.inj found)
            rw [← equal]
            exact correct
          · intro all
            exact all .here pair.1 pair.2 rfl
  | branch count left right ihl ihr =>
      constructor
      · intro correct
        have both := Bool.and_eq_true_iff.mp correct
        have leftAll := ihl.mp both.1
        have rightAll := ihr.mp both.2
        intro path key value found
        cases path with
        | left rest => exact leftAll rest key value found
        | right rest => exact rightAll rest key value found
      · intro all
        apply Bool.and_eq_true_iff.mpr
        exact ⟨ihl.mpr (fun path key value found => all (.left path) key value found),
          ihr.mpr (fun path key value found => all (.right path) key value found)⟩

theorem summary_complete (hash : Node α → Digest) (positive : α → Bool) (tree : Tree α n) :
    (tree.summary hash positive).covered = true := by
  induction tree with
  | leaf value => rfl
  | branch count left right ihl ihr =>
      change ((left.summary hash positive).covered && (right.summary hash positive).covered) = true
      rw [ihl,ihr]
      rfl

end Core033.Views
