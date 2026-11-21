# Future evidence routing within the existing w001 work

2026-11-21. Source-only design; no implementation, execution, resource probing, binary/IR inspection or artifact migration. I read only the six requested current controller/helper sources, their relevant test/schema sources, and the campaign/CLI/reproduction contracts. No old033 protected file or historical payload was read, hashed, rewritten, linked, moved or deleted. All numbers below were supplied by the coordinating agent, not measured by this note.

## Decision and scope

The [campaign contract](../../contracts/campaign.md) explicitly permits a prospective successor allocation or registered **future evidence root** while preserving old artifacts. This can support completion without changing semantic goals, trust, finality, work identity or elapsed-work accounting.

Keep `F/evidence/v2/w001/context.json`, `events.jsonl`, old subjects, attempts, refs and seals at their existing locations. Add one caller-owned root, for example:

```text
root_id: future_evidence
path: /var/tmp/behavior-ir-core036-evidence-v2/w001
```

It is outside `/var/tmp/behavior-ir-core036-v2/w001`, so it is not inside the private cache inventory. Only **new** subjects, attempts, journal-source snapshots, development receipts and large development inputs use it. The canonical work context, ledger, first actual origin, attempt sequence, predecessors and cumulative time remain the same. Do not call `init`, create w002, copy the old work tree, rebind `work`, use a symlink, or restart initial reserves.

**Prefer leaving `profile.roots.artifacts = W` unchanged**, and add the future store as an artifacts-charged `control_paths` directory. Route new writes through a separately selected artifact-store interface. This reuses external-control accounting and preserves the existing actual /data probe, instead of changing the primary footprint root or inventing a new category. The implementation must demonstrate that it counts **all old plus new** bytes; merely changing an output path is insufficient.

Accounting registration is not automatically writable-output authority. The recorder tests include rejection of an unregistered output. Establish whether its actual output-ownership gate already accepts the independently selected future store; otherwise add only a narrow explicit future-store output admission for outer receipts/stdout/stderr. Do not make every observed control path writable: E and input controls are generally observation/source inputs. This potential output-gate change is smaller than changing volume meanings or resetting all primary roots.

## Why the current controller needs a small explicit extension

| Source touchpoint | Current behavior | Required narrow change |
|---|---|---|
| [controller_v2.py](../../../../experiments/transition-study036/controller_v2.py), `registry_for`, `load_work` | Registry is repository/private/work; context ownership is pinned to W. | Keep context ownership unchanged. Optionally load one independently selected, source-frozen store registration and augment the registry before constructing/replaying WorkLedger. |
| `ref_for` and [records.py](../../../../experiments/transition-study036/records.py), `validate_ref_v2` | Refs already contain root_id/path/bytes/SHA; repository identity is preferred for existing overlapping paths. | Reuse exactly this format and preference. A disjoint new store naturally gets its own root_id. Never rewrite old refs into new aliases. |
| [campaign.py](../../../../experiments/transition-study036/campaign.py), `WorkLedger.__init__`, `_load`, `_append` | WorkLedger creates its **own** work/repository registry; replay verifies journal refs through it. New campaign-source snapshots are written under work. | Accept the same validated augmented registry/store selection. Retain W as the journal root; route only future `journal-sources/…` snapshots to the chosen artifact store. Otherwise a journal that binds a new-root declaration cannot replay. |
| `_subject`, `freeze` | Manifest and snapshot ownership are hardcoded to `work/subjects/<revision>/…`. | Resolve each manifest under the explicitly registered artifact stores, requiring a unique revision location. New freeze writes only to the active store; reject duplicate revision IDs across old/new stores. Snapshot refs must remain inside that manifest's exact subject directory. |
| `declare`, `run_attempt`, `resume` | Output, declaration, child receipt, checkpoint and predecessor paths require W/attempts/id. | Use one artifact-store path helper for **new** paths; resolve old declarations/checkpoints through their recorded refs and registered roots. Retain exact bound-declaration validation, attempt ID sequence, failed-parent/correction checks and create-once behavior. |
| `run_attempt`, fixed stage argv, receipt sealing | Several fixed stage result directories and all outer receipts/checkpoints use W. Other tool outputs use private. | Route new evidence directories and outer attempt receipts through the store helper. Explicitly admit the selected future output store at the runner's ownership gate if necessary; charging a control directory alone must not grant writes. Keep primary footprint/private/cache/tmp roots unchanged. Seal the actual new attempt directory with the existing local `attempt` registry, after writers close. |
| `load_work` development import | Scans only W/development; imports each closed receipt once. | Discover new development receipts in the registered active store as well, with the same byte/log/closed-tree checks and SHA-based no-repeat import. Preserve all old imports and clocks. |
| [frozen_source_reuse_v2.py](../../../../experiments/transition-study036/frozen_source_reuse_v2.py) | FrozenSourceWriter hardcodes work for subject discovery, snapshot refs and writes. | Add a root_id parameter defaulting to work. For a future-store writer, discover anchors only within that store. Do not search, relink or deduplicate legacy snapshots to bootstrap the new store. |
| [metadata_footprint_v2.py](../../../../experiments/transition-study036/metadata_footprint_v2.py) | Incremental metadata counting is generic, but verified snapshot exclusions require root_id=work. | Scope any exclusion validation to the explicitly chosen owned store. Never expand exclusions to arbitrary registered roots or protected historical paths. Incremental bootstrap accounting does not replace whole-work accounting. |

