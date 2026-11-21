module
public import NativeStringCodec
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Unadmitted exact-signature String/Str operation candidate. Byte comparison,
conversion domains and off-source totalizations are defined by the preceding
candidate models; no native library/compiler/runtime/allocator admission follows.
All actual source-valid strings and borrowed UTF8 bytes remain required. -/

/-- [core::str::traits::{impl core::cmp::PartialOrd<str> for str}::partial_cmp]:
    Source: '/rustc/library/core/src/str/traits.rs', lines 48:4-48:58
    Name pattern: [core::str::traits::{core::cmp::PartialOrd<str, str>}::partial_cmp]
    Visibility: public -/
@[rust_fun "core::str::traits::{core::cmp::PartialOrd<str, str>}::partial_cmp"] def Str.Insts.CoreCmpPartialOrdStr.partial_cmp : Str → Str → Result (Option Ordering) :=
  fun left right => .ok (some (Correspondence036.NativeKeyOrder.cmpStr left right))

/-- [core::str::traits::{impl core::cmp::PartialEq<str> for str}::eq]:
    Source: '/rustc/library/core/src/str/traits.rs', lines 29:4-29:37
    Name pattern: [core::str::traits::{core::cmp::PartialEq<str, str>}::eq]
    Visibility: public -/
@[rust_fun "core::str::traits::{core::cmp::PartialEq<str, str>}::eq"] def Str.Insts.CoreCmpPartialEqStr.eq : Str → Str → Result Bool :=
  fun left right => .ok (decide (left = right))

/-- [core::str::traits::{impl core::cmp::Ord for str}::cmp]:
    Source: '/rustc/library/core/src/str/traits.rs', lines 20:4-20:42
    Name pattern: [core::str::traits::{core::cmp::Ord<str>}::cmp]
    Visibility: public -/
@[rust_fun "core::str::traits::{core::cmp::Ord<str>}::cmp"] def Str.Insts.CoreCmpOrd.cmp : Str → Str → Result Ordering :=
  fun left right => .ok (Correspondence036.NativeKeyOrder.cmpStr left right)

/-- [alloc::str::{impl core::borrow::Borrow<str> for alloc::string::String}::borrow]:
    Source: '/rustc/library/alloc/src/str.rs', lines 233:4-233:28
    Name pattern: [alloc::str::{core::borrow::Borrow<alloc::string::String, str>}::borrow]
    Visibility: public -/
@[rust_fun "alloc::str::{core::borrow::Borrow<alloc::string::String, str>}::borrow"] def alloc.string.String.Insts.CoreBorrowBorrowStr.borrow : String → Result Str :=
  Correspondence036.NativeStringCodec.borrowResult

/-- [alloc::str::{impl alloc::borrow::ToOwned<alloc::string::String> for str}::to_owned]:
    Source: '/rustc/library/alloc/src/str.rs', lines 252:4-252:32
    Name pattern: [alloc::str::{alloc::borrow::ToOwned<str, alloc::string::String>}::to_owned]
    Visibility: public -/
@[rust_fun "alloc::str::{alloc::borrow::ToOwned<str, alloc::string::String>}::to_owned"] def Str.Insts.AllocBorrowToOwnedString.to_owned : Str → Result String :=
  Correspondence036.NativeStringCodec.ownResult

/-- [alloc::string::{impl core::cmp::PartialEq<alloc::string::String> for alloc::string::String}::eq]:
    Source: '/rustc/library/alloc/src/string.rs', lines 350:9-350:18
    Name pattern: [alloc::string::{core::cmp::PartialEq<alloc::string::String, alloc::string::String>}::eq]
    Visibility: public -/
@[rust_fun "alloc::string::{core::cmp::PartialEq<alloc::string::String, alloc::string::String>}::eq"] def alloc.string.String.Insts.CoreCmpPartialEqString.eq : String → String → Result Bool :=
  fun left right => .ok (decide (left = right))

/-- [alloc::string::{impl core::cmp::PartialOrd<alloc::string::String> for alloc::string::String}::partial_cmp]:
    Source: '/rustc/library/alloc/src/string.rs', lines 350:20-350:30
    Name pattern: [alloc::string::{core::cmp::PartialOrd<alloc::string::String, alloc::string::String>}::partial_cmp]
    Visibility: public -/
