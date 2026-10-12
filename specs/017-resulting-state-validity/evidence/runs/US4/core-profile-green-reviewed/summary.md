# T051/T052 reviewed Core replay integration

Actual compiled execution: **resulting_state_profiles23/23, resulting_state_schema2/2 and existing invocation_replay3/3 PASS**, exit0. Exact argv, source/test digests and stdout/stderr are retained in run.json and00.*. Sources were unchanged during execution. Pinned Nix and the same symbol/cache-only resource settings were used.

## Implementation boundary

`record::reproduce_observed_with` is an internal Core/Store bridge, deliberately absent from the supported behavior-engine facade. Strict immutable record evidence selects current or archived action computation; module/profile and BehaviorHash must match. Provider-backed reproduction obtains facts from the actual provider rather than injecting the recorded facts. Only an exact whole-record comparison returns the actual `(DecisionRecord,Observed)` to Store callers. Standalone replay uses the same selector/request/comparison logic with captured facts.

The private `reproduce_requested_with` helper evaluates a resolved invocation's outer request under the profile selected by its immutable inner evidence. This preserves typed normalization and existing invalid-input evidence while refusing contradictory semantic inputs. Fresh invoke_resolved always selects fresh current evaluation. Nested replay rebuilds the same invocation_record.v1 wrapper/identities after exact inner reproduction. Existing read-v1/read-v2 selection and no-body decode/binding refusal paths remain separate.

Provider-backed reconstruction of a transport-level refused_request without an original resolved request explicitly refuses; standalone replay retains its original capture. Store bridge consumers are ALLOW-only. The private invocation helper has the actual request and can reproduce evaluated input refusals. No public evaluation strategy argument or facade export was added.

## Tests and identity limits

Genuine archived04–07 standalone/nested controls are selected by original immutable bytes, including the audited invalid-child ALLOW. Fresh complete-parent evaluation independently returns current08 DENY for that same creation. Current language profiles, unknown/conflicting marker refusal, typed witnesses/universe tampering, outer/inner capability/input/context/identity/reached-value substitutions and typed Money normalization are covered. The current missing/malformed typed-input refusal control passes. Read-v1/read-v2 and original pre-evaluation refusal controls remain GREEN.

The first integration attempt remains separately preserved at ../core-profile-green:22/23 profiles passed and invocation_replay3 passed; schema did not run then. Its failing unused Customer.name assertion overclaimed standalone authority. Root reviewed the correction to the reached Customer.status effect input. Rehashing an unused captured input changes semantic input/content identities and may describe another self-consistent computation; a standalone record cannot establish the original store's immutable value. Actual Store-backed historical binding checks remain T053's responsibility. No production check was added to enforce that erroneous test expectation.

`archive-source-freeze.json` verifies the original546 tracked fixture files and42 captured artifacts against their immutable setup digests at this checkpoint, with zero mismatches. The original record07 constructor and codec function bodies are byte-identical to baseline932eb; their digests are recorded. This is a checkpoint claim, not a claim that later permitted fixture-navigation documentation changes leave every archived supporting file byte-identical.

No Wire/admission, BehaviorHash/SchemaHash, Store format, command occurrence domain, facade schema/API or historical record bytes changed. Store history/recovery/command-reader integration remains separate; these Core checks do not alone complete US4.
