import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData155
import PairedPathRoundInstructionMatrixData156
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9952 : actualRows9952=WordField.canonicalRows actualModulus 9952 (.band 9951 2) := by core033_kernel_decide
theorem stats9952 : actualRows9952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9952=5124 := by core033_kernel_decide
theorem rows9953 : actualRows9953=WordField.canonicalRows actualModulus 9953 (.bnot 9926) := by core033_kernel_decide
theorem stats9953 : actualRows9953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9953=6276 := by core033_kernel_decide
theorem rows9954 : actualRows9954=WordField.canonicalRows actualModulus 9954 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9954 : actualRows9954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9954=2892 := by core033_kernel_decide
theorem rows9955 : actualRows9955=WordField.canonicalRows actualModulus 9955 (.badd 9953 9954) := by core033_kernel_decide
theorem stats9955 : actualRows9955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9955=5388 := by core033_kernel_decide
theorem rows9956 : actualRows9956=WordField.canonicalRows actualModulus 9956 (.bnot 9955) := by core033_kernel_decide
theorem stats9956 : actualRows9956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9956=6276 := by core033_kernel_decide
theorem rows9957 : actualRows9957=WordField.canonicalRows actualModulus 9957 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9957 : actualRows9957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9957=2820 := by core033_kernel_decide
theorem rows9958 : actualRows9958=WordField.canonicalRows actualModulus 9958 (.band 9956 9957) := by core033_kernel_decide
theorem stats9958 : actualRows9958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9958=5124 := by core033_kernel_decide
theorem rows9959 : actualRows9959=WordField.canonicalRows actualModulus 9959 (.bxor 9952 9958) := by core033_kernel_decide
theorem stats9959 : actualRows9959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9959=7428 := by core033_kernel_decide
theorem rows9960 : actualRows9960=WordField.canonicalRows actualModulus 9960 (.bnot 9926) := by core033_kernel_decide
theorem stats9960 : actualRows9960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9960=6276 := by core033_kernel_decide
theorem rows9961 : actualRows9961=WordField.canonicalRows actualModulus 9961 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9961 : actualRows9961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9961=2892 := by core033_kernel_decide
theorem rows9962 : actualRows9962=WordField.canonicalRows actualModulus 9962 (.badd 9960 9961) := by core033_kernel_decide
theorem stats9962 : actualRows9962.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9962=5388 := by core033_kernel_decide
theorem rows9963 : actualRows9963=WordField.canonicalRows actualModulus 9963 (.band 9962 3) := by core033_kernel_decide
theorem stats9963 : actualRows9963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9963=5124 := by core033_kernel_decide
theorem rows9964 : actualRows9964=WordField.canonicalRows actualModulus 9964 (.bnot 9926) := by core033_kernel_decide
theorem stats9964 : actualRows9964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9964=6276 := by core033_kernel_decide
theorem rows9965 : actualRows9965=WordField.canonicalRows actualModulus 9965 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9965 : actualRows9965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9965=2892 := by core033_kernel_decide
theorem rows9966 : actualRows9966=WordField.canonicalRows actualModulus 9966 (.badd 9964 9965) := by core033_kernel_decide
theorem stats9966 : actualRows9966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9966=5388 := by core033_kernel_decide
theorem rows9967 : actualRows9967=WordField.canonicalRows actualModulus 9967 (.bnot 9966) := by core033_kernel_decide
theorem stats9967 : actualRows9967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9967=6276 := by core033_kernel_decide
theorem rows9968 : actualRows9968=WordField.canonicalRows actualModulus 9968 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9968 : actualRows9968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9968=2820 := by core033_kernel_decide
theorem rows9969 : actualRows9969=WordField.canonicalRows actualModulus 9969 (.band 9967 9968) := by core033_kernel_decide
theorem stats9969 : actualRows9969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9969=5124 := by core033_kernel_decide
theorem rows9970 : actualRows9970=WordField.canonicalRows actualModulus 9970 (.bxor 9963 9969) := by core033_kernel_decide
theorem stats9970 : actualRows9970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9970=7428 := by core033_kernel_decide
theorem rows9971 : actualRows9971=WordField.canonicalRows actualModulus 9971 (.bnot 9926) := by core033_kernel_decide
theorem stats9971 : actualRows9971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9971=6276 := by core033_kernel_decide
theorem rows9972 : actualRows9972=WordField.canonicalRows actualModulus 9972 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9972 : actualRows9972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9972=2892 := by core033_kernel_decide
theorem rows9973 : actualRows9973=WordField.canonicalRows actualModulus 9973 (.badd 9971 9972) := by core033_kernel_decide
theorem stats9973 : actualRows9973.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9973=5388 := by core033_kernel_decide
theorem rows9974 : actualRows9974=WordField.canonicalRows actualModulus 9974 (.band 9973 4) := by core033_kernel_decide
theorem stats9974 : actualRows9974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9974=5124 := by core033_kernel_decide
theorem rows9975 : actualRows9975=WordField.canonicalRows actualModulus 9975 (.bnot 9926) := by core033_kernel_decide
theorem stats9975 : actualRows9975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9975=6276 := by core033_kernel_decide
theorem rows9976 : actualRows9976=WordField.canonicalRows actualModulus 9976 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9976 : actualRows9976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9976=2892 := by core033_kernel_decide
theorem rows9977 : actualRows9977=WordField.canonicalRows actualModulus 9977 (.badd 9975 9976) := by core033_kernel_decide
theorem stats9977 : actualRows9977.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9977=5388 := by core033_kernel_decide
theorem rows9978 : actualRows9978=WordField.canonicalRows actualModulus 9978 (.bnot 9977) := by core033_kernel_decide
theorem stats9978 : actualRows9978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9978=6276 := by core033_kernel_decide
theorem rows9979 : actualRows9979=WordField.canonicalRows actualModulus 9979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9979 : actualRows9979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9979=2820 := by core033_kernel_decide
theorem rows9980 : actualRows9980=WordField.canonicalRows actualModulus 9980 (.band 9978 9979) := by core033_kernel_decide
theorem stats9980 : actualRows9980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9980=5124 := by core033_kernel_decide
theorem rows9981 : actualRows9981=WordField.canonicalRows actualModulus 9981 (.bxor 9974 9980) := by core033_kernel_decide
theorem stats9981 : actualRows9981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9981=7428 := by core033_kernel_decide
theorem rows9982 : actualRows9982=WordField.canonicalRows actualModulus 9982 (.bnot 9926) := by core033_kernel_decide
theorem stats9982 : actualRows9982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9982=6276 := by core033_kernel_decide
theorem rows9983 : actualRows9983=WordField.canonicalRows actualModulus 9983 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9983 : actualRows9983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9983=2892 := by core033_kernel_decide
theorem rows9984 : actualRows9984=WordField.canonicalRows actualModulus 9984 (.badd 9982 9983) := by core033_kernel_decide
theorem stats9984 : actualRows9984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9984=5388 := by core033_kernel_decide
theorem rows9985 : actualRows9985=WordField.canonicalRows actualModulus 9985 (.band 9984 5) := by core033_kernel_decide
theorem stats9985 : actualRows9985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9985=5124 := by core033_kernel_decide
theorem rows9986 : actualRows9986=WordField.canonicalRows actualModulus 9986 (.bnot 9926) := by core033_kernel_decide
theorem stats9986 : actualRows9986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9986=6276 := by core033_kernel_decide
theorem rows9987 : actualRows9987=WordField.canonicalRows actualModulus 9987 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9987 : actualRows9987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9987=2892 := by core033_kernel_decide
theorem rows9988 : actualRows9988=WordField.canonicalRows actualModulus 9988 (.badd 9986 9987) := by core033_kernel_decide
theorem stats9988 : actualRows9988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9988=5388 := by core033_kernel_decide
theorem rows9989 : actualRows9989=WordField.canonicalRows actualModulus 9989 (.bnot 9988) := by core033_kernel_decide
theorem stats9989 : actualRows9989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9989=6276 := by core033_kernel_decide
theorem rows9990 : actualRows9990=WordField.canonicalRows actualModulus 9990 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9990 : actualRows9990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9990=2820 := by core033_kernel_decide
theorem rows9991 : actualRows9991=WordField.canonicalRows actualModulus 9991 (.band 9989 9990) := by core033_kernel_decide
theorem stats9991 : actualRows9991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9991=5124 := by core033_kernel_decide
theorem rows9992 : actualRows9992=WordField.canonicalRows actualModulus 9992 (.bxor 9985 9991) := by core033_kernel_decide
theorem stats9992 : actualRows9992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9992=7428 := by core033_kernel_decide
theorem rows9993 : actualRows9993=WordField.canonicalRows actualModulus 9993 (.bnot 9926) := by core033_kernel_decide
theorem stats9993 : actualRows9993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9993=6276 := by core033_kernel_decide
theorem rows9994 : actualRows9994=WordField.canonicalRows actualModulus 9994 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9994 : actualRows9994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9994=2892 := by core033_kernel_decide
theorem rows9995 : actualRows9995=WordField.canonicalRows actualModulus 9995 (.badd 9993 9994) := by core033_kernel_decide
theorem stats9995 : actualRows9995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9995=5388 := by core033_kernel_decide
theorem rows9996 : actualRows9996=WordField.canonicalRows actualModulus 9996 (.band 9995 6) := by core033_kernel_decide
theorem stats9996 : actualRows9996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9996=5124 := by core033_kernel_decide
theorem rows9997 : actualRows9997=WordField.canonicalRows actualModulus 9997 (.bnot 9926) := by core033_kernel_decide
theorem stats9997 : actualRows9997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9997=6276 := by core033_kernel_decide
theorem rows9998 : actualRows9998=WordField.canonicalRows actualModulus 9998 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9998 : actualRows9998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9998=2892 := by core033_kernel_decide
theorem rows9999 : actualRows9999=WordField.canonicalRows actualModulus 9999 (.badd 9997 9998) := by core033_kernel_decide
theorem stats9999 : actualRows9999.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9999=5388 := by core033_kernel_decide
theorem rows10000 : actualRows10000=WordField.canonicalRows actualModulus 10000 (.bnot 9999) := by core033_kernel_decide
theorem stats10000 : actualRows10000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10000=6276 := by core033_kernel_decide
theorem rows10001 : actualRows10001=WordField.canonicalRows actualModulus 10001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10001 : actualRows10001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10001=2820 := by core033_kernel_decide
theorem rows10002 : actualRows10002=WordField.canonicalRows actualModulus 10002 (.band 10000 10001) := by core033_kernel_decide
theorem stats10002 : actualRows10002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10002=5124 := by core033_kernel_decide
theorem rows10003 : actualRows10003=WordField.canonicalRows actualModulus 10003 (.bxor 9996 10002) := by core033_kernel_decide
theorem stats10003 : actualRows10003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10003=7428 := by core033_kernel_decide
theorem rows10004 : actualRows10004=WordField.canonicalRows actualModulus 10004 (.bnot 9926) := by core033_kernel_decide
theorem stats10004 : actualRows10004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10004=6276 := by core033_kernel_decide
theorem rows10005 : actualRows10005=WordField.canonicalRows actualModulus 10005 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10005 : actualRows10005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10005=2892 := by core033_kernel_decide
theorem rows10006 : actualRows10006=WordField.canonicalRows actualModulus 10006 (.badd 10004 10005) := by core033_kernel_decide
theorem stats10006 : actualRows10006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10006=5388 := by core033_kernel_decide
theorem rows10007 : actualRows10007=WordField.canonicalRows actualModulus 10007 (.band 10006 7) := by core033_kernel_decide
theorem stats10007 : actualRows10007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10007=5124 := by core033_kernel_decide
theorem rows10008 : actualRows10008=WordField.canonicalRows actualModulus 10008 (.bnot 9926) := by core033_kernel_decide
theorem stats10008 : actualRows10008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10008=6276 := by core033_kernel_decide
theorem rows10009 : actualRows10009=WordField.canonicalRows actualModulus 10009 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10009 : actualRows10009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10009=2892 := by core033_kernel_decide
theorem rows10010 : actualRows10010=WordField.canonicalRows actualModulus 10010 (.badd 10008 10009) := by core033_kernel_decide
theorem stats10010 : actualRows10010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10010=5388 := by core033_kernel_decide
theorem rows10011 : actualRows10011=WordField.canonicalRows actualModulus 10011 (.bnot 10010) := by core033_kernel_decide
theorem stats10011 : actualRows10011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10011=6276 := by core033_kernel_decide
theorem rows10012 : actualRows10012=WordField.canonicalRows actualModulus 10012 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10012 : actualRows10012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10012=2820 := by core033_kernel_decide
theorem rows10013 : actualRows10013=WordField.canonicalRows actualModulus 10013 (.band 10011 10012) := by core033_kernel_decide
theorem stats10013 : actualRows10013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10013=5124 := by core033_kernel_decide
theorem rows10014 : actualRows10014=WordField.canonicalRows actualModulus 10014 (.bxor 10007 10013) := by core033_kernel_decide
theorem stats10014 : actualRows10014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10014=7428 := by core033_kernel_decide
theorem rows10015 : actualRows10015=WordField.canonicalRows actualModulus 10015 (.bnot 9926) := by core033_kernel_decide
theorem stats10015 : actualRows10015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10015=6276 := by core033_kernel_decide
def partRows154 : List R1CS.Row := actualRows9952++actualRows9953++actualRows9954++actualRows9955++actualRows9956++actualRows9957++actualRows9958++actualRows9959++actualRows9960++actualRows9961++actualRows9962++actualRows9963++actualRows9964++actualRows9965++actualRows9966++actualRows9967++actualRows9968++actualRows9969++actualRows9970++actualRows9971++actualRows9972++actualRows9973++actualRows9974++actualRows9975++actualRows9976++actualRows9977++actualRows9978++actualRows9979++actualRows9980++actualRows9981++actualRows9982++actualRows9983++actualRows9984++actualRows9985++actualRows9986++actualRows9987++actualRows9988++actualRows9989++actualRows9990++actualRows9991++actualRows9992++actualRows9993++actualRows9994++actualRows9995++actualRows9996++actualRows9997++actualRows9998++actualRows9999++actualRows10000++actualRows10001++actualRows10002++actualRows10003++actualRows10004++actualRows10005++actualRows10006++actualRows10007++actualRows10008++actualRows10009++actualRows10010++actualRows10011++actualRows10012++actualRows10013++actualRows10014++actualRows10015
def partOps154 : List WordIR.Op := [.band 9951 2,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9953 9954,.bnot 9955,.literal (BitVec.ofNat 32 0),.band 9956 9957,.bxor 9952 9958,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9960 9961,.band 9962 3,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9964 9965,.bnot 9966,.literal (BitVec.ofNat 32 0),.band 9967 9968,.bxor 9963 9969,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9971 9972,.band 9973 4,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9975 9976,.bnot 9977,.literal (BitVec.ofNat 32 0),.band 9978 9979,.bxor 9974 9980,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9982 9983,.band 9984 5,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9986 9987,.bnot 9988,.literal (BitVec.ofNat 32 0),.band 9989 9990,.bxor 9985 9991,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9993 9994,.band 9995 6,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 9997 9998,.bnot 9999,.literal (BitVec.ofNat 32 0),.band 10000 10001,.bxor 9996 10002,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10004 10005,.band 10006 7,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10008 10009,.bnot 10010,.literal (BitVec.ofNat 32 0),.band 10011 10012,.bxor 10007 10013,.bnot 9926]
theorem partExact154 : partRows154=WordField.rows actualModulus 9952 partOps154 := by
  simp only [partRows154,partOps154,WordField.rows,rows9952,rows9953,rows9954,rows9955,rows9956,rows9957,rows9958,rows9959,rows9960,rows9961,rows9962,rows9963,rows9964,rows9965,rows9966,rows9967,rows9968,rows9969,rows9970,rows9971,rows9972,rows9973,rows9974,rows9975,rows9976,rows9977,rows9978,rows9979,rows9980,rows9981,rows9982,rows9983,rows9984,rows9985,rows9986,rows9987,rows9988,rows9989,rows9990,rows9991,rows9992,rows9993,rows9994,rows9995,rows9996,rows9997,rows9998,rows9999,rows10000,rows10001,rows10002,rows10003,rows10004,rows10005,rows10006,rows10007,rows10008,rows10009,rows10010,rows10011,rows10012,rows10013,rows10014,rows10015,List.append_assoc,List.append_nil]
