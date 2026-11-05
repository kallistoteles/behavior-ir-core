import Core033.WordSourceBlocks

/- An explicit ordinary dependency for source-string reconstruction. During
fresh replay, kernel reduction of literals can use String.ofList even when a
stored literal has no syntactic reference to it. No evaluator axiom is added;
all resulting closed byte equations are still checked by the kernel. -/
namespace Core033.SourceLiteralBytes

def quoted (source : String) : List UInt8 :=
  (String.ofList source.toList).toByteArray.data.toList

theorem ascii_control : quoted "abc"=[97,98,99] := by decide

end Core033.SourceLiteralBytes
