"""Fresh default-kernel replay with explicit implicit literal prerequisites."""

import json


SOURCE = r'''module
public import Lean
import all Lean.Replay
public import LeanExport.Parse
open Lean

/- Same pinned Replay operations, including addDeclCore 0 0 and postponed
constructor/recursor checking. Schedule literal prerequisites first: the
standard explicit-constant DFS does not discover these from Expr.lit. -/
unsafe def replayLiterals (constants : Std.HashMap Name ConstantInfo)
    (env : Kernel.Environment) : IO Kernel.Environment := do
  let mut remaining : NameSet := {}
  for (name, ci) in constants.toList do
    if !ci.isUnsafe && !ci.isPartial then
      remaining := remaining.insert name
  let (_, state) ← StateRefT'.run (s := ({ env, remaining } : Kernel.Environment.Replay.State)) do
    ReaderT.run (r := ({ newConstants := constants } : Kernel.Environment.Replay.Context)) do
      for literal in [`Nat, `Char.ofNat, `String.ofList] do
        if constants.contains literal then
          Kernel.Environment.Replay.replayConstant literal
      for name in remaining do
        Kernel.Environment.Replay.replayConstant name
      Kernel.Environment.Replay.checkPostponedConstructors
      Kernel.Environment.Replay.checkPostponedRecursors
  return state.env

public unsafe def main (args : List String) : IO UInt32 := do
  let [filename] := args | throw <| IO.userError "Expected one export file"
  try
    IO.FS.withFile filename .read fun handle => do
      let exported ← LeanExport.parseStream (.ofHandle handle)
      let original := exported.constMap
      let quotTargets := [`Quot.mk, `Quot.lift, `Quot.ind]
      let constants := quotTargets.foldl (init := original) (·.erase ·)
      let env ← Lean.mkEmptyEnvironment
      let checked ← replayLiterals constants env.toKernelEnv
      for target in `Quot :: quotTargets do
        if let some info := original[target]? then
          let some actual := checked.find? target |
            throw <| IO.userError s!"Missing quotient declaration: {target}"
          if info != actual then
            throw <| IO.userError s!"Quotient declaration mismatch: {target}"
      IO.println "Core036 fresh default kernel accepts the solution"
      return 0
  catch error =>
    IO.println s!"Core036 fresh default kernel rejects the solution: {error}"
    return 1
'''


def wrong_root_proof(raw, policy, roots):
    """Keep root types and dependencies; replace one proof by its own type."""
    if not isinstance(raw, bytes) or not 0 < len(raw) <= 64 * 1024**2:
        raise ValueError("LiteralReplayExportBound")
    lines = raw.splitlines(keepends=True)
    index = policy["root_line_indices"][roots[0]["declaration"]]
    row = json.loads(lines[index])
    if set(row) != {"thm"} or row["thm"]["value"] == row["thm"]["type"]:
        raise ValueError("LiteralReplayWrongProofSubject")
    row["thm"]["value"] = row["thm"]["type"]
    lines[index] = (json.dumps(row, separators=(",", ":")) + "\n").encode()
    return b"".join(lines)
