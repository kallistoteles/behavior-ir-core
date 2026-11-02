import Core033.Views

/- Complete typed seed-to-view construction. Concrete source bytes/SHA and
native/field execution are later instantiations, not trusted hash-oracle Init
certificates. The operational tree lookup retains its explicit collision case. -/
namespace Core033.Init
open Reference Views

/-- Extensional membership projection only. Tree.find remains the operational
lookup: a different full key at the address is never an unused-ID authorization. -/
def lookupKey (tree : Tree α n) (address : Key → Path n) (key : Key) : Option α :=
  match tree.lookup (address key) with
  | none => none
  | some (stored,value) => if stored = key then some value else none

theorem empty_lookupKey (address : Key → Path n) (key : Key) :
    lookupKey (Tree.empty (α:=α) n) address key = none := by
  unfold lookupKey
  rw [empty_lookup]

theorem old_key_of_put (tree : Tree α n) (path : Path n) (key : Key) (value : α)
    {next : Tree α n} (result : tree.put path key value = .ok next)
    (existing : Key) (previous : α) (found : tree.lookup path = some (existing,previous)) : existing = key := by
  by_cases same : existing = key
  · exact same
  · have rejected := put_rejects_different_key tree path existing previous key value found same
    rw [result] at rejected
    cases rejected

theorem put_lookupKey (tree : Tree α n) (address : Key → Path n) (key : Key) (value : α)
    {next : Tree α n} (result : tree.put (address key) key value = .ok next) (query : Key) :
    lookupKey next address query = if query = key then some value else lookupKey tree address query := by
  have target := put_target tree (address key) key value result
  by_cases sameKey : query = key
  · subst query
    simp [lookupKey,target]
  · rw [if_neg sameKey]
    by_cases sameAddress : address query = address key
    · cases before : tree.lookup (address key) with
      | none => simp [lookupKey,sameAddress,before,target,Ne.symm sameKey]
      | some previous =>
          have previousKey := old_key_of_put tree (address key) key value result previous.1 previous.2 before
          simp [lookupKey,sameAddress,before,target,previousKey,Ne.symm sameKey]
    · unfold lookupKey
      rw [put_other tree (address key) (address query) key value result sameAddress]

def writeMap (map : Key → Option α) (entry : Key × α) : Key → Option α :=
  fun query => if query = entry.1 then some entry.2 else map query

def mapOfEntries (entries : List (Key × α)) : Key → Option α :=
  entries.foldl writeMap (fun _ => none)

def construct (address : Key → Path n) (tree : Tree α n) : List (Key × α) → Except Key (Tree α n)
  | [] => .ok tree
  | entry::rest =>
      match tree.put (address entry.1) entry.1 entry.2 with
      | .error collision => .error collision
      | .ok next => construct address next rest

def build (address : Key → Path n) (entries : List (Key × α)) : Except Key (Tree α n) :=
  construct address (Tree.empty n) entries

theorem construct_map (address : Key → Path n) (entries : List (Key × α)) :
    ∀ (tree next : Tree α n), construct address tree entries = .ok next →
      lookupKey next address = entries.foldl writeMap (lookupKey tree address) := by
  induction entries with
  | nil =>
      intro tree next result
      simp [construct] at result; subst next; rfl
  | cons entry rest ih =>
      intro tree next result
      cases step : tree.put (address entry.1) entry.1 entry.2 with
      | error collision => simp [construct,step] at result
      | ok middle =>
          simp only [construct,step] at result
          have following := ih middle next result
          have update : lookupKey middle address = writeMap (lookupKey tree address) entry := by
            funext query
            exact put_lookupKey tree address entry.1 entry.2 step query
          simpa only [List.foldl_cons,update] using following

theorem build_map (address : Key → Path n) (entries : List (Key × α)) (tree : Tree α n)
    (result : build address entries = .ok tree) : lookupKey tree address = mapOfEntries entries := by
  have complete := construct_map address entries (Tree.empty n) tree result
  have empty : lookupKey (Tree.empty (α:=α) n) address = (fun _ => none) := by
    funext key; exact empty_lookupKey address key
  simpa only [empty,mapOfEntries] using complete

def lookupEntries : List (Key × α) → Key → Option α
  | [],_ => none
  | entry::rest,query => if query = entry.1 then some entry.2 else lookupEntries rest query

