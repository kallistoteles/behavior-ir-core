# Feature Specification: Portable Source Locations for Binding Construction

**Feature Branch**: `027-source-location-portability`

**Created**: 2026-10-16

**Status**: Clarified — source-policy decision A integrated; baseline reproduction and focused corrected-code validation completed ([execution ledger](evidence/coverage.md)); frozen-source acceptance pending.

**Input**: Specify [Core #31 — Location relativization counts non-absolute files, and admit_read has no root or public location walker](https://github.com/kallistoteles/behavior-ir-core/issues/31). Related ecosystem report: [behavior-ir #19](https://github.com/kallistoteles/behavior-ir/issues/19).

**Specification baseline**: Core `main`, `a24b65d26efaf62342daf5ab0f455540dfd61ed1`, source version 0.13.0. Feature 026 / PR #32 remains separate and is not a dependency. This feature is hardening of source provenance and binding ergonomics; the report does not establish a defect in evaluation semantics.

## Clarifications

### Session 2026-10-16

- Q: Should relative filenames such as `pkg/model.py` retain their whole path even when the definition contains no absolute filenames? → A: Choose A. Infer an automatic absolute source root only from absolute file paths present in the final IR; if there are none, the root is absent. Preserve relative paths and virtual markers verbatim regardless of other locations, applying the same rule to module completion and ad hoc-read admission. Do not retain previous all-relative shortening or lexical rewriting for newly constructed definitions/records as a compatibility requirement. Historical records and archived bytes remain unchanged, and semantic hashes remain unaffected. Defining which external directory a relative path originally referred to is outside this feature.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Build portable definitions from mixed source locations (Priority: P1)

A binding maintainer constructs a module or an ad hoc read containing locations from ordinary source files together with locations for generated or interactive code. The maintainer obtains useful portable provenance without reconstructing the definition, tracing it twice, or importing private Core components.

**Why this priority**: A marker such as `<unknown>` currently prevents automatic root inference from making real file locations portable. Ad hoc-read construction lacks the explicit-root escape hatch available to module construction, so the ecosystem repeats its trace to work around the difference.

**Independent Test**: Construct equivalent modules and ad hoc reads once in each of two relocated source trees. Mix an absolute source filename with each supported marker. Compare source provenance and authoritative outcomes through the supported public binding surface.

**Acceptance Scenarios**:

1. **Given** absolute source files and one virtual marker in a module, **When** the module is completed with automatic source-root selection, **Then** the absolute files have the same relative representation they would have without that marker, and the marker remains identifiable verbatim.
2. **Given** the same mixture in an ad hoc read, **When** the read is admitted through the supported binding construction surface, **Then** it obtains the same source-location treatment without a second trace, caller-owned traversal of hidden structures, or a private-crate dependency.
3. **Given** equivalent definitions under two different absolute checkout prefixes with the same internal file layout and inputs, **When** each is constructed and evaluated, **Then** their normalized source provenance agrees and their semantic identities, decisions, observations and results agree under the applicable profile.
4. **Given** an error attributed to a real source file or to generated code, **When** the diagnostic is inspected, **Then** its source filename or marker and original line remain useful; portability is not achieved by erasing every location.

---

### User Story 2 - Keep identity and historical evidence trustworthy (Priority: P1)

A Core consumer distinguishes semantic identity, provenance and the content identity of a complete read record. Improving source portability must preserve the meaning of previously admitted definitions and the replay contract of stored evidence.

**Why this priority**: A location can be outside a module's semantic hash while still appearing in the canonical content of a legacy read record. Treating these as one identity domain could silently invalidate archives or conceal a meaningful record difference.

**Independent Test**: For each supported read-record profile, compare fresh records from equivalent relocated definitions, then decode and replay frozen pre-change records without rewriting them. Include a semantic mutation control so equal outcomes cannot be manufactured by discarding meaningful fields.

**Acceptance Scenarios**:

1. **Given** a definition whose only differences are source filename prefixes, markers or line numbers, **When** semantic identities are computed, **Then** its behavior, item and read-definition semantic identities retain their established location-independence.
2. **Given** a legacy record that binds an embedded definition including source provenance, **When** newly normalized construction changes that definition's serialized location text, **Then** any resulting fresh-record identity change is explained by the existing content-addressing contract; the record-hash rule is not changed to conceal it.
3. **Given** a current-profile record whose authoritative content already excludes or normalizes display provenance, **When** only that provenance is relocated, **Then** its existing canonical-content and record-identity invariance remains intact.
4. **Given** a frozen record emitted before this feature, **When** it is decoded, integrity-checked and replayed under its supported historical profile, **Then** its original bytes and identity remain valid and its established replay comparison succeeds without applying fresh-construction normalization to the archive.
5. **Given** an actual change to a read's meaning, state, parameters, observations or result, **When** it is evaluated or replayed, **Then** the existing semantic and integrity checks still expose the difference; source portability does not authorize ignoring it.

---

### User Story 3 - Apply one documented rule across source environments (Priority: P2)

A binding author can predict the treatment of file-backed, generated and interactive source locations. Relative filenames and virtual markers retain their exact supplied text in every source mixture; neither an explicit root, a machine's working directory nor filesystem contents gives them a different interpretation.

**Why this priority**: A rule that fixes one marker but fails for notebooks, already-relative files or a different source tree would leave downstream bindings maintaining the same workaround in another form.

**Independent Test**: Apply the documented source policy to the required case matrix, including no absolute files, a single absolute file, multiple directories, explicit-root construction and reordered location inputs. Use filenames that need not exist on disk.

**Acceptance Scenarios**:

1. **Given** only markers, relative filenames such as `pkg/model.py`, or no locations, **When** either construction workflow handles the definition, **Then** the automatic absolute root is absent and every relative filename and marker remains verbatim, without common-prefix shortening, a working-directory lookup or any requirement that the named files exist.
2. **Given** several absolute source files in distinct directories and any number of non-absolute locations, **When** locations are reordered or repeated, **Then** the inferred absolute root and the normalization of each corresponding location are unchanged.
3. **Given** a caller supplying an explicit root for module construction, **When** source locations are handled, **Then** relative filenames and virtual markers remain verbatim and only absolute filenames may be relativized; root configuration remains optional.
4. **Given** ordinary domain strings or structured literal values containing text such as a path, `file`, or `loc`, **When** source metadata is processed, **Then** those values and their semantic meaning are unchanged.

### Edge Cases

- Virtual markers include `<unknown>`, `<string>`, `<stdin>` and `<__main__>`. They do not assert membership in a filesystem directory.
- An ordinary relative filename supplies no evidence about an absolute common ancestor and is preserved verbatim. `pkg/model.py` must never become `model.py` solely because relative files share a directory. Supplied relative spellings such as `./pkg/model.py`, `../shared/model.py` and `pkg//model.py` are not lexically rewritten.
- A single absolute source file has its parent directory as the automatic root. Marker-only and empty inputs have no inferred absolute root.
- Multiple absolute files use their common directory under the existing supported path rules. A common filesystem root is valid; the feature does not promise to remove arbitrary path components when files do not share a checkout subtree.
- Duplicate locations, ordering changes and additional markers cannot change the root inferred from an otherwise identical set of absolute files.
- Equal basenames in different subdirectories must remain distinguishable after relativization. Line numbers remain unchanged.
- Paths are lexical provenance, not files to open. Missing files, symlinks, current working directory and the executing account must not influence root inference.
- Strings resembling paths inside business values, including nested objects with `loc` keys, remain data rather than provenance.
- The root-evidence collection comes from the final IR being completed or admitted, including source metadata in nested expressions and projections. Temporary builder inputs that do not occur in that IR supply no root evidence; domain literals supply none either.
- A newly constructed legacy record may change identity when its embedded location text changes, including an all-relative definition that previously shortened `pkg/model.py` to `model.py`. Preserving that old fresh-output behavior is not required. Historical records and hash domains remain unchanged.
- Current-profile read records already normalize definition locations. A regression must characterize that existing behavior instead of asserting that every current record suffers the legacy symptom.
- New support for foreign-platform path syntax, case folding, filesystem canonicalization or resolving `..` through the filesystem is outside scope. A separate contract would be needed to define which external directory a relative path refers to or to identify source references across different project structures; verbatim preservation does not establish that meaning.

## Requirements *(mandatory)*

### Scope and observed problem

The source issue reports that automatic module completion and ad hoc-read admission derive their common source directory from all location filenames. A non-absolute name can empty that common directory, leaving checkout-dependent components in absolute source filenames. The downstream binding compensates by tracing mixed-source ad hoc reads twice.

Baseline code inspection confirms this shared root inference and the asymmetry between the public module and ad hoc-read construction workflows. It also identifies a material qualification to the report: current v2 read-record construction already normalizes locations in the embedded definition before sealing its authoritative content. The reported record-identity symptom must therefore be characterized separately for legacy/v1 and current/v2. Source inspection is not an executed reproduction; planning and implementation must retain that distinction.

The feature covers source handling during supported binding construction, observable diagnostic provenance, and the affected identity/compatibility contracts. It adds no query operator, business rule, state transition or trust-policy behavior. General exposure of internal expression structures and new public configuration are not requirements; their necessity is an implementation-planning decision.

### Mathematical contract

Let \(D\) be the final assembled IR of a module being completed or an ad hoc read being admitted, before this source-normalization step. Let \(L(D)\) be its finite collection of source-provenance locations, including nested source metadata and excluding domain data. A location is \(\ell=(f,n)\), where \(f\) is a filename or source marker and \(n\) is its line number. Let:

\[
A(L)=\{f\mid(f,n)\in L,\ f\text{ is absolute under the existing supported path rules}\}.
\]

Define the automatically inferred absolute root as:

\[
Root(L)=
\begin{cases}
commonDir(A(L)), & A(L)\neq\varnothing,\\
\bot, & A(L)=\varnothing.
\end{cases}
\]

Here \(commonDir\) is the common directory of the supplied absolute filenames under the supported path rules; \(\bot\) means no absolute root exists. It is not a fallback to the current directory or to a common relative directory. For any collection \(M\) containing only non-absolute locations:

\[
\boxed{Root(L\cup M)=Root(L)}.
\]

For each location \((f,n)\in L\), automatic normalization is:

\[
N_L(f,n)=
\begin{cases}
(Relativize(f,Root(L)),n), & isAbsolute(f),\\
(f,n), & \neg isAbsolute(f).
\end{cases}
\]

The second branch is verbatim preservation of both ordinary relative filenames and virtual markers; their text does not pass through path-component normalization. All line numbers are preserved. If \(Root(L)=\bot\), every location follows that second branch. An explicitly supplied module root may govern absolute-file relativization but cannot change this non-absolute pass-through law.

In particular, for any two location collections containing the same non-absolute location \((f,n)\):

\[
\boxed{N_L(f,n)=N_K(f,n)=(f,n)}.
\]

These are source-policy laws, not a requirement to add a public mathematical abstraction. They apply consistently to module completion and ad hoc-read admission. Compatibility with the old all-relative shortening behavior is not required for newly constructed definitions or records.

For a consistent relocation \(T\) of the shared absolute source-tree prefix, preserving internal file layout, relative filenames and markers:

\[
\boxed{N(T(L))=N(L)}.
\]

Let \(Meaning_p(D)\) and \(SemanticIdentity_p(D)\) denote the established semantic meaning and identities under profile \(p\). For a rewrite confined to source provenance:

\[
\boxed{Meaning_p(N(D))=Meaning_p(D)}
\qquad
\boxed{SemanticIdentity_p(N(D))=SemanticIdentity_p(D)}.
\]

A complete record's content identity remains a separate function:

\[
RecordId_p(r)=H_p(Canonical_p(r\setminus\{record\_id\})).
\]

The existing profile determines which provenance is inside that authoritative content. Semantic hash invariance does not imply that every legacy fresh record remains byte-identical after its embedded provenance changes. Historical verification continues to use the original record content and profile, not a rewritten construction input.

### Functional Requirements

- **FR-001 — Absolute-root evidence:** Automatic source-root selection MUST derive its result only from absolute source filenames in the final IR of the module or read being admitted, including nested source metadata. Non-absolute filenames, markers, domain data and discarded construction inputs MUST NOT influence that root. If no absolute filenames exist, the absolute root MUST be absent.
- **FR-002 — Both construction workflows:** Supported module construction and ad hoc-read construction MUST provide the source behavior in FR-001 through the public binding surface, without requiring a second trace, reconstruction of the definition, access to private Core components or caller traversal of inaccessible structures.
- **FR-003 — Provenance preservation:** Source normalization MUST preserve all line numbers, relative filenames and virtual marker text verbatim, regardless of other locations or any supplied root. It MUST NOT shorten a relative filename by a common relative prefix or lexically rewrite its supplied spelling. Relativized absolute filenames MUST retain meaningful relative directory distinctions.
- **FR-004 — Relocation and ordering:** For equivalent definitions with a consistently relocated shared source-tree prefix, normalized provenance MUST agree. Root inference MUST be invariant under reordering or repeating locations and under adding non-absolute locations to the root-evidence collection.
- **FR-005 — No absolute files:** Definitions with no absolute source filenames, including marker-only, relative-only and empty location collections, MUST remain supported with no automatically inferred absolute root. Relative filenames such as `pkg/model.py` MUST remain verbatim even if all filenames share a relative directory; there is no fallback to relative-root inference or the environment.
- **FR-006 — Explicit-root boundary:** Explicit-root module construction MUST follow the same verbatim preservation rule for relative filenames and markers. An explicit root may govern absolute-file relativization only; it MUST NOT be applied to a non-absolute filename. Root configuration MUST remain optional; no backward-compatibility exception may override FR-003.
- **FR-007 — Lexical determinism:** Source handling MUST depend only on the supplied provenance and supported path rules. It MUST NOT inspect file existence, resolve filesystem links, use the working directory or read account-specific environment information to infer a root.
- **FR-008 — Metadata-only transformation:** The policy MUST cover all source-provenance locations in the final IR, including nested expressions and projections. Only absolute source-provenance filenames may be rewritten. Domain values, including strings and structured literals that resemble source metadata, MUST remain unchanged.
- **FR-009 — Semantic preservation:** Admission rules, query/read meaning, state and evidence requirements, evaluation results, refusal classifications and applicable validation phases MUST retain their established behavior. Source-only transformations MUST preserve behavior, item and read-definition semantic identities.
- **FR-010 — Profile-specific record identity:** The correction MUST preserve existing record formats, canonicalization and hash-domain rules. Current-profile provenance-independent record identity MUST remain invariant. Any fresh legacy-record identity difference MUST be attributable to an explicitly identified change in authoritative provenance content, with no meaningful record field omitted to force equality.
- **FR-011 — Historical preservation:** Supported historical records, signatures and archived fixtures MUST retain their original bytes, identities, interpretation and replay validity. Fresh-construction normalization MUST NOT be imposed on stored records during decoding, integrity checking or replay.
- **FR-012 — Fresh-output and historical boundaries:** Before implementation, planning MUST classify affected fresh serialized definitions, diagnostics and record identities for each supported profile and document migration/release implications. The old all-relative shortening and lexical rewriting are intentionally not backward-compatibility requirements for new output. Existing semantic hash contracts and frozen historical evidence remain protected; any required incompatible historical or hash-format change MUST be resolved explicitly before proceeding.
- **FR-013 — Executable regression:** Regression coverage MUST reproduce the mixed-source root problem and the old all-relative shortening behavior before correction, then enforce the same source policy for both public construction workflows and nested read locations. It MUST establish the required case matrix below, including verbatim relative spellings and absence of an automatic absolute root when no absolute paths exist. Already-correct current-profile identity behavior MUST be characterized and reused rather than claimed as a missing fix.
- **FR-014 — Public consumer independence:** At least one consumer depending only on the supported public Core facade MUST demonstrate the mixed-source module and ad hoc-read scenarios in one construction pass. No binding-specific or Model-specific completion workaround may be required by the solution.
- **FR-015 — Consumer documentation:** Documentation MUST explain root selection from final-IR absolute filenames, absent-root behavior, verbatim preservation of relative filenames and markers, the explicit-root boundary, and the difference between semantic identities and profile-specific complete-record identities. Any newly constructed legacy-record identity change MUST have a concrete migration example, including replacement of the old all-relative shortening. It MUST state that defining an external anchor for relative source paths is outside this feature.

### Required case matrix and proof obligations

The executable coverage must distinguish construction provenance, semantic identity, fresh record content/identity and archived replay. A matching result alone is not sufficient evidence for all four.

| Source case | Required observation |
| --- | --- |
| Absolute files only | Existing correctly traversed output and semantic identities preserved; previously skipped final-IR locations follow the same complete policy |
| Absolute files plus each of the four named markers | Absolute output unchanged by marker presence; marker text and lines preserved |
| Absolute files plus ordinary relative filenames | Relative filenames do not influence the absolute root and remain verbatim |
| Only relative files, including files with a shared relative directory | `pkg/model.py` remains `pkg/model.py`; no automatic absolute root or relative-prefix shortening |
| Relative spellings containing `./`, `..` or repeated separators | Exact supplied text preserved, with and without absolute files elsewhere |
| Markers only and an empty location collection | Automatic absolute root absent; markers verbatim; no environmental dependency |
| One absolute file and multiple absolute subdirectories | Correct common-directory behavior and distinguishable relative paths |
| Reordered or repeated source locations | Same inferred root and corresponding normalized locations |
| Equivalent source trees under two absolute prefixes | Equal normalized provenance and semantic outcomes |
| Explicit-root module construction | Only absolute filenames may be relativized; relative paths and markers remain verbatim |
| Nested read expressions and projections | All applicable locations follow the same rule |
| Domain strings and structured literals resembling locations | Values and semantics unchanged |
| Fresh equivalent reads under legacy/v1 and current/v2 | Separate expected provenance and record-identity assertions for each profile |
| Frozen pre-change records and semantic mutation controls | Historical integrity/replay preserved; meaningful tampering still detected |

Planning must discharge these obligations before selecting a concrete design:

- **PO-001 — Domain:** Define the root-evidence collection from source locations in the final IR; distinguish absolute filenames, ordinary relative filenames, virtual markers and domain data. Establish that an empty absolute subset gives an absent root, and that every non-absolute filename is preserved verbatim without claiming an external anchor for it.
- **PO-002 — Source laws:** Establish absolute-evidence isolation, order/duplication invariance, consistent-relocation invariance, context-independent verbatim preservation of every non-absolute filename, and preservation of useful diagnostic locations in both construction workflows.
- **PO-003 — Semantics:** Establish meaning and semantic-identity preservation while keeping source metadata separate from literal data.
- **PO-004 — Identity domains:** Identify exactly which profile-specific authoritative record fields contain provenance; characterize v2's existing normalization and any intended change to newly constructed legacy records without changing hash rules.
- **PO-005 — Compatibility:** Preserve frozen artifacts and both supported replay modes; identify public compatibility and release implications before introducing an incompatible interface or representation change.
- **PO-006 — Consumer closure:** Demonstrate both construction workflows through the supported facade in one pass, with equivalent fresh records replaying under their own established profiles.

### Key Entities *(include if feature involves data)*

- **Source location**: A provenance filename or virtual source marker together with a line number in the final IR. Relative filenames and virtual markers are opaque preserved text; the feature does not define their external directory anchor.
- **Automatic source root**: The common directory supported by the supplied absolute source filenames; absent when there are none.
- **Definition**: A module or ad hoc read whose semantic content is admitted by Core and whose provenance can be represented portably.
- **Semantic identity**: An existing content identity of admitted semantic meaning, independent of source locations under its established contract.
- **Read record**: Profile-specific, canonical, content-addressed evidence of a read; the profile decides which source provenance is authoritative content and which is detached display information.
- **Historical evidence**: Previously emitted records and related frozen artifacts verified and replayed under their original supported contracts.

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Every required source case yields its specified provenance outcome for both module and ad hoc-read construction where applicable; each of the four named virtual markers is covered.
- **SC-002**: A public-facade consumer constructs each mixed-source module and read in one pass, with zero second traces, definition-reconstruction steps or private-component dependencies.
- **SC-003**: Equivalent definitions built under two distinct absolute checkout prefixes produce equal normalized provenance, semantic identities and authoritative evaluation outcomes in every covered profile; reordered and repeated locations preserve the same source root.
- **SC-004**: All relative filenames and virtual markers retain byte-for-byte identical text in every required source mixture and explicit-root control, including `pkg/model.py`, a leading `./`, parent components and repeated separators. Source lines, meaningful absolute-file directory distinctions and domain values are preserved. Already correctly traversed absolute-only normalization outcomes are unchanged; previously skipped final-IR locations follow the complete policy and their fresh-output differences are documented.
- **SC-005**: Legacy and current read profiles each have explicit, passing assertions for fresh canonical record content, identity and replay. All frozen historical controls retain their bytes, identities and established replay outcomes; all semantic mutation controls remain detectable.
- **SC-006**: All source-policy results are reproducible with the same supplied inputs under different working directories and with nonexistent source filenames; there are zero filesystem lookups or environment-derived root choices in source inference.
- **SC-007**: The documented contract accounts for every required matrix row and intended fresh-provenance difference, including the deliberate removal of all-relative shortening; there are zero compatibility exceptions to non-absolute verbatim preservation. All applicable Core conformance and regression gates pass before delivery.

## Assumptions

- The accepted outcome is automatic root selection from final-IR absolute file paths and verbatim preservation of all relative filenames and virtual markers in both construction workflows. The design may reuse existing mechanisms; no new public root option or exports of internal expression types are required.
- Absolute-path recognition and rendering of relativized absolute filenames follow the supported platform contract. Relative filenames and markers are not passed through that renderer. Cross-platform path grammar, filesystem canonicalization, path-security sandboxing and a general source-map system are separate work.
- Verbatim preservation applies to the complete relative filename, including any supplied leading `./`, parent components or repeated separators. Previous shortening or lexical rewriting is not retained for newly constructed output. This guarantees deterministic preservation, not a shared meaning across different project structures; a relative-path anchor contract is outside scope.
- Explicit roots may continue to govern absolute-file relativization. They do not authorize rewriting relative filenames or markers. The feature neither infers a directory anchor for a relative filename nor promises to make arbitrary unrelated absolute directories portable.
- The report's reference to checkout-dependent `record_id` is a hypothesis to verify per record profile. Baseline inspection shows v2 already normalizes embedded-definition locations; no blanket claim that all record identities change is made.
- Backward compatibility with previously emitted fresh-construction provenance is not required, including all-relative shortening. Newly constructed legacy records may have different content identities when embedded provenance changes. Historical bytes, identities, decoding and replay remain exact; migration guidance explains new-output differences without rewriting archives or changing semantic hash rules.
- Existing admission, canonicalization, record validation and replay remain authoritative. Feature 026 is independent; no production implementation, release, PR update or issue closure is part of this specification step.
