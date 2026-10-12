# Targeted creation re-audit

This assessment addresses RC-003/F-PERSIST-002 and initial Store creation only.
It preserves the immutable 016 audit as the source of the finding. The missing
outcome law (O-PERSIST-012) and missing execution coverage (O-PERSIST-004) are
separate: stating an atomic contract does not prove a filesystem implements it.
Independent source reviews are [Core](independent-core-review.md) and
[reference/host](independent-host-review.md); the implementation authors did not
present review of their own production lane as independent proof.

## Chain of law, invariant and evidence

| Obligation | Implementation invariant | Executed evidence | Establishment / premise |
| --- | --- | --- | --- |
| P019-01 | ValidatedInitialization::validate uses existing complete typed seed validator before any Backend call | Invalid type/grid/range/schema/duplicate/Ref/Behavior controls with zero publication counters; C2 | Code invariant plus empirical negative controls; admitted Module semantics remain normative |
| P019-02 | InMemory privately builds a candidate then assigns once; durable creation serializes check/rename under stable lock | C1/C3/C4/C9/C10; actual before/after publication exits and real initializer races | Logical construction invariant; physical atomic replacement remains host/OS premise |
| P019-03 | Normal durable reads inspect only store.json; private temp/orphan bytes never become Store | C13/exposed partial mutants; empty/referenced staging observer windows | Code namespace invariant plus process observations |
| P019-04 | Original Genesis/StoreId plus normalized V0/R0/H0 checked independently of current content | C5/C6; policy/schema/seed/v1 sequence conflicts; equal-StateId foreign controls; legacy normalized substitution | Exact-product invariant under canonical hash/collision premises |
| P019-05 | Equivalent preflight performs no create; direct Backend equivalent retry performs no assignment/write | C5/C7/C8; repeated Store and direct Backend retry; reset/duplicate mutants | Code invariant and full original/current material equality in finite executions |
| P019-06 | Only structurally established complete foreign lineage yields creation conflict | C6/C10, primary-error controls and invented-conflict source mutation | Bounded witness rule; no parsing of host error messages |
| P019-07 | One post-error classification; equivalent/absent/incomplete/unreadable evidence retains exact primary error | C3/C4/C11; erased-error, failed-read-as-absence and fabricated-success mutations | Code branch invariant and activated error sensitivity evidence |
| P019-08 | Immutable Some-genesis witness followed by one captured head and fixed-position history reads | C14 plus real first-commit races; private captured-H0 certificate test | Append-only coherent fixed-position history is a Backend premise; no head-stability loop |
| P019-09 | Original material at zero and bounded current endpoint/schema chain are distinct; recovery does not reset | C7/C8; creates/updates/retarget/removal/migrations; parent/evaluation-basis/schema mismatch negatives | Code invariant plus finite histories; not full-prefix Behavior replay |
| P019-10 | Only exact verified H0 can attach Module/profile/history-bound initial certificate; open/advanced captures cold | Private7; unacknowledged/partial/advanced/equal-StateId/migrated/removal controls; activated advanced-certificate mutation | Private type/branch invariant; captured historical H0 cannot certify later position |
| P019-11 | V1 raw Genesis versus normalized typed V0 preserved; v2 canonical typed product checked | Both supported profiles; legacy sequence distinction; canonical object/backend/edge order and v2 authoring properties | Existing profile law; no historical normalization/rewrite |
| P019-12 | Generic module-free open checks structural original publication and bounded endpoints without attaching validity | C1/C13; generic cold/open integrity controls; legacy structural authority-limit test | Typed Ref/Behavior truth requires Module or conforming Backend premise |
| P019-13 | Durable success/recovery performs required file/directory sync under stable cooperative lock | Eleven activated fault modes; 34 window observations, six process races, four history cases | Host invariant plus process evidence; device/power-loss/root/locking guarantees remain disclosed assumptions |
| P019-14 | One normative Backend semantics, unchanged signatures, full actual role inventory and migration guidance | Thirty implementations classified; reference and durable45-case runs; external pin left untouched | Public conformance law; compile compatibility is not semantic conformance |
| P019-15 | No Wire/schema/hash/record/verifier changes or dispatch; historical fixtures preserved | All 3828 protected paths unchanged; facade export baseline unchanged; historical98 and consumer42 controls | Byte custody and regression evidence; no claim that unchanged code lacks other defects |
| P019-16 | Final tracked source/reports/bookkeeping committed before freeze; final gates and exact Git consumer run externally | External /home/kalle/validation-receipts/core019/<candidate-sha>/receipt.json | Pending final delivery checks when this tracked report is produced; completion belongs to that receipt |

Tests are executable evidence, not mathematical proof. Negative controls have
actual activation and designated assertion failures; setup/compile failures,
ignored old benchmarks and contaminated artifact runs are not counted as passes.
The shared-target mutation collision was corrected through isolated targets and
fresh official-source verification. Source copies never modified official code.

## Relevant global invariants

| Global invariant | Creation-boundary result | Limit |
| --- | --- | --- |
| G3 state validity | Complete candidate seed valid under exact Module/schema before publication; candidate certificate requires verified committed identity | Generic open supplies structural evidence only; current ordinary validation and historical profiles retain017 semantics |
| G8 persistence neutrality | Physical staging, indexes and locking implement one product; original/current identities and semantics unchanged | Canonical/as-of answers and complete enumeration must conform; a dishonest host is outside the contract domain |
| G9 atomicity | One absent-to-complete publication, logical single assignment or physical rename with required barrier | Cooperative lock, same-filesystem atomic rename, root/device sync behavior are physical assumptions |
| G11 optimization transparency | Only exact captured initial identity may reuse already-established validity; eliminated operations do not remove obligations | Cache proof is snapshot-bound and cannot answer later commits, including equal-StateId positions |
| G12 cache non-authority | Open/advanced captures cold; replay/index/current semantic truth comes from canonical history, not cached candidate | Materializations are reconstructible; this is not a certificate of arbitrary external cache honesty |

## Bounded conclusion and remaining work

No unresolved material creation-boundary contradiction was found under the stated
premises. The outcome law is explicit; shared semantic cases, concrete host windows,
actual same-target races, source mutation sensitivity, preserved profiles and
independent reviews supply bounded implementation evidence. Physical durability
for every host/device is not established by process exits or trait compilation.

The [pre-existing trusted-v2 query-candidate refusal](follow-up-findings.md) remains
open and is unrelated to atomic creation. C12 verifies the required creation and
nonempty query-read ordering domain; it does not claim that ordinary query-commit
bug was repaired. Queued020/021 findings and the whole016 audit remain outside
this conclusion. This report gives no whole-Core SOUND verdict.

Final exact-revision gates and consumer results cannot be self-referentially
embedded in their own commit. They must be supplied by the immutable external
candidate receipt. A later merge, squash, rebase or release SHA needs its own
assurance; no release publication is authorized by this assessment.
