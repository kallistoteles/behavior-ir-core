import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData201
import PairedPathRoundInstructionMatrixData202
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12896 : actualRows12896=WordField.canonicalRows actualModulus 12896 (.shr 12895 31) := by core033_kernel_decide
theorem stats12896 : actualRows12896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12896=2892 := by core033_kernel_decide
theorem rows12897 : actualRows12897=WordField.canonicalRows actualModulus 12897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12897 : actualRows12897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12897=2892 := by core033_kernel_decide
theorem rows12898 : actualRows12898=WordField.canonicalRows actualModulus 12898 (.bxor 12896 12897) := by core033_kernel_decide
theorem stats12898 : actualRows12898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12898=7428 := by core033_kernel_decide
theorem rows12899 : actualRows12899=WordField.canonicalRows actualModulus 12899 (.bnot 12898) := by core033_kernel_decide
theorem stats12899 : actualRows12899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12899=6276 := by core033_kernel_decide
theorem rows12900 : actualRows12900=WordField.canonicalRows actualModulus 12900 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12900 : actualRows12900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12900=2892 := by core033_kernel_decide
theorem rows12901 : actualRows12901=WordField.canonicalRows actualModulus 12901 (.badd 12899 12900) := by core033_kernel_decide
theorem stats12901 : actualRows12901.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12901=5388 := by core033_kernel_decide
theorem rows12902 : actualRows12902=WordField.canonicalRows actualModulus 12902 (.band 12901 10388) := by core033_kernel_decide
theorem stats12902 : actualRows12902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12902=5124 := by core033_kernel_decide
theorem rows12903 : actualRows12903=WordField.canonicalRows actualModulus 12903 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12903 : actualRows12903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12903=2964 := by core033_kernel_decide
theorem rows12904 : actualRows12904=WordField.canonicalRows actualModulus 12904 (.bxor 442 12903) := by core033_kernel_decide
theorem stats12904 : actualRows12904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12904=7428 := by core033_kernel_decide
theorem rows12905 : actualRows12905=WordField.canonicalRows actualModulus 12905 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12905 : actualRows12905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12905=2820 := by core033_kernel_decide
theorem rows12906 : actualRows12906=WordField.canonicalRows actualModulus 12906 (.bnot 12905) := by core033_kernel_decide
theorem stats12906 : actualRows12906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12906=6276 := by core033_kernel_decide
theorem rows12907 : actualRows12907=WordField.canonicalRows actualModulus 12907 (.band 12904 12906) := by core033_kernel_decide
theorem stats12907 : actualRows12907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12907=5124 := by core033_kernel_decide
theorem rows12908 : actualRows12908=WordField.canonicalRows actualModulus 12908 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12908 : actualRows12908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12908=2964 := by core033_kernel_decide
theorem rows12909 : actualRows12909=WordField.canonicalRows actualModulus 12909 (.bxor 442 12908) := by core033_kernel_decide
theorem stats12909 : actualRows12909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12909=7428 := by core033_kernel_decide
theorem rows12910 : actualRows12910=WordField.canonicalRows actualModulus 12910 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12910 : actualRows12910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12910=2820 := by core033_kernel_decide
theorem rows12911 : actualRows12911=WordField.canonicalRows actualModulus 12911 (.bnot 12910) := by core033_kernel_decide
theorem stats12911 : actualRows12911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12911=6276 := by core033_kernel_decide
theorem rows12912 : actualRows12912=WordField.canonicalRows actualModulus 12912 (.bxor 12909 12911) := by core033_kernel_decide
theorem stats12912 : actualRows12912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12912=7428 := by core033_kernel_decide
theorem rows12913 : actualRows12913=WordField.canonicalRows actualModulus 12913 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12913 : actualRows12913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12913=2964 := by core033_kernel_decide
theorem rows12914 : actualRows12914=WordField.canonicalRows actualModulus 12914 (.bxor 442 12913) := by core033_kernel_decide
theorem stats12914 : actualRows12914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12914=7428 := by core033_kernel_decide
theorem rows12915 : actualRows12915=WordField.canonicalRows actualModulus 12915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12915 : actualRows12915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12915=2820 := by core033_kernel_decide
theorem rows12916 : actualRows12916=WordField.canonicalRows actualModulus 12916 (.bnot 12915) := by core033_kernel_decide
theorem stats12916 : actualRows12916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12916=6276 := by core033_kernel_decide
theorem rows12917 : actualRows12917=WordField.canonicalRows actualModulus 12917 (.badd 12914 12916) := by core033_kernel_decide
theorem stats12917 : actualRows12917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12917=5388 := by core033_kernel_decide
theorem rows12918 : actualRows12918=WordField.canonicalRows actualModulus 12918 (.bnot 12917) := by core033_kernel_decide
theorem stats12918 : actualRows12918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12918=6276 := by core033_kernel_decide
theorem rows12919 : actualRows12919=WordField.canonicalRows actualModulus 12919 (.band 12912 12918) := by core033_kernel_decide
theorem stats12919 : actualRows12919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12919=5124 := by core033_kernel_decide
theorem rows12920 : actualRows12920=WordField.canonicalRows actualModulus 12920 (.bxor 12907 12919) := by core033_kernel_decide
theorem stats12920 : actualRows12920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12920=7428 := by core033_kernel_decide
theorem rows12921 : actualRows12921=WordField.canonicalRows actualModulus 12921 (.shr 12920 31) := by core033_kernel_decide
theorem stats12921 : actualRows12921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12921=2892 := by core033_kernel_decide
theorem rows12922 : actualRows12922=WordField.canonicalRows actualModulus 12922 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12922 : actualRows12922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12922=2892 := by core033_kernel_decide
theorem rows12923 : actualRows12923=WordField.canonicalRows actualModulus 12923 (.bxor 12921 12922) := by core033_kernel_decide
theorem stats12923 : actualRows12923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12923=7428 := by core033_kernel_decide
theorem rows12924 : actualRows12924=WordField.canonicalRows actualModulus 12924 (.bnot 12923) := by core033_kernel_decide
theorem stats12924 : actualRows12924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12924=6276 := by core033_kernel_decide
theorem rows12925 : actualRows12925=WordField.canonicalRows actualModulus 12925 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12925 : actualRows12925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12925=2892 := by core033_kernel_decide
theorem rows12926 : actualRows12926=WordField.canonicalRows actualModulus 12926 (.badd 12924 12925) := by core033_kernel_decide
theorem stats12926 : actualRows12926.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12926=5388 := by core033_kernel_decide
theorem rows12927 : actualRows12927=WordField.canonicalRows actualModulus 12927 (.bnot 12926) := by core033_kernel_decide
theorem stats12927 : actualRows12927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12927=6276 := by core033_kernel_decide
theorem rows12928 : actualRows12928=WordField.canonicalRows actualModulus 12928 (.band 12927 9807) := by core033_kernel_decide
theorem stats12928 : actualRows12928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12928=5124 := by core033_kernel_decide
theorem rows12929 : actualRows12929=WordField.canonicalRows actualModulus 12929 (.bxor 12902 12928) := by core033_kernel_decide
theorem stats12929 : actualRows12929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12929=7428 := by core033_kernel_decide
theorem rows12930 : actualRows12930=WordField.canonicalRows actualModulus 12930 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12930 : actualRows12930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12930=2964 := by core033_kernel_decide
theorem rows12931 : actualRows12931=WordField.canonicalRows actualModulus 12931 (.bxor 442 12930) := by core033_kernel_decide
theorem stats12931 : actualRows12931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12931=7428 := by core033_kernel_decide
theorem rows12932 : actualRows12932=WordField.canonicalRows actualModulus 12932 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12932 : actualRows12932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12932=2820 := by core033_kernel_decide
theorem rows12933 : actualRows12933=WordField.canonicalRows actualModulus 12933 (.bnot 12932) := by core033_kernel_decide
theorem stats12933 : actualRows12933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12933=6276 := by core033_kernel_decide
theorem rows12934 : actualRows12934=WordField.canonicalRows actualModulus 12934 (.band 12931 12933) := by core033_kernel_decide
theorem stats12934 : actualRows12934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12934=5124 := by core033_kernel_decide
theorem rows12935 : actualRows12935=WordField.canonicalRows actualModulus 12935 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12935 : actualRows12935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12935=2964 := by core033_kernel_decide
theorem rows12936 : actualRows12936=WordField.canonicalRows actualModulus 12936 (.bxor 442 12935) := by core033_kernel_decide
theorem stats12936 : actualRows12936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12936=7428 := by core033_kernel_decide
theorem rows12937 : actualRows12937=WordField.canonicalRows actualModulus 12937 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12937 : actualRows12937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12937=2820 := by core033_kernel_decide
theorem rows12938 : actualRows12938=WordField.canonicalRows actualModulus 12938 (.bnot 12937) := by core033_kernel_decide
theorem stats12938 : actualRows12938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12938=6276 := by core033_kernel_decide
theorem rows12939 : actualRows12939=WordField.canonicalRows actualModulus 12939 (.bxor 12936 12938) := by core033_kernel_decide
theorem stats12939 : actualRows12939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12939=7428 := by core033_kernel_decide
theorem rows12940 : actualRows12940=WordField.canonicalRows actualModulus 12940 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12940 : actualRows12940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12940=2964 := by core033_kernel_decide
theorem rows12941 : actualRows12941=WordField.canonicalRows actualModulus 12941 (.bxor 442 12940) := by core033_kernel_decide
theorem stats12941 : actualRows12941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12941=7428 := by core033_kernel_decide
theorem rows12942 : actualRows12942=WordField.canonicalRows actualModulus 12942 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12942 : actualRows12942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12942=2820 := by core033_kernel_decide
theorem rows12943 : actualRows12943=WordField.canonicalRows actualModulus 12943 (.bnot 12942) := by core033_kernel_decide
theorem stats12943 : actualRows12943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12943=6276 := by core033_kernel_decide
theorem rows12944 : actualRows12944=WordField.canonicalRows actualModulus 12944 (.badd 12941 12943) := by core033_kernel_decide
theorem stats12944 : actualRows12944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12944=5388 := by core033_kernel_decide
theorem rows12945 : actualRows12945=WordField.canonicalRows actualModulus 12945 (.bnot 12944) := by core033_kernel_decide
theorem stats12945 : actualRows12945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12945=6276 := by core033_kernel_decide
theorem rows12946 : actualRows12946=WordField.canonicalRows actualModulus 12946 (.band 12939 12945) := by core033_kernel_decide
theorem stats12946 : actualRows12946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12946=5124 := by core033_kernel_decide
theorem rows12947 : actualRows12947=WordField.canonicalRows actualModulus 12947 (.bxor 12934 12946) := by core033_kernel_decide
theorem stats12947 : actualRows12947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12947=7428 := by core033_kernel_decide
theorem rows12948 : actualRows12948=WordField.canonicalRows actualModulus 12948 (.shr 12947 31) := by core033_kernel_decide
theorem stats12948 : actualRows12948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12948=2892 := by core033_kernel_decide
theorem rows12949 : actualRows12949=WordField.canonicalRows actualModulus 12949 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12949 : actualRows12949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12949=2892 := by core033_kernel_decide
theorem rows12950 : actualRows12950=WordField.canonicalRows actualModulus 12950 (.bxor 12948 12949) := by core033_kernel_decide
theorem stats12950 : actualRows12950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12950=7428 := by core033_kernel_decide
theorem rows12951 : actualRows12951=WordField.canonicalRows actualModulus 12951 (.bnot 12950) := by core033_kernel_decide
theorem stats12951 : actualRows12951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12951=6276 := by core033_kernel_decide
theorem rows12952 : actualRows12952=WordField.canonicalRows actualModulus 12952 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12952 : actualRows12952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12952=2892 := by core033_kernel_decide
theorem rows12953 : actualRows12953=WordField.canonicalRows actualModulus 12953 (.badd 12951 12952) := by core033_kernel_decide
theorem stats12953 : actualRows12953.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12953=5388 := by core033_kernel_decide
theorem rows12954 : actualRows12954=WordField.canonicalRows actualModulus 12954 (.band 12953 10399) := by core033_kernel_decide
theorem stats12954 : actualRows12954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12954=5124 := by core033_kernel_decide
theorem rows12955 : actualRows12955=WordField.canonicalRows actualModulus 12955 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12955 : actualRows12955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12955=2964 := by core033_kernel_decide
theorem rows12956 : actualRows12956=WordField.canonicalRows actualModulus 12956 (.bxor 442 12955) := by core033_kernel_decide
theorem stats12956 : actualRows12956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12956=7428 := by core033_kernel_decide
theorem rows12957 : actualRows12957=WordField.canonicalRows actualModulus 12957 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12957 : actualRows12957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12957=2820 := by core033_kernel_decide
theorem rows12958 : actualRows12958=WordField.canonicalRows actualModulus 12958 (.bnot 12957) := by core033_kernel_decide
theorem stats12958 : actualRows12958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12958=6276 := by core033_kernel_decide
theorem rows12959 : actualRows12959=WordField.canonicalRows actualModulus 12959 (.band 12956 12958) := by core033_kernel_decide
theorem stats12959 : actualRows12959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12959=5124 := by core033_kernel_decide
def partRows200 : List R1CS.Row := actualRows12896++actualRows12897++actualRows12898++actualRows12899++actualRows12900++actualRows12901++actualRows12902++actualRows12903++actualRows12904++actualRows12905++actualRows12906++actualRows12907++actualRows12908++actualRows12909++actualRows12910++actualRows12911++actualRows12912++actualRows12913++actualRows12914++actualRows12915++actualRows12916++actualRows12917++actualRows12918++actualRows12919++actualRows12920++actualRows12921++actualRows12922++actualRows12923++actualRows12924++actualRows12925++actualRows12926++actualRows12927++actualRows12928++actualRows12929++actualRows12930++actualRows12931++actualRows12932++actualRows12933++actualRows12934++actualRows12935++actualRows12936++actualRows12937++actualRows12938++actualRows12939++actualRows12940++actualRows12941++actualRows12942++actualRows12943++actualRows12944++actualRows12945++actualRows12946++actualRows12947++actualRows12948++actualRows12949++actualRows12950++actualRows12951++actualRows12952++actualRows12953++actualRows12954++actualRows12955++actualRows12956++actualRows12957++actualRows12958++actualRows12959
def partOps200 : List WordIR.Op := [.shr 12895 31,.literal (BitVec.ofNat 32 1),.bxor 12896 12897,.bnot 12898,.literal (BitVec.ofNat 32 1),.badd 12899 12900,.band 12901 10388,.literal (BitVec.ofNat 32 3),.bxor 442 12903,.literal (BitVec.ofNat 32 0),.bnot 12905,.band 12904 12906,.literal (BitVec.ofNat 32 3),.bxor 442 12908,.literal (BitVec.ofNat 32 0),.bnot 12910,.bxor 12909 12911,.literal (BitVec.ofNat 32 3),.bxor 442 12913,.literal (BitVec.ofNat 32 0),.bnot 12915,.badd 12914 12916,.bnot 12917,.band 12912 12918,.bxor 12907 12919,.shr 12920 31,.literal (BitVec.ofNat 32 1),.bxor 12921 12922,.bnot 12923,.literal (BitVec.ofNat 32 1),.badd 12924 12925,.bnot 12926,.band 12927 9807,.bxor 12902 12928,.literal (BitVec.ofNat 32 3),.bxor 442 12930,.literal (BitVec.ofNat 32 0),.bnot 12932,.band 12931 12933,.literal (BitVec.ofNat 32 3),.bxor 442 12935,.literal (BitVec.ofNat 32 0),.bnot 12937,.bxor 12936 12938,.literal (BitVec.ofNat 32 3),.bxor 442 12940,.literal (BitVec.ofNat 32 0),.bnot 12942,.badd 12941 12943,.bnot 12944,.band 12939 12945,.bxor 12934 12946,.shr 12947 31,.literal (BitVec.ofNat 32 1),.bxor 12948 12949,.bnot 12950,.literal (BitVec.ofNat 32 1),.badd 12951 12952,.band 12953 10399,.literal (BitVec.ofNat 32 3),.bxor 442 12955,.literal (BitVec.ofNat 32 0),.bnot 12957,.band 12956 12958]
theorem partExact200 : partRows200=WordField.rows actualModulus 12896 partOps200 := by
  simp only [partRows200,partOps200,WordField.rows,rows12896,rows12897,rows12898,rows12899,rows12900,rows12901,rows12902,rows12903,rows12904,rows12905,rows12906,rows12907,rows12908,rows12909,rows12910,rows12911,rows12912,rows12913,rows12914,rows12915,rows12916,rows12917,rows12918,rows12919,rows12920,rows12921,rows12922,rows12923,rows12924,rows12925,rows12926,rows12927,rows12928,rows12929,rows12930,rows12931,rows12932,rows12933,rows12934,rows12935,rows12936,rows12937,rows12938,rows12939,rows12940,rows12941,rows12942,rows12943,rows12944,rows12945,rows12946,rows12947,rows12948,rows12949,rows12950,rows12951,rows12952,rows12953,rows12954,rows12955,rows12956,rows12957,rows12958,rows12959,List.append_assoc,List.append_nil]