theorem fold_unaffected (entries : List (Key × α)) : ∀ (map : Key → Option α) (query : Key),
    query ∉ entries.map Prod.fst → (entries.foldl writeMap map) query = map query := by
  induction entries with
  | nil => intro map query missing; rfl
  | cons entry rest ih =>
      intro map query missing
      simp only [List.map_cons,List.mem_cons,not_or] at missing
      simpa only [List.foldl_cons,writeMap,if_neg missing.1] using
        ih (writeMap map entry) query missing.2

theorem fold_matches_entries (entries : List (Key × α)) : ∀ (map : Key → Option α),
    (entries.map Prod.fst).Nodup → ∀ query,
      (entries.foldl writeMap map) query =
        match lookupEntries entries query with
        | none => map query
        | some value => some value := by
  induction entries with
  | nil => intro map unique query; rfl
  | cons entry rest ih =>
      intro map unique query
      simp only [List.map_cons,List.nodup_cons] at unique
      by_cases same : query = entry.1
      · subst query
        rw [List.foldl_cons,fold_unaffected rest _ _ unique.1]
        simp [writeMap,lookupEntries]
      · simpa only [List.foldl_cons,lookupEntries,if_neg same,writeMap] using
          ih (writeMap map entry) unique.2 query

theorem build_lookup (address : Key → Path n) (entries : List (Key × α)) (tree : Tree α n)
    (unique : (entries.map Prod.fst).Nodup) (result : build address entries = .ok tree) (query : Key) :
    lookupKey tree address query = lookupEntries entries query := by
  rw [build_map address entries tree result]
  unfold mapOfEntries
  rw [fold_matches_entries entries _ unique query]
  cases lookupEntries entries query <;> rfl

theorem construct_count (address : Key → Path n) (entries : List (Key × α)) :
    ∀ (tree next : Tree α n), (entries.map Prod.fst).Nodup → tree.Good →
      (∀ key ∈ entries.map Prod.fst, lookupKey tree address key = none) →
      construct address tree entries = .ok next → next.Good ∧ next.count = tree.count+entries.length := by
  induction entries with
  | nil =>
      intro tree next unique good fresh result
      simp [construct] at result; subst next
      exact ⟨good,rfl⟩
  | cons entry rest ih =>
      intro tree next unique good fresh result
      simp only [List.map_cons,List.nodup_cons] at unique
      cases step : tree.put (address entry.1) entry.1 entry.2 with
      | error collision => simp [construct,step] at result
      | ok middle =>
          simp only [construct,step] at result
          have middleGood := put_good tree (address entry.1) entry.1 entry.2 good step
          have notPresent := fresh entry.1 (List.mem_cons_self)
          have vacant : tree.lookup (address entry.1) = none := by
            cases before : tree.lookup (address entry.1) with
            | none => rfl
            | some previous =>
                have previousKey := old_key_of_put tree (address entry.1) entry.1 entry.2 step previous.1 previous.2 before
                simp [lookupKey,before,previousKey] at notPresent
          have delta := put_count tree (address entry.1) entry.1 entry.2 good step
          simp only [vacant,Option.isNone_none,ite_true] at delta
          have restFresh : ∀ key ∈ rest.map Prod.fst, lookupKey middle address key = none := by
            intro query present
            have different : query ≠ entry.1 := by
              intro equal; subst query; exact unique.1 present
            rw [put_lookupKey tree address entry.1 entry.2 step query,if_neg different]
            exact fresh query (List.mem_cons_of_mem _ present)
          have tail := ih middle next unique.2 middleGood restFresh result
          refine ⟨tail.1,?_⟩
          simp only [List.length_cons]
          omega

theorem build_count (address : Key → Path n) (entries : List (Key × α)) (tree : Tree α n)
    (unique : (entries.map Prod.fst).Nodup) (result : build address entries = .ok tree) :
    tree.Good ∧ tree.count = entries.length := by
  have construction := construct_count address entries (Tree.empty n) tree unique (empty_good n)
    (fun key _ => empty_lookupKey address key) result
  simpa only [empty_count,Nat.zero_add] using construction

theorem construct_addressed (address : Key → Path n) (entries : List (Key × α)) :
    ∀ (tree next : Tree α n), tree.Addressed address → construct address tree entries = .ok next →
      next.Addressed address := by
  induction entries with
  | nil => intro tree next valid result; simp [construct] at result; subst next; exact valid
  | cons entry rest ih =>
      intro tree next valid result
      cases step : tree.put (address entry.1) entry.1 entry.2 with
      | error collision => simp [construct,step] at result
      | ok middle =>
          simp only [construct,step] at result
          exact ih middle next (put_addressed tree address _ entry.1 entry.2 valid rfl step) result

