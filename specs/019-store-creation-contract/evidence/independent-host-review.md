# Independent Host and Reference Implementation Review

This is a read-only review of the reference Backend, the separately authored
durable test host, process workers and shared conformance design. The reviewer
authored the Core creation tests; those tests are supporting evidence, not an
independent proof of their own assertions. The reviewer did not implement the
host, reference Backend, Store creation algorithm or shared conformance cases.

The reviewed source is working source, not the final delivered revision.
`/home/kalle/validation-receipts/core019-work/core-host-review/source-before-shared-us3.json`
records the observed HEAD and file digests. Final frozen-revision gates and
exact-revision facade validation remain pending. The later
`source-after-shared-us3.json` in the same external folder binds the inspected
45-case source after registration, before its final positive host receipts.
`source-final-working-review.json` records the finalized working source, including
the scoped C12 read control and its explicit nonempty values. These manifests
record review checkpoints; they do not attest the final commit containing this
report.

## Publication and observer knowledge

The durable host has one authoritative `store.json`. Its creation writer holds
the same `writer.lock` as ordinary readers and commits. It prepares canonical
bytes in a uniquely created private file, synchronizes that file, renames it to
the authoritative path, then synchronizes the directory before returning success.
The rename is the live namespace publication point; file/directory synchronization
is the disclosed persistence barrier. Operational failure after rename leaves
publication uncertain to the caller and cannot imply rollback.

Normal reads inspect only the authoritative path under the stable lock. A missing
file means absence; an existing malformed, duplicate-key, nullable or incomplete
snapshot is an error. Complete published reads perform the recovery file/directory
barrier before yielding data. Lock-held helpers do not reacquire the lock. Private
orphan files are neither searched for nor interpreted as a Store.

These source invariants support the atomic public model under cooperative host,
OS/filesystem and durably established root premises. They do not prove arbitrary
adversarial storage honesty or power-failure durability.

## Exact retry and later history

The reference Backend builds a new empty candidate and checks its structural
publication before assigning it once to the target. An existing equivalent
creation checks original universes, revision-one/as-of-zero values, incoming
references and history-zero identity, then returns without assigning or resetting
the target. A different original identity is refused. Logical exclusive access
establishes its publication point; this reference Backend makes no physical
durability claim.

The durable host recognizes the supplied legal Core-derived original product
under its existing writer lock. Original versions, lifetimes and reference
relations must match; an advanced current endpoint must retain its record and
StateRef identity. Successful equivalent retry executes the recovery barrier and
does not call the writer. Later revisions, removals, migrations and records are
preserved. Neither host adds a Behavior evaluator: complete semantic seed
validation remains Core's obligation, and legal Core-derived product input is
the Backend precondition.

Store's stronger Module-bearing recovery and bounded captured history/schema
inspection remain necessary. The durable host's `recognizes` function alone is
not a full current-state or full-prefix semantic proof. Module-free opening
cannot independently reconstruct legacy normalization or the complete typed
Ref relation from declaration hashes.

## Obligation mapping

| Obligation | Concrete invariant and source | Executed evidence / remaining limit |
| --- | --- | --- |
| P019-02 atomic publication | `consumer/tests/support/durable_backend.rs:91` stable lock; `:166` private writer and `:199` rename; `crates/behavior-store/src/memory.rs:178` private candidate then one assignment | Named creation exits before and after publication; reference logical atomicity only; filesystem atomic replacement remains a premise |
| P019-03 staging non-authority | Durable `:113` reads only `store.json`; `:127` refuses partial authoritative data; `:173` private temporary path | Empty/referenced seeds under v1/v2; fresh-process observers never open orphan staging; deliberately exposed-staging controls are nonconforming instruments |
| P019-05 exact idempotent retry | Memory `:204` original-product comparison and no-assignment return; durable `:226` recognition and `:302` lock-held retry/barrier without write | Store and direct Backend recovery after actual updates, migration and removals; generic outcome tests alone do not prove physical durability |
| P019-08 coherent capture / races | Durable `:102` locked reads, immutable append-only Backend answers and `:395` same-lock commit; Core's Some-genesis then one-head algorithm | Separate-process equivalent/foreign/create-versus-commit schedules; later commits may follow the captured head; no exhaustive scheduler proof |
| P019-09 advanced lineage preserved | Durable `:241` exact original versions, `:252` original refs and `:270` advanced endpoint; memory exact retry returns without mutation | Original Module/G recovery, preserved bytes/records/schema, ever-used lifetimes and removed seeds; full-prefix Behavior replay remains outside this boundary |
| P019-13 durability/recovery barrier | Durable `:142` file/directory recovery synchronization and `:194`/`:204` acknowledged write synchronization; process `store_creation_crash_recovery.rs:23` establishes/synchronizes scratch root separately | Actual named process-exit and operational read/sync controls; no claim of machine power-loss/device coverage |
| P019-14 one host semantics | `crates/behavior-store/src/lib.rs:40` mandatory Backend contract; reference and durable hosts accept legal original products and preserve advanced history | All 45 shared cases executed successfully on the reference/delegating controls and durable facade; [backend-creation-migration.md](../../../docs/backend-creation-migration.md) states the mandatory external contract; existing ecosystem pins are not attested against an unpublished Core |

## Process and evidence checks

`consumer/tests/store_creation_crash_recovery.rs:85` launches the actual test
executable with a recognized worker mode. `:535` parses that mode; unknown modes
and unknown fault selectors panic before publication. Actual host fault branches
emit `CREATION_BOUNDARY019` and either exit 86 or return a Backend error. Activation
requires those markers and the expected result; requested-mode echo or compilation
failure is insufficient.