theorem partLength200 : partOps200.length=64 := by decide
theorem partStats200 : partRows200.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows200=327456 := by
  simp only [partRows200,List.length_append,MatrixRowBlocks.rows_weight_append,stats12896.1,stats12896.2,stats12897.1,stats12897.2,stats12898.1,stats12898.2,stats12899.1,stats12899.2,stats12900.1,stats12900.2,stats12901.1,stats12901.2,stats12902.1,stats12902.2,stats12903.1,stats12903.2,stats12904.1,stats12904.2,stats12905.1,stats12905.2,stats12906.1,stats12906.2,stats12907.1,stats12907.2,stats12908.1,stats12908.2,stats12909.1,stats12909.2,stats12910.1,stats12910.2,stats12911.1,stats12911.2,stats12912.1,stats12912.2,stats12913.1,stats12913.2,stats12914.1,stats12914.2,stats12915.1,stats12915.2,stats12916.1,stats12916.2,stats12917.1,stats12917.2,stats12918.1,stats12918.2,stats12919.1,stats12919.2,stats12920.1,stats12920.2,stats12921.1,stats12921.2,stats12922.1,stats12922.2,stats12923.1,stats12923.2,stats12924.1,stats12924.2,stats12925.1,stats12925.2,stats12926.1,stats12926.2,stats12927.1,stats12927.2,stats12928.1,stats12928.2,stats12929.1,stats12929.2,stats12930.1,stats12930.2,stats12931.1,stats12931.2,stats12932.1,stats12932.2,stats12933.1,stats12933.2,stats12934.1,stats12934.2,stats12935.1,stats12935.2,stats12936.1,stats12936.2,stats12937.1,stats12937.2,stats12938.1,stats12938.2,stats12939.1,stats12939.2,stats12940.1,stats12940.2,stats12941.1,stats12941.2,stats12942.1,stats12942.2,stats12943.1,stats12943.2,stats12944.1,stats12944.2,stats12945.1,stats12945.2,stats12946.1,stats12946.2,stats12947.1,stats12947.2,stats12948.1,stats12948.2,stats12949.1,stats12949.2,stats12950.1,stats12950.2,stats12951.1,stats12951.2,stats12952.1,stats12952.2,stats12953.1,stats12953.2,stats12954.1,stats12954.2,stats12955.1,stats12955.2,stats12956.1,stats12956.2,stats12957.1,stats12957.2,stats12958.1,stats12958.2,stats12959.1,stats12959.2]
  decide
end PairedPathRoundCheckedRows