@[rust_fun "alloc::string::{core::cmp::PartialOrd<alloc::string::String, alloc::string::String>}::partial_cmp"] def alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp : String → String → Result (Option Ordering) :=
  fun left right => .ok (some (Correspondence036.NativeKeyOrder.cmpString left right))

/-- [alloc::string::{impl core::cmp::Ord for alloc::string::String}::cmp]:
    Source: '/rustc/library/alloc/src/string.rs', lines 350:36-350:39
    Name pattern: [alloc::string::{core::cmp::Ord<alloc::string::String>}::cmp]
    Visibility: public -/
@[rust_fun "alloc::string::{core::cmp::Ord<alloc::string::String>}::cmp"] def alloc.string.String.Insts.CoreCmpOrd.cmp : String → String → Result Ordering :=
  fun left right => .ok (Correspondence036.NativeKeyOrder.cmpString left right)

/-- [alloc::string::{alloc::string::String}::as_str]:
    Source: '/rustc/library/alloc/src/string.rs', lines 1073:4-1073:38
    Name pattern: [alloc::string::{alloc::string::String}::as_str]
    Visibility: public -/
@[rust_fun "alloc::string::{alloc::string::String}::as_str"] def alloc.string.String.impl.as_str : String → Result Str :=
  Correspondence036.NativeStringCodec.borrowResult

namespace Correspondence036.NativeStringOperations
open Correspondence036.NativeKeyOrder Correspondence036.NativeStringCodec

theorem string_compare (left right : String) :
    alloc.string.String.Insts.CoreCmpOrd.cmp left right = .ok (cmpString left right) := rfl

theorem str_compare (left right : Aeneas.Std.Str) :
    _root_.Str.Insts.CoreCmpOrd.cmp left right = .ok (cmpStr left right) := rfl

theorem string_partial (left right : String) :
    alloc.string.String.Insts.CoreCmpPartialOrdString.partial_cmp left right =
      .ok (some (cmpString left right)) := rfl

theorem str_partial (left right : Aeneas.Std.Str) :
    _root_.Str.Insts.CoreCmpPartialOrdStr.partial_cmp left right =
      .ok (some (cmpStr left right)) := rfl

theorem string_equal (left right : String) :
    alloc.string.String.Insts.CoreCmpPartialEqString.eq left right =
      .ok (decide (left = right)) := rfl

theorem str_equal (left right : Aeneas.Std.Str) :
    _root_.Str.Insts.CoreCmpPartialEqStr.eq left right =
      .ok (decide (left = right)) := rfl

theorem string_eq_comparison (left right : String) :
    alloc.string.String.Insts.CoreCmpPartialEqString.eq left right =
      .ok (decide (cmpString left right = .eq)) := by
  simp [alloc.string.String.Insts.CoreCmpPartialEqString.eq, string_compare_eq]

theorem str_eq_comparison (left right : Aeneas.Std.Str) :
    _root_.Str.Insts.CoreCmpPartialEqStr.eq left right =
      .ok (decide (cmpStr left right = .eq)) := by
  simp [_root_.Str.Insts.CoreCmpPartialEqStr.eq, str_compare_eq]

theorem borrow_valid (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    alloc.string.String.Insts.CoreBorrowBorrowStr.borrow value =
      .ok (borrow value bound) := by
  exact borrow_result_valid value bound

theorem as_str_valid (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    alloc.string.String.impl.as_str value = .ok (borrow value bound) := by
  exact borrow_result_valid value bound

theorem to_owned_valid (value : Aeneas.Std.Str) (owned : String)
    (decoded : decode value = some owned) :
    _root_.Str.Insts.AllocBorrowToOwnedString.to_owned value = .ok owned := by
  exact own_result_decoded value owned decoded

theorem native_roundtrip (value : String)
    (bound : (ownedBytes value).length ≤ Usize.max) :
    (do
      let borrowed ← alloc.string.String.impl.as_str value
      _root_.Str.Insts.AllocBorrowToOwnedString.to_owned borrowed) = .ok value := by
  exact roundtrip_result value bound

end Correspondence036.NativeStringOperations
