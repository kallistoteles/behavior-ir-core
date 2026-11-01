import Core033.SourceParser
namespace ArtifactSource
def actualBytes : List UInt8 := [109,97,99,114,111,95,114,117,108,101,115,33,32,104,105,100,100,101,110,32,123,32,40,41,32,61,62,32,123,32,116,114,117,101,32,125,32,125,10,112,117,98,32,102,110,32,99,104,101,99,107,101,114,95,115,116,101,112,40,120,58,32,105,54,52,41,32,45,62,32,98,111,111,108,32,123,10,32,32,32,32,120,32,60,32,48,95,105,54,52,10,125,10]
theorem actual_validated : Core033.SourceParser.validate actualBytes = true := by decide
theorem actual_meaning (inputs : Core033.IR.Inputs) :
  Core033.SourceParser.NativeDenotes actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) :=
  Core033.SourceParser.actual_bytes_sound actualBytes inputs actual_validated
end ArtifactSource
