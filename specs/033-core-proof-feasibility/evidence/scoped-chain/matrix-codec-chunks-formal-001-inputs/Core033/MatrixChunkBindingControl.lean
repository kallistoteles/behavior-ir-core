import Core033.MatrixCodecChunks

namespace Core033.MatrixChunkBindingControl

def actualMatrix : R1CS.Matrix := R1CS.compileNegative R1CS.pallasScalarModulus

theorem exact_original : (MatrixCodecChunks.chunks actualMatrix).flatten=MatrixCodec.encode actualMatrix :=
  MatrixCodecChunks.exact_encoding actualMatrix

end Core033.MatrixChunkBindingControl
