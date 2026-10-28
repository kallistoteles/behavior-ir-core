# Prospective evidence interpretations

This is a contract assessment, not a persistent format or a cryptographic implementation.

Let X identify the admitted Behavior module, complete applicable policy set, schema and semantic/evidence profiles, exact parent HistoryRef and StateId, request/bindings/input/trusted context, commit event and migration boundaries. Let O be the complete normative observation defined in `contracts/correctness.md`.

`Interpret_reference(E,X)` validates current evidence under the current codec and derives O, including selected errors, ordered traces/skips, reads/query members, changes, command multiplicities/occurrences, entity versions, resulting state/history and replay results. Invalid evidence is rejected; unavailable required inputs yield unavailable, not success.

A candidate must define a partial `Interpret_new(E_new,X,Support)` that independently produces exactly the same O or a distinct failure/unavailable result. It must establish `Interpret_new = Interpret_reference` on its declared supported inputs. Equal final state is only one component of O.

## A — Reconstructible history plus exact delta

Support is a validated genesis or independently validated checkpoint, the complete ordered historical interval, admitted module versions, trusted contexts and required governance evidence. Interpretation reconstructs the exact parent, evaluates the transition and regenerates every omitted observation under the original profile. This can shift construction work from producer to consumer, not eliminate it. A hash of an unavailable parent is insufficient.

Costs: initialization/rebuild at least the required prefix/input size; retained history/module availability; update storage proportional to event plus necessary support; consumer cost includes reconstruction, validation and O(B) regenerated output. No bound independent of history is established. Migrations require their original transformation/schema/evidence obligations; a new format cannot retrospectively change them.

## B — Authenticated state dictionary and query/range evidence

Support includes a root whose relation to a complete Core state is independently established, typed key/value paths, non-membership or complete range evidence, and a verified update correspondence. Interpretation must reconstruct or establish every query member and every potential incoming Ref relevant to the transition, including absent members and simultaneous effects. An index predicate must match admitted semantics, captures, equality, definedness and order.

Costs include initial tree/index construction, updates to all affected indexes, proof generation, support transfer, verification and output reconstruction. Logarithmic membership proof size does not imply logarithmic arbitrary-query or reference-absence verification. Core's MuHash StateId currently supplies no such dictionary/range interface; correspondence to StateId and HistoryRef is an unresolved requirement.

## C — Authenticated append-only event history/checkpoints

Support includes an authenticated event root, inclusion/consistency evidence, exact endpoints, authorized module/evidence-policy context and independently checked semantic state at an anchor. Interpretation checks the complete relevant interval or a sound semantic summary of it, then preserves whole-event command pages and occurrence identities. A consistency proof alone establishes no transition validity.

Costs include anchoring, checkpoint validation, prefix retention/availability, consistency verification, invalidation and cold rebuild. Reusing a checked anchor may amortize repeated work, but its scope and authority cannot expand implicitly. A new checkpoint is not automatic governance permission.

The [authenticated-dictionary source](https://www.usenix.org/legacy/publications/library/proceedings/sec98/full_papers/full_papers/nissim/nissim_html/node3.html) separates membership claims from freshness. [RFC 9162 §2.1](https://www.rfc-editor.org/rfc/rfc9162.html#section-2.1) defines inclusion and append consistency; these alone do not establish Core state validity. The obligations above are this investigation's proposed Core correspondence requirements, not claims proved by those sources.

Lossless physical backend compression/deduplication that reconstructs identical old canonical documents is distinct from a new logical evidence contract. The portable gzip research corpus demonstrates byte recovery only; it introduces no Core format or backend authority. Versioning is required when exposed evidence interpretation/obligations change, not merely because an internal lossless storage representation changes.
