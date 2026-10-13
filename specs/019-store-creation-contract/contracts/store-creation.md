# Contract: Whole-Store Creation, Opening and Recovery

This is the design contract for 019. Implementation must update normative Backend
documentation and migration notes. It does not change historical persisted formats
or ordinary entity/commit/migration semantics. See [model](../data-model.md).

## Supported interfaces

The public consumer remains `behavior-engine`. Preserve existing signatures:

```rust
Backend::create(&mut self, genesis: &Genesis, head: &Head,
                seed: &[EntityVersion], seed_refs: &[RefChange])
    -> Result<(), BackendError>;
Store::create(backend: B, module: &Module, genesis: Genesis)
    -> Result<Store<B>, StoreError>;
Store::open(backend: B) -> Result<Store<B>, StoreError>;
conformance::run(factory: impl Fn() -> B) -> ConformanceReport;
```

No new mode, capability, hash, public certificate or recovery entry point.
Conceptual caller knowledge is not itself a new serialized result algebra.

## Backend obligations

For a legal complete initialization supplied by Core:

- One atomic publication establishes the entire original genesis, versions,
  initial head and required coherent/reconstructible views. Before publication,
  normal Backend/Store APIs expose no partial Store.
- Private staging may persist after interruption, but is never interpreted as
  published genesis/state/history. The host owns its cleanup policy.
- An absent target may be initialized once. Equivalent requests recognize the
  same original canonical creation and return success without overwriting current
  state/history or duplicating semantic initialization. Conflicting requests refuse.
- Identity checks and publication are serialized for one target. Core preflight
  is advisory and cannot replace the host's atomic check/publication primitive.
- Successful create/recovery meets the host's disclosed persistence barrier.
  Generic error/interruptions may leave publication uncertain; no rollback claim.
- Immutable original versions remain available after updates/removals/migrations.
  Current state, historical lifetimes and reference answers remain coherent.
- The host does not implement Behavior validation or invent identities. Core
  derives legal semantic products; the host stores/checks their immutable identity
  and preserves its contract. Physical caches/indexes remain non-authoritative.

Every Backend for the corrected Core version must conform. No runtime negotiation
allows a second, weaker creation model. Test-only mutants are explicitly nonconforming.

## Store creation algorithm

1. Run the existing complete original seed validation before any initialization
   mutation, preserving invalid-request/schema error precedence. Derive one private
   expected product using canonical typed values, references and H0.
2. Read published genesis. If Some, obtain a publication witness and capture one
   head. Verify structural completeness first, then exact expected original identity
   and product if equivalent. Equivalent returns recovered Store; complete foreign
   publication returns stable conflict. Do not write/reset either branch.
3. If genesis is None, call Backend create once. On Ok, inspect the acknowledged
   published expected product and captured actual head before returning Store.
   Success from a broken Backend does not by itself promote candidate validity.
4. On Backend create Err, perform one bounded classification pass. If it positively
   establishes a structurally complete foreign publication, return stable conflict.
   Otherwise preserve the original Backend error: this includes observed absence,
   equivalent identity, incomplete data and failed classification reads. Do not
   convert the failed attempt into recovered success and do not retry internally.
5. A subsequent explicit call with the same original request takes the verified
   recovery branch if creation completed. No second initialization event is added.

After Ok followed by a performed verification-read error, return that read's Backend
error. The target may already be Complete. This is not a rollback indication.
All classification is evidence-based; never parse strings such as "already created".

## Public errors and knowledge

Use existing typed StoreError categories:

| Condition | Result | Meaning |
| --- | --- | --- |
| Original seed/policy invalid | Existing GENESIS_INVALID or existing validation mapping | This attempt did not invoke initialization; global absence not implied |
| Original Module/schema mismatch | Existing SCHEMA_MISMATCH | Original candidate refused before Backend publication |
| Verified exact complete publication/recovery | Ok(Store) | Requested original creation established; actual current history preserved |
| Verified complete different original identity | Contract code STORE_CREATION_CONFLICT | Established target conflict; no mutation |
| Successful observations expose incomplete/incoherent ordinary product | Contract code STORE_INCOMPLETE | Integrity failure, not absence or valid staging |
| Required Backend operation fails | Existing BACKEND_ERROR channel | Operational failure; no rollback inference |
| Generic open sees affirmative absent genesis | Existing absent-open BACKEND_ERROR mapping | No Store returned; absence known at that observation point under Backend premises |

