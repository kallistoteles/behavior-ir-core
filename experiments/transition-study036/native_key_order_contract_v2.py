"""Source-owned expected theorem types and controls for the actual key carriers."""


def roots():
    n = "Correspondence036.NativeKeyOrder"
    bound = f"({n}.ownedBytes value).length ≤ Aeneas.Std.Usize.max"
    declarations = [
        (
            "lean_rust_byte",
            f"∀ (byte : UInt8), {n}.toLeanByte ({n}.toRustByte byte) = byte",
        ),
        (
            "rust_lean_byte",
            f"∀ (byte : Aeneas.Std.U8), {n}.toRustByte ({n}.toLeanByte byte) = byte",
        ),
        (
            "borrow_bytes",
            f"∀ (value : String) (bound : {bound}), {n}.borrowedBytes ({n}.borrow value bound) = {n}.ownedBytes value",
        ),
        (
            "borrowed_bytes_injective",
            f"∀ (left right : Aeneas.Std.Str), {n}.borrowedBytes left = {n}.borrowedBytes right ↔ left = right",
        ),
        (
            "string_compare_bytes",
            f"∀ (left right : String), {n}.cmpString left right = compare left.toByteArray right.toByteArray",
        ),
        (
            "string_compare_sdk",
            f"∀ (left right : String), {n}.cmpString left right = compare left right",
        ),
        (
            "string_compare_eq",
            f"∀ (left right : String), {n}.cmpString left right = .eq ↔ left = right",
        ),
        (
            "string_compare_swap",
            f"∀ (left right : String), {n}.cmpString left right = ({n}.cmpString right left).swap",
        ),
        (
            "string_compare_trans",
            f"∀ (left middle right : String), ({n}.cmpString left middle).isLE → ({n}.cmpString middle right).isLE → ({n}.cmpString left right).isLE",
        ),
        (
            "string_compare_total",
            f"∀ (left right : String), ({n}.cmpString left right).isLE ∨ ({n}.cmpString right left).isLE",
        ),
        (
            "str_compare_eq",
            f"∀ (left right : Aeneas.Std.Str), {n}.cmpStr left right = .eq ↔ left = right",
        ),
        (
            "str_compare_trans",
            f"∀ (left middle right : Aeneas.Std.Str), ({n}.cmpStr left middle).isLE → ({n}.cmpStr middle right).isLE → ({n}.cmpStr left right).isLE",
        ),
        (
            "borrow_compare",
            f"∀ (left right : String) (leftBound : ({n}.ownedBytes left).length ≤ Aeneas.Std.Usize.max) (rightBound : ({n}.ownedBytes right).length ≤ Aeneas.Std.Usize.max), {n}.cmpStr ({n}.borrow left leftBound) ({n}.borrow right rightBound) = {n}.cmpString left right",
        ),
        (
            "entity_field_order",
            f"∀ (left right : {n}.NativeKey), {n}.cmpEntity left right = ({n}.cmpString left.entity right.entity).then ({n}.cmpString left.id right.id)",
        ),
        (
            "entity_compare_eq",
            f"∀ (left right : {n}.NativeKey), {n}.cmpEntity left right = .eq ↔ left = right",
        ),
        (
            "entity_compare_trans",
            f"∀ (left middle right : {n}.NativeKey), ({n}.cmpEntity left middle).isLE → ({n}.cmpEntity middle right).isLE → ({n}.cmpEntity left right).isLE",
        ),
        (
            "entity_compare_swap",
            f"∀ (left right : {n}.NativeKey), {n}.cmpEntity left right = ({n}.cmpEntity right left).swap",
        ),
        (
            "unicode_control",
            f'{n}.cmpString "z" "é" = .lt ∧ {n}.cmpString "é" "€" = .lt ∧ {n}.cmpString "€" "😀" = .lt',
        ),
        (
            "prefix_control",
            f'{n}.cmpString "" "\\u0000" = .lt ∧ {n}.cmpString "a" "a\\u0000" = .lt ∧ {n}.cmpString "é" "é\\u0000" = .lt',
        ),
        ("normalization_control", f'{n}.cmpString "é" "é" = .lt'),
        (
            "entity_priority_control",
            f'{n}.cmpEntity ⟨"a", "z"⟩ ⟨"b", "a"⟩ = .lt ∧ {n}.cmpEntity ⟨"a", "a"⟩ ⟨"a", "b"⟩ = .lt',
        ),
        ("display_collision_control", f'{n}.cmpEntity ⟨"a", "b#c"⟩ ⟨"a#b", "c"⟩ ≠ .eq'),
    ]
    return [
        dict(
            id="native.key.order." + name,
            declaration=n + "." + name,
            expected_type=expected,
        )
        for name, expected in declarations
    ]


def controls():
    header = (
        "module\npublic import NativeKeyOrder\nopen Correspondence036.NativeKeyOrder\n"
    )
    return [
        (
            "wrong-unsigned-unicode",
            header
            + 'example : cmpString "z" "é" = .gt := by\n  rw [unicode_control.1]\n  simp\n',
            "normalized-False",
        ),
        (
            "wrong-entity-id-first",
            header
            + 'example : cmpEntity ⟨"a", "z"⟩ ⟨"b", "a"⟩ = .gt := by\n  rw [entity_priority_control.1]\n  simp\n',
            "normalized-False",
        ),
    ]
