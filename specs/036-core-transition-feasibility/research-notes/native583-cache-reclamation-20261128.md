# Lossless reclamation of the closed Native583 compiler cache

After the successful Native599 proof, only 157,175,015 bytes remained below
the cache ceiling. The supervised `native583-cache-reclamation-001` maintenance
run now preserves and reclaims the exact closed Native583 compiler target.

All 967 files, their paths and modes were recorded and verified against nine
compressed archives before disposal. The 447,869,143 bytes of compiler files
became 154,472,958 archive bytes under the registered temporary root: a net
payload saving of 293,396,185 bytes before small inventory/log costs. The target
directory remains empty. The retained R/GV/B/oracle executables were verified
before and after; worker sources, build results, raw logs, proof sources and
exports remain in place. SDK/backend/shared data and unrelated033 were untouched.

The predecessor's exact checkpoint, bounded receipt and result hashes and
closed seal were verified. The build and latest proof source inventories were
checked for direct references into the target before reclamation. The operation
held the supervised tree lease and checked only its own validated fence and
process ancestry; it did not invoke the generic global process scanner.
Member-by-member digest/mode verification preceded paced deletion. No existing
sealed record, registration, source path or receipt was rewritten.

The actual maintenance exit is zero, no stop or storage error occurred, source
bindings remained equal and both process closures are empty. Final incremental
storage agrees with the independent inventory. The owner fence is absent.

| Artifact in registered private root | Bytes | SHA-256 |
|---|---:|---|
| tmp/native583-cache-reclamation-001/result.json | 325 | 0aad3e0a4ee2641723dfb85a47d8bd3f53cb6561202c1fb44626c89b78b71d91 |
| tmp/native583-cache-reclamation-001/complete-inventory.json | 203,346 | 70c52169db50edd6841d612e237da2801b2025db5f07b302ebc49708ea241ec3 |
| tmp/native583-cache-reclamation-001/archive-index.json | 187,587 | c870ca6afc33f1897e960542f7800175fcc97067b3551989c1e019e12d280491 |
| bootstrap/native583-cache-reclamation-001/receipt.json | 368,320 | 3c8a5bd2797ebef40f6a36113eae9400a365da9f8570275cb4365b0c066d06d4 |

Final usage is cache 38,049,741,424 bytes, temporary 4,428,127,981 bytes and
artifacts 10,248,555,363 bytes. Root/data free space is
31,419,760,640 / 4,532,051,968 bytes. The existing ceilings and volume floors
were unchanged. This maintenance changes no correctness, performance,
feature-completion or product-adoption status.
