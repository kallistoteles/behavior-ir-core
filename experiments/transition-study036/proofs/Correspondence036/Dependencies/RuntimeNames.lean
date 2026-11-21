module
public import Aeneas
@[expose] public section

-- Diagnostic bit carriers for the pinned backend's missing primitive names.
-- They preserve every encoding; no native floating operation or numeric
-- equality refinement is asserted by these declarations.
namespace Aeneas.Std
structure F32 where
  bits : BitVec 32
structure F64 where
  bits : BitVec 64
end Aeneas.Std

theorem Correspondence036.f32_carrier_bits_exact (bits : BitVec 32) :
    (Aeneas.Std.F32.mk bits).bits = bits := rfl
theorem Correspondence036.f64_carrier_bits_exact (bits : BitVec 64) :
    (Aeneas.Std.F64.mk bits).bits = bits := rfl

-- The pinned translator's -impl-namespace naming also affects this primitive
-- constant; the pinned standard model exports it without the extra segment.
namespace Aeneas.Std.core.num.U64.impl
abbrev MAX : Aeneas.Std.U64 := Aeneas.Std.core.num.U64.MAX
end Aeneas.Std.core.num.U64.impl

theorem Correspondence036.runtime_name_u64_max_exact :
    Aeneas.Std.core.num.U64.impl.MAX = Aeneas.Std.core.num.U64.MAX := rfl