theorem build_addressed (address : Key → Path n) (entries : List (Key × α)) (tree : Tree α n)
    (result : build address entries = .ok tree) : tree.Addressed address := by
  apply construct_addressed address entries (Tree.empty n) tree _ result
  intro path key value found
  rw [empty_lookup] at found
  cases found

def rowValue (row : Row) : LiveValue := ⟨row.x,row.padding⟩
def liveEntries (state : State) : List (Key × LiveValue) := state.live.map (fun row => (row.key,rowValue row))
def usedEntries (state : State) : List (Key × Unit) := state.used.map (fun key => (key,()))

theorem live_entry_keys (state : State) : (liveEntries state).map Prod.fst = liveKeys state := by
  simp [liveEntries,liveKeys,List.map_map,Function.comp_def]

theorem used_entry_keys (state : State) : (usedEntries state).map Prod.fst = state.used := by
  simp [usedEntries,List.map_map,Function.comp_def]

theorem live_entry_lookup (rows : List Row) (query : Key) :
    lookupEntries (rows.map (fun row => (row.key,rowValue row))) query =
      (rows.find? (fun row => decide (row.key = query))).map rowValue := by
  induction rows with
  | nil => rfl
  | cons row rest ih =>
      by_cases same : row.key = query
      · simp [lookupEntries,List.find?,same]
      · simp [lookupEntries,List.find?,same,Ne.symm same,ih]

theorem used_entry_lookup (keys : List Key) (query : Key) :
    lookupEntries (keys.map (fun key => (key,()))) query = if query ∈ keys then some () else none := by
  induction keys with
  | nil => simp [lookupEntries]
  | cons key rest ih =>
      by_cases same : query = key
      · subst query; simp [lookupEntries]
      · simp [lookupEntries,same,List.mem_cons,ih]

theorem lookup_membership (rows : List Row) (query : Key) :
    (rows.find? (fun row => decide (row.key = query))).isSome = decide (query ∈ rows.map Row.key) := by
  induction rows with
  | nil => rfl
  | cons row rest ih =>
      by_cases same : row.key = query
      · simp [List.find?,same]
      · simp [List.find?,same,Ne.symm same,ih]

def view (address : Key → Path 256) (live : LiveTree) (used : UsedTree) : ViewMeaning :=
  ⟨fun key => (lookupKey live address key).isSome,
    fun key => (lookupKey used address key).isSome,
    live.count,
    fun key => (lookupKey live address key).any (fun value => decide (0 < value.x.value)),
    fun key => (lookupKey live address key).isSome⟩

theorem built_J (address : Key → Path 256) (state : State) (live : LiveTree) (used : UsedTree)
    (liveUnique : (liveKeys state).Nodup) (usedUnique : state.used.Nodup)
    (builtLive : build address (liveEntries state) = .ok live)
    (builtUsed : build address (usedEntries state) = .ok used) : J state (view address live used) := by
  have uniqueLive : ((liveEntries state).map Prod.fst).Nodup := by rw [live_entry_keys]; exact liveUnique
  have uniqueUsed : ((usedEntries state).map Prod.fst).Nodup := by rw [used_entry_keys]; exact usedUnique
  have liveLookup : ∀ key, lookupKey live address key = (lookup state key).map rowValue := by
    intro key
    rw [build_lookup address (liveEntries state) live uniqueLive builtLive key]
    exact live_entry_lookup state.live key
  have usedLookup : ∀ key, lookupKey used address key = if key ∈ state.used then some () else none := by
    intro key
    rw [build_lookup address (usedEntries state) used uniqueUsed builtUsed key]
    exact used_entry_lookup state.used key
  have member : ∀ key, (lookupKey live address key).isSome = decide (key ∈ liveKeys state) := by
    intro key
    calc
      (lookupKey live address key).isSome = (lookup state key).isSome := by
        rw [liveLookup]; cases lookup state key <;> rfl
      _ = decide (key ∈ liveKeys state) := lookup_membership state.live key
  refine ⟨⟨?_,?_⟩,?_,?_,?_⟩
  · exact member
  · intro key
    change (lookupKey used address key).isSome = decide (key ∈ state.used)
    rw [usedLookup]
    by_cases present : key ∈ state.used <;> simp [present]
  · have count := (build_count address (liveEntries state) live uniqueLive builtLive).2
    simpa only [liveEntries,List.length_map] using count
  · intro key
    change (lookupKey live address key).any (fun value => decide (0 < value.x.value)) = _
    rw [liveLookup]
    cases lookup state key <;> rfl
  · exact member

