module
public import ImplPositive
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option Aeneas.customDoElab false
set_option pp.universes true
namespace transition_study036.ImplUniverseControl

impl_def cycle : DefaultPair := {
  base := cycle.derived
  derived := cycle.base
}
end transition_study036.ImplUniverseControl
