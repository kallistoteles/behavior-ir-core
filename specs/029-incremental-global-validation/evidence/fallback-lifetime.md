# Preserve the ordinary result allocation lifetime

The complete0d6a52c campaign has927rows covering all103cases and five required groups.
All semantic digests, work controls, primary cases and growth checks pass. Only
unsupported/warm/N8192 misses its frozen median limit:7297.947899ms versus7162.4556506ms.
The complete failed verdict and data remain in `attempts/campaign-0d6a52c`. No threshold
or individual observation was replaced.

Before029, the original owned Core DecisionRecord was shadowed by its JSON clone but
remained alive until Store::evaluate returned. The prepared/nonprepared branch moved
that original record into an inner block, destroying it before bundle construction.
The logical values remained equal, but the allocation/free order changed for every
large ordinary evaluation, including unsupported fallback and same-head workloads.

A predetermined paired experiment measured release,0d6a52c, original allocation
lifetime, inline-row helper and both variants, each in three fresh processes onCPU0.
All15runs have the same complete frozen observation digest/bytes. Source was restored
exactly after building variants; patches, build logs and raw trials are retained in
`fallback-hypotheses/`.

| Variant | Median cycle ms |
|---|---:|
| Released baseline | 6403.074133 |
| 0d6a52c | 7361.927984 |
| Original allocation lifetime | 6259.275894 |
| Inline row helper only | 7312.320052 |
| Both | 5949.290745 |

Keep only the original allocation lifetime. It removes the measured regression with
the smallest correction and restores the original ordinary-path ownership pattern.
Inlining alone does not materially address the issue; the combination is unnecessary
for the required remedy. Neither inline variant remains in source.

The ordinary Core result is immutable and already computed by the same authoritative
call. Retaining its ownership through this original scope changes no value, validation,
request, record field, Backend operation or replay dependency. The prepared branch
retains no additional ordinary record. No new persistent state or proof assumption is
introduced. Existing complete-record correspondence tests remain applicable. These
pilot times are investigation evidence; the new source still requires full G3 and a
fresh complete frozen campaign before acceptance. Core premise-mutation source remains
byte-identical to its previously checked version.