The startup gate at `:401` waits for both recognized workers before releasing
competing initializers. Assertions check one complete equivalent lineage, one
complete winner plus established foreign conflict, and preservation of the first
ordinary commit. These are real separate-process schedules, not exhaustive
interleaving exploration. The child-entry test's no-environment return is a
launcher control and is not counted as a durability scenario.

Executed host-specific receipts are in
`/home/kalle/validation-receipts/core019-work/consumer-us2/`; the named rows and
limits are summarized in [host-window-coverage.md](host-window-coverage.md).
Initial shared-target mutant collisions remain excluded as documented in
[core-mutation-controls.md](core-mutation-controls.md). Dedicated mutation builds
and ordinary-source builds have separate targets. Shared outcome controls are
not relabeled as physical crash evidence.

The shared US3 source has now been inspected. All 14 named creation cases are
registered in `crates/behavior-store/src/conformance.rs:2028`. In
`conformance/creation.rs:1022`, original-request Store recovery and a direct
Backend retry independently preserve a snapshot of canonical original/current
material. The conflicting-retry case at `:1078` first establishes an advanced
equal-StateId position; policy, schema, seed and supported legacy sequence
differences cannot substitute for original identity. Cases at `:1154` and `:1229`
exercise real creates, removals, reference retargeting and migration. Cases at
`:1280` and `:1303` schedule competing publication on the retained target, rather
than on an unrelated Backend clone. `:1342` compares supported normalization and
nonempty aggregate/project read records on reversed/unindexed versus indexed
hosts. Its explicit values are active count one, open total 45 and projected rows
o1/o2. It preserves the original creation product before and after those reads.
`:1466` schedules publication after an
absent genesis answer and actual commits after genesis/before head/after head.
The schedule is consumed before mutable delegation, preventing recursive borrow.

This review finds no additional source defect in those cases. Executed supporting
receipts are:

- `us3-conformance/all-green.log/.status`: 33 conformance tests pass, including
  the complete 45-case report and designated mutants/positive controls.
- `us3-conformance/private-all-green.log/.status`: 19 private fault/schedule
  activation tests pass.
- `us3-conformance/order-read-nonempty-green.log/.status`: the final explicit C12
  nonempty control passes under both supported genesis profiles.
- `consumer-us3/facade-green.json/.log`: 14 facade tests pass and all 45 named
  durable-host cases report PASS.
- `consumer-us3/process-green.json/.log`: 11 tests pass and 55 scoped activation,
  publication, history and real-process race rows are retained.

These folders are under `/home/kalle/validation-receipts/core019-work/`; all
listed successful runs have zero ignored tests and no source-mutant marker.
The broad facade manifest changed only the unrelated integration fixture
`crates/behavior-store/tests/support/creation_backend.rs`; its actual host,
runtime, facade and conformance bodies were stable. The process manifest was
entirely stable. Full shared/host runs precede the assertion-only explicit
nonempty strengthening, whose targeted run passed afterward. The final frozen
gates must validate the exact finalized source rather than treating these
working-source receipts as final revision assurance.

## Existing issue outside creation scope

The broader C12 experiment initially attempted ordinary query-bearing transition
commits under both genesis profiles. The retained diagnostic at
`/home/kalle/validation-receipts/core019-work/us3-conformance/query-profile-diagnostic.log`
shows v1 indexed/unindexed histories completing at position eight, while both v2
histories fail at position zero with
`BUNDLE_INVALID: INVALID_CANDIDATE: invalid observed facts`. The temporary
print-only diagnostic source is retained externally as `query-diagnostic-source.rs`
and was removed from the normal test source; it is not an ignored gate test.

The mismatch is visible in unchanged pre-019 code: trusted candidate validation
at `crates/behavior-verify/src/governance/trusted.rs:154` calls `Facts::from_json`
on observed `read_facts`, while `crates/behavior-core/src/facts.rs:378` permits only
the historical query keys and rejects the current observed `result_hash` field.
Both files have no diff from the integrated 022 base. This existing candidate/facts
contract problem is not repaired by 019 and remains separate remediation work.

Final C12 checks creation/recovery identity and index/order transparency using
already supported nonempty `active_count`, `open_total` and `big_orders` reads
under each genesis profile. It does not claim to establish or fix v2 ordinary
query-commit compatibility. The scoped read control must not erase the diagnostic
failure or be interpreted as a whole-kernel soundness conclusion.

## Review conclusion and remaining premises

No additional material host/reference defect was identified in these inspected
paths under the stated premises. The invariant chain is coherent: legal original
candidate → serialized private construction → complete atomic publication →
acknowledged or recovered persistence barrier → exact original retry without
history replacement.

Required premises remain: stable root and lock identity, cooperative exclusive
access, correct locking/rename/synchronization behavior, immutable complete
historical Backend answers, legal Core-derived inputs and cryptographic identity
assumptions. Neither process exits nor positive conformance alone establish those
premises for an external host. Generic opening supplies no independent full
Behavior/Ref proof, and no full-prefix replay proof is introduced.

The shared US3 cases and normal-source host receipts have now been reviewed.
Only final canonical gates and exact delivered-revision validation remain pending
delivery evidence; documented physical/trust premises remain assumptions.
This review does not
close unrelated 020/021 obligations or declare the whole kernel sound.
