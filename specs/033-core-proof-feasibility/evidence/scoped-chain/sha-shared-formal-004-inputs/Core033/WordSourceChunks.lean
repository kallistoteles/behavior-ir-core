import Core033.WordSource

/- Chunking changes the cost of kernel reduction, never the accepted byte stream.
Every chunk is compared exactly; flattening is proved equal to the original
whole compilation unit whose lexical and semantic derivation is independent. -/
namespace Core033.WordSource
open WordIR

def parameterChunks : Nat → Nat → List Bytes
  | _,0 => []
  | first,count+1 => (Codec.textBytes "    "++name first++Codec.textBytes ": u32,\n")::parameterChunks (first+1) count

def statementChunks : Nat → List Expr → List Bytes
  | _,[] => []
  | first,expr::rest => (Codec.textBytes "    let "++name first++Codec.textBytes ": u32 = "++expr.bytes++
      Codec.textBytes ";\n")::statementChunks (first+1) rest

theorem parameter_chunks_exact (count : Nat) : ∀ first,(parameterChunks first count).flatten=parameterBytes first count := by
  induction count with
  | zero => intro first;rfl
  | succ count ih => intro first;simp [parameterChunks,parameterBytes,ih,List.append_assoc]

theorem statement_chunks_exact (statements : List Expr) : ∀ first,(statementChunks first statements).flatten=statementBytes first statements := by
  induction statements with
  | nil => intro first;rfl
  | cons expr rest ih => intro first;simp [statementChunks,statementBytes,ih,List.append_assoc]

def Function.chunks (function : Function) : List Bytes :=
  [Codec.textBytes "pub fn checker_step(\n"]++parameterChunks 0 function.inputCount++
  [Codec.textBytes ") -> [u32; 0x"++hexDigits 8 function.outputs.length++Codec.textBytes "_usize] {\n"]++
  statementChunks function.inputCount function.statements++
  [Codec.textBytes "    ["++returnBytes function.outputs++Codec.textBytes "]\n}\n"]

theorem chunks_exact (function : Function) : function.chunks.flatten=function.bytes := by
  simp [Function.chunks,Function.bytes,parameter_chunks_exact,statement_chunks_exact,List.flatten_append,List.append_assoc]

def validateChunks (program : Program) (actual : List Bytes) : Bool :=
  checkSafe (lowerFunction program) && decide (actual=(lowerFunction program).chunks) &&
    decide ((actual.map List.length).sum ≤ 8388608)

theorem chunk_sizes_exact (chunks : List Bytes) : chunks.flatten.length=(chunks.map List.length).sum := by
  induction chunks with
  | nil => rfl
  | cons chunk rest ih => simp [ih]

theorem chunks_refine_original (program : Program) (actual : List Bytes)
    (accepted : validateChunks program actual=true) : validate program actual.flatten=true := by
  simp only [validateChunks,Bool.and_eq_true,decide_eq_true_eq] at accepted
  have exactBytes : actual.flatten=(lowerFunction program).bytes := by rw [accepted.1.2,chunks_exact]
  simp only [validate,Bool.and_eq_true,decide_eq_true_eq]
  exact ⟨⟨accepted.1.1,exactBytes⟩,by rw [chunk_sizes_exact];exact accepted.2⟩

theorem actual_chunks_sound (program : Program) (actual : List Bytes)
    (accepted : validateChunks program actual=true) (inputs : Nat → Word) :
    NativeDenotes actual.flatten inputs (program.eval inputs) :=
  actual_bytes_sound program actual.flatten (chunks_refine_original program actual accepted) inputs

end Core033.WordSource
