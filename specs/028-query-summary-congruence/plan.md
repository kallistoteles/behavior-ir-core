# Implementation Plan: Query Summary Congruence in SMT Verification

**Branch**: `028-query-summary-congruence` | **Date**: 2026-10-16 | **Spec**: [spec.md](spec.md)

**Input**: Clarified feature 028 and Core #35; Core main `c8c79b48c11403c5e0a6fd5ab81145e0aca06183`, source-equivalent to released 0.14.0.

**Planning status**: Phase 0 research and Phase 1 design complete. Implementation, acceptance, publication and C19 release adoption are pending. No production code or tests were changed by this plan.

## Summary

Restore the existing semantic law that equal query memberships in the same parent state and interpretation have equal count summaries. Add generic guarded equalities between existing count applications, using a private typed source-membership descriptor and explicit capture-value equality. Do not change admitted IR, Approval lowering, public query identities, runtime execution or existing exact deltas.

The initial recognized fragment requires the structural parent-definedness certificate justified in the proof contract and covers C19's typed equality conjunction, simple equality and literal-true forms. Preserve original error/range obligations; skip uncertified partial membership instead of assuming success. New congruence is explicitly enabled only for immutable single-context action/rule/read encoding and remains disabled in both migration constructors.

Version new proof generation as verifier 0.10.0, preserve released 0.9.0 archive decoding, update closed provenance enums and keep old policies/attestations immutable. Exact already-committed replay/recovery must use the existing historical-purpose judgment rather than demand fresh 0.10 proof from old 0.9 evidence. These demonstrated trust-chain dependencies are part of the narrow correction, not a general verifier rebuild.

## Technical Context

**Language/Version**: Rust 1.98.1, edition 2024, pinned in `rust-toolchain.toml`.

**Primary Dependencies**: Existing `behavior-core`, `serde`/`serde_json`, `sha2`, typed errors and external Z3 4.16.0 through the current solver process interface. No new crate or solver integration.

**Storage**: Existing optional diagnostic file cache and immutable Store history. New provenance/lemma records are ephemeral per Encoder/session. No new backend, Store format or schema migration; only bounded historical evidence-purpose dispatch changes.

**Testing**: Rust integration/unit tests, published CLI/public engine boundary, existing Python/jsonschema checks and `scripts/gates.sh`. Add semantic regression tests before implementation; reuse complete existing controls.

**Target Platform**: Existing supported Rust Core platforms and Linux CLI/release environment. Development shell supports x86_64-linux/aarch64-linux; no new platform obligation.

**Project Type**: Rust workspace library plus CLI; public consumers enter through `behavior-engine`.

**Performance Goals**: Original full C19 and generic minimal proof succeed under the existing pinned default budget: rlimit 20,000,000 and 60,000 ms operational guard. Do not increase budgets to mask a failed relation or add a finite-universe bound. Emit finite ground implications only within deterministic matching-template buckets; no global cross-query all-pairs traversal or new persistent cache. Unknown/exhaustion remain honest results.

**Constraints**: Preserve `C ⊆ A_new ⊆ A_old`, justified Gamma, complete original errors and exact deltas. Runtime observational equivalence, BehaviorHash/SchemaHash/public query/item identities and frozen history remain unchanged. Existing 16-hex display suffixes are not sufficient evidence for new descriptor equality. Local disk is constrained: planning uses read-only metadata/released binaries; implementation builds use an adequately sized target filesystem or CI without weakening gates.

**Scale/Scope**: One private count-congruence helper, existing relational encoder and single-context boundaries; verifier identity/closed archive/schema compatibility; exact committed-history evidence-purpose bridge and focused regression/public acceptance coverage. No arbitrary query-equivalence prover, new totality framework, grouped invariant, global induction, migration proof expansion, Model changes or whole-Core audit.

## Constitution Check

Gate evaluated before research and again after design against the accompanying 1.1.0 draft amendment. PASS means the design meets the gate; it does not report unrun implementation tests as passing.