No global ArtifactRef/schema change is necessary: [the existing v2 ref schema](../../../../experiments/transition-study036/schemas/v2/records.json) already permits registered root IDs. Registration needs a small typed controller-input validator, not a report flag granting arbitrary ownership.

## One selection mechanism, inherited by every loader

Use an executor-owned, create-once configuration following the existing `E/*inputs-v2.json` selection pattern, for example a future `artifact-store-inputs-v2.json`. Its exact bytes are frozen as a controller/source input before a routed attempt. This is **prospective operator configuration**, never a root path taken from candidate results, manifests or success reports.

The selection binds at least work_id, unchanged context/specification refs, root_id, exact caller-owned canonical path, predecessor allocation/correction refs, the numerical new reservation and the routing source/version. Existing fields are read from the old work; no context bytes are edited. The independently selected reproduction context fixes its own expected root mapping and selection ref.

`registry_for` must consume that selection before `load_work` constructs `WorkLedger`. WorkLedger must receive the resulting registry; it must not reconstruct a narrower one. Every supervised child which calls `load_work`/`registry_for` must see and verify the same source-frozen executor selection. Using the fixed E input path supplies one shared selection point and avoids adding report-selected paths or independently divergent child defaults. Where an entrypoint accepts an explicit selection parameter, bind it to the same expected ref and reject disagreement.

The registration is verified again before execution and after child closure, like other frozen executor inputs. Include its ref in new attempt `inputs` and future journal event `inputs`; these existing ref arrays need no new ledger event kind. Keep `_apply`'s declaration/start/close semantics unchanged. The journal's source ref and input list record the actual new controller/registration. A configuration change is a new source/allocation subject, not a reinterpretation of an old event.

Registration validation must reject another work, candidate-supplied root IDs, rebinding any existing root, duplicate/overlapping roots, unexpected path/device changes and read-only or already sealed destinations. Reject symlinks in **every original path component before canonicalization**; RootRegistry's canonical path checks are useful but must not silently turn a caller's symlink-containing registration into a different accepted path. Require the named caller-owned work-specific directory; do not infer authority from a writable directory alone.

Absence of the optional selection preserves the old implementation's path behavior for old work. Once a work's journal contains refs to the new root, missing/wrong registration must fail closed rather than substitute W, skip those refs or return a fresh empty ledger. This is explicit backward compatibility, not a promise that the old unextended controller understands new records.

## A small artifact-store interface

Introduce internal helpers with a default store of `work`, rather than replacing every `registry.roots["work"]` occurrence mechanically:

```text
artifact_location(kind, id)        # active store for new subjects/attempts/development/inputs
existing_subject_ref(revision)    # unique registered location; preserves old ref
existing_attempt_ref(attempt_id)  # recorded ledger binding; never guessed/rebased
write_artifact(relative, bytes)   # RootRegistry write, bounds and create-once checks
```

`context.json` and `events.jsonl` intentionally bypass new-artifact routing and stay at W. Future journal-source bytes use the new store, while the ledger still appends the same hash chain under its existing lock/concurrent-writer check. New source manifests retain exact logical refs, snapshots, source hashes and current-byte verification.

