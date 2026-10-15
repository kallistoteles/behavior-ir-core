# Canonical Artifact Boundary and Compatibility Contract

This is an enforcement map for FR-002/013, not a new trust protocol. It is grounded in [research](../research.md) at baseline `20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f`. Every affected authoritative operation needs complete current-value canonicality, established by a checked boundary or a demonstrated construction invariant, and its independently applicable existing validation.

## Boundary inventory

| ID | Boundary / actual domain | Enforcement selected or reused | Independent requirements retained | Conformance |
| --- | --- | --- | --- | --- |
| B01 | Raw serialization and generic identity; arbitrary current JSON from facade returned artifacts | Checked serializers and full-input `tagged_hash` before removing top-level `hash` | Generic encoding supplies no schema, proof or issuer validation | C01/C02/C05 |
| B02 | Ordinary attestation issuance; typed checks plus optional raw cached findings | Fallible `assemble → verify_impl → verify`; no artifact issued on failure | Existing selected checks, sorting/deduplication, semantic result and cached-flag identity | C01/C03/C04 |
| B03 | Migration attestation issuance / Profile identity; constrained typed generated domains | Proven R3 construction plus documented assertion; no successful fallback | Existing profile normalization, migration checks and counterexample semantics | C04 |
| B04 | Legacy waiver/policy/attestation decoding, waiver hashing/signing | Full parsed object canonicality before self-hash/cached projection; typed governance source; checked existing hashes | Existing closed fields, hash syntax, waiver timestamps, signing keys/signature rules and profile-specific legacy meaning | C05/C06 |
| B05 | Legacy action/migration authorization issuance and later acceptance | B04 inputs, full record/current value checked, existing checked authorization hash; raw returned serialization checked | Existing policy judgment, record replay, subject/state bindings, valid refusal decisions; no promotion to authenticated authority | C01/C02/C06/C07 |
| B06 | Fresh authenticated ordinary/migration proof generation and signing | Existing fresh path, no diagnostic cache; ordinary common-assembly Result mapped to TrustedError; migration R3 construction | Exact admitted subject, complete expected manifest, report structure/identity, purpose-bound signature, verifier/profile binding; infrastructure abort separate | C08 |
| B07 | Current authenticated authorization/signature/evidence decode and use | Existing strict `decode_strict`, closed typed decoding, checked hashes, private checked values; detached JSON must re-enter through decoders | Expected context/issuer/role, signature purpose, independent manifest/subject, unsigned rejection; fresh-vs-archived rules | C05/C08 |
| B08 | Store action/migration authoritative evidence acceptance and persistence | Complete supplied legacy component checks in `evidence::check` / `check_migration`; checked `text`; existing trusted checker for v2; archive hashes before backend commit | Existing transition/migration/store-state bindings, policy/citations, trusted context, concurrency/head validation, early upgrade/history refusals, backend atomicity | C07/C08 |
| B09 | CLI/consumer publication of a canonical artifact | Producer Result then complete canonical text, then existing file write/emit; authenticated envelope and diagnostics both ready before either output | Existing exit/result semantics, newline and successful bytes; OS I/O errors unchanged | C09/C10/C11 |

All raw fields listed in the data model remain editable. `with_evidence` attaches a draft; it does not establish successful persistence. All supplied optional legacy evidence is subject to canonical checks even under eligible `Require::None`. The Store Evidence object has no separate signature list; recursively check signature material contained in its component artifacts.

## Identity checks before projection

For full input `j` and the existing profile identity projection `P_p`, the operation is:

1. Establish full `C_checked(j) = Ok(b)` or consume a constructor whose enforced domain establishes it.
2. Apply **the existing** `P_p`, which may exclude top-level self-hash and documented cached flags.
3. Produce the existing canonical identity material, tag separator and digest.
4. Apply the boundary's existing hash-claim, semantic, schema and authentication checks as applicable. Encoding/hash calculation by itself does not attest truth.

The implementation may share validation traversal rather than serializing the full value twice. Checks must precede *caller-side* deletions as well as the generic hash helper: fixing generic hashing alone cannot inspect a `cached` or `hash` field already removed by a decoder.

