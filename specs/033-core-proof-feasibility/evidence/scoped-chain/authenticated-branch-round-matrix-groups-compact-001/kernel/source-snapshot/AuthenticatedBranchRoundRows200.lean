import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData201
import AuthenticatedBranchRoundInstructionMatrixData202
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12918 : actualRows12918=WordField.canonicalRows actualModulus 12918 (.bnot 12917) := by core033_kernel_decide
theorem stats12918 : actualRows12918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12918=6276 := by core033_kernel_decide
theorem rows12919 : actualRows12919=WordField.canonicalRows actualModulus 12919 (.bxor 12916 12918) := by core033_kernel_decide
theorem stats12919 : actualRows12919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12919=7428 := by core033_kernel_decide
theorem rows12920 : actualRows12920=WordField.canonicalRows actualModulus 12920 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12920 : actualRows12920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12920=2964 := by core033_kernel_decide
theorem rows12921 : actualRows12921=WordField.canonicalRows actualModulus 12921 (.bxor 693 12920) := by core033_kernel_decide
theorem stats12921 : actualRows12921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12921=7428 := by core033_kernel_decide
theorem rows12922 : actualRows12922=WordField.canonicalRows actualModulus 12922 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12922 : actualRows12922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12922=2820 := by core033_kernel_decide
theorem rows12923 : actualRows12923=WordField.canonicalRows actualModulus 12923 (.bnot 12922) := by core033_kernel_decide
theorem stats12923 : actualRows12923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12923=6276 := by core033_kernel_decide
theorem rows12924 : actualRows12924=WordField.canonicalRows actualModulus 12924 (.badd 12921 12923) := by core033_kernel_decide
theorem stats12924 : actualRows12924.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12924=5388 := by core033_kernel_decide
theorem rows12925 : actualRows12925=WordField.canonicalRows actualModulus 12925 (.bnot 12924) := by core033_kernel_decide
theorem stats12925 : actualRows12925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12925=6276 := by core033_kernel_decide
theorem rows12926 : actualRows12926=WordField.canonicalRows actualModulus 12926 (.band 12919 12925) := by core033_kernel_decide
theorem stats12926 : actualRows12926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12926=5124 := by core033_kernel_decide
theorem rows12927 : actualRows12927=WordField.canonicalRows actualModulus 12927 (.bxor 12914 12926) := by core033_kernel_decide
theorem stats12927 : actualRows12927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12927=7428 := by core033_kernel_decide
theorem rows12928 : actualRows12928=WordField.canonicalRows actualModulus 12928 (.shr 12927 31) := by core033_kernel_decide
theorem stats12928 : actualRows12928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12928=2892 := by core033_kernel_decide
theorem rows12929 : actualRows12929=WordField.canonicalRows actualModulus 12929 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12929 : actualRows12929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12929=2892 := by core033_kernel_decide
theorem rows12930 : actualRows12930=WordField.canonicalRows actualModulus 12930 (.bxor 12928 12929) := by core033_kernel_decide
theorem stats12930 : actualRows12930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12930=7428 := by core033_kernel_decide
theorem rows12931 : actualRows12931=WordField.canonicalRows actualModulus 12931 (.bnot 12930) := by core033_kernel_decide
theorem stats12931 : actualRows12931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12931=6276 := by core033_kernel_decide
theorem rows12932 : actualRows12932=WordField.canonicalRows actualModulus 12932 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12932 : actualRows12932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12932=2892 := by core033_kernel_decide
theorem rows12933 : actualRows12933=WordField.canonicalRows actualModulus 12933 (.badd 12931 12932) := by core033_kernel_decide
theorem stats12933 : actualRows12933.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12933=5388 := by core033_kernel_decide
theorem rows12934 : actualRows12934=WordField.canonicalRows actualModulus 12934 (.bnot 12933) := by core033_kernel_decide
theorem stats12934 : actualRows12934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12934=6276 := by core033_kernel_decide
theorem rows12935 : actualRows12935=WordField.canonicalRows actualModulus 12935 (.band 12934 1607) := by core033_kernel_decide
theorem stats12935 : actualRows12935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12935=5124 := by core033_kernel_decide
theorem rows12936 : actualRows12936=WordField.canonicalRows actualModulus 12936 (.bxor 12909 12935) := by core033_kernel_decide
theorem stats12936 : actualRows12936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12936=7428 := by core033_kernel_decide
theorem rows12937 : actualRows12937=WordField.canonicalRows actualModulus 12937 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12937 : actualRows12937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12937=2964 := by core033_kernel_decide
theorem rows12938 : actualRows12938=WordField.canonicalRows actualModulus 12938 (.bxor 693 12937) := by core033_kernel_decide
theorem stats12938 : actualRows12938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12938=7428 := by core033_kernel_decide
theorem rows12939 : actualRows12939=WordField.canonicalRows actualModulus 12939 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12939 : actualRows12939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12939=2820 := by core033_kernel_decide
theorem rows12940 : actualRows12940=WordField.canonicalRows actualModulus 12940 (.bnot 12939) := by core033_kernel_decide
theorem stats12940 : actualRows12940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12940=6276 := by core033_kernel_decide
theorem rows12941 : actualRows12941=WordField.canonicalRows actualModulus 12941 (.band 12938 12940) := by core033_kernel_decide
theorem stats12941 : actualRows12941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12941=5124 := by core033_kernel_decide
theorem rows12942 : actualRows12942=WordField.canonicalRows actualModulus 12942 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12942 : actualRows12942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12942=2964 := by core033_kernel_decide
theorem rows12943 : actualRows12943=WordField.canonicalRows actualModulus 12943 (.bxor 693 12942) := by core033_kernel_decide
theorem stats12943 : actualRows12943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12943=7428 := by core033_kernel_decide
theorem rows12944 : actualRows12944=WordField.canonicalRows actualModulus 12944 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12944 : actualRows12944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12944=2820 := by core033_kernel_decide
theorem rows12945 : actualRows12945=WordField.canonicalRows actualModulus 12945 (.bnot 12944) := by core033_kernel_decide
theorem stats12945 : actualRows12945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12945=6276 := by core033_kernel_decide
theorem rows12946 : actualRows12946=WordField.canonicalRows actualModulus 12946 (.bxor 12943 12945) := by core033_kernel_decide
theorem stats12946 : actualRows12946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12946=7428 := by core033_kernel_decide
theorem rows12947 : actualRows12947=WordField.canonicalRows actualModulus 12947 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12947 : actualRows12947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12947=2964 := by core033_kernel_decide
theorem rows12948 : actualRows12948=WordField.canonicalRows actualModulus 12948 (.bxor 693 12947) := by core033_kernel_decide
theorem stats12948 : actualRows12948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12948=7428 := by core033_kernel_decide
theorem rows12949 : actualRows12949=WordField.canonicalRows actualModulus 12949 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12949 : actualRows12949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12949=2820 := by core033_kernel_decide
theorem rows12950 : actualRows12950=WordField.canonicalRows actualModulus 12950 (.bnot 12949) := by core033_kernel_decide
theorem stats12950 : actualRows12950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12950=6276 := by core033_kernel_decide
theorem rows12951 : actualRows12951=WordField.canonicalRows actualModulus 12951 (.badd 12948 12950) := by core033_kernel_decide
theorem stats12951 : actualRows12951.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12951=5388 := by core033_kernel_decide
theorem rows12952 : actualRows12952=WordField.canonicalRows actualModulus 12952 (.bnot 12951) := by core033_kernel_decide
theorem stats12952 : actualRows12952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12952=6276 := by core033_kernel_decide
theorem rows12953 : actualRows12953=WordField.canonicalRows actualModulus 12953 (.band 12946 12952) := by core033_kernel_decide
theorem stats12953 : actualRows12953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12953=5124 := by core033_kernel_decide
theorem rows12954 : actualRows12954=WordField.canonicalRows actualModulus 12954 (.bxor 12941 12953) := by core033_kernel_decide
theorem stats12954 : actualRows12954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12954=7428 := by core033_kernel_decide
theorem rows12955 : actualRows12955=WordField.canonicalRows actualModulus 12955 (.shr 12954 31) := by core033_kernel_decide
theorem stats12955 : actualRows12955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12955=2892 := by core033_kernel_decide
theorem rows12956 : actualRows12956=WordField.canonicalRows actualModulus 12956 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12956 : actualRows12956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12956=2892 := by core033_kernel_decide
theorem rows12957 : actualRows12957=WordField.canonicalRows actualModulus 12957 (.bxor 12955 12956) := by core033_kernel_decide
theorem stats12957 : actualRows12957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12957=7428 := by core033_kernel_decide
theorem rows12958 : actualRows12958=WordField.canonicalRows actualModulus 12958 (.bnot 12957) := by core033_kernel_decide
theorem stats12958 : actualRows12958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12958=6276 := by core033_kernel_decide
theorem rows12959 : actualRows12959=WordField.canonicalRows actualModulus 12959 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12959 : actualRows12959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12959=2892 := by core033_kernel_decide
theorem rows12960 : actualRows12960=WordField.canonicalRows actualModulus 12960 (.badd 12958 12959) := by core033_kernel_decide
theorem stats12960 : actualRows12960.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12960=5388 := by core033_kernel_decide
theorem rows12961 : actualRows12961=WordField.canonicalRows actualModulus 12961 (.band 12960 10939) := by core033_kernel_decide
theorem stats12961 : actualRows12961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12961=5124 := by core033_kernel_decide
theorem rows12962 : actualRows12962=WordField.canonicalRows actualModulus 12962 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12962 : actualRows12962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12962=2964 := by core033_kernel_decide
theorem rows12963 : actualRows12963=WordField.canonicalRows actualModulus 12963 (.bxor 693 12962) := by core033_kernel_decide
theorem stats12963 : actualRows12963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12963=7428 := by core033_kernel_decide
theorem rows12964 : actualRows12964=WordField.canonicalRows actualModulus 12964 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12964 : actualRows12964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12964=2820 := by core033_kernel_decide
theorem rows12965 : actualRows12965=WordField.canonicalRows actualModulus 12965 (.bnot 12964) := by core033_kernel_decide
theorem stats12965 : actualRows12965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12965=6276 := by core033_kernel_decide
theorem rows12966 : actualRows12966=WordField.canonicalRows actualModulus 12966 (.band 12963 12965) := by core033_kernel_decide
theorem stats12966 : actualRows12966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12966=5124 := by core033_kernel_decide
theorem rows12967 : actualRows12967=WordField.canonicalRows actualModulus 12967 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12967 : actualRows12967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12967=2964 := by core033_kernel_decide
theorem rows12968 : actualRows12968=WordField.canonicalRows actualModulus 12968 (.bxor 693 12967) := by core033_kernel_decide
theorem stats12968 : actualRows12968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12968=7428 := by core033_kernel_decide
theorem rows12969 : actualRows12969=WordField.canonicalRows actualModulus 12969 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12969 : actualRows12969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12969=2820 := by core033_kernel_decide
theorem rows12970 : actualRows12970=WordField.canonicalRows actualModulus 12970 (.bnot 12969) := by core033_kernel_decide
theorem stats12970 : actualRows12970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12970=6276 := by core033_kernel_decide
theorem rows12971 : actualRows12971=WordField.canonicalRows actualModulus 12971 (.bxor 12968 12970) := by core033_kernel_decide
theorem stats12971 : actualRows12971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12971=7428 := by core033_kernel_decide
theorem rows12972 : actualRows12972=WordField.canonicalRows actualModulus 12972 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12972 : actualRows12972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12972=2964 := by core033_kernel_decide
theorem rows12973 : actualRows12973=WordField.canonicalRows actualModulus 12973 (.bxor 693 12972) := by core033_kernel_decide
theorem stats12973 : actualRows12973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12973=7428 := by core033_kernel_decide
theorem rows12974 : actualRows12974=WordField.canonicalRows actualModulus 12974 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12974 : actualRows12974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12974=2820 := by core033_kernel_decide
theorem rows12975 : actualRows12975=WordField.canonicalRows actualModulus 12975 (.bnot 12974) := by core033_kernel_decide
theorem stats12975 : actualRows12975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12975=6276 := by core033_kernel_decide
theorem rows12976 : actualRows12976=WordField.canonicalRows actualModulus 12976 (.badd 12973 12975) := by core033_kernel_decide
theorem stats12976 : actualRows12976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12976=5388 := by core033_kernel_decide
theorem rows12977 : actualRows12977=WordField.canonicalRows actualModulus 12977 (.bnot 12976) := by core033_kernel_decide
theorem stats12977 : actualRows12977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12977=6276 := by core033_kernel_decide
theorem rows12978 : actualRows12978=WordField.canonicalRows actualModulus 12978 (.band 12971 12977) := by core033_kernel_decide
theorem stats12978 : actualRows12978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12978=5124 := by core033_kernel_decide
theorem rows12979 : actualRows12979=WordField.canonicalRows actualModulus 12979 (.bxor 12966 12978) := by core033_kernel_decide
theorem stats12979 : actualRows12979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12979=7428 := by core033_kernel_decide
theorem rows12980 : actualRows12980=WordField.canonicalRows actualModulus 12980 (.shr 12979 31) := by core033_kernel_decide
theorem stats12980 : actualRows12980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12980=2892 := by core033_kernel_decide
theorem rows12981 : actualRows12981=WordField.canonicalRows actualModulus 12981 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12981 : actualRows12981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12981=2892 := by core033_kernel_decide
def partRows200 : List R1CS.Row := actualRows12918++actualRows12919++actualRows12920++actualRows12921++actualRows12922++actualRows12923++actualRows12924++actualRows12925++actualRows12926++actualRows12927++actualRows12928++actualRows12929++actualRows12930++actualRows12931++actualRows12932++actualRows12933++actualRows12934++actualRows12935++actualRows12936++actualRows12937++actualRows12938++actualRows12939++actualRows12940++actualRows12941++actualRows12942++actualRows12943++actualRows12944++actualRows12945++actualRows12946++actualRows12947++actualRows12948++actualRows12949++actualRows12950++actualRows12951++actualRows12952++actualRows12953++actualRows12954++actualRows12955++actualRows12956++actualRows12957++actualRows12958++actualRows12959++actualRows12960++actualRows12961++actualRows12962++actualRows12963++actualRows12964++actualRows12965++actualRows12966++actualRows12967++actualRows12968++actualRows12969++actualRows12970++actualRows12971++actualRows12972++actualRows12973++actualRows12974++actualRows12975++actualRows12976++actualRows12977++actualRows12978++actualRows12979++actualRows12980++actualRows12981
def partOps200 : List WordIR.Op := [.bnot 12917,.bxor 12916 12918,.literal (BitVec.ofNat 32 3),.bxor 693 12920,.literal (BitVec.ofNat 32 0),.bnot 12922,.badd 12921 12923,.bnot 12924,.band 12919 12925,.bxor 12914 12926,.shr 12927 31,.literal (BitVec.ofNat 32 1),.bxor 12928 12929,.bnot 12930,.literal (BitVec.ofNat 32 1),.badd 12931 12932,.bnot 12933,.band 12934 1607,.bxor 12909 12935,.literal (BitVec.ofNat 32 3),.bxor 693 12937,.literal (BitVec.ofNat 32 0),.bnot 12939,.band 12938 12940,.literal (BitVec.ofNat 32 3),.bxor 693 12942,.literal (BitVec.ofNat 32 0),.bnot 12944,.bxor 12943 12945,.literal (BitVec.ofNat 32 3),.bxor 693 12947,.literal (BitVec.ofNat 32 0),.bnot 12949,.badd 12948 12950,.bnot 12951,.band 12946 12952,.bxor 12941 12953,.shr 12954 31,.literal (BitVec.ofNat 32 1),.bxor 12955 12956,.bnot 12957,.literal (BitVec.ofNat 32 1),.badd 12958 12959,.band 12960 10939,.literal (BitVec.ofNat 32 3),.bxor 693 12962,.literal (BitVec.ofNat 32 0),.bnot 12964,.band 12963 12965,.literal (BitVec.ofNat 32 3),.bxor 693 12967,.literal (BitVec.ofNat 32 0),.bnot 12969,.bxor 12968 12970,.literal (BitVec.ofNat 32 3),.bxor 693 12972,.literal (BitVec.ofNat 32 0),.bnot 12974,.badd 12973 12975,.bnot 12976,.band 12971 12977,.bxor 12966 12978,.shr 12979 31,.literal (BitVec.ofNat 32 1)]
theorem partExact200 : partRows200=WordField.rows actualModulus 12918 partOps200 := by
  simp only [partRows200,partOps200,WordField.rows,rows12918,rows12919,rows12920,rows12921,rows12922,rows12923,rows12924,rows12925,rows12926,rows12927,rows12928,rows12929,rows12930,rows12931,rows12932,rows12933,rows12934,rows12935,rows12936,rows12937,rows12938,rows12939,rows12940,rows12941,rows12942,rows12943,rows12944,rows12945,rows12946,rows12947,rows12948,rows12949,rows12950,rows12951,rows12952,rows12953,rows12954,rows12955,rows12956,rows12957,rows12958,rows12959,rows12960,rows12961,rows12962,rows12963,rows12964,rows12965,rows12966,rows12967,rows12968,rows12969,rows12970,rows12971,rows12972,rows12973,rows12974,rows12975,rows12976,rows12977,rows12978,rows12979,rows12980,rows12981,List.append_assoc,List.append_nil]
