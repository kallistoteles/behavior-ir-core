# Neutral reference-removal fixtures

Original minimal reproduction: ecosystem `docs/research/core-0.15.0-gaps/evidence/009-ref.json`.
Original SHA-256: `7bf8392612b94ac24892c1dad2947d1fd07a1be7d3db88c42d158f5d655bcdf6`.
These fixtures use neutral names/locations and IR 0.7. Tests also admit IR 0.8 with
empty command declarations/effects. No private application content is copied.

`guarded` requires no incoming references. `joint` and `retarget` use a filtered
incoming count equal to the actual bound holder contribution, allowing unrelated
holders. Unguarded variants are independent negative controls. The Id/no-holder
controls have zero reference obligations; `proved-control` has an actual row rule.
Original weaker mixed examples remain recorded in the ecosystem provenance; their
successful executions are not claimed as universal proofs of these guarded fixtures.