Preserve valid string self-hash exclusion, canonical cached metadata treatment, nested hash inclusion and exact tag bytes. Noncanonical content only inside an excluded field now fails explicitly. Do not drop that content, silently invalidate a cache entry to hide the error, fabricate an identity, or sign projected replacement input after full-value failure.

## Legacy and current error order

Legacy governance first retains its existing JSON syntax/object check, then full-value canonicality before reducing fields. Unsupported values receive `GovernanceError::Canonicalization`; canonicalizable schema failures remain `Invalid`. Canonicalizable but stale hash/result/signature artifacts retain their existing invalid/refused behavior. This is not duplicate-key hardening or a replacement of legacy decoders by the current v2 document model.

Store preserves existing early refusals for unsupported required legacy governance and legacy-history command profiles. Canonical checks run inside existing evidence validation for an eligible action/migration, before any backend mutation. Do not move them into admission/evaluation or defer migration checks to hashing an archive that lacks the complete supplied artifacts.

Preserve the still-earlier idempotent recovery branch: it compares the complete incoming/original event (reusing archived evidence only when omitted), checks original bundle/record identities and canonical history, and rejects different supplied evidence. Its existing full equality/hash enforcement is reused; the new artifact preflight must not move required upgrade refusals ahead of valid recovery or turn recovery into a fresh authorization.

Store maps unsupported supplied artifacts to `EvidenceMismatch` with component context and cause/path. Existing ordinary commit may previously reach a later full-bundle hash error; migration may lack that later protection. The selected artifact check is explicit about this sub-error/order change. It does not change the normative commit phase, concurrency/refusal boundaries or claim which error wins for every multiply-invalid document.

Failure assertions must check unchanged backend head, records and registry/snapshot state relevant to the fixture. A refused artifact cannot leave a partial commit. Existing backend-I/O rollback semantics remain those of the backend contract, not an additional global transaction guarantee.

## Reused authenticated enforcement

Current checked authorization/envelope/evidence types have private content and clone-returning JSON accessors. Mutating a clone does not mutate a checked instance. Re-entry retains strict number/duplicate-key handling, closed schemas, hashes and signature checks. Existing envelope decoding checks report/manifests; fresh consumption separately establishes the complete expected manifest for the admitted subject.

Fresh authenticated verification calls the no-cache complete verifier. Add only the private assembly error bridge; do not allow diagnostic-cache results, mutable `.result`/`.hash` fields or unsigned legacy JSON to acquire authenticated status. `CANONICALIZATION_FAILED` reports an artifact failure; it must not masquerade as a proof counterexample, ordinary inconclusive result or infrastructure timeout.

No currently reachable public fresh-proof float source was identified. Exercise the private error adapter at an appropriate internal seam if needed, and retain public cache-isolation/manifest/context/signature controls. Do not add a public raw finding injection mechanism to fabricate such reachability.

## Historical and release compatibility assessment

| Surface | Selected impact / evidence |
| --- | --- |
| Ordinary/migration attestation serialization | Valid text unchanged; raw method now returns Result; full baseline byte comparisons |
| Profile documents/hash | Valid normalized bytes/hash unchanged; typed invariant; no public return change |
| Legacy authorization documents/signatures | Valid bytes, citations, hash/signature material unchanged; raw serializer and error variant require consumer migration |
| Generic public tagged hash | Valid canonical input hash unchanged; newly rejects unsupported input hidden in excluded self-hash |
| Governance cached-flag treatment | Same identity exclusion for canonical metadata; reject noncanonical current value before stripping |
| Candidate/bundle/record canonical identity | No format, hash-domain, tag or signature change; Store preflight before existing commit mutation |
| Supported historical artifacts/replay | Preserve same recorded-profile interpretation and valid archive identity; reuse historical vectors/replay tests |
| Invalid previously unchecked artifacts | No compatibility promise that unsupported full values gain authority; explicit new refusal, not a historical rewrite |
| Public schemas / Wire / verifier versions | No schema, Wire, decision/store format or verifier version change required |
| Error/API/CLI | Direct typed Result changes, governance source variant and canonical error exit 2 are minor-class delivery |

Do not rewrite frozen historical fixtures to make the new implementation appear compatible. If runtime RED/GREEN work finds a valid historical input or existing normative phase that contradicts this design, record the concrete contract conflict and revise planning before implementing a silent reinterpretation.
