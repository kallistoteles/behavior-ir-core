# Record conventions and custody

Baseline: Core v0.12.1, `1e286ebcf1d61117320c57df155fa1ef9397e880`.

C/O/E/F/B/R IDs follow originating-lane three-digit namespaces. G1–G12 retain IDs.
Construction, code-invariant, test, assumption and unestablished scope stay separate.
The exact primary obligation statuses are **proven by construction**, **established by a code invariant**, **covered empirically by tests**, **assumed but documented**, **not yet established**. Split mixed scopes.

Run outcomes: pass, fail, inconclusive, skipped, unavailable. Collection differs from execution; a compile failure is not a semantic counterexample. Significant findings require S0–S7 and Critical/High/Medium/Low/Observation with reasons. Prior leads progress through investigated to finding or evidenced non-finding; unresolved work stays open. Review dispositions are accepted, changes required, disputed. Assignment states are assigned, in-review, integrated.

Every source inspection or run records exact proposition, source/profile, method, inputs, artifacts, limitations and individual review. Evidence lacks authority to redefine semantics. Raw files and patches never overwrite earlier items; test-only overlays have separate provenance. A passing characterization can establish undesirable behavior without discharging G3. No fixes, cleanup, hashes/API/admission changes, release or pin updates are authorized.

One writer per file. COORD integrates canonical ledgers; lane authors answer reviews only in their own fragments. Reviewer independence follows the individual, not the lane name. Required full gates run only on the pristine release baseline. Logs never include credentials. No new committed extraction/validation utility is needed; record assembly is manual metadata using existing tools.
