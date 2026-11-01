# Core033 experimental runtime contract

These are **planned** commands/interfaces, not shipped production commands.
One binary `core-proof-feasibility033` serves bounded developer orchestration;
portable packets contain data, never instructions authorizing execution of a
producer-supplied binary. See [semantic contract](semantic-and-evidence.md).

## Command surface

Paths are explicit, outputs are immutable within a frozen campaign, and repeated
commands cannot overwrite incompatible evidence. Structured reports use JSON;
binary proof/state artifacts use the versioned codecs.

| Command | Inputs and output contract |
| --- | --- |
| `freeze --profile P --out D` | Resolve available sources/tools/locks/patches/module/workload/security/storage/limits; write immutable input manifest and planned-cell ledger. Future receipts/keys are output slots, not required existing inputs. |
| `check-correspondence --manifest M --out D` | Run G0/theorem/source/semantic-matrix/codec checks and fresh kernel replay; emit source/IR receipt, axiom closures and mutation results. Final backend embedding is checked during prepare, not assumed passed here. |
| `prepare --manifest M --correspondence C --out D` | Derive actual pp/compression pk/vk, validate actual augmented-shape/port embedding, then emit immutable release manifest and verifier bundle linked to M/C. Report all setup/load/validation/byte costs. No authority for partial outputs. |
| `init --manifest M --release L --origin O --repo R --out D` | Check complete origin/seed and J, produce and verify compressed initialization, then create-once durably publish. Report the complete actual interval. |
| `execute --manifest M --release L --repo R --request Q --out D` | Exact parent/request/context; generate/check/accumulate/compress/verify, atomically publish and acknowledge. Return distinct certified result or operational status below. |
| `verify --trusted-bundle B --expected E --certificate C --out D` | Fresh consumer installs no producer code; cold loads trusted bundle, verifies actual compressed proof, compares complete returned endpoint. No history/Core replay or untrusted-key fallback. |
| `resolve --repo R --request Q --out D` | Authoritative recovery and exact original request digest lookup. Return original certified receipt or definitive absence/conflict/unknown under the storage contract. |
| `audit --manifest M --release L --repo R --range Q --out D` | Fetch/authenticate support, reconstruct requested full reference observations/commands, report exact agreement or first mismatch/unavailability. Does not dispatch commands. |
| `recover --manifest M --release L --repo R --out D` | Restore/check exact continuation or rebuild from retained checked support; report through readiness for a useful new certified operation, not merely opening a root. |
| `assess --manifest M --release L --evidence D --out A` | Check chained release/sample/coverage/artifact completeness and separate correctness/performance findings. `--failure-receipt F` replaces `--release L` after a failed stage; never require nonexistent successful outputs to report failure. |

`--out` directories are private until their atomic completion manifest is written.
An output file's existence is not a Passed result. The campaign driver invokes
fresh trusted subprocesses and retains stdout/stderr/status. The reference path
is an explicitly separate command mode in the collector, not an optional step
inside `verify` that could hide full replay.

## Result states and errors

Bootstrap is acyclic: immutable input manifest → source/IR receipt → prepared
keys plus checked actual backend embedding → immutable release manifest → run
receipts → assessment. `prepare` output is candidate material until the final
embedding checks pass. Failures have receipts linked to their input and are
assessable without a successful release. Later outputs never rewrite the frozen
input manifest. First-use runtime preparation remains in its measured lifecycle.

Every result binds version, manifest/release identity, exact request digest,
semantic parent, status and available artifact digests. Successful publication
also binds event/position, command occurrences, certificate and publication barrier.

- `Committed`: complete compressed certificate independently checked and all
  promised new objects/head/outbox/result/checkpoint durable.
- `CertifiedRefusal` / `CertifiedEvaluationError`: exact semantic outcome and
  parent-bound attempt certificate/result durable; no new event/head/outbox.
- `Conflict`: expected head or activation changed; no rebase and no candidate publication.
- `InitializationConflict`: a lineage already has a different original initialization.
- `IdReuse`: same lineage/request ID with different original digest; no overwrite.
- `Unavailable` / `Corrupt`: actual missing/corrupt bytes, distinct from nonmembership.
- `ResourceFailure` / `Unsupported`: declared resource/scope limitation, never business denial.
- `UnknownCommitStatus`: publication may have succeeded; only exact original-request
  authoritative resolution may decide. No fabricated rollback or new request ID.