Route future large development-input files as well as outputs: `inputs`/`development-inputs`, bootstrap/development receipts and logs, source-freeze input manifests, and actual stage artifacts belong to the active store when they are new evidence. Small executor-owned E selection files may remain in their source location, explicitly charged as control files. Leaving multi-megabyte “input metadata” on /data would bypass the purpose of the change.

Existing stage functions that derive result/input paths independently must use the same helper/selection; routing only `V2Runner.run(..., out)` is incomplete. Private build/tool outputs stay private and retain their existing category caps. No new cleanup or sharing operation is part of this design.

## Resource admission within the same work

Provided current values:

| Quantity | Bytes |
|---|---:|
| Root volume free | 44,563,435,520 |
| /data free | 4,376,780,800 |
| /data live floor | 4,294,967,296 |
| /data physical headroom | **81,813,504** |
| Existing evidence usage / cap | 7,633,618,516 / 7,650,410,496 |
| Existing evidence-cap headroom | **16,791,980** |
| Cache usage / cap | 23,584,626,698 / 23,622,320,128 |
| Tmp usage / cap | 4,216,873,477 / 4,294,967,296 |
| Combined cap | **38,654,705,664 (36 GiB), unchanged** |

The three listed category caps total 33.125 GiB, leaving at most 2.875 GiB of category reservation inside the combined cap before any other required allocation. This is not permission to consume it blindly. Recheck actual totals, other charged storage and both volumes before the prospective allocation. The supplied observations may already be stale when implementation starts.

For a first bounded routing/control slice, a **proposed** new-root reservation such as 256 MiB can be prospectively justified from the remaining combined allocation and root-volume space. That would raise the total evidence ceiling by only the named delta, not reset evidence usage to zero; the exact amount is the implementing controller's prospective decision. A larger later need requires another justified allocation, with all prior costs retained.

Admission must establish:

```text
old evidence + new-store evidence + charged source/control files <= total evidence cap
cache + tmp + all evidence + charged shared growth <= unchanged combined cap
new rootFS materialization + existing remaining rootFS commitments + closure reserve
    <= actual rootFS free - unchanged rootFS live floor
new /data metadata + /data closure reserve
    <= actual /data free - unchanged /data live floor
```

Only the **remaining** new materialization is reserved. Do not demand the original 48-GiB/8-GiB initial admission again, and do not reserve the whole unused evidence budget on /data after new evidence is assigned to rootFS. Conversely, the small W journal tail and any E/F source/control writes still consume /data and must fit both its physical margin and the existing legacy-root allowance. Declare a small closure allowance there rather than spend the last bytes on a freeze. Registration does not authorize lowering either floor.

Keep the primary `artifacts` root at W, preserve the existing profile roots/control directories/files, and add the future store as an artifacts-charged external control directory. Aggregate both by the same device/inode-aware inventory so aliases do not double count and unique new files cannot disappear between categories. The new store is outside private cache, preventing an avoidable category overlap. Preserve whole-work totals when initializing an incremental observer; “new root initially empty” is not “old evidence now free.” Any additional evidence capacity is a prospective named allocation while **combined remains 36 GiB**; old profiles are never edited.

**Volume probes retain their existing actual meaning.** Monitor rootFS at its declared root/private-volume path and /data at the unchanged F/W path. The preferred design requires no `_free` remapping: keeping the primary artifact root avoids accidentally checking rootFS twice under two labels. The prospective reservation check nevertheless assigns **new-root bytes to rootFS**, not the whole remaining evidence budget to /data merely because primary artifacts still names W. Both live floors, once-per-second/final observations, final-growth checks, output limits, child closure and unchanged memory/CPU/time limits remain enforced.

Changing primary artifacts to the future root and observing W as a control directory is a larger alternative if an actual integration constraint requires it. It additionally needs explicit /data probe preservation and profile-root compatibility work; do not choose it just to avoid inspecting the narrower output-ownership gate.

The whole-work resource integration is a required implementation check at `run_attempt`'s V2Runner construction, output admission and prospective capacity validation. This note inspected that call and related test source, not the recorder implementation or a running observer; it does not assert that merely adding the future store to control_paths already passes the required integration.

## First TDD targets and genuine validation path

