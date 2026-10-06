# Unified invocation fixtures (012)

`build_invocation.py` writes the ledger module and the explicit snapshot directly
as wire JSON, without a DSL. The ledger covers zero to three bindings, typed
references, declared reads, decision-only actions, and a global uniqueness rule.
Run the generator twice with `--output DIR` to check byte reproducibility.
