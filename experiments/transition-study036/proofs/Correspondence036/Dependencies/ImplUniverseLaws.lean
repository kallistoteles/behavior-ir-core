module
public import ImplInferred
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
namespace transition_study036.ImplUniverseControl

theorem inferred_write {W : Type} (d : core.io.write.Write W) :
    (inferred d).write = write d := by rfl

universe u
theorem polymorphic_write {W : Type u} (d : core.io.write.Write W) :
    (polymorphic d).write = forward d := by rfl

end transition_study036.ImplUniverseControl
