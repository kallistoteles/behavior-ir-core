# Exact compact witness follow-up

This is a separately dated correctness experiment, not a retry charged to the
expired JSON-prefix scenario and not a change of Core's finality contract.
It preserves initialization, both requests, the actual local K/auth source,
the SHA relation, and the entire expected journal of the previous experiment.

The only intended variables are witness transport (canonical empty siblings
are represented by bits and reconstructed before K) and segment size (18 rather
than the observed default 20). Kernel checks remain the authority. This is not
a new general Core checker, a formal codec proof or a latency solution.

Constitution check: tests precede codec implementation; native whole-proposal
and whole-journal equality plus adversarial encodings precede guest execution.
Unknown tags, bounds, duplicate/default explicit siblings and trailing bytes
must be rejected. No producer-derived validity, unchecked guest execution or
Fake receipt may authorize success. Prior evidence is immutable. Compiler and
SDK assumptions remain those of the previous explicitly restricted experiment.

Preparation budget 1800 seconds; one proof scenario of 1800 seconds, 900 seconds
per process, one CPU, 8 GiB per-process address space, 16 GiB free at start.
No hidden retry or extension. Builds reuse compiled dependencies but use unique
binaries and a separate guest target. A completed succinct receipt, if any,
must pass the previous isolated fresh-consumer checks. Failure remains failure.

The four full-Core obligations remain NotEstablished regardless of this trial.
