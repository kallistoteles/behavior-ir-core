module
public import ImplPositive
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option Aeneas.customDoElab false
set_option pp.universes true
namespace transition_study036.ImplUniverseControl

impl_def inferred {W : Type _} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}
end transition_study036.ImplUniverseControl
