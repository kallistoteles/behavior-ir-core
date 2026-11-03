import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData155
import PathRoundDispatchInstructionMatrixData156
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9963 : actualRows9963=WordField.canonicalRows actualModulus 9963 (.band 9714 9962) := by core033_kernel_decide
theorem stats9963 : actualRows9963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9963=5124 := by core033_kernel_decide
theorem rows9964 : actualRows9964=WordField.canonicalRows actualModulus 9964 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9964 : actualRows9964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9964=2892 := by core033_kernel_decide
theorem rows9965 : actualRows9965=WordField.canonicalRows actualModulus 9965 (.bnot 9964) := by core033_kernel_decide
theorem stats9965 : actualRows9965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9965=6276 := by core033_kernel_decide
theorem rows9966 : actualRows9966=WordField.canonicalRows actualModulus 9966 (.bxor 9714 9965) := by core033_kernel_decide
theorem stats9966 : actualRows9966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9966=7428 := by core033_kernel_decide
theorem rows9967 : actualRows9967=WordField.canonicalRows actualModulus 9967 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9967 : actualRows9967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9967=2892 := by core033_kernel_decide
theorem rows9968 : actualRows9968=WordField.canonicalRows actualModulus 9968 (.bnot 9967) := by core033_kernel_decide
theorem stats9968 : actualRows9968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9968=6276 := by core033_kernel_decide
theorem rows9969 : actualRows9969=WordField.canonicalRows actualModulus 9969 (.badd 9714 9968) := by core033_kernel_decide
theorem stats9969 : actualRows9969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9969=5388 := by core033_kernel_decide
theorem rows9970 : actualRows9970=WordField.canonicalRows actualModulus 9970 (.bnot 9969) := by core033_kernel_decide
theorem stats9970 : actualRows9970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9970=6276 := by core033_kernel_decide
theorem rows9971 : actualRows9971=WordField.canonicalRows actualModulus 9971 (.band 9966 9970) := by core033_kernel_decide
theorem stats9971 : actualRows9971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9971=5124 := by core033_kernel_decide
theorem rows9972 : actualRows9972=WordField.canonicalRows actualModulus 9972 (.bxor 9963 9971) := by core033_kernel_decide
theorem stats9972 : actualRows9972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9972=7428 := by core033_kernel_decide
theorem rows9973 : actualRows9973=WordField.canonicalRows actualModulus 9973 (.shr 9972 31) := by core033_kernel_decide
theorem stats9973 : actualRows9973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9973=2892 := by core033_kernel_decide
theorem rows9974 : actualRows9974=WordField.canonicalRows actualModulus 9974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9974 : actualRows9974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9974=2892 := by core033_kernel_decide
theorem rows9975 : actualRows9975=WordField.canonicalRows actualModulus 9975 (.bxor 9973 9974) := by core033_kernel_decide
theorem stats9975 : actualRows9975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9975=7428 := by core033_kernel_decide
theorem rows9976 : actualRows9976=WordField.canonicalRows actualModulus 9976 (.band 9960 9975) := by core033_kernel_decide
theorem stats9976 : actualRows9976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9976=5124 := by core033_kernel_decide
theorem rows9977 : actualRows9977=WordField.canonicalRows actualModulus 9977 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9977 : actualRows9977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9977=2820 := by core033_kernel_decide
theorem rows9978 : actualRows9978=WordField.canonicalRows actualModulus 9978 (.bnot 9977) := by core033_kernel_decide
theorem stats9978 : actualRows9978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9978=6276 := by core033_kernel_decide
theorem rows9979 : actualRows9979=WordField.canonicalRows actualModulus 9979 (.band 9747 9978) := by core033_kernel_decide
theorem stats9979 : actualRows9979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9979=5124 := by core033_kernel_decide
theorem rows9980 : actualRows9980=WordField.canonicalRows actualModulus 9980 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9980 : actualRows9980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9980=2820 := by core033_kernel_decide
theorem rows9981 : actualRows9981=WordField.canonicalRows actualModulus 9981 (.bnot 9980) := by core033_kernel_decide
theorem stats9981 : actualRows9981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9981=6276 := by core033_kernel_decide
theorem rows9982 : actualRows9982=WordField.canonicalRows actualModulus 9982 (.bxor 9747 9981) := by core033_kernel_decide
theorem stats9982 : actualRows9982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9982=7428 := by core033_kernel_decide
theorem rows9983 : actualRows9983=WordField.canonicalRows actualModulus 9983 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9983 : actualRows9983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9983=2820 := by core033_kernel_decide
theorem rows9984 : actualRows9984=WordField.canonicalRows actualModulus 9984 (.bnot 9983) := by core033_kernel_decide
theorem stats9984 : actualRows9984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9984=6276 := by core033_kernel_decide
theorem rows9985 : actualRows9985=WordField.canonicalRows actualModulus 9985 (.badd 9747 9984) := by core033_kernel_decide
theorem stats9985 : actualRows9985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9985=5388 := by core033_kernel_decide
theorem rows9986 : actualRows9986=WordField.canonicalRows actualModulus 9986 (.bnot 9985) := by core033_kernel_decide
theorem stats9986 : actualRows9986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9986=6276 := by core033_kernel_decide
theorem rows9987 : actualRows9987=WordField.canonicalRows actualModulus 9987 (.band 9982 9986) := by core033_kernel_decide
theorem stats9987 : actualRows9987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9987=5124 := by core033_kernel_decide
theorem rows9988 : actualRows9988=WordField.canonicalRows actualModulus 9988 (.bxor 9979 9987) := by core033_kernel_decide
theorem stats9988 : actualRows9988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9988=7428 := by core033_kernel_decide
theorem rows9989 : actualRows9989=WordField.canonicalRows actualModulus 9989 (.shr 9988 31) := by core033_kernel_decide
theorem stats9989 : actualRows9989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9989=2892 := by core033_kernel_decide
theorem rows9990 : actualRows9990=WordField.canonicalRows actualModulus 9990 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9990 : actualRows9990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9990=2892 := by core033_kernel_decide
theorem rows9991 : actualRows9991=WordField.canonicalRows actualModulus 9991 (.bxor 9989 9990) := by core033_kernel_decide
theorem stats9991 : actualRows9991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9991=7428 := by core033_kernel_decide
theorem rows9992 : actualRows9992=WordField.canonicalRows actualModulus 9992 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9992 : actualRows9992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9992=2892 := by core033_kernel_decide
theorem rows9993 : actualRows9993=WordField.canonicalRows actualModulus 9993 (.bnot 9992) := by core033_kernel_decide
theorem stats9993 : actualRows9993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9993=6276 := by core033_kernel_decide
theorem rows9994 : actualRows9994=WordField.canonicalRows actualModulus 9994 (.band 9736 9993) := by core033_kernel_decide
theorem stats9994 : actualRows9994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9994=5124 := by core033_kernel_decide
theorem rows9995 : actualRows9995=WordField.canonicalRows actualModulus 9995 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9995 : actualRows9995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9995=2892 := by core033_kernel_decide
theorem rows9996 : actualRows9996=WordField.canonicalRows actualModulus 9996 (.bnot 9995) := by core033_kernel_decide
theorem stats9996 : actualRows9996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9996=6276 := by core033_kernel_decide
theorem rows9997 : actualRows9997=WordField.canonicalRows actualModulus 9997 (.bxor 9736 9996) := by core033_kernel_decide
theorem stats9997 : actualRows9997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9997=7428 := by core033_kernel_decide
theorem rows9998 : actualRows9998=WordField.canonicalRows actualModulus 9998 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats9998 : actualRows9998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9998=2892 := by core033_kernel_decide
theorem rows9999 : actualRows9999=WordField.canonicalRows actualModulus 9999 (.bnot 9998) := by core033_kernel_decide
theorem stats9999 : actualRows9999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9999=6276 := by core033_kernel_decide
theorem rows10000 : actualRows10000=WordField.canonicalRows actualModulus 10000 (.badd 9736 9999) := by core033_kernel_decide
theorem stats10000 : actualRows10000.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10000=5388 := by core033_kernel_decide
theorem rows10001 : actualRows10001=WordField.canonicalRows actualModulus 10001 (.bnot 10000) := by core033_kernel_decide
theorem stats10001 : actualRows10001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10001=6276 := by core033_kernel_decide
theorem rows10002 : actualRows10002=WordField.canonicalRows actualModulus 10002 (.band 9997 10001) := by core033_kernel_decide
theorem stats10002 : actualRows10002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10002=5124 := by core033_kernel_decide
theorem rows10003 : actualRows10003=WordField.canonicalRows actualModulus 10003 (.bxor 9994 10002) := by core033_kernel_decide
theorem stats10003 : actualRows10003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10003=7428 := by core033_kernel_decide
theorem rows10004 : actualRows10004=WordField.canonicalRows actualModulus 10004 (.shr 10003 31) := by core033_kernel_decide
theorem stats10004 : actualRows10004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10004=2892 := by core033_kernel_decide
theorem rows10005 : actualRows10005=WordField.canonicalRows actualModulus 10005 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10005 : actualRows10005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10005=2892 := by core033_kernel_decide
theorem rows10006 : actualRows10006=WordField.canonicalRows actualModulus 10006 (.bxor 10004 10005) := by core033_kernel_decide
theorem stats10006 : actualRows10006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10006=7428 := by core033_kernel_decide
theorem rows10007 : actualRows10007=WordField.canonicalRows actualModulus 10007 (.band 9991 10006) := by core033_kernel_decide
theorem stats10007 : actualRows10007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10007=5124 := by core033_kernel_decide
theorem rows10008 : actualRows10008=WordField.canonicalRows actualModulus 10008 (.band 9976 10007) := by core033_kernel_decide
theorem stats10008 : actualRows10008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10008=5124 := by core033_kernel_decide
theorem rows10009 : actualRows10009=WordField.canonicalRows actualModulus 10009 (.badd 9725 9747) := by core033_kernel_decide
theorem stats10009 : actualRows10009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10009=5388 := by core033_kernel_decide
theorem rows10010 : actualRows10010=WordField.canonicalRows actualModulus 10010 (.band 9714 9736) := by core033_kernel_decide
theorem stats10010 : actualRows10010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10010=5124 := by core033_kernel_decide
theorem rows10011 : actualRows10011=WordField.canonicalRows actualModulus 10011 (.bxor 9714 9736) := by core033_kernel_decide
theorem stats10011 : actualRows10011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10011=7428 := by core033_kernel_decide
theorem rows10012 : actualRows10012=WordField.canonicalRows actualModulus 10012 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10012 : actualRows10012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10012=5388 := by core033_kernel_decide
theorem rows10013 : actualRows10013=WordField.canonicalRows actualModulus 10013 (.bnot 10012) := by core033_kernel_decide
theorem stats10013 : actualRows10013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10013=6276 := by core033_kernel_decide
theorem rows10014 : actualRows10014=WordField.canonicalRows actualModulus 10014 (.band 10011 10013) := by core033_kernel_decide
theorem stats10014 : actualRows10014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10014=5124 := by core033_kernel_decide
theorem rows10015 : actualRows10015=WordField.canonicalRows actualModulus 10015 (.bxor 10010 10014) := by core033_kernel_decide
theorem stats10015 : actualRows10015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10015=7428 := by core033_kernel_decide
theorem rows10016 : actualRows10016=WordField.canonicalRows actualModulus 10016 (.shr 10015 31) := by core033_kernel_decide
theorem stats10016 : actualRows10016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10016=2892 := by core033_kernel_decide
theorem rows10017 : actualRows10017=WordField.canonicalRows actualModulus 10017 (.badd 10009 10016) := by core033_kernel_decide
theorem stats10017 : actualRows10017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10017=5388 := by core033_kernel_decide
theorem rows10018 : actualRows10018=WordField.canonicalRows actualModulus 10018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10018 : actualRows10018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10018=2820 := by core033_kernel_decide
theorem rows10019 : actualRows10019=WordField.canonicalRows actualModulus 10019 (.bnot 10018) := by core033_kernel_decide
theorem stats10019 : actualRows10019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10019=6276 := by core033_kernel_decide
theorem rows10020 : actualRows10020=WordField.canonicalRows actualModulus 10020 (.band 10017 10019) := by core033_kernel_decide
theorem stats10020 : actualRows10020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10020=5124 := by core033_kernel_decide
theorem rows10021 : actualRows10021=WordField.canonicalRows actualModulus 10021 (.badd 9725 9747) := by core033_kernel_decide
theorem stats10021 : actualRows10021.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10021=5388 := by core033_kernel_decide
theorem rows10022 : actualRows10022=WordField.canonicalRows actualModulus 10022 (.band 9714 9736) := by core033_kernel_decide
theorem stats10022 : actualRows10022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10022=5124 := by core033_kernel_decide
theorem rows10023 : actualRows10023=WordField.canonicalRows actualModulus 10023 (.bxor 9714 9736) := by core033_kernel_decide
theorem stats10023 : actualRows10023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10023=7428 := by core033_kernel_decide
theorem rows10024 : actualRows10024=WordField.canonicalRows actualModulus 10024 (.badd 9714 9736) := by core033_kernel_decide
theorem stats10024 : actualRows10024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10024=5388 := by core033_kernel_decide
theorem rows10025 : actualRows10025=WordField.canonicalRows actualModulus 10025 (.bnot 10024) := by core033_kernel_decide
theorem stats10025 : actualRows10025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10025=6276 := by core033_kernel_decide
theorem rows10026 : actualRows10026=WordField.canonicalRows actualModulus 10026 (.band 10023 10025) := by core033_kernel_decide
theorem stats10026 : actualRows10026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10026=5124 := by core033_kernel_decide
def partRows155 : List R1CS.Row := actualRows9963++actualRows9964++actualRows9965++actualRows9966++actualRows9967++actualRows9968++actualRows9969++actualRows9970++actualRows9971++actualRows9972++actualRows9973++actualRows9974++actualRows9975++actualRows9976++actualRows9977++actualRows9978++actualRows9979++actualRows9980++actualRows9981++actualRows9982++actualRows9983++actualRows9984++actualRows9985++actualRows9986++actualRows9987++actualRows9988++actualRows9989++actualRows9990++actualRows9991++actualRows9992++actualRows9993++actualRows9994++actualRows9995++actualRows9996++actualRows9997++actualRows9998++actualRows9999++actualRows10000++actualRows10001++actualRows10002++actualRows10003++actualRows10004++actualRows10005++actualRows10006++actualRows10007++actualRows10008++actualRows10009++actualRows10010++actualRows10011++actualRows10012++actualRows10013++actualRows10014++actualRows10015++actualRows10016++actualRows10017++actualRows10018++actualRows10019++actualRows10020++actualRows10021++actualRows10022++actualRows10023++actualRows10024++actualRows10025++actualRows10026
def partOps155 : List WordIR.Op := [.band 9714 9962,.literal (BitVec.ofNat 32 1048576),.bnot 9964,.bxor 9714 9965,.literal (BitVec.ofNat 32 1048576),.bnot 9967,.badd 9714 9968,.bnot 9969,.band 9966 9970,.bxor 9963 9971,.shr 9972 31,.literal (BitVec.ofNat 32 1),.bxor 9973 9974,.band 9960 9975,.literal (BitVec.ofNat 32 0),.bnot 9977,.band 9747 9978,.literal (BitVec.ofNat 32 0),.bnot 9980,.bxor 9747 9981,.literal (BitVec.ofNat 32 0),.bnot 9983,.badd 9747 9984,.bnot 9985,.band 9982 9986,.bxor 9979 9987,.shr 9988 31,.literal (BitVec.ofNat 32 1),.bxor 9989 9990,.literal (BitVec.ofNat 32 1048576),.bnot 9992,.band 9736 9993,.literal (BitVec.ofNat 32 1048576),.bnot 9995,.bxor 9736 9996,.literal (BitVec.ofNat 32 1048576),.bnot 9998,.badd 9736 9999,.bnot 10000,.band 9997 10001,.bxor 9994 10002,.shr 10003 31,.literal (BitVec.ofNat 32 1),.bxor 10004 10005,.band 9991 10006,.band 9976 10007,.badd 9725 9747,.band 9714 9736,.bxor 9714 9736,.badd 9714 9736,.bnot 10012,.band 10011 10013,.bxor 10010 10014,.shr 10015 31,.badd 10009 10016,.literal (BitVec.ofNat 32 0),.bnot 10018,.band 10017 10019,.badd 9725 9747,.band 9714 9736,.bxor 9714 9736,.badd 9714 9736,.bnot 10024,.band 10023 10025]
theorem partExact155 : partRows155=WordField.rows actualModulus 9963 partOps155 := by
  simp only [partRows155,partOps155,WordField.rows,rows9963,rows9964,rows9965,rows9966,rows9967,rows9968,rows9969,rows9970,rows9971,rows9972,rows9973,rows9974,rows9975,rows9976,rows9977,rows9978,rows9979,rows9980,rows9981,rows9982,rows9983,rows9984,rows9985,rows9986,rows9987,rows9988,rows9989,rows9990,rows9991,rows9992,rows9993,rows9994,rows9995,rows9996,rows9997,rows9998,rows9999,rows10000,rows10001,rows10002,rows10003,rows10004,rows10005,rows10006,rows10007,rows10008,rows10009,rows10010,rows10011,rows10012,rows10013,rows10014,rows10015,rows10016,rows10017,rows10018,rows10019,rows10020,rows10021,rows10022,rows10023,rows10024,rows10025,rows10026,List.append_assoc,List.append_nil]
