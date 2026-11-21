/- Candidate data/transport model; not a native primitive admission.
Analysis-source data forms: core/src/io/error.rs:87,142,472,484.
Kinds conserved from the actual341 generated declaration (44 constructors).
Native1.98/source adequacy, runtime objects, OS classification, formatting,
Drop and external-world effects remain separate mandatory work. -/
module
public import Aeneas
@[expose] public section
namespace Correspondence036.IoErrorData

inductive Kind where
| NotFound : Kind
| PermissionDenied : Kind
| ConnectionRefused : Kind
| ConnectionReset : Kind
| HostUnreachable : Kind
| NetworkUnreachable : Kind
| ConnectionAborted : Kind
| NotConnected : Kind
| AddrInUse : Kind
| AddrNotAvailable : Kind
| NetworkDown : Kind
| BrokenPipe : Kind
| AlreadyExists : Kind
| WouldBlock : Kind
| NotADirectory : Kind
| IsADirectory : Kind
| DirectoryNotEmpty : Kind
| ReadOnlyFilesystem : Kind
| FilesystemLoop : Kind
| StaleNetworkFileHandle : Kind
| InvalidInput : Kind
| InvalidData : Kind
| TimedOut : Kind
| WriteZero : Kind
| StorageFull : Kind
| NotSeekable : Kind
| QuotaExceeded : Kind
| FileTooLarge : Kind
| ResourceBusy : Kind
| ExecutableFileBusy : Kind
| Deadlock : Kind
| CrossesDevices : Kind
| TooManyLinks : Kind
| InvalidFilename : Kind
| ArgumentListTooLong : Kind
| Interrupted : Kind
| Unsupported : Kind
| UnexpectedEof : Kind
| OutOfMemory : Kind
| InProgress : Kind
| TooManyOpenFiles : Kind
| InputOutputError : Kind
| Other : Kind
| Uncategorized : Kind
  deriving DecidableEq, Repr

-- Runtime object identities include a generation; arbitrary payload contents
-- live in the separate world interpretation. This defines data, not that world.
structure CustomHandle where
  objectId : Nat
  generation : Nat
  deriving DecidableEq, Repr

structure StaticMessage where
  messageId : Nat
  kind : Kind
  text : String

inductive Error where
  | os : Aeneas.Std.I32 → Error
  | simple : Kind → Error
  | staticMessage : StaticMessage → Error
  | custom : Kind → CustomHandle → Error

-- These are explicit observer interfaces, not global OS axioms.
def kind (decodeOS : Aeneas.Std.I32 → Kind) : Error → Kind
  | .os code => decodeOS code
  | .simple value => value
  | .staticMessage message => message.kind
  | .custom value _ => value

def isInterrupted (interruptedOS : Aeneas.Std.I32 → Bool) : Error → Bool
  | .os code => interruptedOS code
  | .simple value => decide (value = .Interrupted)
  | .staticMessage message => decide (message.kind = .Interrupted)
  | .custom value _ => decide (value = .Interrupted)

theorem kind_os (decodeOS) (code) : kind decodeOS (.os code) = decodeOS code := rfl
theorem kind_simple (decodeOS) (value) : kind decodeOS (.simple value) = value := rfl
theorem kind_static (decodeOS) (message) : kind decodeOS (.staticMessage message) = message.kind := rfl
theorem kind_custom (decodeOS) (value) (handle) : kind decodeOS (.custom value handle) = value := rfl

theorem interrupted_os (interruptedOS) (code) :
    isInterrupted interruptedOS (.os code) = interruptedOS code := rfl
theorem interrupted_custom (interruptedOS) (value) (handle) :
    isInterrupted interruptedOS (.custom value handle) = decide (value = .Interrupted) := rfl

-- Generic error transport is quantified over the error type. It assumes no
-- callback succeeds and preserves the state returned alongside a first error.
def twice {State Value Failure : Type}
    (step : State → Aeneas.Std.Result (Aeneas.Std.core.result.Result Value Failure × State))
    (state : State) : Aeneas.Std.Result (Aeneas.Std.core.result.Result Value Failure × State) := do
  let (first, next) ← step state
  match first with
  | .Ok _ => step next
  | .Err error => .ok (.Err error, next)

theorem twice_error {State Value Failure : Type}
    (step : State → Aeneas.Std.Result (Aeneas.Std.core.result.Result Value Failure × State))
    (state next : State) (error : Failure)
    (first : step state = .ok (.Err error, next)) :
    twice step state = .ok (.Err error, next) := by
  simp [twice, first, Aeneas.Std.bind_ok]

theorem twice_ok {State Value Failure : Type}
    (step : State → Aeneas.Std.Result (Aeneas.Std.core.result.Result Value Failure × State))
    (state next : State) (value : Value)
    (first : step state = .ok (.Ok value, next)) :
    twice step state = step next := by
  simp [twice, first, Aeneas.Std.bind_ok]

end Correspondence036.IoErrorData
