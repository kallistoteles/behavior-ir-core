module
public import Aeneas
public import WorkerEntrypointsNames.Types
@[expose] public section
open Aeneas Aeneas.Std Result ControlFlow Error
set_option Aeneas.customDoElab false
set_option pp.universes true
namespace transition_study036.ImplUniverseControl

-- Reduced inference control, not the native counter algorithm or a replacement.
def write {W : Type _} (d : core.io.write.Write W)
    (self : output.Counted W) (buf : Slice Aeneas.Std.U8) :
    Result (core.result.Result Aeneas.Std.Usize core.io.error.Error × output.Counted W) := do
  let (r, t) ← d.write self.inner buf
  let _ ← lift (U64.checked_add self.bytes 1#u64)
  ok (r, { self with inner := t })

def ordinary {W : Type _} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

impl_def fixed {W : Type} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := write d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

def forward {W : Type _} (d : core.io.write.Write W)
    (self : output.Counted W) (buf : Slice Aeneas.Std.U8) :
    Result (core.result.Result Aeneas.Std.Usize core.io.error.Error × output.Counted W) := do
  let (r, t) ← d.write self.inner buf
  ok (r, { self with inner := t })

impl_def polymorphic {W : Type _} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := {
  write := forward d
  flush := fun self => ok (core.result.Result.Ok (), self)
  write_all := fun self _ => ok (core.result.Result.Ok (), self)
}

universe u
def higher {W : Type u} (d : core.io.write.Write W) :
    core.io.write.Write (output.Counted W) := polymorphic d

structure DefaultPair where
  base : Nat
  derived : Nat

@[trait_default]
def DefaultPair.default (self : DefaultPair) : Nat := self.base + 1

impl_def good : DefaultPair := {
  base := 4
  derived := DefaultPair.default good
}

theorem good_matches : good.derived = 5 := by rfl
#check @write
#check @ordinary
#check @polymorphic
#check @higher
end transition_study036.ImplUniverseControl