def validateState (cfg : Config) (state : State) : Bool :=
  decide (liveKeys state).Nodup && decide state.used.Nodup &&
  decide ((liveKeys state).Pairwise keyLess) && decide (state.used.Pairwise keyLess) &&
  state.live.all (fun row => decide (row.key.entity = "E" ∧ 0 < row.x.value)) &&
  state.used.all (fun key => decide (key.entity = "E")) &&
  (liveKeys state).all (fun key => decide (key ∈ state.used)) &&
  decide (state.live.length ≤ cfg.countCap)

theorem validate_state_exact (cfg : Config) (state : State) :
    validateState cfg state = true ↔ InitialValid cfg state := by
  simp only [validateState,InitialValid,Bool.and_eq_true_iff,decide_eq_true_eq,List.all_eq_true,and_assoc]

/-- No source-digest field exists in its own encoded preimage. -/
structure Inventory where
  kind : OriginKind
  authority : String
  state : State

inductive InitFailure where
  | unsupportedAdoption
  | profileScope
  | resourceLimit
  | originMismatch
  | invalidInitialState
  | addressCollision (existing : Key)

structure Initialized where
  subject : Omega
  live : LiveTree
  used : UsedTree

def expectedCheck (expected actual : Origin) : Bool :=
  decide (actual.kind = expected.kind ∧ actual.authority = expected.authority ∧
    actual.sourceDigest = expected.sourceDigest ∧ actual.lineage = expected.lineage ∧
    actual.semanticAnchor = expected.semanticAnchor ∧ actual.activeSubject = expected.activeSubject ∧
    actual.declaredLive = expected.declaredLive ∧ actual.declaredUsed = expected.declaredUsed)

theorem expected_check_exact (expected actual : Origin) :
    expectedCheck expected actual = true ↔ ExpectedOrigin expected actual := by
  simp only [expectedCheck,ExpectedOrigin,decide_eq_true_eq]

