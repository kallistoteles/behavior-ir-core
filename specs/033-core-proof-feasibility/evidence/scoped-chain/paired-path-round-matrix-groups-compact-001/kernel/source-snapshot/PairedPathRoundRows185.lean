import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData186
import PairedPathRoundInstructionMatrixData187
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11936 : actualRows11936=WordField.canonicalRows actualModulus 11936 (.bnot 11935) := by core033_kernel_decide
theorem stats11936 : actualRows11936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11936=6276 := by core033_kernel_decide
theorem rows11937 : actualRows11937=WordField.canonicalRows actualModulus 11937 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11937 : actualRows11937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11937=2892 := by core033_kernel_decide
theorem rows11938 : actualRows11938=WordField.canonicalRows actualModulus 11938 (.badd 11936 11937) := by core033_kernel_decide
theorem stats11938 : actualRows11938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11938=5388 := by core033_kernel_decide
theorem rows11939 : actualRows11939=WordField.canonicalRows actualModulus 11939 (.bnot 11938) := by core033_kernel_decide
theorem stats11939 : actualRows11939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11939=6276 := by core033_kernel_decide
theorem rows11940 : actualRows11940=WordField.canonicalRows actualModulus 11940 (.band 11939 858) := by core033_kernel_decide
theorem stats11940 : actualRows11940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11940=5124 := by core033_kernel_decide
theorem rows11941 : actualRows11941=WordField.canonicalRows actualModulus 11941 (.bxor 11914 11940) := by core033_kernel_decide
theorem stats11941 : actualRows11941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11941=7428 := by core033_kernel_decide
theorem rows11942 : actualRows11942=WordField.canonicalRows actualModulus 11942 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11942 : actualRows11942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11942=2964 := by core033_kernel_decide
theorem rows11943 : actualRows11943=WordField.canonicalRows actualModulus 11943 (.bxor 442 11942) := by core033_kernel_decide
theorem stats11943 : actualRows11943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11943=7428 := by core033_kernel_decide
theorem rows11944 : actualRows11944=WordField.canonicalRows actualModulus 11944 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11944 : actualRows11944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11944=2820 := by core033_kernel_decide
theorem rows11945 : actualRows11945=WordField.canonicalRows actualModulus 11945 (.bnot 11944) := by core033_kernel_decide
theorem stats11945 : actualRows11945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11945=6276 := by core033_kernel_decide
theorem rows11946 : actualRows11946=WordField.canonicalRows actualModulus 11946 (.band 11943 11945) := by core033_kernel_decide
theorem stats11946 : actualRows11946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11946=5124 := by core033_kernel_decide
theorem rows11947 : actualRows11947=WordField.canonicalRows actualModulus 11947 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11947 : actualRows11947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11947=2964 := by core033_kernel_decide
theorem rows11948 : actualRows11948=WordField.canonicalRows actualModulus 11948 (.bxor 442 11947) := by core033_kernel_decide
theorem stats11948 : actualRows11948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11948=7428 := by core033_kernel_decide
theorem rows11949 : actualRows11949=WordField.canonicalRows actualModulus 11949 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11949 : actualRows11949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11949=2820 := by core033_kernel_decide
theorem rows11950 : actualRows11950=WordField.canonicalRows actualModulus 11950 (.bnot 11949) := by core033_kernel_decide
theorem stats11950 : actualRows11950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11950=6276 := by core033_kernel_decide
theorem rows11951 : actualRows11951=WordField.canonicalRows actualModulus 11951 (.bxor 11948 11950) := by core033_kernel_decide
theorem stats11951 : actualRows11951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11951=7428 := by core033_kernel_decide
theorem rows11952 : actualRows11952=WordField.canonicalRows actualModulus 11952 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11952 : actualRows11952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11952=2964 := by core033_kernel_decide
theorem rows11953 : actualRows11953=WordField.canonicalRows actualModulus 11953 (.bxor 442 11952) := by core033_kernel_decide
theorem stats11953 : actualRows11953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11953=7428 := by core033_kernel_decide
theorem rows11954 : actualRows11954=WordField.canonicalRows actualModulus 11954 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11954 : actualRows11954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11954=2820 := by core033_kernel_decide
theorem rows11955 : actualRows11955=WordField.canonicalRows actualModulus 11955 (.bnot 11954) := by core033_kernel_decide
theorem stats11955 : actualRows11955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11955=6276 := by core033_kernel_decide
theorem rows11956 : actualRows11956=WordField.canonicalRows actualModulus 11956 (.badd 11953 11955) := by core033_kernel_decide
theorem stats11956 : actualRows11956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11956=5388 := by core033_kernel_decide
theorem rows11957 : actualRows11957=WordField.canonicalRows actualModulus 11957 (.bnot 11956) := by core033_kernel_decide
theorem stats11957 : actualRows11957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11957=6276 := by core033_kernel_decide
theorem rows11958 : actualRows11958=WordField.canonicalRows actualModulus 11958 (.band 11951 11957) := by core033_kernel_decide
theorem stats11958 : actualRows11958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11958=5124 := by core033_kernel_decide
theorem rows11959 : actualRows11959=WordField.canonicalRows actualModulus 11959 (.bxor 11946 11958) := by core033_kernel_decide
theorem stats11959 : actualRows11959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11959=7428 := by core033_kernel_decide
theorem rows11960 : actualRows11960=WordField.canonicalRows actualModulus 11960 (.shr 11959 31) := by core033_kernel_decide
theorem stats11960 : actualRows11960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11960=2892 := by core033_kernel_decide
theorem rows11961 : actualRows11961=WordField.canonicalRows actualModulus 11961 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11961 : actualRows11961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11961=2892 := by core033_kernel_decide
theorem rows11962 : actualRows11962=WordField.canonicalRows actualModulus 11962 (.bxor 11960 11961) := by core033_kernel_decide
theorem stats11962 : actualRows11962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11962=7428 := by core033_kernel_decide
theorem rows11963 : actualRows11963=WordField.canonicalRows actualModulus 11963 (.bnot 11962) := by core033_kernel_decide
theorem stats11963 : actualRows11963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11963=6276 := by core033_kernel_decide
theorem rows11964 : actualRows11964=WordField.canonicalRows actualModulus 11964 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11964 : actualRows11964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11964=2892 := by core033_kernel_decide
theorem rows11965 : actualRows11965=WordField.canonicalRows actualModulus 11965 (.badd 11963 11964) := by core033_kernel_decide
theorem stats11965 : actualRows11965.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11965=5388 := by core033_kernel_decide
theorem rows11966 : actualRows11966=WordField.canonicalRows actualModulus 11966 (.band 11965 10190) := by core033_kernel_decide
theorem stats11966 : actualRows11966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11966=5124 := by core033_kernel_decide
theorem rows11967 : actualRows11967=WordField.canonicalRows actualModulus 11967 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11967 : actualRows11967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11967=2964 := by core033_kernel_decide
theorem rows11968 : actualRows11968=WordField.canonicalRows actualModulus 11968 (.bxor 442 11967) := by core033_kernel_decide
theorem stats11968 : actualRows11968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11968=7428 := by core033_kernel_decide
theorem rows11969 : actualRows11969=WordField.canonicalRows actualModulus 11969 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11969 : actualRows11969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11969=2820 := by core033_kernel_decide
theorem rows11970 : actualRows11970=WordField.canonicalRows actualModulus 11970 (.bnot 11969) := by core033_kernel_decide
theorem stats11970 : actualRows11970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11970=6276 := by core033_kernel_decide
theorem rows11971 : actualRows11971=WordField.canonicalRows actualModulus 11971 (.band 11968 11970) := by core033_kernel_decide
theorem stats11971 : actualRows11971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11971=5124 := by core033_kernel_decide
theorem rows11972 : actualRows11972=WordField.canonicalRows actualModulus 11972 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11972 : actualRows11972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11972=2964 := by core033_kernel_decide
theorem rows11973 : actualRows11973=WordField.canonicalRows actualModulus 11973 (.bxor 442 11972) := by core033_kernel_decide
theorem stats11973 : actualRows11973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11973=7428 := by core033_kernel_decide
theorem rows11974 : actualRows11974=WordField.canonicalRows actualModulus 11974 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11974 : actualRows11974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11974=2820 := by core033_kernel_decide
theorem rows11975 : actualRows11975=WordField.canonicalRows actualModulus 11975 (.bnot 11974) := by core033_kernel_decide
theorem stats11975 : actualRows11975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11975=6276 := by core033_kernel_decide
theorem rows11976 : actualRows11976=WordField.canonicalRows actualModulus 11976 (.bxor 11973 11975) := by core033_kernel_decide
theorem stats11976 : actualRows11976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11976=7428 := by core033_kernel_decide
theorem rows11977 : actualRows11977=WordField.canonicalRows actualModulus 11977 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11977 : actualRows11977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11977=2964 := by core033_kernel_decide
theorem rows11978 : actualRows11978=WordField.canonicalRows actualModulus 11978 (.bxor 442 11977) := by core033_kernel_decide
theorem stats11978 : actualRows11978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11978=7428 := by core033_kernel_decide
theorem rows11979 : actualRows11979=WordField.canonicalRows actualModulus 11979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11979 : actualRows11979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11979=2820 := by core033_kernel_decide
theorem rows11980 : actualRows11980=WordField.canonicalRows actualModulus 11980 (.bnot 11979) := by core033_kernel_decide
theorem stats11980 : actualRows11980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11980=6276 := by core033_kernel_decide
theorem rows11981 : actualRows11981=WordField.canonicalRows actualModulus 11981 (.badd 11978 11980) := by core033_kernel_decide
theorem stats11981 : actualRows11981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11981=5388 := by core033_kernel_decide
theorem rows11982 : actualRows11982=WordField.canonicalRows actualModulus 11982 (.bnot 11981) := by core033_kernel_decide
theorem stats11982 : actualRows11982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11982=6276 := by core033_kernel_decide
theorem rows11983 : actualRows11983=WordField.canonicalRows actualModulus 11983 (.band 11976 11982) := by core033_kernel_decide
theorem stats11983 : actualRows11983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11983=5124 := by core033_kernel_decide
theorem rows11984 : actualRows11984=WordField.canonicalRows actualModulus 11984 (.bxor 11971 11983) := by core033_kernel_decide
theorem stats11984 : actualRows11984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11984=7428 := by core033_kernel_decide
theorem rows11985 : actualRows11985=WordField.canonicalRows actualModulus 11985 (.shr 11984 31) := by core033_kernel_decide
theorem stats11985 : actualRows11985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11985=2892 := by core033_kernel_decide
theorem rows11986 : actualRows11986=WordField.canonicalRows actualModulus 11986 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11986 : actualRows11986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11986=2892 := by core033_kernel_decide
theorem rows11987 : actualRows11987=WordField.canonicalRows actualModulus 11987 (.bxor 11985 11986) := by core033_kernel_decide
theorem stats11987 : actualRows11987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11987=7428 := by core033_kernel_decide
theorem rows11988 : actualRows11988=WordField.canonicalRows actualModulus 11988 (.bnot 11987) := by core033_kernel_decide
theorem stats11988 : actualRows11988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11988=6276 := by core033_kernel_decide
theorem rows11989 : actualRows11989=WordField.canonicalRows actualModulus 11989 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11989 : actualRows11989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11989=2892 := by core033_kernel_decide
theorem rows11990 : actualRows11990=WordField.canonicalRows actualModulus 11990 (.badd 11988 11989) := by core033_kernel_decide
theorem stats11990 : actualRows11990.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11990=5388 := by core033_kernel_decide
theorem rows11991 : actualRows11991=WordField.canonicalRows actualModulus 11991 (.bnot 11990) := by core033_kernel_decide
theorem stats11991 : actualRows11991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11991=6276 := by core033_kernel_decide
theorem rows11992 : actualRows11992=WordField.canonicalRows actualModulus 11992 (.band 11991 869) := by core033_kernel_decide
theorem stats11992 : actualRows11992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11992=5124 := by core033_kernel_decide
theorem rows11993 : actualRows11993=WordField.canonicalRows actualModulus 11993 (.bxor 11966 11992) := by core033_kernel_decide
theorem stats11993 : actualRows11993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11993=7428 := by core033_kernel_decide
theorem rows11994 : actualRows11994=WordField.canonicalRows actualModulus 11994 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11994 : actualRows11994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11994=2964 := by core033_kernel_decide
theorem rows11995 : actualRows11995=WordField.canonicalRows actualModulus 11995 (.bxor 442 11994) := by core033_kernel_decide
theorem stats11995 : actualRows11995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11995=7428 := by core033_kernel_decide
theorem rows11996 : actualRows11996=WordField.canonicalRows actualModulus 11996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11996 : actualRows11996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11996=2820 := by core033_kernel_decide
theorem rows11997 : actualRows11997=WordField.canonicalRows actualModulus 11997 (.bnot 11996) := by core033_kernel_decide
theorem stats11997 : actualRows11997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11997=6276 := by core033_kernel_decide
theorem rows11998 : actualRows11998=WordField.canonicalRows actualModulus 11998 (.band 11995 11997) := by core033_kernel_decide
theorem stats11998 : actualRows11998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11998=5124 := by core033_kernel_decide
theorem rows11999 : actualRows11999=WordField.canonicalRows actualModulus 11999 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11999 : actualRows11999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11999=2964 := by core033_kernel_decide
def partRows185 : List R1CS.Row := actualRows11936++actualRows11937++actualRows11938++actualRows11939++actualRows11940++actualRows11941++actualRows11942++actualRows11943++actualRows11944++actualRows11945++actualRows11946++actualRows11947++actualRows11948++actualRows11949++actualRows11950++actualRows11951++actualRows11952++actualRows11953++actualRows11954++actualRows11955++actualRows11956++actualRows11957++actualRows11958++actualRows11959++actualRows11960++actualRows11961++actualRows11962++actualRows11963++actualRows11964++actualRows11965++actualRows11966++actualRows11967++actualRows11968++actualRows11969++actualRows11970++actualRows11971++actualRows11972++actualRows11973++actualRows11974++actualRows11975++actualRows11976++actualRows11977++actualRows11978++actualRows11979++actualRows11980++actualRows11981++actualRows11982++actualRows11983++actualRows11984++actualRows11985++actualRows11986++actualRows11987++actualRows11988++actualRows11989++actualRows11990++actualRows11991++actualRows11992++actualRows11993++actualRows11994++actualRows11995++actualRows11996++actualRows11997++actualRows11998++actualRows11999
def partOps185 : List WordIR.Op := [.bnot 11935,.literal (BitVec.ofNat 32 1),.badd 11936 11937,.bnot 11938,.band 11939 858,.bxor 11914 11940,.literal (BitVec.ofNat 32 3),.bxor 442 11942,.literal (BitVec.ofNat 32 0),.bnot 11944,.band 11943 11945,.literal (BitVec.ofNat 32 3),.bxor 442 11947,.literal (BitVec.ofNat 32 0),.bnot 11949,.bxor 11948 11950,.literal (BitVec.ofNat 32 3),.bxor 442 11952,.literal (BitVec.ofNat 32 0),.bnot 11954,.badd 11953 11955,.bnot 11956,.band 11951 11957,.bxor 11946 11958,.shr 11959 31,.literal (BitVec.ofNat 32 1),.bxor 11960 11961,.bnot 11962,.literal (BitVec.ofNat 32 1),.badd 11963 11964,.band 11965 10190,.literal (BitVec.ofNat 32 3),.bxor 442 11967,.literal (BitVec.ofNat 32 0),.bnot 11969,.band 11968 11970,.literal (BitVec.ofNat 32 3),.bxor 442 11972,.literal (BitVec.ofNat 32 0),.bnot 11974,.bxor 11973 11975,.literal (BitVec.ofNat 32 3),.bxor 442 11977,.literal (BitVec.ofNat 32 0),.bnot 11979,.badd 11978 11980,.bnot 11981,.band 11976 11982,.bxor 11971 11983,.shr 11984 31,.literal (BitVec.ofNat 32 1),.bxor 11985 11986,.bnot 11987,.literal (BitVec.ofNat 32 1),.badd 11988 11989,.bnot 11990,.band 11991 869,.bxor 11966 11992,.literal (BitVec.ofNat 32 3),.bxor 442 11994,.literal (BitVec.ofNat 32 0),.bnot 11996,.band 11995 11997,.literal (BitVec.ofNat 32 3)]
theorem partExact185 : partRows185=WordField.rows actualModulus 11936 partOps185 := by
  simp only [partRows185,partOps185,WordField.rows,rows11936,rows11937,rows11938,rows11939,rows11940,rows11941,rows11942,rows11943,rows11944,rows11945,rows11946,rows11947,rows11948,rows11949,rows11950,rows11951,rows11952,rows11953,rows11954,rows11955,rows11956,rows11957,rows11958,rows11959,rows11960,rows11961,rows11962,rows11963,rows11964,rows11965,rows11966,rows11967,rows11968,rows11969,rows11970,rows11971,rows11972,rows11973,rows11974,rows11975,rows11976,rows11977,rows11978,rows11979,rows11980,rows11981,rows11982,rows11983,rows11984,rows11985,rows11986,rows11987,rows11988,rows11989,rows11990,rows11991,rows11992,rows11993,rows11994,rows11995,rows11996,rows11997,rows11998,rows11999,List.append_assoc,List.append_nil]