theorem partLength200 : partOps200.length=64 := by decide
theorem partStats200 : partRows200.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows200=333144 := by
  simp only [partRows200,List.length_append,MatrixRowBlocks.rows_weight_append,stats12918.1,stats12918.2,stats12919.1,stats12919.2,stats12920.1,stats12920.2,stats12921.1,stats12921.2,stats12922.1,stats12922.2,stats12923.1,stats12923.2,stats12924.1,stats12924.2,stats12925.1,stats12925.2,stats12926.1,stats12926.2,stats12927.1,stats12927.2,stats12928.1,stats12928.2,stats12929.1,stats12929.2,stats12930.1,stats12930.2,stats12931.1,stats12931.2,stats12932.1,stats12932.2,stats12933.1,stats12933.2,stats12934.1,stats12934.2,stats12935.1,stats12935.2,stats12936.1,stats12936.2,stats12937.1,stats12937.2,stats12938.1,stats12938.2,stats12939.1,stats12939.2,stats12940.1,stats12940.2,stats12941.1,stats12941.2,stats12942.1,stats12942.2,stats12943.1,stats12943.2,stats12944.1,stats12944.2,stats12945.1,stats12945.2,stats12946.1,stats12946.2,stats12947.1,stats12947.2,stats12948.1,stats12948.2,stats12949.1,stats12949.2,stats12950.1,stats12950.2,stats12951.1,stats12951.2,stats12952.1,stats12952.2,stats12953.1,stats12953.2,stats12954.1,stats12954.2,stats12955.1,stats12955.2,stats12956.1,stats12956.2,stats12957.1,stats12957.2,stats12958.1,stats12958.2,stats12959.1,stats12959.2,stats12960.1,stats12960.2,stats12961.1,stats12961.2,stats12962.1,stats12962.2,stats12963.1,stats12963.2,stats12964.1,stats12964.2,stats12965.1,stats12965.2,stats12966.1,stats12966.2,stats12967.1,stats12967.2,stats12968.1,stats12968.2,stats12969.1,stats12969.2,stats12970.1,stats12970.2,stats12971.1,stats12971.2,stats12972.1,stats12972.2,stats12973.1,stats12973.2,stats12974.1,stats12974.2,stats12975.1,stats12975.2,stats12976.1,stats12976.2,stats12977.1,stats12977.2,stats12978.1,stats12978.2,stats12979.1,stats12979.2,stats12980.1,stats12980.2,stats12981.1,stats12981.2]
  decide
end AuthenticatedBranchRoundCheckedRows