def sourceCheck (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (actual : Origin) (inventory : Inventory) : Bool :=
  decide (actual.kind = inventory.kind ∧ actual.authority = inventory.authority ∧
    actual.sourceDigest = sourceHash (encode inventory) ∧
    actual.declaredLive = inventory.state.live.length ∧ actual.declaredUsed = inventory.state.used.length)

def initialSubject (origin : Origin) (state : State) : Omega :=
  ⟨state,⟨origin.lineage,origin.semanticAnchor,0,none,origin.activeSubject⟩⟩

/-- Semantic construction with explicit encoding/hash parameters. Only their
later concrete checked instantiations can authorize an executable certificate. -/
def initializeSeed (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected actual : Origin) (inventory : Inventory) : Except InitFailure Initialized :=
  if inventory.kind = .adoption then .error .unsupportedAdoption
  else if cfg.countCap > 1048576 then .error .profileScope
  else if inventory.state.used.length > 1048576 then .error .resourceLimit
  else if expectedCheck expected actual = false ∨ sourceCheck encode sourceHash actual inventory = false then
    .error .originMismatch
  else if inventory.kind = .empty ∧ (inventory.state.live ≠ [] ∨ inventory.state.used ≠ []) then
    .error .invalidInitialState
  else if validateState cfg inventory.state = false then .error .invalidInitialState
  else
    match build address (liveEntries inventory.state) with
    | .error key => .error (.addressCollision key)
    | .ok live =>
      match build address (usedEntries inventory.state) with
      | .error key => .error (.addressCollision key)
      | .ok used => .ok ⟨initialSubject actual inventory.state,live,used⟩

theorem initialize_facts (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected actual : Origin) (inventory : Inventory) (out : Initialized)
    (result : initializeSeed encode sourceHash address cfg expected actual inventory = .ok out) :
    ∃ live used, build address (liveEntries inventory.state) = .ok live ∧
      build address (usedEntries inventory.state) = .ok used ∧
      out = ⟨initialSubject actual inventory.state,live,used⟩ ∧ ExpectedOrigin expected actual ∧
      sourceCheck encode sourceHash actual inventory = true ∧ InitialValid cfg inventory.state ∧
      inventory.kind ≠ .adoption ∧
      (inventory.kind = .empty → inventory.state.live = [] ∧ inventory.state.used = []) ∧
      cfg.countCap ≤ 1048576 ∧ inventory.state.used.length ≤ 1048576 := by
  unfold initializeSeed at result
  split at result
  · cases result
  · rename_i notAdoption
    split at result
    · cases result
    · rename_i cap
      split at result
      · cases result
      · rename_i usedLimit
        split at result
        · cases result
        · rename_i source
          split at result
          · cases result
          · rename_i empty
            split at result
            · cases result
            · rename_i valid
              cases liveResult : build address (liveEntries inventory.state) with
              | error key => simp [liveResult] at result
              | ok live =>
                  cases usedResult : build address (usedEntries inventory.state) with
                  | error key => simp [liveResult,usedResult] at result
                  | ok used =>
                      simp only [liveResult,usedResult,Except.ok.injEq] at result
                      subst out
                      have expectedPass : expectedCheck expected actual = true := by
                        cases check : expectedCheck expected actual with
                        | false => exact False.elim (source (Or.inl check))
                        | true => rfl
                      have sourcePass : sourceCheck encode sourceHash actual inventory = true := by
                        cases check : sourceCheck encode sourceHash actual inventory with
                        | false => exact False.elim (source (Or.inr check))
                        | true => rfl
                      have statePass : validateState cfg inventory.state = true := by
                        cases check : validateState cfg inventory.state with
                        | false => exact False.elim (valid check)
                        | true => rfl
                      refine ⟨live,used,rfl,rfl,rfl,(expected_check_exact _ _).mp expectedPass,
                        sourcePass,(validate_state_exact _ _).mp statePass,notAdoption,?_,
                        Nat.le_of_not_gt cap,Nat.le_of_not_gt usedLimit⟩
                      intro kind
                      constructor
                      · by_cases absent : inventory.state.live = []
                        · exact absent
                        · exact False.elim (empty ⟨kind,Or.inl absent⟩)
                      · by_cases absent : inventory.state.used = []
                        · exact absent
                        · exact False.elim (empty ⟨kind,Or.inr absent⟩)

theorem initialize_sound (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected actual : Origin) (inventory : Inventory) (out : Initialized)
    (result : initializeSeed encode sourceHash address cfg expected actual inventory = .ok out) :
    ExpectedOrigin expected actual ∧ OriginShape actual out.subject ∧
    InitialValid cfg out.subject.business ∧
    Represents out.subject.business (view address out.live out.used) ∧
    J out.subject.business (view address out.live out.used) := by
  obtain ⟨live,used,builtLive,builtUsed,output,expectedMatch,source,valid,notAdoption,empty,cap,usedLimit⟩ :=
    initialize_facts encode sourceHash address cfg expected actual inventory out result
  subst out
  have exactView := built_J address inventory.state live used valid.1 valid.2.1 builtLive builtUsed
  refine ⟨expectedMatch,?_,valid,exactView.1,exactView⟩
  have raw : actual.kind = inventory.kind ∧ actual.authority = inventory.authority ∧
      actual.sourceDigest = sourceHash (encode inventory) ∧
      actual.declaredLive = inventory.state.live.length ∧ actual.declaredUsed = inventory.state.used.length := by
    exact of_decide_eq_true source
  refine ⟨rfl,raw.2.2.2.1,raw.2.2.2.2,?_⟩
  rw [raw.1]
  cases kind : inventory.kind with
  | empty => exact empty kind
  | newSeed => trivial
  | adoption => exact False.elim (notAdoption kind)

def accepts (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected actual : Origin) (state : Omega) (views : ViewMeaning) : Prop :=
  ∃ inventory out, initializeSeed encode sourceHash address cfg expected actual inventory = .ok out ∧
    state = out.subject ∧ views = view address out.live out.used

theorem scoped_init_sound (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected : Origin) :
    InitSoundStatement cfg expected (accepts encode sourceHash address cfg expected) := by
  intro actual state views accepted
  obtain ⟨inventory,out,result,rfl,rfl⟩ := accepted
  exact initialize_sound encode sourceHash address cfg expected actual inventory out result

theorem invalid_initial_state_rejected (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes)
    (address : Key → Path 256) (cfg : Config) (expected actual : Origin) (inventory : Inventory)
    (invalid : ¬ InitialValid cfg inventory.state) (out : Initialized) :
    initializeSeed encode sourceHash address cfg expected actual inventory ≠ .ok out := by
  intro result
  obtain ⟨live,used,hl,hu,output,he,hs,valid,rest⟩ :=
    initialize_facts encode sourceHash address cfg expected actual inventory out result
  exact invalid valid

theorem wrong_source_digest_rejected (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes)
    (address : Key → Path 256) (cfg : Config) (expected actual : Origin) (inventory : Inventory)
    (wrong : actual.sourceDigest ≠ sourceHash (encode inventory)) (out : Initialized) :
    initializeSeed encode sourceHash address cfg expected actual inventory ≠ .ok out := by
  intro result
  obtain ⟨live,used,hl,hu,output,he,source,rest⟩ :=
    initialize_facts encode sourceHash address cfg expected actual inventory out result
  have raw : actual.kind = inventory.kind ∧ actual.authority = inventory.authority ∧
      actual.sourceDigest = sourceHash (encode inventory) ∧
      actual.declaredLive = inventory.state.live.length ∧ actual.declaredUsed = inventory.state.used.length :=
    of_decide_eq_true source
  exact wrong raw.2.2.1

theorem adoption_rejected (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes)
    (address : Key → Path 256) (cfg : Config) (expected actual : Origin) (inventory : Inventory)
    (adoption : inventory.kind = .adoption) :
    initializeSeed encode sourceHash address cfg expected actual inventory = .error .unsupportedAdoption := by
  simp [initializeSeed,adoption]

theorem used_resource_limit_is_operational (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes)
    (address : Key → Path 256) (cfg : Config) (expected actual : Origin) (inventory : Inventory)
    (supported : inventory.kind ≠ .adoption) (cap : cfg.countCap ≤ 1048576)
    (over : 1048576 < inventory.state.used.length) :
    initializeSeed encode sourceHash address cfg expected actual inventory = .error .resourceLimit := by
  simp [initializeSeed,supported,Nat.not_lt.mpr cap,over]

theorem all_used_ids_retained (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes)
    (address : Key → Path 256) (cfg : Config) (expected actual : Origin) (inventory : Inventory) (out : Initialized)
    (result : initializeSeed encode sourceHash address cfg expected actual inventory = .ok out) :
    out.used.count = inventory.state.used.length ∧
    ∀ key, lookupKey out.used address key = some () ↔ key ∈ inventory.state.used := by
  obtain ⟨live,used,hl,hu,output,he,hs,valid,rest⟩ :=
    initialize_facts encode sourceHash address cfg expected actual inventory out result
  subst out
  have unique : ((usedEntries inventory.state).map Prod.fst).Nodup := by
    rw [used_entry_keys]; exact valid.2.1
  constructor
  · have count := (build_count address (usedEntries inventory.state) used unique hu).2
    simpa only [usedEntries,List.length_map] using count
  · intro key
    change lookupKey used address key = some () ↔ key ∈ inventory.state.used
    rw [build_lookup address (usedEntries inventory.state) used unique hu key]
    unfold usedEntries
    rw [used_entry_lookup inventory.state.used key]
    by_cases present : key ∈ inventory.state.used <;> simp [present]

theorem initialize_complete (encode : Inventory → Bytes) (sourceHash : Bytes → Bytes) (address : Key → Path 256)
    (cfg : Config) (expected actual : Origin) (inventory : Inventory) (live : LiveTree) (used : UsedTree)
    (notAdoption : inventory.kind ≠ .adoption) (cap : cfg.countCap ≤ 1048576)
    (usedLimit : inventory.state.used.length ≤ 1048576) (origin : ExpectedOrigin expected actual)
    (source : sourceCheck encode sourceHash actual inventory = true)
    (empty : inventory.kind = .empty → inventory.state.live = [] ∧ inventory.state.used = [])
    (valid : InitialValid cfg inventory.state)
    (builtLive : build address (liveEntries inventory.state) = .ok live)
    (builtUsed : build address (usedEntries inventory.state) = .ok used) :
    initializeSeed encode sourceHash address cfg expected actual inventory =
      .ok ⟨initialSubject actual inventory.state,live,used⟩ := by
  have shape : ¬ (inventory.kind = .empty ∧ (inventory.state.live ≠ [] ∨ inventory.state.used ≠ [])) := by
    intro bad
    rcases bad.2 with badLive | badUsed
    · exact badLive (empty bad.1).1
    · exact badUsed (empty bad.1).2
  simp [initializeSeed,notAdoption,Nat.not_lt.mpr cap,Nat.not_lt.mpr usedLimit,
    (expected_check_exact _ _).mpr origin,source,shape,(validate_state_exact _ _).mpr valid,builtLive,builtUsed]

end Core033.Init