All tests below are proposed; none was run here. Use temporary owned fixtures and denial sentinels for protected old033 paths. Do not use protected payloads as real test inputs or hash them to demonstrate preservation.

1. **Mixed-root ledger replay — first red.** Extend [test_campaign.py](../../../../experiments/transition-study036/tests/v2/test_campaign.py) / [test_campaign_integration.py](../../../../experiments/transition-study036/tests/v2/test_campaign_integration.py): declare/start/close in an old temporary work, then bind a new-root declaration and journal-source snapshot. The current two-root WorkLedger must fail that positive continuation. After implementation, restart with the selected registry and require identical old event prefix, next attempt ID, cumulative durations, original authority=`unverified`, predecessors and boot/gap behavior. Wrong/missing registration and mutated new bytes must reject.
2. **Real path routing — second red.** Exercise freeze→declare→run a tiny fixed child→checkpoint/seal→reload/status, and a failed-attempt resume across the store boundary. Check the actual new output paths, not just report labels. All old refs/attempt seals stay valid in place. Duplicate revision/attempt IDs across roots, an old-root output after cutover, wrong snapshot prefix and an overwrite must reject. No assertion may infer scientific readiness from the operational journal.
3. **Every loader and development path.** Run an actual short supervised child that reconstructs `load_work` and imports a new-store development receipt exactly once; verify source-frozen selection propagation and before/after log hashes. Route a deliberately larger development-input fixture to the new root. Missing selection in that child must reject, exposing any parent-only implementation. Include journal-source write placement and immutable source/configuration bindings.
4. **Ownership/tamper controls.** Extend [test_artifact_io.py](../../../../experiments/transition-study036/tests/v2/test_artifact_io.py) and frozen-source tests for symlink ancestors/root/descendants, root swaps, unknown/report-provided root, overlap with private/W, wrong work, duplicate location, sealed destination and source mutation. Do not add a legacy-snapshot linking/deduplication control that touches the real archives.
5. **Two-volume and cap controls.** Extend the recorder/profile/controller test families: unchanged primary roots plus old W near its cap and new-store bytes are summed; evidence/combined overflow stops; a fast final write is observed; /data below 4 GiB stops despite ample rootFS; rootFS below 8 GiB stops despite adequate /data; continuation below initial 48/8-GiB reserves succeeds only when its actual new reservations and live floors fit. A new-root reservation that fits rootFS must not be incorrectly demanded again on /data; genuine W/control growth must still consume /data headroom. Verify no double counting through control_paths and preserve cache/tmp/shared limits. Use distinct mocked volume observations plus real small owned filesystem writes; mocks alone do not establish routing/accounting integration.
6. **Backcompat and independent reproduction.** With no registration, existing temporary-work behavior and old ref schema remain unchanged. With registration, a fresh independently configured resolver maps old and new root IDs, verifies both attempt seals, source refs and journal refs, recomputes cumulative work and inventories **both** stores. Wrong external expected mapping rejects. Verify unrelated033 metadata only, with a sentinel proving no protected payload read/hash occurs. The [reproduction contract](../../contracts/reproduction.md) still requires fresh proof/build/replay obligations at their own later stage; routing tests do not discharge them.

Reuse [RootRegistry](../../../../experiments/transition-study036/artifact_io.py), existing create-once writes/local attempt seals, existing ledger state transitions, and existing external-control accounting. Freeze the real controller/config changes as a new source subject and recheck affected controller/source/resource gates. Retain actual476 and its checked scope as historical evidence; do not relabel it as a run of changed controller code.

The first routed freeze itself needs a prospectively recorded, bounded metadata preparation/continuation under the existing work's accounting. Use the existing reviewed bounded metadata/receipt mechanism, register every new callback/output before materialization, and import its actual closed receipt once where required. Do not solve the bootstrap by running unrecorded preparation, invoking `init`, fabricating a zero-time registration, or copying a whole source subject onto nearly full /data. Root's implementation must demonstrate this initial path before heavier execution.

## Result

The contract supports this future-only routing change. The minimal design is one optional source-frozen store registration, one shared store resolver, an augmented WorkLedger registry, targeted path helpers, and a prospective profile/resource integration. Old data stays put; the same w001 ledger and origin continue. A complete accounting/replay test is mandatory before using the new root for accepted work. No cleanup, policy weakening, proof claim or feature-completion claim follows from registering more storage.
