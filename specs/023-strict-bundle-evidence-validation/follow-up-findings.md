# Source-level follow-up outside 023 bundle evidence

## F023-EXTERNAL-FACTS-SCHEMA-001 — Ordinary/witness Facts schema aliases disagree

**Classification**: S5 implementation/document correctness defect.
**Severity**: Medium, source-level assessment; no end-to-end witness reproduction
or state/authorization corruption is claimed by this planning review.

Both current v2 wrapper schemas define `$defs/facts` with root sections
`exists`, `used`, `incoming`, `queries`, `fields`, `universe`. The actual ordinary
Facts parser and serializer use `existence`, `identities`, `references`, `queries`,
`fields`, `universe`. The existing ordinary witness schema references that shared
definition. Therefore its advertised root domain and the executable Facts domain
disagree independently of the bundle query-integrity field.

Exact researched sources at frozen 019:

- `schema/governance-v2.schema.json:1070–1094,2525–2526`.
- `schema/store-v2.schema.json` has the same corresponding definitions/references.
- `crates/behavior-core/src/facts.rs:285–299,470–535` defines/produces actual names.
- `crates/behavior-verify/src/governance/trusted.rs:2292` consumes ordinary witness Facts.

For example, an otherwise valid ordinary Facts product containing an `existence`
item uses an allowed executable root key, but the shared schema's closed root
does not permit that name. This is a minimized source-level domain counterexample,
not a completed signed-witness runtime reproduction.

023 separates only action bundle/candidate observed-evidence schema refs from the
ordinary/witness definition. It does not rename that ordinary contract or make its
parser permissive. The independent ordinary/witness schema discrepancy remains open.

A separate follow-up should reproduce a genuine supported witness producer/consumer
case, establish the authoritative historical ordinary Facts schema/domain, assess
affected versions and consumers, then correct the smallest applicable schema
boundary with actual producer-output and negative controls. Do not silently repair
legacy profiles or reinterpret a hash as authority. No closure of this finding or
full v2 Store/evidence conformance is inferred from 023's scoped completion.