Exit 0 means the command completed its promised result, including a valid certified
business refusal; the JSON status remains authoritative. Exit 2 is malformed input,
3 evidence/subject rejection, 4 conflict/initialization conflict/ID reuse, 5 operational unavailability/
corruption, 6 resource/scope limit and 7 uncertain publication. A completed negative
`assess` exits 0 as an assessment and explicitly says `g1_pass=false`; CI/positive-gate
checks must inspect this field, not reinterpret exit 0 as architectural success.

## Native/proof/storage boundaries

The Rust producer reads an `ObjectReader` and returns untrusted candidate/witness
data. Generated native K checks microsteps. The proof adapter implements the same
checked relation. Only complete independent endpoint verification yields a private
`CertifiedCandidate`; the repository cannot publish an arbitrary producer result.
The public success wrapper/decoder and candidate-to-receipt binding have explicit
refinement/control obligations, not a blanket assumption that host Rust is correct.

The internal repository control contract has two actual adapters: memory for
logical/race tests and SQLite for durable claims. Native memory tests cannot
satisfy durable timing. Neither adapter chooses semantic affectedness or J.

## SQLite transaction and acknowledgement

Use rusqlite `=0.41.1`, bundled SQLite 3.54.0/source ID from the frozen recipe.
Check every connection's WAL/FULL/foreign-key settings, page size 4096,
`wal_autocheckpoint=1000` and `busy_timeout=1000`. Record runtime source/version/
compile options. A wrong substituted library is preflight failure. Local VFS/disk
semantics are explicit premises; no network filesystem or multi-database atomicity.

Initialization uses `BEGIN IMMEDIATE` in the same domain. Absent lineage permits
one atomic publication of complete origin/seed/J/certificate/head/retention data.
An equivalent retry compares the **original** initialization identity and returns
its original receipt without rewriting or rewinding a head that has advanced.
A different origin fails `InitializationConflict`; partial authoritative rows are
`Corrupt`, never absent. Competing initialization and execute serialize at this
boundary. Kill-before/after-COMMIT and lost initialization acknowledgement are
required controls, in addition to the ordinary request controls below.

1. Resolve any existing request ID and snapshot exact head/activation; authenticate
   reads. Release the database transaction before long computation/proving.
2. Build candidate nodes/support/certificate/full continuation checkpoint privately,
   independently verify exact proof/endpoint and validate new object references.
3. `BEGIN IMMEDIATE`; re-read unique `(lineage,request_id)` **before new parent CAS**.
   Same original digest returns original; different digest fails ID reuse. This
   applies to both successful and refused requests at an unchanged head.
4. Check exact parent/activation. Insert immutable BLOBs, closure references, pins,
   event/outbox/request result and new head in one transaction. Equal existing
   digest requires equal bytes. Old reachable objects inherit prior durability;
   don't walk all old history just to republish its closure.
5. Refusal inserts only its attempt/support/certificate and unique request result
   under the same parent check. Canonical head/continuation/outbox do not advance.
6. `COMMIT` under FULL is the acknowledgement barrier. Automatic WAL checkpoint
   work occurring here is inside latency. A commit/ack error can be uncertain;
   reopen/recover and resolve original ID, with no blind new publication.

No GC in G1. All promised history/support/command/checkpoint roots stay pinned.
Physical command delivery is not performed and has no exactly-once claim.

## Required basic fault/recovery controls

Two connections race equal/different digests at the same request ID; two different
requests race one parent; a refusal races an allowed request under one ID; a
valid losing-branch proof is presented as canonical. Check original-result behavior
even after head has advanced.

Kill before transaction, after object inserts before COMMIT and after COMMIT
before acknowledgement. Reopen through SQLite recovery and resolve exact original
IDs. Test missing/corrupt node and checkpoint data, valid certificate with unavailable
audit, and checked rebuild or explicit continuation unavailability. These are process-
crash controls under documented VFS premises, not proof of physical power-loss
behavior or completion of the exhaustive G4 storage campaign.