| Principle / gate | Before research | After design / evidence |
|------------------|-----------------|-------------------------|
| I — Deterministic authority | PASS | Core semantics supplies membership truth; no AI/business-specific proof authority. |
| II — Validated boundaries | PASS | Existing typed admission, errors and strict evidence remain normative; no untyped escape path. |
| III — Test-first | PASS | Semantic red cases before production fix/version bump; false-proof controls before precision acceptance. |
| IV — Reproducibility | PASS | Full identities, deterministic ports/order, pinned solver/profile and cold/warm proof identity controls. |
| V — Auditability | PASS | Explicit context/assumption/certificate/error premises; exact action+subject proof provenance. |
| VI — Simplicity | PASS | Additive count-only relations, one private helper, existing infrastructure; alternatives assessed in research. |
| VII — Semantic authority/proof soundness | PASS | [Unbounded argument](contracts/query-summary-congruence.md#5-unbounded-conservativity-argument); no circularity; execution contract unchanged. |
| Technology / required gates | PASS | No unsafe/floats/new dependencies; existing format/clippy/tests/determinism/boundary/public/consumer gates retained. |

No constitution deviation is proposed. Remove the constitution's temporary Sync Impact review comment when preparing its commit; preserve the actual principle and existing I–VI. This plan does not perform a new constitution amendment.

## Project Structure

### Documentation (this feature)

```text
specs/028-query-summary-congruence/
├── spec.md
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── checklists/requirements.md
├── contracts/
│   ├── query-summary-congruence.md
│   ├── proof-compatibility.md
│   └── acceptance-matrix.md
├── evidence/
│   ├── baseline.md / baseline.json / frozen reproduction inputs
│   └── semantic-identities.json
└── tasks.md                    # Next workflow; not generated by plan
```

### Source Code (repository root; planned changes)

```text
crates/behavior-verify/
├── src/encode.rs               # Default-disabled context; action/rule opt-in
├── src/encode/relational.rs    # Source provenance, unchanged original counts/errors/deltas
├── src/encode/count_congruence.rs  # New private typed relation/certificate/registry helper
├── src/reads.rs                # Single-context read opt-in
├── src/migration.rs            # Explicit disabled boundary at both constructors
├── src/lib.rs                 # VERIFIER_VERSION 0.10.0
├── src/governance/trusted.rs   # Preserve closed historical 0.9 decoding
└── tests/
    ├── query_summary_congruence.rs  # New focused contract and original/minimal cases
    └── existing query/error/cache/migration/governance tests
crates/behavior-cli/tests/       # Existing public verify/version tests
crates/behavior-store/
├── src/store.rs / src/replay.rs # Historical-only evidence-purpose dispatch
└── tests/proof_version_history.rs # New genuine signed 0.9 replay/recovery controls
consumer/tests/canonicalization.rs # Fresh versus archived report/authorization bytes
schema/                         # Existing governance-v2/store-v2 provenance enums
tests/fixtures/                 # New-current fixtures and pre-bump signed 0.9 capture; old bytes frozen
docs/verification.md / docs/versioning.md / docs/governance.md
```

**Structure Decision**: Keep query congruence inside the verifier. The private helper isolates recognition/typed port comparison from occurrence code. The only Store implementation change is the demonstrated historical evidence-purpose bridge at reproduced committed action/migration replay and exact recovery. Do not change runtime evaluation, live commit authorization or ecosystem Models. Existing fixtures are reused through deterministic repository-relative paths; avoid duplicating the original module in another fixture tree.

## Phase 0 — Research decisions

[research.md](research.md) resolves the four initial unknown groups: relation representation/captures, cross-path context isolation, versioned authority, and concrete regression/public validation commands. It records decisions, rationale, alternatives and the required six-area impact classification.

The main discovered dependencies are explicit: migration encoders stay outside the new relation; the bump otherwise drops 0.9 archive decoding and breaks signed committed record-0.8/migration replay; wrapper schemas need the new closed version; and fresh ordinary/migration reports plus dependent authorizations must be separated from historical goldens. Research R9 resolves the replay purpose contract without introducing fresh authority. No unresolved product choice remains.

## Phase 1 — Design and implementation boundaries

1. **Establish proof premises and red evidence.** Adopt the [proof contract](contracts/query-summary-congruence.md), [data model](data-model.md) and [QS matrix](contracts/acceptance-matrix.md). Before the version bump, capture genuine proof-governed signed 0.9 action/migration histories on unchanged 0.14.0 public Store code, with complete immutable provenance and baseline replay/recovery outcomes. Assert original/minimal semantics and identity, including genuine missing-guard refusals. Semantic red evidence must fail on missing congruence, not only an expected new version. Failed historical capture blocks the bump; it cannot be substituted by relabeled new evidence.
2. **Describe source membership without changing evaluation.** Preserve original query/predicate before equality narrowing. Normalize only proven ordered membership laws; build full typed templates with per-occurrence primitive capture ports and a structural parent-definedness certificate. Total primitive candidate/outer reads, comparisons and Boolean filters cover mandatory cases. Uncertified forms keep existing behavior.
3. **Relate existing parent applications.** Retain original `Inst`, `inst_args`, membership/error evaluation, known-member bounds, witness definitions, `unique_links` and deltas. Finalize each relation's NoError from existing obligations after wrapping. Emit deterministic typed-capture/no-error implications between matching Count/Any or Count/Count origins. Relate S applications at the correct captures, never final S' totals. Do not add target/global premises.
4. **Enforce context ownership.** Generic Encoder construction starts disabled; only ordinary action/rule/read builders opt in before encoding. Both migration constructors are disabled before any source encoding, including the path that changes module source→target→source. Verify no new relation crosses contexts; do not repair unrelated legacy caches absent a demonstrated defect.
5. **Version proof authority deliberately.** Apply [proof compatibility](contracts/proof-compatibility.md): verifier 0.10.0, retained 0.9 decoding, closed schema enums, explicit current policies, all fresh facade/report/authorization expectations separate from old goldens, unchanged trusted cache bypass. After the bump alone, record the genuine signed-history regression before implementing the historical-purpose bridge. Route only exact committed replay/recovery through archived-purpose authentication, retaining attested coverage and independent semantic reproduction; live authorization remains current. Verify pre-bump histories, tamper rejection and absence of new authority/certificates. Document minor release classification without publishing/selecting Cargo versions or changing downstream pins.
6. **Accept the actual implementation.** Execute the full matrix and [quickstart](quickstart.md), then authoritative gates. Review that code realizes the unbounded conservativity argument. Capture exact source/binary/profile/solver and current claim identity, preserved semantic/frozen identities and unresolved limitations. Leave C19 blocked until separately adopted published-release evidence exists.

These are design/work boundaries for task generation, not a generated tasks checklist. No application implementation occurs in this planning phase.

## Proof-obligation disposition

| Obligation | Design resolution | Required implementation evidence |
|------------|-------------------|----------------------------------|
| PO-001 | Typed source templates, explicit sufficient relation and parent-definedness domain | QS-01–QS-05,QS-07,QS-11; inspect recognition implementation. |
| PO-002 | Typed port equality, underlying parent coordinate, opt-in context ownership | QS-05–QS-09,QS-14; inspect child capture and migration boundaries. |
| PO-003 | Existing exact deltas/freshness/identity accounting retained | QS-01–QS-02,QS-08–QS-10 and existing effect controls. |
| PO-004 | Independent parent certificate plus untouched original NoError/range/order rules | QS-09,QS-11–QS-12,QS-21; no error path is discarded. |
| PO-005 | Additive-implication proof establishes refinement conditional on baseline correspondence | Proof review plus real negative/uncertainty controls, not finite testing alone. |
| PO-006 | New/extend/reuse coverage mapped explicitly | QS-01–QS-14,QS-21 and recorded red→green evidence. |
| PO-007 | Full runtime identities/frozen evidence, current version and committed-archive/authority separation | QS-15–QS-20,QS-23–QS-25; original action+subject obligations remain identified. |
| PO-008 | Six-area impact review, migration encoding disabled, bounded historical-purpose bridge and separate release/global obligations | QS-14,QS-19,QS-22–QS-25 and explicit handoff status. |

Any implementation that cannot satisfy a premise must decline the new relation. If a mandatory outcome then cannot be established, report that proof obligation as unresolved and stop acceptance. Design completion does not claim these implementation checks have already passed.

## Complexity Tracking

No constitutional violation requires an exception. The provenance helper and guarded implications preserve existing evaluation/delta/uniqueness machinery; replacing them with normalized UFs creates a larger correctness obligation. Archive/schema/version tests and the historical-purpose Store bridge are demonstrated dependencies of a changed proof model. Broad runtime/Store refactoring remains excluded.

## Post-implementation review: replay error types

The aggregate branch review identified `String` errors in the existing bounded invocation/read replay integration, contrary to the constitution's typed-error requirement. T062 corrects those signatures with an internal `ReplayError`, preserves document/canonicalization/JSON/facts causes, and renders text at the existing replay diagnostic boundaries. Read replay execution is supplied to shared envelope completion after its checked profile succeeds, so fresh invocation retains its existing `TransportError` contract. This is an error-interface correction; the congruence rule, evaluation order, recorded profiles, refusal phases and authoritative bytes remain unchanged.

The additional touch-points are `behavior-core/src/{record.rs,invocation.rs,invocation/replay.rs,read.rs,read/replay_tests.rs,facts.rs,eval.rs}`, replay regression tests and the Store's existing diagnostic adapters. No new semantic operation, public engine capability or dependency is introduced. T063 repeats the required acceptance on a new exact clean checkpoint and records a separate receipt without replacing the original evidence or adopting a release.
