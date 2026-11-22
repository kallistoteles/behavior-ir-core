# Independent byte-carrier anchors before primitive admission

New unselected follow-up while actual490 runs; no root/admission claim. Current source defines the intended byte maps, but inverse laws and a bytes law referencing ownedBytes alone should not be the only independent expectations. Before the source-bound packet is admitted, add fresh roots pinning:

- toRustByte(b).bv = b.toBitVec, for every UInt8 b.
- (toLeanByte(b)).toBitVec = b.bv, for every native U8 b.
- ownedBytes(s) = s.toByteArray.data.toList, for every String s.
- borrowedBytes(q) = q.val.map (fun b => UInt8.ofBitVec b.bv), using the actual selected Lean UInt8 constructor after checking its source type.

Keep the existing independent length/UTF8/roundtrip and actual generated-wrapper roots. These additional equations anchor a coherent candidate permutation/reversal of both byte maps or owned/borrowed projections to the actual carriers, rather than allowing reciprocal changes to explain each other. Freeze exact expected types, retain native source and full recursive payloads, and check genuine coherent-mutant rejection; do not infer a numerical-operation or whole-Core theorem.

The fourth statement is prospective syntax and must be checked against the pinned UInt8 source, not guessed into an acceptance flag. Current definitions in NativeStringBorrow use explicit bit constructors and original byte arrays.
