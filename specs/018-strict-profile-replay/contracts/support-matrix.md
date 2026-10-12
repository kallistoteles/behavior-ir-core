# Replay Support Matrix

**Scope**: Existing compatibility domain for018; source/contract-derived planning
inventory, not executed test results. Every supported row/boundary needs evidence.
Module version, read-document version and record profile are distinct selectors.

## Contract sources

- **C1**: [Read Wire contract](../../010-first-class-reads/contracts/read-wire.md),
  declared reads from0.7 and ad-hoc document0.7 admission against a module.
- **C2**: [Read API](../../010-first-class-reads/contracts/read-api.md), ad-hoc,
  standalone/provider and Store evaluation/replay.
- **C3**: [Historical preservation](../../../docs/soundness-remediation.md) and
  [versioning](../../../docs/versioning.md), frozen v1 including Wire0.8,
  current v2 and capture/refusal limits.
- **C4**: [Invocation documents](../../012-unified-invocation-model/contracts/invocation-documents.md)
  and [invocation](../../../docs/invocation.md), declared capabilities,
  invocation_record.v1 and exact outer/inner/Store evidence.
- **I1**: Current implementation checks in
  [wire.rs](../../../crates/behavior-core/src/wire.rs):1016–1022,
  [read.rs](../../../crates/behavior-core/src/read.rs):140–178,498–515,
  and [invocation.rs](../../../crates/behavior-core/src/invocation.rs):1366–1382.
  These enforce/clarify the above contracts; parser capability alone is not
  authority to add a support row.

## Supported rows

`Yes` means contracted support once the record's other obligations hold.
`N/A` means no supported route for that source kind; it is not a passing case.
Embedded declared reads use outer `behavior.invocation_record.v1`.

| ID | Module Wire | Source / read-document Wire | Read record | Core read | Store read | Core invocation | Store invocation | Meaning / sources |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| M04-A | 0.4 | Ad-hoc / 0.7 | v1 | Yes | Yes | N/A | N/A | Frozen v1; C1/C2/C3/I1. |
| M05-A | 0.5 | Ad-hoc / 0.7 | v1 | Yes | Yes | N/A | N/A | Frozen v1; C1/C2/C3/I1. |
| M06-A | 0.6 | Ad-hoc / 0.7 | v1 | Yes | Yes | N/A | N/A | Frozen v1; C1/C2/C3/I1. |
| M07-D | 0.7 | Declared | v1 | Yes | Yes | Yes | Yes | Frozen v1; C1/C2/C3/C4. |
| M07-A | 0.7 | Ad-hoc / 0.7 | v1 | Yes | Yes | N/A | N/A | Frozen v1; C1/C2/C3. |
| M08-H-D | 0.8 | Declared | Historical v1 | Yes | Yes | Yes | Yes | Original historical v1, never v2 substitution; C2/C3/C4. |
| M08-H-A | 0.8 | Ad-hoc / 0.7 | Historical v1 | Yes | Yes | N/A | N/A | Original historical v1; C1/C2/C3. |
| M08-C-D | 0.8 | Declared | v2 | Yes | Yes | Yes | Yes | Current v2; C2/C3/C4. |
| M08-C-A | 0.8 | Ad-hoc / 0.7 | v2 | Yes | Yes | N/A | N/A | Current v2 despite read-document0.7; C1/C2/C3. |

M08-H-D Store read/invocation are the demonstrated defective baseline cases.
M08-H-A needs the same dispatch correction plus explicit coverage. Other rows
are preservation cases; listing them does not claim they have been executed.
M04-A/M05-A require minimal compatible ad-hoc definitions, not later features
inserted into old modules. Existing source evidence includes M06-A admission.

## Refusal and inapplicable families

