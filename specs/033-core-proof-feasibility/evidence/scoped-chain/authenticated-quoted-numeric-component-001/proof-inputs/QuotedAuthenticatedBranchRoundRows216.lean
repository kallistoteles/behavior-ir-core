import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData217
import AuthenticatedBranchRoundInstructionMatrixData218
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13942 : actualRows13942=WordField.canonicalRows actualModulus 13942 (.bnot 419) := by core033_kernel_decide
theorem stats13942 : actualRows13942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13942=6276 := by core033_kernel_decide
theorem rows13943 : actualRows13943=WordField.canonicalRows actualModulus 13943 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13943 : actualRows13943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13943=2892 := by core033_kernel_decide
theorem rows13944 : actualRows13944=WordField.canonicalRows actualModulus 13944 (.badd 13942 13943) := by core033_kernel_decide
theorem stats13944 : actualRows13944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13944=5388 := by core033_kernel_decide
theorem rows13945 : actualRows13945=WordField.canonicalRows actualModulus 13945 (.band 13944 12884) := by core033_kernel_decide
theorem stats13945 : actualRows13945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13945=5124 := by core033_kernel_decide
theorem rows13946 : actualRows13946=WordField.canonicalRows actualModulus 13946 (.bnot 419) := by core033_kernel_decide
theorem stats13946 : actualRows13946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13946=6276 := by core033_kernel_decide
theorem rows13947 : actualRows13947=WordField.canonicalRows actualModulus 13947 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13947 : actualRows13947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13947=2892 := by core033_kernel_decide
theorem rows13948 : actualRows13948=WordField.canonicalRows actualModulus 13948 (.badd 13946 13947) := by core033_kernel_decide
theorem stats13948 : actualRows13948.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13948=5388 := by core033_kernel_decide
theorem rows13949 : actualRows13949=WordField.canonicalRows actualModulus 13949 (.bnot 13948) := by core033_kernel_decide
theorem stats13949 : actualRows13949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13949=6276 := by core033_kernel_decide
theorem rows13950 : actualRows13950=WordField.canonicalRows actualModulus 13950 (.band 13949 63) := by core033_kernel_decide
theorem stats13950 : actualRows13950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13950=5124 := by core033_kernel_decide
theorem rows13951 : actualRows13951=WordField.canonicalRows actualModulus 13951 (.bxor 13945 13950) := by core033_kernel_decide
theorem stats13951 : actualRows13951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13951=7428 := by core033_kernel_decide
theorem rows13952 : actualRows13952=WordField.canonicalRows actualModulus 13952 (.bnot 419) := by core033_kernel_decide
theorem stats13952 : actualRows13952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13952=6276 := by core033_kernel_decide
theorem rows13953 : actualRows13953=WordField.canonicalRows actualModulus 13953 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13953 : actualRows13953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13953=2892 := by core033_kernel_decide
theorem rows13954 : actualRows13954=WordField.canonicalRows actualModulus 13954 (.badd 13952 13953) := by core033_kernel_decide
theorem stats13954 : actualRows13954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13954=5388 := by core033_kernel_decide
theorem rows13955 : actualRows13955=WordField.canonicalRows actualModulus 13955 (.band 13954 12936) := by core033_kernel_decide
theorem stats13955 : actualRows13955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13955=5124 := by core033_kernel_decide
theorem rows13956 : actualRows13956=WordField.canonicalRows actualModulus 13956 (.bnot 419) := by core033_kernel_decide
theorem stats13956 : actualRows13956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13956=6276 := by core033_kernel_decide
theorem rows13957 : actualRows13957=WordField.canonicalRows actualModulus 13957 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13957 : actualRows13957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13957=2892 := by core033_kernel_decide
theorem rows13958 : actualRows13958=WordField.canonicalRows actualModulus 13958 (.badd 13956 13957) := by core033_kernel_decide
theorem stats13958 : actualRows13958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13958=5388 := by core033_kernel_decide
theorem rows13959 : actualRows13959=WordField.canonicalRows actualModulus 13959 (.bnot 13958) := by core033_kernel_decide
theorem stats13959 : actualRows13959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13959=6276 := by core033_kernel_decide
theorem rows13960 : actualRows13960=WordField.canonicalRows actualModulus 13960 (.band 13959 64) := by core033_kernel_decide
theorem stats13960 : actualRows13960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13960=5124 := by core033_kernel_decide
theorem rows13961 : actualRows13961=WordField.canonicalRows actualModulus 13961 (.bxor 13955 13960) := by core033_kernel_decide
theorem stats13961 : actualRows13961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13961=7428 := by core033_kernel_decide
theorem rows13962 : actualRows13962=WordField.canonicalRows actualModulus 13962 (.bnot 419) := by core033_kernel_decide
theorem stats13962 : actualRows13962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13962=6276 := by core033_kernel_decide
theorem rows13963 : actualRows13963=WordField.canonicalRows actualModulus 13963 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13963 : actualRows13963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13963=2892 := by core033_kernel_decide
theorem rows13964 : actualRows13964=WordField.canonicalRows actualModulus 13964 (.badd 13962 13963) := by core033_kernel_decide
theorem stats13964 : actualRows13964.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13964=5388 := by core033_kernel_decide
theorem rows13965 : actualRows13965=WordField.canonicalRows actualModulus 13965 (.band 13964 13092) := by core033_kernel_decide
theorem stats13965 : actualRows13965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13965=5124 := by core033_kernel_decide
theorem rows13966 : actualRows13966=WordField.canonicalRows actualModulus 13966 (.bnot 419) := by core033_kernel_decide
theorem stats13966 : actualRows13966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13966=6276 := by core033_kernel_decide
theorem rows13967 : actualRows13967=WordField.canonicalRows actualModulus 13967 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13967 : actualRows13967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13967=2892 := by core033_kernel_decide
theorem rows13968 : actualRows13968=WordField.canonicalRows actualModulus 13968 (.badd 13966 13967) := by core033_kernel_decide
theorem stats13968 : actualRows13968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13968=5388 := by core033_kernel_decide
theorem rows13969 : actualRows13969=WordField.canonicalRows actualModulus 13969 (.bnot 13968) := by core033_kernel_decide
theorem stats13969 : actualRows13969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13969=6276 := by core033_kernel_decide
theorem rows13970 : actualRows13970=WordField.canonicalRows actualModulus 13970 (.band 13969 65) := by core033_kernel_decide
theorem stats13970 : actualRows13970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13970=5124 := by core033_kernel_decide
theorem rows13971 : actualRows13971=WordField.canonicalRows actualModulus 13971 (.bxor 13965 13970) := by core033_kernel_decide
theorem stats13971 : actualRows13971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13971=7428 := by core033_kernel_decide
theorem rows13972 : actualRows13972=WordField.canonicalRows actualModulus 13972 (.bnot 419) := by core033_kernel_decide
theorem stats13972 : actualRows13972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13972=6276 := by core033_kernel_decide
theorem rows13973 : actualRows13973=WordField.canonicalRows actualModulus 13973 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13973 : actualRows13973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13973=2892 := by core033_kernel_decide
theorem rows13974 : actualRows13974=WordField.canonicalRows actualModulus 13974 (.badd 13972 13973) := by core033_kernel_decide
theorem stats13974 : actualRows13974.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13974=5388 := by core033_kernel_decide
theorem rows13975 : actualRows13975=WordField.canonicalRows actualModulus 13975 (.band 13974 13196) := by core033_kernel_decide
theorem stats13975 : actualRows13975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13975=5124 := by core033_kernel_decide
theorem rows13976 : actualRows13976=WordField.canonicalRows actualModulus 13976 (.bnot 419) := by core033_kernel_decide
theorem stats13976 : actualRows13976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13976=6276 := by core033_kernel_decide
theorem rows13977 : actualRows13977=WordField.canonicalRows actualModulus 13977 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13977 : actualRows13977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13977=2892 := by core033_kernel_decide
theorem rows13978 : actualRows13978=WordField.canonicalRows actualModulus 13978 (.badd 13976 13977) := by core033_kernel_decide
theorem stats13978 : actualRows13978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13978=5388 := by core033_kernel_decide
theorem rows13979 : actualRows13979=WordField.canonicalRows actualModulus 13979 (.bnot 13978) := by core033_kernel_decide
theorem stats13979 : actualRows13979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13979=6276 := by core033_kernel_decide
theorem rows13980 : actualRows13980=WordField.canonicalRows actualModulus 13980 (.band 13979 66) := by core033_kernel_decide
theorem stats13980 : actualRows13980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13980=5124 := by core033_kernel_decide
theorem rows13981 : actualRows13981=WordField.canonicalRows actualModulus 13981 (.bxor 13975 13980) := by core033_kernel_decide
theorem stats13981 : actualRows13981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13981=7428 := by core033_kernel_decide
theorem rows13982 : actualRows13982=WordField.canonicalRows actualModulus 13982 (.bnot 440) := by core033_kernel_decide
theorem stats13982 : actualRows13982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13982=6276 := by core033_kernel_decide
theorem rows13983 : actualRows13983=WordField.canonicalRows actualModulus 13983 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13983 : actualRows13983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13983=2892 := by core033_kernel_decide
theorem rows13984 : actualRows13984=WordField.canonicalRows actualModulus 13984 (.badd 13982 13983) := by core033_kernel_decide
theorem stats13984 : actualRows13984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13984=5388 := by core033_kernel_decide
theorem rows13985 : actualRows13985=WordField.canonicalRows actualModulus 13985 (.band 13984 12052) := by core033_kernel_decide
theorem stats13985 : actualRows13985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13985=5124 := by core033_kernel_decide
theorem rows13986 : actualRows13986=WordField.canonicalRows actualModulus 13986 (.bnot 440) := by core033_kernel_decide
theorem stats13986 : actualRows13986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13986=6276 := by core033_kernel_decide
theorem rows13987 : actualRows13987=WordField.canonicalRows actualModulus 13987 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13987 : actualRows13987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13987=2892 := by core033_kernel_decide
theorem rows13988 : actualRows13988=WordField.canonicalRows actualModulus 13988 (.badd 13986 13987) := by core033_kernel_decide
theorem stats13988 : actualRows13988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13988=5388 := by core033_kernel_decide
theorem rows13989 : actualRows13989=WordField.canonicalRows actualModulus 13989 (.bnot 13988) := by core033_kernel_decide
theorem stats13989 : actualRows13989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13989=6276 := by core033_kernel_decide
theorem rows13990 : actualRows13990=WordField.canonicalRows actualModulus 13990 (.band 13989 67) := by core033_kernel_decide
theorem stats13990 : actualRows13990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13990=5124 := by core033_kernel_decide
theorem rows13991 : actualRows13991=WordField.canonicalRows actualModulus 13991 (.bxor 13985 13990) := by core033_kernel_decide
theorem stats13991 : actualRows13991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13991=7428 := by core033_kernel_decide
theorem rows13992 : actualRows13992=WordField.canonicalRows actualModulus 13992 (.bnot 440) := by core033_kernel_decide
theorem stats13992 : actualRows13992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13992=6276 := by core033_kernel_decide
theorem rows13993 : actualRows13993=WordField.canonicalRows actualModulus 13993 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13993 : actualRows13993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13993=2892 := by core033_kernel_decide
theorem rows13994 : actualRows13994=WordField.canonicalRows actualModulus 13994 (.badd 13992 13993) := by core033_kernel_decide
theorem stats13994 : actualRows13994.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13994=5388 := by core033_kernel_decide
theorem rows13995 : actualRows13995=WordField.canonicalRows actualModulus 13995 (.band 13994 12104) := by core033_kernel_decide
theorem stats13995 : actualRows13995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13995=5124 := by core033_kernel_decide
theorem rows13996 : actualRows13996=WordField.canonicalRows actualModulus 13996 (.bnot 440) := by core033_kernel_decide
theorem stats13996 : actualRows13996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13996=6276 := by core033_kernel_decide
theorem rows13997 : actualRows13997=WordField.canonicalRows actualModulus 13997 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13997 : actualRows13997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13997=2892 := by core033_kernel_decide
theorem rows13998 : actualRows13998=WordField.canonicalRows actualModulus 13998 (.badd 13996 13997) := by core033_kernel_decide
theorem stats13998 : actualRows13998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13998=5388 := by core033_kernel_decide
theorem rows13999 : actualRows13999=WordField.canonicalRows actualModulus 13999 (.bnot 13998) := by core033_kernel_decide
theorem stats13999 : actualRows13999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13999=6276 := by core033_kernel_decide
theorem rows14000 : actualRows14000=WordField.canonicalRows actualModulus 14000 (.band 13999 68) := by core033_kernel_decide
theorem stats14000 : actualRows14000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14000=5124 := by core033_kernel_decide
theorem rows14001 : actualRows14001=WordField.canonicalRows actualModulus 14001 (.bxor 13995 14000) := by core033_kernel_decide
theorem stats14001 : actualRows14001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14001=7428 := by core033_kernel_decide
theorem rows14002 : actualRows14002=WordField.canonicalRows actualModulus 14002 (.bnot 440) := by core033_kernel_decide
theorem stats14002 : actualRows14002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14002=6276 := by core033_kernel_decide
theorem rows14003 : actualRows14003=WordField.canonicalRows actualModulus 14003 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14003 : actualRows14003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14003=2892 := by core033_kernel_decide
theorem rows14004 : actualRows14004=WordField.canonicalRows actualModulus 14004 (.badd 14002 14003) := by core033_kernel_decide
theorem stats14004 : actualRows14004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows14004=5388 := by core033_kernel_decide
theorem rows14005 : actualRows14005=WordField.canonicalRows actualModulus 14005 (.band 14004 12156) := by core033_kernel_decide
theorem stats14005 : actualRows14005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14005=5124 := by core033_kernel_decide
def partRows216 : List R1CS.Row := actualRows13942++actualRows13943++actualRows13944++actualRows13945++actualRows13946++actualRows13947++actualRows13948++actualRows13949++actualRows13950++actualRows13951++actualRows13952++actualRows13953++actualRows13954++actualRows13955++actualRows13956++actualRows13957++actualRows13958++actualRows13959++actualRows13960++actualRows13961++actualRows13962++actualRows13963++actualRows13964++actualRows13965++actualRows13966++actualRows13967++actualRows13968++actualRows13969++actualRows13970++actualRows13971++actualRows13972++actualRows13973++actualRows13974++actualRows13975++actualRows13976++actualRows13977++actualRows13978++actualRows13979++actualRows13980++actualRows13981++actualRows13982++actualRows13983++actualRows13984++actualRows13985++actualRows13986++actualRows13987++actualRows13988++actualRows13989++actualRows13990++actualRows13991++actualRows13992++actualRows13993++actualRows13994++actualRows13995++actualRows13996++actualRows13997++actualRows13998++actualRows13999++actualRows14000++actualRows14001++actualRows14002++actualRows14003++actualRows14004++actualRows14005
def partOps216 : List WordIR.Op := [.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13942 13943,.band 13944 12884,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13946 13947,.bnot 13948,.band 13949 63,.bxor 13945 13950,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13952 13953,.band 13954 12936,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13956 13957,.bnot 13958,.band 13959 64,.bxor 13955 13960,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13962 13963,.band 13964 13092,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13966 13967,.bnot 13968,.band 13969 65,.bxor 13965 13970,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13972 13973,.band 13974 13196,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13976 13977,.bnot 13978,.band 13979 66,.bxor 13975 13980,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13982 13983,.band 13984 12052,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13986 13987,.bnot 13988,.band 13989 67,.bxor 13985 13990,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13992 13993,.band 13994 12104,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13996 13997,.bnot 13998,.band 13999 68,.bxor 13995 14000,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 14002 14003,.band 14004 12156]
theorem partExact216 : partRows216=WordField.rows actualModulus 13942 partOps216 := by
  simp only [partRows216,partOps216,WordField.rows,rows13942,rows13943,rows13944,rows13945,rows13946,rows13947,rows13948,rows13949,rows13950,rows13951,rows13952,rows13953,rows13954,rows13955,rows13956,rows13957,rows13958,rows13959,rows13960,rows13961,rows13962,rows13963,rows13964,rows13965,rows13966,rows13967,rows13968,rows13969,rows13970,rows13971,rows13972,rows13973,rows13974,rows13975,rows13976,rows13977,rows13978,rows13979,rows13980,rows13981,rows13982,rows13983,rows13984,rows13985,rows13986,rows13987,rows13988,rows13989,rows13990,rows13991,rows13992,rows13993,rows13994,rows13995,rows13996,rows13997,rows13998,rows13999,rows14000,rows14001,rows14002,rows14003,rows14004,rows14005,List.append_assoc,List.append_nil]
