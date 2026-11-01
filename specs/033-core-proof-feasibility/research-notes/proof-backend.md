# Proof backend and lifecycle decision

Date: 2026-11-01. Planning research for [Core033](../spec.md); no code, build,
parameter generation, proof generation or timing experiment was performed.

## 1. Freeze the existing upstream family and actually compress

**Decision:** First baseline is Nova at
`01b1e2d662a847ed7029770ecbaf6687398899dd`, Pallas/Vesta, Pedersen commitments,
IPA evaluation arguments and **standard Spartan** (`spartan::snark`, not
`spartan::ppsnark`) compression on both curves. Keep the existing portable
arithmetic feature selection, with its identity recorded, and introduce any 033
entropy-injection change as a new separately hashed overlay. Do not edit 032's
retained vendor tree or results.

The exact type choices are `PallasEngine`, `VestaEngine`, and
`spartan::snark::RelaxedR1CSSNARK<E, provider::ipa_pc::EvaluationEngine<E>>`
for each engine E. The resulting final artifact is
`nova::CompressedSNARK<E1,E2,CheckerStep,S1,S2>`, not a serialized
`RecursiveSNARK` and not lossless gzip of that larger artifact.

**Rationale:** The local upstream has an actual Pallas/Vesta+IPA instantiation
of compression in `test_ivc_nontrivial_with_compression`, so this is a concrete
available path rather than a generic reference to Nova. It avoids adding a
powers-of-tau ceremony while changing the old experiment's missing component.
Availability is not a Core correctness or performance theorem.

**Alternatives considered:** `spartan::ppsnark::RelaxedR1CSSNARK` is the
preprocessing/MicroSpartan variant and is also instantiated with Pallas/Vesta+IPA
by upstream `test_ivc_nontrivial_with_spark_compression`. It is a separately
identified comparator if standard Spartan's cold key/circuit work dominates;
its preprocessing/setup/memory costs stay charged. HyperKZG/Mercury require a
different curve/setup lifecycle and are not silently substituted. A direct
recursive proof is a diagnostic comparator, not the requested finished artifact.

**Primary inspected sources:**

- [Vendor identity and portable overlay](../../../experiments/transition-study032/vendor/nova-upstream.json).
- [Engine definitions](../../../experiments/transition-study032/vendor/nova/src/provider/mod.rs).
- [Actual compression types, lifecycle and tests](../../../experiments/transition-study032/vendor/nova/src/nova/mod.rs), especially lines 684–1037 and 1310–1463.
- [Standard Spartan key/setup](../../../experiments/transition-study032/vendor/nova/src/spartan/snark.rs), lines 31–108.
- [Preprocessing comparator](../../../experiments/transition-study032/vendor/nova/src/spartan/ppsnark.rs).

