# HyperKZG SRS alternative: Hermez prepared Powers of Tau

Date: 2026-11-07 UTC. Read-only primary-source research; no build, proof run, SRS generation or artifact-body download. This supplements [the production preflight](preflight-primary-sources-20261107.md). No frozen 033 source/evidence or existing trial identity is changed.

**Conclusion:** the isolated HyperKZG cost trial can select the separately named `powersOfTau28_hez_final_NN.ptau` family in a **new freeze before execution**, with independently selected published BLAKE2b-512 values. Nova's cryptographic input format is not restricted to PSE contribution 0080. This is a source-supported compatibility route; actual digest matching and loader acceptance are **NotRun** here. It does not select the final Core backend.

## Published identity, capacity and digests

The official [snarkjs README at revision `22003fbcde78608be902520661832db7933d279e`, lines 170–205](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/README.md#L170-L205) identifies these as prepared BN128 files with 54 contributions and a beacon, publishes per-file hashes, and identifies the hash family as BLAKE2b. Freeze the **512-bit, 128-hex-digit** value for the exact chosen file before retrieval:

| File | Published capacity | Sufficient for Nova selector when |
| --- | ---: | --- |
| [powersOfTau28_hez_final_16.ptau](https://circom.info/powersOfTau28_hez_final_16.ptau) | 65,536 | `N <= 65,536` |
| [powersOfTau28_hez_final_17.ptau](https://circom.info/powersOfTau28_hez_final_17.ptau) | 131,072 | `N <= 131,072` |
| [powersOfTau28_hez_final_18.ptau](https://circom.info/powersOfTau28_hez_final_18.ptau) | 262,144 | `N <= 262,144` |

```text
powersOfTau28_hez_final_16.ptau
6a6277a2f74e1073601b4f9fed6e1e55226917efb0f0db8a07d98ab01df1ccf43eb0e8c3159432acd4960e2f29fe84a4198501fa54c8dad9e43297453efec125

powersOfTau28_hez_final_17.ptau
6247a3433948b35fbfae414fa5a9355bfb45f56efa7ab4929e669264a0258976741dfbe3288bfb49828e5df02c2e633df38d2245e30162ae7e3bcca5b8b49345

powersOfTau28_hez_final_18.ptau
7e6a9c2e5f05179ddfc923f38f917c9e6831d16922a902b0b4758b8e79c2ab8a81bb5f29952e16ee6c5067ed044d7857b5de120a90704c1d3b637fd94b95b13e
```

`N` remains the next power of two of the maximum of the **actual augmented primary** constraint count, variable count and selected compression scheme's commitment-key floor. The preprocessing floor is `nnz(A)+nnz(B)+nnz(C)`. An arity of 43 alone does not establish a sufficient power. Sources: [Nova size/selector](../../../experiments/transition-study033/vendor/nova/src/r1cs/mod.rs#L193-L214), [preprocessing floor](../../../experiments/transition-study033/vendor/nova/src/spartan/ppsnark.rs#L1020-L1033).

Exact original object byte sizes were **not authenticated**: HEAD requests to the README's `circom.info` links, the historical Hermez S3 paths, and the Google zkevm mirror returned HTTP 403 here; Google object-metadata requests returned 401. No GET of ptau data was attempted. For resource planning only, the prepared-format point payload derived from [snarkjs preparation code](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_preparephase2.js#L24-L82) is approximately 72/144/288 MiB at powers 16/17/18, plus headers/contribution metadata. These are format estimates, not observed or published exact object sizes. Availability and final byte count remain preflight checks; do not invent exact sizes or bypass a failed endpoint.

## Ceremony provenance and assumptions

The maintainer's [Hermez selection procedure](https://hackmd.io/@jbaylina/S1XuzpJXw), reached through [the announcement linked by snarkjs](https://www.reddit.com/r/ethereum/comments/iftos6/powers_of_tau_selection_for_hermez_rollup/), specifies the first 54 BN254 contributions, followed by a beacon contribution. BN128 is another name used there for BN254. The procedure commits to drand round 100000, treating its randomness as the beacon seed with `2^10` SHA-256 iterations, followed by phase-2 preparation. It pins generation code revisions and publishes the selected contribution/challenge identifiers. This is a different finalized ceremony artifact from the later PSE0080 family.

A future successful match to the independently chosen official digest establishes **byte integrity and publisher-based provenance under the trusted publisher/transcript assumption**. It does not demonstrate that any participant destroyed its secret, independently verify the whole contribution chain, or establish that the downloaded SRS was honestly generated. Soundness still assumes correct ceremony/transcript/conversion software, correct published digest, collision resistance and at least one honest retained contributor whose secret remains unavailable. The beacon is an additional ceremony mechanism; it does not turn publicly generated known-tau test parameters into a valid substitute. No known-tau SRS is permitted.

Report separate facts: `OfficialDigestMatched`, `FormatAndPointChecksPassed`, and `TranscriptVerificationNotRun` (or its actual separately completed result). Calling digest-only acceptance “ceremony-verified” would overstate the evidence. A complete transcript verification can still be performed using the original snarkjs-format file, with its preparation cost charged as described in the preflight note.

## Nova format route without weakening its checks

Pinned Nova accepts ptau version 1 with 11 original sections or three pruned sections; it locates sections 1/2/3 and ignores other sections for commitment-key loading. Section 1 supplies the BN254 modulus/power, section 2 the monomial G1 bases `G1, tau*G1, …`, and section 3 the G2 powers. HyperKZG loads the first `N` G1 bases and two G2 points, using the second as `tau_H`. Sources: [Nova ptau reader](../../../experiments/transition-study033/vendor/nova/src/provider/ptau.rs#L160-L165), [format/modulus/point checks](../../../experiments/transition-study033/vendor/nova/src/provider/ptau.rs#L271-L437), [HyperKZG load](../../../experiments/transition-study033/vendor/nova/src/provider/hyperkzg.rs#L657-L674).

snarkjs phase-2 preparation writes 11 sections and **copies** the original monomial sections 2 and 3; its additional Lagrange sections 12–15 do not replace those bases. Sources: [preparation](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_preparephase2.js#L24-L42), [original section layout](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/src/powersoftau_new.js#L82-L125). Nova's loader retains modulus, capacity, on-curve and G2 subgroup validation; digest matching must supplement these checks. Actual selected-file decoding remains a required trial, not a compatibility result inferred from a filename.

There is a filename integration constraint: `PublicParams::setup_with_ptau_dir` searches only `ppot_pruned_NN.ptau` and `ppot_0080_NN.ptau` naming patterns. A complete no-backend-patch route is a **byte-identical compatibility alias** named `ppot_pruned_NN.ptau` in a dedicated directory, with the freeze mapping that alias to the original Hermez filename and official digest. The reader accepts 11 sections under that alias too. Mark it `Original11SectionCompatibilityAlias`; do not claim it is a new three-section derivative or PSE0080. Source: [file selector](../../../experiments/transition-study033/vendor/nova/src/r1cs/mod.rs#L292-L341). Freeze and verify the alias bytes/target, directory contents, actual selected path and exact SRS identity; the alias must not become the authoritative ceremony name.

`CommitmentEngineTrait::load_setup` itself can read a generically named file, but no public commitment-key-injection constructor for Nova `PublicParams` was identified at this pin. Therefore that low-level method alone is not a complete alternative initialization API. A future actual pruning step would need its own pinned input/output digest and point-preserving derivation record. Both routes keep `io` enabled and `test-utils` disabled in the new isolated configuration.

Before any cost run, freeze the named ceremony/publisher assumption, exact power/digest, chosen primary/secondary compression types, actual required `N`, compatibility alias, toolchain/features and portable arithmetic profile. Then record digest and loader outcomes, production setup costs and all identity/compression/independent-verification controls. This note changes no mathematical acceptance check and supplies no new performance result.
