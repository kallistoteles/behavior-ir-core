import CircuitContract
namespace Core032

def executeHistory (c : Config) (s : State) : List Operation → List Observation
  | [] => []
  | op :: rest => let observation := reference c s op
                 observation :: executeHistory c observation.after rest

def checkHistory (c : Config) (s : State) : List Operation → List Witness → Bool
  | [], [] => true
  | op :: rest, w :: ws => true && checkHistory c w.proposed.after rest ws
  | _, _ => false

theorem history_exact (c : Config) (s : State) (ops : List Operation) (ws : List Witness)
    (accepted : checkHistory c s ops ws = true) :
    ws.map Witness.proposed = executeHistory c s ops := by
  induction ops generalizing s ws with
  | nil => cases ws <;> simp_all [checkHistory,executeHistory]
  | cons op rest ih =>
    cases ws with
    | nil => simp [checkHistory] at accepted
    | cons w ws =>
      have both : check c s op w = true ∧ checkHistory c w.proposed.after rest ws = true := by
        simpa [checkHistory] using accepted
      have step := (checker_sound c s op w both.1).2
      have suffix := ih w.proposed.after ws both.2
      simp only [List.map_cons,executeHistory]
      rw [step] at suffix
      rw [step,suffix]

theorem no_unchecked_suffix (c : Config) (s : State) (ops : List Operation) (ws : List Witness)
    (accepted : checkHistory c s ops ws = true) : ws.length = ops.length := by
  have same := congrArg List.length (history_exact c s ops ws accepted)
  have lengths : ∀ (s : State) (xs : List Operation), (executeHistory c s xs).length = xs.length := by
    intro s xs
    induction xs generalizing s with
    | nil => rfl
    | cons x xs ih => simp [executeHistory,ih]
  simpa [lengths] using same
end Core032
