# Contract: Wire 0.8 and deterministic command evaluation

Implements FR-001–010/036–038 and clarifications1–3. See [data model](../data-model.md)
and [identity/evidence](identity-and-records.md). All new forms are implementation targets.

## Version and syntax

Wire 0.8 adds required module commands and action command_effects arrays, possibly empty.
Reads/derived/invariants/migrations cannot carry command_effects. Earlier versions reject
both keys, including empty ones. Existing expression/type syntax retains normal semantics.

Module/action fragments using existing literal syntax (not a complete module):

~~~json
{
  "commands": [
    {
      "name":"SendEmail",
      "fields":[{"name":"recipient","type":{"t":"string"},"loc":{"file":"example","line":1}}],
      "loc":{"file":"example","line":1}
    }
  ],
  "command_effects": [
    {
      "command":"SendEmail",
      "when":{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"example","line":2}},
      "payload":{
        "recipient":{"op":"lit","type":{"t":"string"},"value":"customer-1","loc":{"file":"example","line":2}}
      },
      "loc":{"file":"example","line":2}
    }
  ]
}
~~~

Canonical serializer includes normalized true guard if source omitted when. Declarations
sort by name; product fields by UTF-8 name; emission arrays by (raw hash, semantic bytes).
Repeated definitions remain repeated. Command effects are separate from legacy state effects.
These normalizations implement the specification's explicit ≡₀.₈ relation. Canonical semantic
form preserves public names/types/expressions and multiplicity; equal output on one invocation
does not establish definition equivalence. Existing ordered components retain their meaning.

## Admission

1. Decode strict versioned shape, unique keys and expected field types.
2. Resolve normal module names plus Kind::Command=9; reject collisions/dependency errors.
3. Resolve the named product with unique field names and the supported scalar domain.
4. Resolve declaration, optional Bool guard and exactly matching payload key set.
5. Type-check every expression and completely traverse numeric/representation bounds,
   including derived/query dependencies; no implicit lossy conversion.
6. Normalize guard/product/definition bag and calculate checked semantic hashes.
7. For 0.8, an action needs a possible state or command effect. Declarations or pre/postconditions
   alone do not count. Command-only actions may have zero state bindings.
8. Retain profile 0.8 through Module, builder and serialization, even if commands are empty.

All-false guarded definitions remain structurally effectful. Supported types are exactly
[the scalar domain](../data-model.md); Ref<T> is rejected, Id<T> is inert. Empty product is valid.
Declaration/type admission does not depend on whether a runtime guard holds.

New-profile names, String/Id byte lengths and encoded counts are at most u32::MAX.
Literal/decoded values establish this bound before evaluation; no string-concatenation
primitive produces unchecked larger values. The verifier may assume only those established
domains and must model any remaining construction failure.

New-profile decoding rejects duplicate keys before reducing to serde_json::Value. Unknown
keys, floats in typed values, unsupported forms and length/count overflow fail. Ambiguous
ir_version keys cannot select a weaker parser. Legacy valid bytes/diagnostics remain frozen.

## Runtime sequence

Normal incoming checks/preconditions/state effects run first. Canonical emission definitions
then evaluate against original S, never proposed S'. For each occurrence:

1. Evaluate guard with existing exact/short-circuit semantics and observations.
2. False: empty bag; no payload expression is evaluated.
3. True: evaluate fields in canonical name order and losslessly construct declared values.
4. Success: contribute one immutable intent.
5. Guard/payload/representation failure: abort at that canonical occurrence.

Then run final invariants/postconditions on S'. Only ALLOW exposes complete canonical K.
DENY/ERROR never exposes a successful partial transition collection. A false guard does not
deny the action. Existing no-op commit treatment remains for allowed ΔS=∅/K=∅.

Failure evidence names emission hash/canonical definition multiplicity index, field/expression
hash and structured code/operands. Source position/text/loc does not select a failure or enter
semantic evidence. Equal definitions are indistinguishable except canonical multiplicity index.

## Snapshot validity and observations

New-profile proof assumptions require Valid_B(S), not SchemaHash compatibility alone.
Store establishes incoming constraints/entity/global invariants against exact module and
complete snapshot before relying on preservation. Zero bindings cannot bypass validation.
Fact-reading/invariant evaluation errors fail closed.

Plain invocation needs consistent snapshot/facts sufficient for required validity. Missing
universe/reference evidence yields INVALID_STATE/incomplete evidence, never an assumed invariant.
This does not redefine older plain evaluation. Validity observations are deterministic;
caching cannot change the semantic evidence output.

False guard excludes observations used solely by its payload; other validity/action
computations may independently read those fields. Queries retain existing set/identity
semantics under the explicit complete-backend contract.

## Verifier correspondence

Canonical guards/payloads enter action path-safety encoding. A command guard is not a
transition precondition. Payload obligations are under guard=true and successful prior
canonical computations. Model guard errors, conversion/grid/narrowing/overflow/exact bounds
and reachable dependency failures. Commands never change env_post or prove delivery success.

Complete intermediate-bound traversal differs from estimating only the final result.
Never cap a bound to MAX_BITS to conceal a possible intermediate error. Unjustified paths
are INCONCLUSIVE or conservatively refused, never PROVEN. Whole-module trusted proofs cannot
rely on read-alias overcounting or invalid global-invariant starting states (G2 gates).

## Builder and compatibility

SemanticProfile selects 0.8 explicitly. New command/emission specs and add_action_with_commands
retain builder ownership/scope checks and re-admission through Wire 0.8. Existing add_action
stays available. No unchecked intent/committed-occurrence constructor is supported.

Earlier profiles keep old domains/admission/zero-binding/record/source-evidence/golden bytes.
Unsupported versions fail explicitly. Empty command output never downgrades profile 0.8.