These local bytes are pinned primary code. No current-main library claim is used.
The immutable external counterpart is [the same upstream revision](https://github.com/microsoft/Nova/tree/01b1e2d662a847ed7029770ecbaf6687398899dd).

## 2. Bind the endpoint returned by the actual API

**Decision:** Implement the following distinct operations behind the experimental
proof boundary; record each operation's actual time/bytes.

| Operation | Pinned API and required application check |
| --- | --- |
| Derive public parameters | `PublicParams::setup(&checker_step, &*S1::ck_floor(), &*S2::ck_floor())`; bind actual emitted relation, arity and complete release recipe. |
| Derive compression keys | `CompressedSNARK::setup(&pp)` yields `(pk,vk)`; this is additional work, not folded into a claim that setup already happened. |
| Initialize accumulator | `RecursiveSNARK::new(&pp,&first_step,&z0)`; constructor actually synthesizes the first step. |
| Extend accumulator | `recursive.prove_step(&pp,&step)`; the first call after `new` only changes its accounting to i=1. Charge the constructor to first-step cost. |
| Produce finished proof | `CompressedSNARK::prove(&pp,&pk,&recursive)`; randomization and two Spartan proofs are real work. |
| Verify recursively for checkpoint integrity | `recursive.verify(&pp,k,&z0)` returns endpoint fields; compare the exact expected checkpoint subject. |
| Verify finished certificate independently | `compressed.verify(&vk,k,&z0)` returns endpoint fields; decode under the fixed profile and compare the entire expected semantic endpoint and `Done` phase. |

The `verify` method does **not** receive an expected final state; accepting its
returned vector without comparison would permit a valid proof of the wrong
subject. The caller validates certificate format, full release/parameter identity,
range of k, expected initial subject, logical position and complete endpoint.
Nova's step count is a machine count, not the number of committed Core events.
The code rejects k=0. Initialization must therefore include at least one real
checked machine step, even for an empty genesis with zero business events.

The consumer installs an independently trusted release bundle or independently
derives the exact checked recipe. A producer-supplied key is not its own authority.
Recipe and byte digests bind compiler/lock/overlay, actual checked shape, curve/
commitment/transcript/hash profiles, integer encoding and compression variant.

## 3. Do not infer a tiny cold verifier from a short proof

**Decision:** Standard Spartan is the transparent first baseline, but its actual
verifier key, decoder and shape validation are charged in cold consumer runs.

**Rationale:** `spartan::snark::VerifierKey` contains the padded `R1CSShape S`.
The outer Nova `VerifierKey` embeds both inner keys. Thus this configuration has
no by-construction claim of tiny verifier keys or verification independent of
step-circuit size. Separate `pp`, compression `pk`, compression `vk`, recursive
continuation state, compressed proof and transport envelope in byte/memory reports.
The fresh consumer needs its verifier material, not the entire prover bundle;
that material may nevertheless be substantial.

Consumer timing starts before cold loading/decoding/validation and includes any
required certificate retrieval in the declared deployment. A resident comparison
is labeled separately. First-use parameter/key derivation, retained artifact
loading, validation and actual compression all retain their scenario owner.

The prior [cost model](../../032-transition-verification-study/evidence/cost-model.md)
has a 5,385,450-byte recursive artifact and 34,457,029-byte parameters in one
bounded case, with no compression; those are not predictions for this backend.
The [old lifecycle](../../032-transition-verification-study/evidence/proof-lifecycle.md)
and [old circuit correspondence](../../032-transition-verification-study/evidence/circuit-correspondence.md)
explicitly retain full Core bridging work. New independent verification may not
reuse that bridge and call itself succinct.

## 4. A fixed step checks the new K machine, not the old fixed-capacity catalog

**Decision:** Accumulate bounded K-machine microsteps with authenticated memory,
typed phases and an explicit semantic finalizer. Do not scale 032's fixed
catalog/whole-population state vector to 8192 identities and call it the new design.
Actual emitted-matrix/native correspondence is a separate required artifact;
using Nova's `StepCircuit` interface does not supply it.

At minimum, the machine state binds release/program/profile/anchor, state and
used-ID roots, checked-view subject, current semantic parent, request/context,
ordered output/effect claim, obligation frontier, phase, proof microsteps and
logical committed-event position. Long node/key/hash processing may take many
microsteps; only a `Done` finalizer closes a semantic event. Partial evaluation
or an incomplete obligation frontier cannot be accepted as a finished receipt.
The selected release's circuit shape/arity is fixed independently of N/H;
number of microsteps may grow with actual affected work and input bytes.

For committed history, retain the accumulator at the exact canonical head.
An allowed candidate extends that exact parent privately; CAS loss makes a
noncanonical branch, never the next canonical accumulator. A certified refusal
or read can extend a fork ending in a typed `AttemptDone` claim with unchanged
business state/history. Its request/result is bound but it does not append a
business event. Proof microsteps, attempt identity and committed-event count
are distinct, range-checked coordinates. Continuation starts from a checked
canonical event boundary, not a losing/partial/attempt branch by accident.

## 5. Preserve full hashes and checked domains

**Decision:** Business/profile identities use typed length-delimited,
domain-separated SHA-256 commitments in the first release. Represent each full
256-bit digest as four range-checked 64-bit limbs (with one frozen byte/bit order)
in the primary scalar field. Do not reduce the digest into one scalar. Use the
same proved byte-to-limb interpretation in native K and actual constraints.

SHA-256 and any authenticated path update must be inside the accepted relation,
or connected by an actually checked equivalence; hashing business outputs only
in the host repeats 032's gap. The existing upstream SHA-256 gadget is reusable
code, not an imported proof of its actual constraints. Range-check signed Int64
representation, counts, lengths, phase selectors, node tags and counters. Exclude
proof randomness, auxiliary layout and checkpoint identity from semantic EventId.
Nova's internal field-valued parameter/transcript digests are separate backend
values; they do not justify truncating an application's full identity.

**Alternatives considered:** A field-friendly hash might lower circuit cost but
requires a new explicit security/encoding/profile decision. It is not a free
substitution preserving SHA-256 identities. One whole SHA compression block per
microstep is a possible fixed-shape design, whose actual costs remain to measure.

## 6. Inject entropy without changing the cryptographic relation

**Decision:** Introduce a narrowly scoped, pinned **033-only** RNG-injection
overlay. Add `*_with_rng<R: RngCore + CryptoRng>` entry points for recursive
construction/extension and compressed proving, and thread the supplied RNG
through the selected reachable folding and random-instance routines. Keep
upstream public wrappers using OS entropy. The experimental adapter supplies
fresh OS entropy in normal mode and recorded, domain-separated deterministic
test streams in synthetic replay mode. Never substitute a public fixed test
seed into a deployment's private proving.

Inspected ambient production-entropy sites on the selected path are:

| File | Sites and required change |
| --- | --- |
| `src/nova/mod.rs` | Constructor lines 359,360,384,410; extension lines 478,502,516,541. Thread RNG to scalar draws and `r1cs_instance_and_witness`; compression passes RNG into its NIFS and random-instance calls. |
| `src/nova/nifs.rs` | `NIFS::prove` line 56 and `NIFSRelaxed::prove` line 150 draw cross-term blinders; accept the threaded RNG. |
| `src/r1cs/mod.rs` | `R1CSShape::sample_random_instance_witness` lines 766,769,770 draws random assignment and commitment blinders; accept threaded RNG. Existing `R1CSWitness::new` already accepts RNG. |

The random Z vector is currently generated with `into_par_iter().map(OsRng)`.
The overlay samples this vector in canonical sequential index order before
parallel deterministic arithmetic, so scheduling cannot reorder consumption of
a shared stream. Record this scheduling change in the overlay's performance
identity. Compression's `rayon::join` invokes deterministic selected Spartan
provers after randomization; its transcript challenges are derived from bound
transcripts, not OS entropy. Audit all reachable paths again against the final
selected features; unrelated test code, Neutron, direct-SNARK and HyperKZG paths
are not an excuse to leave an ambient draw in the chosen path.

Synthetic test stream domains distinguish campaign/attempt, initialization,
microstep and compression; recorded seeds/transcripts stay out of semantic IDs.
Acceptance controls require identical proof/checkpoint bytes for identical
recorded entropy and inputs, repeated runs with different thread counts, changed
entropy changing only cryptographic artifacts, and an audit proving zero ambient
draws in the selected injected path. Entropy can be replayed only for the
synthetic trial; private deployment entropy is not a public log field.

**Rationale:** This satisfies the constitution's injection/replay principle
without pretending upstream hardcoded `OsRng` is already injectable. It changes
entropy plumbing and sampling schedule, not equations, challenges, constraints or
the required distribution. A source/patch audit, test-first controls and upstream
versus injected-path equivalence under supplied draws are implementation gates.
No deviation is needed if they pass; if they cannot be established, record the
failure and do not silently weaken the reproducibility gate.

## 7. Treat prover checkpoints as untrusted disposable continuation data

**Decision:** A published compressed certificate proves a semantic endpoint,
not validity of arbitrary serialized prover internals. Checkpoint metadata binds
exact parameter recipe, initialized subject, microstep count, endpoint, release,
content digest and canonical commit position. Restore with recursive verification
and exact endpoint comparison before extending. Final compressed verification
is repeated for every newly acknowledged certified result.

Keep the immutable semantic state/support and finished certificate available
independently of a prover checkpoint. If a checkpoint is absent or fails checking,
restore the last checked one and rebuild from retained suffix derivations;
otherwise return explicit unavailable/not-established continuation. No unchecked
fold counter or producer-selected view establishes native J. Recovery cost is
measured through the first useful newly certified operation.

Full recursive witnesses may be large and randomized; do not assume structural
sharing or cheap delta serialization. A fixed microstep checkpoint interval and
retained suffix is an explicit tradeoff between write cost and rebuild bound.
Measure interval, write bytes/time, loss recovery, memory and retained support.
Checkpoint loss does not retroactively invalidate a finished certificate, while
it may block new synchronous certified publication until recovery succeeds.

## Required rejection controls

Wrong z0, wrong k, altered expected endpoint, partial/unfinished phase, wrong
module/profile/release/key recipe, command-output mismatch, truncated digest,
noncanonical limb/count encoding, stale checkpoint and valid losing-branch
certificate must fail the actual acceptance path. Compression/key/cold costs
above the predeclared targets are a failed performance result. A working small
Nova proof with an unproved semantic/identity bridge is not a positive G1 result.