theorem partLength216 : partOps216.length=64 := by decide
theorem partStats216 : partRows216.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows216=338064 := by
  simp only [partRows216,List.length_append,MatrixRowBlocks.rows_weight_append,stats13942.1,stats13942.2,stats13943.1,stats13943.2,stats13944.1,stats13944.2,stats13945.1,stats13945.2,stats13946.1,stats13946.2,stats13947.1,stats13947.2,stats13948.1,stats13948.2,stats13949.1,stats13949.2,stats13950.1,stats13950.2,stats13951.1,stats13951.2,stats13952.1,stats13952.2,stats13953.1,stats13953.2,stats13954.1,stats13954.2,stats13955.1,stats13955.2,stats13956.1,stats13956.2,stats13957.1,stats13957.2,stats13958.1,stats13958.2,stats13959.1,stats13959.2,stats13960.1,stats13960.2,stats13961.1,stats13961.2,stats13962.1,stats13962.2,stats13963.1,stats13963.2,stats13964.1,stats13964.2,stats13965.1,stats13965.2,stats13966.1,stats13966.2,stats13967.1,stats13967.2,stats13968.1,stats13968.2,stats13969.1,stats13969.2,stats13970.1,stats13970.2,stats13971.1,stats13971.2,stats13972.1,stats13972.2,stats13973.1,stats13973.2,stats13974.1,stats13974.2,stats13975.1,stats13975.2,stats13976.1,stats13976.2,stats13977.1,stats13977.2,stats13978.1,stats13978.2,stats13979.1,stats13979.2,stats13980.1,stats13980.2,stats13981.1,stats13981.2,stats13982.1,stats13982.2,stats13983.1,stats13983.2,stats13984.1,stats13984.2,stats13985.1,stats13985.2,stats13986.1,stats13986.2,stats13987.1,stats13987.2,stats13988.1,stats13988.2,stats13989.1,stats13989.2,stats13990.1,stats13990.2,stats13991.1,stats13991.2,stats13992.1,stats13992.2,stats13993.1,stats13993.2,stats13994.1,stats13994.2,stats13995.1,stats13995.2,stats13996.1,stats13996.2,stats13997.1,stats13997.2,stats13998.1,stats13998.2,stats13999.1,stats13999.2,stats14000.1,stats14000.2,stats14001.1,stats14001.2,stats14002.1,stats14002.2,stats14003.1,stats14003.2,stats14004.1,stats14004.2,stats14005.1,stats14005.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
