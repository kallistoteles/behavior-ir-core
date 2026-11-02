import Core033.KernelDecide
set_option maxRecDepth 65536
def actualBytes : List UInt8 := ("\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f" : String).toByteArray.data.toList
theorem quote_exact : actualBytes = (List.range 128).map UInt8.ofNat := by core033_kernel_decide
