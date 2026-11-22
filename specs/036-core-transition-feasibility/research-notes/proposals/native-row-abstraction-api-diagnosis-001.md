# Closed dictionary abstraction: actual504 diagnosis

Source-only diagnosis and prospective repair. Actual505 is pending. No completed
row/kernel/native/feature result is claimed. Actual499–504 remain failed records.

The pinned SDK documents `Expr.abstract` as replacing **free or meta variables**
with loose bound variables. The candidate passed the closed concrete dictionary
expression. That is outside this API's stated operation. [SDK contract](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Expr.lean:1485).

Actual504 registers the candidate and compiles the original-caller `rfl` bridge.
The first noninterference simplification closes without the read-equality premise;
the second reports `No goals to be solved`. An ignored-argument helper can satisfy
both that bridge and a vacuous noninterference theorem. Reinstantiating its unused
argument also leaves the original body unchanged. None of these facts alone proves
that the four dictionary occurrences were abstracted. The attempt fails before
independent audit or fresh kernel acceptance. [Actual diagnostic](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0504/declared-proof/lean-NativeCanonicalRowProofs/stdout.txt).

The prospective generator replaces exact closed occurrences with a fresh scoped
free variable, then applies supported variable abstraction. It checks original
closedness, actual replacement, absence of leaked free/meta variables and exact
reinstantiation. The SDK replacement traversal visits applications and binders;
introducing a fresh free variable avoids capture. [Replacement traversal](/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux/src/lean/Lean/Util/ReplaceExpr.lean:19),
[generator](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowProofs.lean:78).

The independent auditor uses an explicit binder-depth traversal instead. It must
check exactly four classified read sites and exact resulting type/body/universes.
It also reruns the original closed-argument API call on this actual original body,
registers the resulting well-typed ignored-argument definition with the kernel,
reads that registered value, and requires rejection by the same structural check.
A caught compiler error or candidate-supplied pass flag cannot establish rejection.
[Auditor](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_abstraction_v2.py).

A new source test first observes the old acceptance of a report without this
control; all48 source tests pass after the stricter report contract. The actual
Lean positive/root/audit/kernel/regression run remains pending. Full canonical
row results, native library/runtime representations and B01–B10 remain separate
required work. [Progress](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/progress.md).
