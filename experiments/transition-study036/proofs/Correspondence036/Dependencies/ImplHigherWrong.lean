module
public import ImplPositive
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option Aeneas.customDoElab false
set_option pp.universes true
namespace transition_study036.ImplUniverseControl

universe u
def higher_with_low {W : Type u} (d : core.io.write.Write W)
    (self : output.Counted W) (buf : Slice Aeneas.Std.U8) := write d self buf
end transition_study036.ImplUniverseControl