theorem partLength155 : partOps155.length=64 := by decide
theorem partStats155 : partRows155.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows155=337824 := by
  simp only [partRows155,List.length_append,MatrixRowBlocks.rows_weight_append,stats9963.1,stats9963.2,stats9964.1,stats9964.2,stats9965.1,stats9965.2,stats9966.1,stats9966.2,stats9967.1,stats9967.2,stats9968.1,stats9968.2,stats9969.1,stats9969.2,stats9970.1,stats9970.2,stats9971.1,stats9971.2,stats9972.1,stats9972.2,stats9973.1,stats9973.2,stats9974.1,stats9974.2,stats9975.1,stats9975.2,stats9976.1,stats9976.2,stats9977.1,stats9977.2,stats9978.1,stats9978.2,stats9979.1,stats9979.2,stats9980.1,stats9980.2,stats9981.1,stats9981.2,stats9982.1,stats9982.2,stats9983.1,stats9983.2,stats9984.1,stats9984.2,stats9985.1,stats9985.2,stats9986.1,stats9986.2,stats9987.1,stats9987.2,stats9988.1,stats9988.2,stats9989.1,stats9989.2,stats9990.1,stats9990.2,stats9991.1,stats9991.2,stats9992.1,stats9992.2,stats9993.1,stats9993.2,stats9994.1,stats9994.2,stats9995.1,stats9995.2,stats9996.1,stats9996.2,stats9997.1,stats9997.2,stats9998.1,stats9998.2,stats9999.1,stats9999.2,stats10000.1,stats10000.2,stats10001.1,stats10001.2,stats10002.1,stats10002.2,stats10003.1,stats10003.2,stats10004.1,stats10004.2,stats10005.1,stats10005.2,stats10006.1,stats10006.2,stats10007.1,stats10007.2,stats10008.1,stats10008.2,stats10009.1,stats10009.2,stats10010.1,stats10010.2,stats10011.1,stats10011.2,stats10012.1,stats10012.2,stats10013.1,stats10013.2,stats10014.1,stats10014.2,stats10015.1,stats10015.2,stats10016.1,stats10016.2,stats10017.1,stats10017.2,stats10018.1,stats10018.2,stats10019.1,stats10019.2,stats10020.1,stats10020.2,stats10021.1,stats10021.2,stats10022.1,stats10022.2,stats10023.1,stats10023.2,stats10024.1,stats10024.2,stats10025.1,stats10025.2,stats10026.1,stats10026.2]
  decide
end PathRoundDispatchCheckedRows