theorem partLength185 : partOps185.length=64 := by decide
theorem partStats185 : partRows185.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows185=330912 := by
  simp only [partRows185,List.length_append,MatrixRowBlocks.rows_weight_append,stats11936.1,stats11936.2,stats11937.1,stats11937.2,stats11938.1,stats11938.2,stats11939.1,stats11939.2,stats11940.1,stats11940.2,stats11941.1,stats11941.2,stats11942.1,stats11942.2,stats11943.1,stats11943.2,stats11944.1,stats11944.2,stats11945.1,stats11945.2,stats11946.1,stats11946.2,stats11947.1,stats11947.2,stats11948.1,stats11948.2,stats11949.1,stats11949.2,stats11950.1,stats11950.2,stats11951.1,stats11951.2,stats11952.1,stats11952.2,stats11953.1,stats11953.2,stats11954.1,stats11954.2,stats11955.1,stats11955.2,stats11956.1,stats11956.2,stats11957.1,stats11957.2,stats11958.1,stats11958.2,stats11959.1,stats11959.2,stats11960.1,stats11960.2,stats11961.1,stats11961.2,stats11962.1,stats11962.2,stats11963.1,stats11963.2,stats11964.1,stats11964.2,stats11965.1,stats11965.2,stats11966.1,stats11966.2,stats11967.1,stats11967.2,stats11968.1,stats11968.2,stats11969.1,stats11969.2,stats11970.1,stats11970.2,stats11971.1,stats11971.2,stats11972.1,stats11972.2,stats11973.1,stats11973.2,stats11974.1,stats11974.2,stats11975.1,stats11975.2,stats11976.1,stats11976.2,stats11977.1,stats11977.2,stats11978.1,stats11978.2,stats11979.1,stats11979.2,stats11980.1,stats11980.2,stats11981.1,stats11981.2,stats11982.1,stats11982.2,stats11983.1,stats11983.2,stats11984.1,stats11984.2,stats11985.1,stats11985.2,stats11986.1,stats11986.2,stats11987.1,stats11987.2,stats11988.1,stats11988.2,stats11989.1,stats11989.2,stats11990.1,stats11990.2,stats11991.1,stats11991.2,stats11992.1,stats11992.2,stats11993.1,stats11993.2,stats11994.1,stats11994.2,stats11995.1,stats11995.2,stats11996.1,stats11996.2,stats11997.1,stats11997.2,stats11998.1,stats11998.2,stats11999.1,stats11999.2]
  decide
end PairedPathRoundCheckedRows
