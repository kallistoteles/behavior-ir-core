# T025 verifier-prefix and provenance RED

The tests use admitted, independently constructed models and the existing public
Core/verifier APIs. A valid complete parent with one `A` and one `Z` is changed
so `A`'s constraint encounters division by zero and `Z`'s invariant becomes
false. Corrected Core execution confirms that the canonical earlier-entity
constraint error wins. The old grouped verifier prefix instead makes that error
query unsatisfiable. Separate tests inspect the symbolic child schedule and
require a confirmed current-profile witness with complete parent universes.

The scope tests require explicit `INCONCLUSIVE` when the symbolic model cannot
establish same-type decoded-ID ordering or the complete effects on unbound
world-dependent entity error paths. A single bound row with local rules remains
a supported positive control. These tests concern the newly specified verifier
0.9 correspondence contract. Outputs carrying old verifier0.8 provenance are
not presented as an independently reproduced false-PROVEN claim from the
original audit.

Governance tests require verifier0.9 provenance, archival decoding without
current-subject eligibility for0.7/0.8 envelopes, and version-first strict
decoding of non-command decision0.8 candidates. The old-version empty envelopes
are independently constructed and signed protocol fixtures, not captures of a
historical producer run. Candidate mutations recompute the candidate hash so a
hash mismatch cannot disguise a permissive inner decoder.

`first-attempt/` collected and executed all thirteen tests. One Command witness
control mistakenly used the Legacy `Expect::Error` interface; Command
confirmation already requires its typed `Expect::SemanticError(code,node)`
contract. That initial control failure is excluded from intended semantic RED.

`corrected-command-expect/` records the corrected compiled run:

- Collection succeeded: governance4 tests and order9 tests.
- Governance:1 passed,3 failed,0 ignored,0 filtered.
- Ordering/witness scope:3 passed,6 failed,0 ignored,0 filtered.
- All models admitted; there were no compiler or admission failures.
- The passing controls cover supported local authenticated proof, supported
  single-row local checks, postcondition priority, and Command complete-parent
  confirmation.
- Actual failures show old grouped ordering/UNSAT prefix, absent confirmed
  earlier-error witness, missing Legacy parent universes, unsupported same-type
  claims retaining `PROVEN`, an empty unbound-world error report, old current
  verifier version, old0.8 current-subject eligibility, and acceptance of all
  five malformed non-command0.8 candidate mutations.

Production source-file digests were unchanged during both executions. Root
reviewed the test source and assertions before the correction; this is agent
review, not independent human approval. Exact commands, timestamps, source/test
digests and outputs are preserved per run. The first completed verifier run
preceded a concurrent disk-exhaustion incident. After space was recovered, the
corrected run disabled only Cargo's incremental build cache with
`CARGO_INCREMENTAL=0`; it did not alter proof inputs or bypass a gate.

The current0.9 producer assertions are seeded after the version assertion and
will be reached once that migration is implemented. This evidence does not
claim those later assertions independently failed. The tests use production
encoding/solver/confirmation as systems under test and share the existing
test-owned canonical transport/hash/signature helpers; they are not a complete
independent formal proof of the verifier.
