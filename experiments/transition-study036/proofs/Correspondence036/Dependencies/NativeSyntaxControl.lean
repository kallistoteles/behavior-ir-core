module
public import Lean
public import CORE036_MODULE_PREFIX.Types
public import CORE036_MODULE_PREFIX.FunsExternal

open Lean Elab Command
open Aeneas Aeneas.Std Result ControlFlow Error
set_option Aeneas.customDoElab false
set_option maxRecDepth 8192

namespace Correspondence036.NativeSyntaxControl

-- This executes only the parser. It supplies no native semantic theorem.
private meta partial def parseCommands (env : Environment) (options : Options)
    (input : Parser.InputContext) (state : Parser.ModuleParserState)
    (messages : MessageLog) (count : Nat) (reportErrors : Bool) : IO Nat := do
  let (commandStx, state, messages) :=
    Parser.parseCommand input { env, options } state messages
  if messages.hasErrors then
    if reportErrors then
      messages.forM fun message => message.toString >>= IO.println
    throw (IO.userError "Native syntax parser rejected source")
  if commandStx.isOfKind ``Parser.Command.eoi then
    unless input.atEnd state.pos do
      throw (IO.userError "Native syntax parser did not consume the complete source")
    return count
  if Parser.isTerminalCommand commandStx then
    throw (IO.userError "Unexpected terminal command before native source end")
  parseCommands env options input state messages (count + 1) reportErrors

private meta def parseWhole (env : Environment) (options : Options)
    (fileLabel sourceText : String) (reportErrors : Bool) : IO Nat := do
  let input := Parser.mkInputContext sourceText fileLabel
  let (_, state, messages) ← Parser.parseHeader input
  parseCommands env options input state messages 0 reportErrors

elab "#native_syntax_control" : command => do
  let env ← getEnv
  let options ← getOptions
  let malformed := "def bad : String := \"{\"compiler_release\":\"1.98.1\"}\""
  let rejected ← liftIO do
    try
      let _ ← parseWhole env options "wrong-native-quotes" malformed false
      pure false
    catch _ => pure true
  unless rejected do
    throwError "Malformed native quoting control was accepted"
  let path := "CORE036_FUNS_PATH"
  let text ← liftIO <| IO.FS.readFile path
  let count ← liftIO <| parseWhole env options path text true
  unless count > 0 do
    throwError "Empty native syntax control"
  let row := Json.mkObj [
    ("commands", toJson count),
    ("source_utf8_bytes", toJson text.utf8ByteSize),
    ("wrong_quotes_rejected", toJson rejected)]
  liftIO <| IO.println s!"CORE036_NATIVE_SYNTAX {Json.compress row}"

#native_syntax_control
end Correspondence036.NativeSyntaxControl
