"""Expected byte/codec laws; these establish no native primitive admission."""


def roots():
    n = "Correspondence036.NativeStringCodec"
    k = "Correspondence036.NativeKeyOrder"
    s = "Aeneas.Std.Str"
    u = "Aeneas.Std.Usize.max"
    specs = [
        (
            "byteArray_roundtrip",
            "∀ (bytes : ByteArray), bytes.data.toList.toByteArray = bytes",
        ),
        (
            "owned_array",
            f"∀ (value : String), ({k}.ownedBytes value).toByteArray = value.toByteArray",
        ),
        (
            "from_utf8_owned",
            "∀ (value : String), String.fromUTF8? value.toByteArray = some value",
        ),
        (
            "from_utf8_bytes",
            "∀ (bytes : ByteArray) (value : String), String.fromUTF8? bytes = some value → value.toByteArray = bytes",
        ),
        (
            "decode_borrow",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ {u}), {n}.decode ({k}.borrow value bound) = some value",
        ),
        (
            "decode_bytes",
            f"∀ (borrowed : {s}) (owned : String), {n}.decode borrowed = some owned → {k}.ownedBytes owned = {k}.borrowedBytes borrowed",
        ),
        (
            "decode_bound",
            f"∀ (borrowed : {s}) (owned : String), {n}.decode borrowed = some owned → ({k}.ownedBytes owned).length ≤ {u}",
        ),
        (
            "borrow_decoded",
            f"∀ (borrowed : {s}) (owned : String) (decoded : {n}.decode borrowed = some owned), {k}.borrow owned ({n}.decode_bound borrowed owned decoded) = borrowed",
        ),
        (
            "decode_comparison",
            f"∀ (left right : {s}) (ownedLeft ownedRight : String), {n}.decode left = some ownedLeft → {n}.decode right = some ownedRight → {k}.cmpString ownedLeft ownedRight = {k}.cmpStr left right",
        ),
        (
            "invalid_decode",
            f"∀ (value : {s}), ¬ {n}.ValidStr value → {n}.decode value = none",
        ),
        (
            "valid_iff_owned_bytes",
            f"∀ (value : {s}), {n}.ValidStr value ↔ ∃ owned : String, {k}.ownedBytes owned = {k}.borrowedBytes value",
        ),
        (
            "borrow_result_valid",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ {u}), {n}.borrowResult value = Aeneas.Std.Result.ok ({k}.borrow value bound)",
        ),
        (
            "borrow_result_oversize",
            f"∀ (value : String), ¬ ({k}.ownedBytes value).length ≤ {u} → {n}.borrowResult value = Aeneas.Std.Result.fail .maximumSizeExceeded",
        ),
        (
            "own_result_decoded",
            f"∀ (value : {s}) (owned : String), {n}.decode value = some owned → {n}.ownResult value = Aeneas.Std.Result.ok owned",
        ),
        (
            "own_result_invalid",
            f"∀ (value : {s}), ¬ {n}.ValidStr value → {n}.ownResult value = Aeneas.Std.Result.fail .undef",
        ),
        (
            "roundtrip_result",
            f"∀ (value : String) (bound : ({k}.ownedBytes value).length ≤ {u}), (do let borrowed ← {n}.borrowResult value; {n}.ownResult borrowed) = Aeneas.Std.Result.ok value",
        ),
    ]
    return [
        dict(
            id="native.string.codec." + name,
            declaration=n + "." + name,
            expected_type=expected,
        )
        for name, expected in specs
    ]


def controls(source):
    marker = "@[simp] theorem byteArray_roundtrip"
    start, end = source.index("def decode ("), source.index("\ndef ValidStr")
    original = "String.fromUTF8? (borrowedBytes value).toByteArray"
    block = source[start:end]
    if source.count(marker) != 1 or block.count(original) != 1:
        raise ValueError("NativeStringCodecMutationPoint")
    mutant = (
        source[: source.index(marker)]
        + block.replace(original, 'some ""')
        + """
example (bound : (ownedBytes "é").length ≤ Usize.max) :
    decode (borrow "é" bound) = some "é" := by
  simp only [decode, Option.some.injEq]
  have different : ("" : String) ≠ "é" := by decide +kernel
  simp [different]
end Correspondence036.NativeStringCodec
"""
    )
    return [("wrong-string-byte-roundtrip", mutant, "normalized-False")]