The post-create-Err classification branch retains the original Backend error if
classification is unavailable/incomplete/equivalent. A secondary failure must not
erase the primary error or be presented as established conflict. Diagnostic context
may identify the failed classification without exposing secrets or inventing certainty.

Store incomplete covers missing required publication data and positive mismatches
in the new initialization checks. Existing delegated typed history/schema errors
retain their documented category; an unavailable read never becomes incomplete.
Do not globally recategorize unrelated replay/commit errors.

## Atomic observation and races

`genesis -> None` is absence at that successful read's point. Do not read head later
and interpret None/Some as a partial write; legal publication can intervene.
Once Some genesis is observed, its immutable value anchors the subsequent capture
of one head. Verify versions/records/schema as of that captured position. Later
commits do not require a head-stability loop and cannot justify resetting history.

Successful recovery establishes the original creation and a coherent captured
history, not a guarantee that the head never advances after return. Existing
`current()` continues to read the actual current head.

## Opening and complete-product checks

Factor one private publication inspector shared by create and open. It must
propagate fallible Backend calls, check genesis formats/identity, required original
material, seed accumulator and captured current head/record/schema coherence.
Module-bearing recovery additionally checks the exact normalized expected
position-zero universes/versions/references/lifetimes.

`open` stays module-free and cold. Preserve legacy normalization limits: raw v1
seed JSON is not necessarily the encoded original value; declaration hashes alone
cannot derive all Ref edges or Behavior validity. Under the current conforming
Backend contract, structural checks reject genesis-only/missing-seed/head corruption;
they do not establish an independent full semantic proof. Existing complete
enumeration/immutable historical answers remain trust premises.

Reuse result-oriented canonical history checks, with an explicit captured head.
Do not promote a ReplayReport, cache, index or one digest into recovery authority.
This feature does not make every open perform full-prefix Behavior replay.

## Validation materialization

Only acknowledged or verified complete publication can justify an initial validity
entry. The inspected head must still identify exact position zero/H0, original
schema and current Module/validation profile. An advanced/migrated recovery starts
cold, including equal-StateId later positions. Candidate facts are not certificates.
Generic open never populates this semantic-validity cache.

## Durable test host design

Use the existing stable writer lock for all create, retry, commit and normal recovery
observers. Split lock-held I/O helpers from locking entry points to prevent nested
lock acquisition. Check existing canonical snapshot while holding the same lock:
absent may publish; equivalent preserves snapshot/history and establishes recovery
sync; foreign refuses. Malformed authoritative bytes are failures, not absence.

Write a complete private file, sync it, rename atomically, sync the directory,
then acknowledge. Live rename is the namespace publication point; directory sync
is its acknowledged durability barrier. A post-rename/pre-sync interruption can
leave live complete bytes and uncertain durability. Normal reopen must establish
the recovery barrier before presenting acknowledged durable evidence. Private
staging-only targets remain Absent.

Use a preexisting durable root or explicitly documented parent-entry setup sync.
All participants cooperate on a stable lock inode and exclusive target ownership.
Process-exit tests do not simulate power loss. No universal filesystem claim is made.

## Migration and delivery

Update normative `Backend` docs, `docs/persistence.md`, version assessment and an
external migration guide. Old compile success/commit tests establish no new
creation guarantee. Review all first-party hosts and test adapters by role.
Treat changed creation behavior/mandatory obligations as minor-class in 0.x;
numerical release choice/publication remains separate. Existing canonical bytes,
schemas, StateId/StoreId/hash domains and replay profiles are preserved.
