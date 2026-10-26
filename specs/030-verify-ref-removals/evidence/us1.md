# US1 evidence (current verifier 0.11)

The old 0.10 blanket refusal is retained in `baseline.json` and the behavioral
`support-matrix-red.txt`: all six required pattern/profile cases failed for the
intended reason before production changes. Zero-check Id/no-holder controls and
an actual nonempty proved constraint are separate controls.

`us1-reference-results.txt` records 10 passing tests: six nonempty unrestricted
reference-world proofs at the default preservation budget (20,000,000 / 60,000ms),
negative guard controls, independent manifest signing, and an actual confirmed
first synthesized-reference failure for unguarded removal in both profiles.
`inventory-green.txt` additionally checks unrestricted residuals above finite
witness capacity and distinct captures. `independent-inventory-red.txt` records a
behavioral failure before independent trusted inventory validation was implemented;
its green counterpart passes. `manifest-scope-red.txt` records the manifest's
initial rejection of the new predicate; its green counterpart accepts only 0.11.

`lifecycle-first-current11.txt` records intentionally obsolete fresh lifecycle
expectations failing. `lifecycle-verifier-0.11.expected.json` is a separate current
table. The old lifecycle table remains byte-for-byte unchanged. Guarded customer
removal now proves the reference family. Unchecked removal confirms the actual
`constraint_post` / `CONSTRAINT_VIOLATED` failure. Unrestricted switch/removal lacks
a total incoming guard: its reference family now has a confirmed early counterexample,
while its later ordinary checks remain inconclusive; same-type child ordering remains
unsupported. These are intentional retained boundaries, not negative proofs.

All these claims concern ordinary transitions of a valid complete parent under the
exact admitted module. Solver validity, extraction correspondence and complete
backend facts remain trusted. No runtime, persistence, admission or replay change
is part of this increment. US1 alone does not close G1; mixed execution and replay
are recorded separately in `g1.md` after the public consumer matrix completes.
