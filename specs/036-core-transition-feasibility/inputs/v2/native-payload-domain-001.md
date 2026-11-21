# Native payload domain for the correspondence proof

Status: implementation design; B01–B10 remain unestablished. This records a construction within the revision-2 correctness contract, without changing its admitted inputs or completion rules.

The full observation relation will use the actual extracted `transition_study036.serde_json.value.Value` payload type. The generated type has Null, Bool, Number, String, Array and Object constructors. Its Number carrier must still be related to the actual pinned serde_json representation. There is no reason to translate the complete payload through 035's Nat-only observation datatype: `finish` carries arbitrary original metadata through the original observation functions.

The logical state projection uses a finite enumeration of the actual parent and child keys. Its size is arbitrary; benchmark limits do not occur in the theorem. `FiniteNativeIds.lean` constructs the indexing bijection from a duplicate-free finite list and transports arbitrary complete rows through it. The connection from the actual native map enumeration to that list remains a required collections refinement, rather than an assumed projection result.

Retain complete native rows, versions, metadata and history alongside the projected lifecycle fields in the relation. Prove the phase/owner update and the frame for the remaining data. Projecting the fields relevant to Safety does not authorize dropping other fields from the observation or identity relation.

Use representation-preserving equality for complete payloads. Rust `Value::PartialEq` can equate negative and positive floating zero; it cannot establish exact original encoding. The actual comparison adapter already checks both values and original serialization. A proof must connect the actual JSON operations, clones and untouched payload fields to the complete native arguments of the original functions.

Apply same-native-function congruence to the original serializers and hash functions only after proving identical function identity, equal complete actual arguments and matching performed call/error/effect conditions. Do not introduce an opaque encoder-fidelity or projection-equivalence axiom. The general JSON, collection, numeric, runtime, authority, publication and output obligations remain mandatory.

The first additional source lemmas concern the actual extracted `Views::invalidate` and the subsequent authorization check. Their short-circuit property does not require interpreting a history equality that is never executed after invalidation. Their transitive declarations and axioms are nevertheless inventoried explicitly; these lemmas do not establish reconstruction, all view updates, or the composed entrypoints.

The unchanged twelve035 model roots remain separately checked mathematical results. The new finite-ID support, actual source lemmas and complete native observation relation must be checked on their own declared subjects before any native correspondence or performance claim is accepted.
