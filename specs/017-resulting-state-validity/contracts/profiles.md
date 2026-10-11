# Contract: Fresh Execution, Immutable Replay and Versioning

**Planning decision**: D-017-003 option B, justified by [R4–R6](../research.md).
This design is reviewable; no format, verifier constant or release has changed.

## Version selection

New ordinary action computations emit decision record_version `0.8` and
validation_profile `behavior.complete_resulting_state.v1`. Module language
SemanticProfile remains Legacy or CommandIntents. Existing semantic_profile
`0.8` continues to identify command language semantics and is present only for
that branch; record 0.8's closed codec also supports non-command modules.

Validate record version/profile and module consistency before selecting an
internal computation. Unsupported or contradictory markers are explicit refusal
or replay mismatch, never a default legacy fallback. The caller cannot set fresh
execution purpose to historical. Optional git_revision/release strings and
BehaviorHash alone are not validation-profile selectors.

## Execution and replay matrix

| Boundary / evidence | Computation | Mutation / validity consequence |
| --- | --- | --- |
| Fresh plain eval/observed/provider, action intent, invocation; Wire 0.4–0.8 | Corrected complete-state profile; record 0.8 | ALLOW requires complete child validity; partial snapshot fails explicitly |
| Fresh Store evaluate/invoke/rederivation | Corrected profile at exact parent/schema/history | Current candidate only; authorization and CAS remain required |
| Fresh public evaluation at an old position | Corrected profile with schema/state at that position | Historical inputs do not select historical computation; past invocation creates no live candidate |
| Standalone action replay; record 0.4–0.7 | Frozen original computation selected by archived record | Original result/bytes; no claim of corrected full validity |
| Standalone action replay; record 0.8 | Corrected profile from archived complete parent/history facts | Same-profile outcome/evidence; no writes |
| Invocation replay with action outcome | Nested validated decision profile | Original wrapper bytes/hash; no writes or command dispatch |
| Invocation replay with read outcome | Existing read-v1/read-v2 profile | Existing read meaning/bytes; unchanged by017 |
| Store behavior/history replay | Each archived decision profile and exact historical schema/position | Read-only structural/evaluation reproduction; old ALLOW cannot promote corrected validity |
| Store-backed invocation replay | Internal profile-aware evaluation at recorded position | Never call ordinary current invoke indiscriminately for old decisions |
| New live commit of uncommitted record 0.4–0.7 bundle | Refuse obsolete candidate; require fresh evaluation/current evidence | No new history from legacy omission; renewed exact-candidate authorization |
| Exact already-committed event recovery | Exact immutable event match, existing already:true path | No new write, command occurrence or current validation promotion |
| Already-invalid historical parent | Preserve archive; reject fresh ordinary operation | No repair, migration/adoption or record rewrite is implicit |

Archived replay accepts records under the existing documented backend/trust domain.
It does not establish that an invalid old ordinary commit was semantically sound.
A new corrected rejection never rewrites an old ALLOW into a DENY.

## Evidence/identity version matrix

| Area | Planned consequence |
| --- | --- |
| Core Release | Minor release required; exact number/tag/publication outside planning |
| Decision records | Add0.8 schema and closed codec; old 0.4–0.7 bytes/profiles remain readable and reproducible |
| Validation selector | Separate evidence-profile field, not a new Module semantic variant |
| Current verifier | Corrected encoding 0.9.0; versioned cache/provenance; archive0.8.0 and0.7.0 retained |
| Wire IR/admission/syntax | Existing0.4–0.8 unchanged; same programs admitted |
| Item/BehaviorHash/SchemaHash | Existing inputs, canonicalization and domains unchanged |
| StateId/entity content | Existing live-content meaning unchanged |
| Invocation record v1 | Same outer format/domain; validates new inner record; new payload naturally has new ID |
| Store genesis/bundle/history formats | Keep existing formats/domains; nested corrected record naturally changes transition/candidate/history identities |
| Command intent/occurrence identities | Existing formulas/domains unchanged; historical occurrences unchanged; a new differing history produces a differing occurrence |
| Read-v1/read-v2 and migration | Frozen applicable behavior; not reinterpreted through modified common helpers |
| Public Rust/CLI signatures, Backend traits | No new export, strategy flag or method; accepted evidence-version reporting updated |
| Existing governance policy/evidence | Never upgraded implicitly; old candidate authorization cannot authorize new hashes; archived verification cannot satisfy current-subject proof |
| Ecosystem Core pin | Unchanged here; adaptation follows a separately published exact Core Release |

Consumer adaptation is explicit: new record readers and fresh partial-state callers
must adapt; governed stores may require separately supported policy/adoption work
before they can authorize current verifier evidence. No automatic policy rewrite,
legacy verifier acceptance exception or gate bypass is permitted.

## Mandatory integration points

- DecisionRecord decode/hash/replay dispatch must be version-first and closed for
  record 0.8, including module-profile pairing and command bag validation.
- Governance candidate and committed-command readers must recognize non-command
  record 0.8 explicitly; presence of commands is not a substitute version gate.
- Invocation action replay dispatches nested evidence without changing read
  dispatch. Pre-evaluation decode/binding envelopes with no decision keep their
  current meaning; no fabricated nested decision is introduced.
- Store rederivation uses explicit internal fresh/archive purpose. Live commits
  enforce current profile even when archived reproduction would match ALLOW.
- Complete parent snapshot evidence and observed historical identities are
  archived for reached current computation. Old records need no newly required
  facts that were never recorded.
- Keep older snapshot/evaluator dependencies frozen for historical action/read
  reproduction. Sharing code is permitted only where semantics remain identical.

This feature integrates its new profile boundary. It does not claim to close
018's independent existing duplicate/profile-aware read replay findings,019's
creation algebra,020's general metadata debt, or021's canonicalization hardening.