theorem partLength154 : partOps154.length=64 := by decide
theorem partStats154 : partRows154.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows154=327024 := by
  simp only [partRows154,List.length_append,MatrixRowBlocks.rows_weight_append,stats9952.1,stats9952.2,stats9953.1,stats9953.2,stats9954.1,stats9954.2,stats9955.1,stats9955.2,stats9956.1,stats9956.2,stats9957.1,stats9957.2,stats9958.1,stats9958.2,stats9959.1,stats9959.2,stats9960.1,stats9960.2,stats9961.1,stats9961.2,stats9962.1,stats9962.2,stats9963.1,stats9963.2,stats9964.1,stats9964.2,stats9965.1,stats9965.2,stats9966.1,stats9966.2,stats9967.1,stats9967.2,stats9968.1,stats9968.2,stats9969.1,stats9969.2,stats9970.1,stats9970.2,stats9971.1,stats9971.2,stats9972.1,stats9972.2,stats9973.1,stats9973.2,stats9974.1,stats9974.2,stats9975.1,stats9975.2,stats9976.1,stats9976.2,stats9977.1,stats9977.2,stats9978.1,stats9978.2,stats9979.1,stats9979.2,stats9980.1,stats9980.2,stats9981.1,stats9981.2,stats9982.1,stats9982.2,stats9983.1,stats9983.2,stats9984.1,stats9984.2,stats9985.1,stats9985.2,stats9986.1,stats9986.2,stats9987.1,stats9987.2,stats9988.1,stats9988.2,stats9989.1,stats9989.2,stats9990.1,stats9990.2,stats9991.1,stats9991.2,stats9992.1,stats9992.2,stats9993.1,stats9993.2,stats9994.1,stats9994.2,stats9995.1,stats9995.2,stats9996.1,stats9996.2,stats9997.1,stats9997.2,stats9998.1,stats9998.2,stats9999.1,stats9999.2,stats10000.1,stats10000.2,stats10001.1,stats10001.2,stats10002.1,stats10002.2,stats10003.1,stats10003.2,stats10004.1,stats10004.2,stats10005.1,stats10005.2,stats10006.1,stats10006.2,stats10007.1,stats10007.2,stats10008.1,stats10008.2,stats10009.1,stats10009.2,stats10010.1,stats10010.2,stats10011.1,stats10011.2,stats10012.1,stats10012.2,stats10013.1,stats10013.2,stats10014.1,stats10014.2,stats10015.1,stats10015.2]
  decide
end QuotedPairedPathRoundCheckedRows
