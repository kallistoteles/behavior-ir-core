import Reuse035.Incremental
namespace Reuse035
inductive J where
 | null | boolean (v : Bool) | number (v : Nat) | text (v : String)
 | array (v : List J) | object (v : List (String × J))
 deriving Repr
structure CurrentContext where
 subject : J
 phase : J
 history : J
 memo : J
-- These are the actual unchanged Core encoder interfaces, NOT premises that an
-- optimized result equals reference. Native projection/observer correspondence
-- stays explicitly external; each encoder's entire normative value is retained.
structure OriginalEncoders (np nc : Nat) where
 invocation : State np nc → State np nc → J
 bundle : State np nc → State np nc → J
 commitArguments : State np nc → State np nc → J
 transitionRecord : State np nc → State np nc → J
 history : State np nc → J
 state : State np nc → J
 properties : State np nc → J

def completeObservation (e : OriginalEncoders np nc) (before after : State np nc) : J :=
 .object [("invocation",e.invocation before after),("bundle",e.bundle before after),
   ("commit_arguments",e.commitArguments before after),("transition_record",e.transitionRecord before after),
   ("before_history",e.history before),("after_history",e.history after),
   ("post_state",e.state after),("original_property_outcomes",e.properties after)]

def rowRecipe (render : Option (Child np) → CurrentContext → J)
 (row : Option (Child np)) (ctx : CurrentContext) : J := render row ctx
end Reuse035
