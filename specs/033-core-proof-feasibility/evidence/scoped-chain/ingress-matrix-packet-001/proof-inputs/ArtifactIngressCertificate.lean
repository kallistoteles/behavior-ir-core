import ArtifactIngressBlocks
namespace ArtifactIngressCertificate
open Core033
def actualBytes : WordSource.Bytes := ArtifactIngressBlocks.actualBytes
theorem whole_checked : WordSource.validate ActualIngressIR.program actualBytes=true :=
  ArtifactIngressBlocks.actual_validated
theorem exact_program_meaning (inputs : Nat → WordIR.Word) :
    WordSource.NativeDenotes actualBytes inputs (BlockIngress.program.eval inputs) :=
  ArtifactIngressBlocks.actual_meaning inputs
end ArtifactIngressCertificate
