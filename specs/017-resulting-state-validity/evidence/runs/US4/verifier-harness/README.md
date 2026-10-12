# T057 current verifier harness adaptation

The five existing verifier targets originally executed 14 tests: **8 PASS / 6 FAIL** in the parent-owned [integrated Core/verifier run](../integrated-core-verify/00.stdout.txt). These were obsolete current profile/metadata assertions and explicitly limited proof scopes. The reviewed adapted targets execute **15 PASS / 0 FAIL**, with no ignored or filtered tests. The added test is a postimplementation boundary control, not new production test-first evidence.

| Target | PASS |
|---|---:|
| closure | 3 |
| fixed_scale | 3 |
| invocation_bindings | 1 |
| migration | 4 |
| reads | 4 |

Fresh action counterexamples use record 0.8 and complete finite universes containing every declared type. The closure and fixed-scale checks now require exact public runtime reconstruction and successful replay in addition to the original arithmetic/grid outcomes. Migration retains its existing exact fixture outcomes and checks current verifier metadata 0.9.0.

The invocation ledger's `settle` and `transfer` actions contain multiple Account child identities with constraints. Current SMT encoding does not model their decoded canonical identity order. The test independently names these two actions and their four unsupported check classes each; it requires exactly INCONCLUSIVE, the precise encoding error, bound action hashes and blocking severity. Every other archived expectation is compared unchanged, and supported counterexamples still reconstruct through the public runtime with full witness evidence. Historical expectation files are not edited.

Read evaluation semantics are unchanged. The shared confirmation builder now supplies the full finite witness to legacy reads too. Existing universe consistency checks reject `smoothed_ph` division models with measurements -1 (violates `counted`) and overflow models with measurements at Int maximum (violates `bounded`). The verifier therefore reports those two named checks INCONCLUSIVE with exactly `counterexample_not_reproduced`. The other five outcome rows remain exact; the four actual read findings reconstruct publicly and replay.

The paired boundary control demonstrates the reason directly: a legacy bound read without a universe reaches the expected division/overflow error, while the same invalid row supplied as a universe is refused as `INVALID_INPUT / INCONSISTENT_FACTS` and that refusal replays. This establishes the conservative confirmation limitation; it does not claim that legacy plain reads began validating their bound rows.

No production code was changed by these adaptations. Production hashes captured before and after match; historical fixture digest verification and exact source/output hashes are in `manifest.json`. The original failing run remains recorded, and no INCONCLUSIVE result is counted as a proof.

```bash
nix develop -c env CARGO_INCREMENTAL=0 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-verify --jobs 2 --test closure --test fixed_scale --test migration --test invocation_bindings --test reads --no-fail-fast -- --nocapture
```
