# Independent bounded Core creation review

This review covers root-owned Store/initialization code and the independently
owned shared conformance boundary. The reviewer implemented the durable consumer,
so that host is intentionally excluded from this independent source assessment.
Its independent assessment is supplied by another lane. This is a creation-boundary
review, not a new verdict about the whole 016 kernel audit.

## Reviewed implementation and obligations

| Obligation | Exact boundary / finding |
| --- | --- |
| P019-01 legal seed before publication | `store/initialization.rs::ValidatedInitialization::validate` factors the existing decoder, schema/unique-key/Ref checks and `check_behavior_snapshot`. No Backend call occurs before the candidate is established. |
| P019-04 original identity | `Store::recover_initialization` compares original Genesis/StoreId; `ValidatedInitialization::verify` additionally compares exact normalized original versions and reference answers at zero. Current live StateId is never substituted for creation identity. |
| P019-06 conflict | `Store::create` first establishes structural publication; the post-create-error branch changes the error only on a positively checked foreign creation. It parses no host message. |
| P019-07 operational priority | The original Backend error survives absent/equivalent/incomplete/unavailable classification. Preflight and acknowledgment verification use fallible calls. The failed attempt never becomes implicit successful recovery. |
| P019-08 captured history | `inspect_publication` captures one head after immutable Some-genesis, then `history_with_head` checks fixed-position records. A legal publication between separate reads is not automatically corruption. |
| P019-09 advanced/migrated preservation | Recovery performs no Backend create on a preflight equivalent target and no commit/reset. Schema checks follow strictly decreasing introduction positions to original genesis; the original Module is not rebound to the current migrated schema. |
| P019-10 cache authority | `attach_initial_validation` requires full equality with canonical H0 before attachment. An inspected advanced/equal-StateId later position returns without attaching; module-free open stays cold. A later concurrent commit after H0 capture does not turn an exact historical H0 certificate into evidence for another position. The certificate includes exact history/schema/Module/current validation profile. |
| P019-11 profile normalization | V1 raw seed JSON is preserved and compared against Module-normalized values only when Module is present. V2 retains its previously declared canonical typed-product rules. No genesis/hash domain is rewritten. |
| P019-12 bounded opening | `inspect_publication` checks original as-of/revision identities, membership/lifetimes/content hashes, seed accumulator and captured head/schema. It claims structural completeness under Backend premises, not independent full Ref/Behavior semantics without Module. |

The source also checks the captured endpoint's committed parent against canonical
history, and requires `evaluated_against == committed_on`. These recent corrections
were inspected explicitly; a self-consistent record hash alone is not sufficient
evidence of the correct parent/evaluation state. Head accumulator/StateId and
migration target/source declaration identities are checked separately.

## Reference host and conformance correspondence

`memory.rs::Backend::create` constructs a private candidate and performs one
exclusive assignment only after structural checks. Equivalent retry compares
original mapping/references and history anchor without assigning or resetting
current material. It provides logical reference evidence, not physical durability.

The shared suite preserves its public fresh-target factory. Private same-target
handles retain access across consumed create failures; they do not confuse deep
InMemory copies with shared targets. Before/after-create and fallible read controls
have separate activation evidence. Both direct Backend retry and Store preflight
recovery are required, preventing one layer from masking a nonconforming other.

Public facade checks use only `behavior-engine`. They cover both supported genesis
profiles, legacy normalization, invalid-seed/no-publication controls, incomplete
acknowledgment/open refusal, original recovery after migration and removal, later
equal-StateId history and original error priority. The additional durable shared
suite control verifies each named case before asserting complete 45-case registration.
Its initial 37-case registration failure is protocol evidence, not a semantic host bug.

## Evidence and provenance

The API lane's source-bound tests and private certificate tests establish executable
controls; this review does not claim their authorship as independent proof. The
reviewer independently ran four exact positive controls and five activated Core
source mutations in a private external copy. The replacement runs use an exclusive
build target; see [core-mutation-controls.md](core-mutation-controls.md). The earlier
shared-target artifact collision is explicitly excluded, with original logs retained.

Those source-level mutants demonstrate rejection of fabricated lost-ack success,
invented conflict, erased original error, read-error-to-absence continuation and
advanced seed-certificate promotion. Each marker actually executed and its designated
assertion failed. These are empirical sensitivity checks, not a formal completeness
or arbitrary-adversarial-Backend theorem.

## Premises, limits and provisional conclusion

The bounded argument assumes immutable coherent primary/history answers and complete
typed enumeration, original lifetimes exactly matching canonical genesis, cryptographic
identity premises and conforming same-target publication. Generic legacy open cannot
infer field types/Ref declarations from hashes alone. Endpoint/schema checks are not
full-prefix Behavior replay. Concurrent later commits can advance head after capture;
they cannot mutate historical inputs, and an older certificate is never evidence for
another history identity.

No remaining material contradiction was found in the reviewed Core boundaries under
those premises. The public durable facade checked and passed all 45 shared cases;
14 facade tests, 11 process tests and 42 existing consumer regressions passed. Their
working-source receipts and the one unrelated test-support edit during the facade
run are qualified in [consumer-creation.md](consumer-creation.md). Canonical
frozen-revision gates and exact Git consumer validation remain pending delivery
evidence. This note closes no unrelated 020/021 finding and asserts no whole-Core
SOUND verdict.