| ID | Combination or condition | Existing expected behavior / applicable boundary |
| --- | --- | --- |
| U01 | Module Wire0.1,0.2,0.3 or unknown | Module admission refuses; no admitted module exists for replay. Check each formerly advertised version without granting support. |
| U02 | Declared `reads` on module0.4,0.5,0.6 | Existing read-version admission refusal; test each version. |
| U03 | read-v2 with Legacy module0.4–0.7 | Unsupported profile non-match at read boundaries; declared invocation cells apply only to0.7. |
| U04 | Unknown/missing read-record format | Non-match, not fresh-profile default. |
| U05 | Unknown/missing invocation-record format | Non-match, not invocation-v1 default. |
| U06 | Ad-hoc read document with version other than0.7 | Existing read-definition admission refusal. |
| U07 | Ad-hoc read routed through invocation | No supported ad-hoc capability route; do not synthesize one. |
| U08 | Wrong BehaviorHash/read identity | Existing semantic mismatch; equal schema does not grant equivalent behavior. |
| U09 | Foreign Store or wrong state/history/schema coordinate | Store non-match under existing exact binding rules; standalone need not detect Store-specific differences. |
| U10 | Actually required backend operation fails | Existing Store operational error, not a new refusal or successful match. |

The version metadata currently advertises0.1–0.8 more broadly than actual
admission. This is separate020, not support for U01.018 neither repairs metadata
nor reintroduces rejected historical arithmetic semantics.

## Case obligations and boundary limits

For every supported row and applicable boundary, require canonical valid
preservation, applicable malformed/ambiguous cases and profile-specific recorded
refusal/error cases. Required key uniqueness covers root/nested, equal-value and
escaped-key duplicates. Whitespace and object key reordering preserve identity
where contracted. Attribute each fixture/test to row, boundary and case ID.

- v1 retains provenance/display evidence and original domain, omitted-capture
  limitations and historical query-registry refusals. A v1 record lacking needed
  facts may retain a documented non-match; no fixture may invent those facts.
- v2 retains complete snapshot facts, actual observations, semantic failures,
  detached diagnostics and restricted `refused_request` evidence.
- An evaluation error or binding refusal can itself be matched evidence.
  Refusing an ambiguous replay document is a different non-match case.
- Raw transport-refusal records can originate in public Store reads as well as
  standalone evaluation. Typed JSON request sections can have a malformed shape;
  if refusal records echo such a section as `{}`, Store reconstruction from those
  echoes can mismatch the original raw-string refusal reproduced standalone.
  This is an unchanged observed reconstruction limitation recorded for follow-up,
  not a new support restriction or a retroactive narrowing of the read contract.
  Store origin and a valid coordinate do not alone establish equality of semantic
  inputs. Test the genuine Store-origin limit separately, retain captured binding
  refusals as required matching cases, and invent no coordinates for standalone
  transport evidence. This limit never excuses a skipped required supported cell.
- Duplicate keys inside the `refused_request` string may be legitimate refusal
  evidence. Strictness applies to the enclosing JSON object; string contents are
  replayed through their recorded transport rules.
- Strict raw record decoding is already applied to both v1/v2 Core replay and
  invocation replay. Frozen request decoding remains separate and unchanged.
- Core/Store outcome/evidence equivalence is conditional on satisfied Store
  integrity and binding obligations, as defined by FR-016, under the same recorded
  profile for each supported profile/version combination. No equivalence between
  read-v1 and read-v2, backend traces or hypothetical omitted-call errors is required
  or implied.

## Coverage and fixture authority

Create a reviewed matrix manifest under proposed `tests/fixtures/replay/018/`.
Give every required case an ID and authoritative expected interpretation/refusal.
Assert required IDs equal executed coverage; missing fixtures, unexpected rows,
zero-test runs and silently skipped boundaries fail evidence collection.
Unsupported families are expanded to their stated concrete versions. Explain
N/A and any historical limit; do not count them as passing executions.

Historical archives come from independently established pre-correction evidence,
including immutable016 sources where applicable. Do not create historical v1
by changing a current v2 format tag and accepting refreshed hashes/goldens.
Existing source tests/goldens remain controls. The audit's three dedicated
regressions remain separately named alongside matrix cases.
