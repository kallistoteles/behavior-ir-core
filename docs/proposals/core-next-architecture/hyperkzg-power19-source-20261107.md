# HyperKZG power-19 SRS source

Date: 2026-11-07 UTC. Source/HTTP-metadata research only; no SRS body download, build, setup or proof run was performed by this research task. Earlier frozen notes are unchanged.

The separately executed [capacity receipt](../../../experiments/proof-backend-screen-20261107/results/hyperkzg-capacity-001/stdout.txt) reports **371,699 required generators**, minimum power **19**, for the 43-word identity with **BN256 preprocessing HyperKZG primary / Grumpkin standard IPA secondary**. Its fields explicitly say `srs_loaded=false` and `proof_produced=false`; this establishes capacity discovery, not a completed HyperKZG proof.

The rounded load count is **524,288 G1 points** (`2^19`), plus two G2 points. Powers 16–18 therefore do not satisfy this configuration's production selector. A different construction or circuit requires its own capacity record.

The independently selectable official SRS identity is:

```text
family: Hermez prepared Powers of Tau; 54 contributions plus beacon
filename: powersOfTau28_hez_final_19.ptau
power: 19
published BLAKE2b-512:
bca9d8b04242f175189872c42ceaa21e2951e0f0f272a0cc54fc37193ff6648600eaf1c555c70cdedfaf9fb74927de7aa1d33dc1e2a7f1a50619484989da0887
```

Primary source: [snarkjs README, pinned revision `22003fbcde78608be902520661832db7933d279e`, line 186](https://github.com/iden3/snarkjs/blob/22003fbcde78608be902520661832db7933d279e/README.md#L186). Official artifact URL: [powersOfTau28_hez_final_19.ptau](https://circom.info/powersOfTau28_hez_final_19.ptau). The hash was checked against the pinned README text during this research.

HEAD requests to that URL, the historical Hermez S3 object and the Google zkevm mirror all returned **HTTP 403** here. No original artifact byte size was authenticated; no response body containing SRS data was requested. Availability remains a preflight blocker rather than a reason to substitute another artifact silently.

Freeze this exact family/power/digest before retrieval. A later digest match supports byte integrity and publisher-based provenance under the explicitly trusted publisher/transcript assumption; it is not independent ceremony verification or proof of secret destruction. Preserve Nova's format/point checks and report transcript verification separately. The alias/loader integration and remaining trust assumptions are described in [the alternative-SRS note](hyperkzg-srs-alternative-20261107.md).
