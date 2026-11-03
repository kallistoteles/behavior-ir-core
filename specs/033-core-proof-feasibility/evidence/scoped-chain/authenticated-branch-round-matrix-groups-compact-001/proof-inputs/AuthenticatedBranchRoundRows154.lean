import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData155
import AuthenticatedBranchRoundInstructionMatrixData156
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9974 : actualRows9974=WordField.canonicalRows actualModulus 9974 (.rotr 9970 25) := by core033_kernel_decide
theorem stats9974 : actualRows9974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9974=5124 := by core033_kernel_decide
theorem rows9975 : actualRows9975=WordField.canonicalRows actualModulus 9975 (.bxor 9973 9974) := by core033_kernel_decide
theorem stats9975 : actualRows9975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9975=7428 := by core033_kernel_decide
theorem rows9976 : actualRows9976=WordField.canonicalRows actualModulus 9976 (.badd 9889 9975) := by core033_kernel_decide
theorem stats9976 : actualRows9976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9976=5388 := by core033_kernel_decide
theorem rows9977 : actualRows9977=WordField.canonicalRows actualModulus 9977 (.band 9970 9943) := by core033_kernel_decide
theorem stats9977 : actualRows9977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9977=5124 := by core033_kernel_decide
theorem rows9978 : actualRows9978=WordField.canonicalRows actualModulus 9978 (.bnot 9970) := by core033_kernel_decide
theorem stats9978 : actualRows9978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9978=6276 := by core033_kernel_decide
theorem rows9979 : actualRows9979=WordField.canonicalRows actualModulus 9979 (.band 9978 9916) := by core033_kernel_decide
theorem stats9979 : actualRows9979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9979=5124 := by core033_kernel_decide
theorem rows9980 : actualRows9980=WordField.canonicalRows actualModulus 9980 (.bxor 9977 9979) := by core033_kernel_decide
theorem stats9980 : actualRows9980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9980=7428 := by core033_kernel_decide
theorem rows9981 : actualRows9981=WordField.canonicalRows actualModulus 9981 (.badd 9976 9980) := by core033_kernel_decide
theorem stats9981 : actualRows9981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9981=5388 := by core033_kernel_decide
theorem rows9982 : actualRows9982=WordField.canonicalRows actualModulus 9982 (.literal (BitVec.ofNat 32 3600352804)) := by core033_kernel_decide
theorem stats9982 : actualRows9982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9982=3756 := by core033_kernel_decide
theorem rows9983 : actualRows9983=WordField.canonicalRows actualModulus 9983 (.badd 9981 9982) := by core033_kernel_decide
theorem stats9983 : actualRows9983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9983=5388 := by core033_kernel_decide
theorem rows9984 : actualRows9984=WordField.canonicalRows actualModulus 9984 (.badd 9983 8521) := by core033_kernel_decide
theorem stats9984 : actualRows9984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9984=5388 := by core033_kernel_decide
theorem rows9985 : actualRows9985=WordField.canonicalRows actualModulus 9985 (.rotr 9969 2) := by core033_kernel_decide
theorem stats9985 : actualRows9985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9985=5124 := by core033_kernel_decide
theorem rows9986 : actualRows9986=WordField.canonicalRows actualModulus 9986 (.rotr 9969 13) := by core033_kernel_decide
theorem stats9986 : actualRows9986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9986=5124 := by core033_kernel_decide
theorem rows9987 : actualRows9987=WordField.canonicalRows actualModulus 9987 (.bxor 9985 9986) := by core033_kernel_decide
theorem stats9987 : actualRows9987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9987=7428 := by core033_kernel_decide
theorem rows9988 : actualRows9988=WordField.canonicalRows actualModulus 9988 (.rotr 9969 22) := by core033_kernel_decide
theorem stats9988 : actualRows9988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9988=5124 := by core033_kernel_decide
theorem rows9989 : actualRows9989=WordField.canonicalRows actualModulus 9989 (.bxor 9987 9988) := by core033_kernel_decide
theorem stats9989 : actualRows9989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9989=7428 := by core033_kernel_decide
theorem rows9990 : actualRows9990=WordField.canonicalRows actualModulus 9990 (.band 9969 9942) := by core033_kernel_decide
theorem stats9990 : actualRows9990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9990=5124 := by core033_kernel_decide
theorem rows9991 : actualRows9991=WordField.canonicalRows actualModulus 9991 (.band 9969 9915) := by core033_kernel_decide
theorem stats9991 : actualRows9991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9991=5124 := by core033_kernel_decide
theorem rows9992 : actualRows9992=WordField.canonicalRows actualModulus 9992 (.bxor 9990 9991) := by core033_kernel_decide
theorem stats9992 : actualRows9992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9992=7428 := by core033_kernel_decide
theorem rows9993 : actualRows9993=WordField.canonicalRows actualModulus 9993 (.band 9942 9915) := by core033_kernel_decide
theorem stats9993 : actualRows9993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9993=5124 := by core033_kernel_decide
theorem rows9994 : actualRows9994=WordField.canonicalRows actualModulus 9994 (.bxor 9992 9993) := by core033_kernel_decide
theorem stats9994 : actualRows9994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9994=7428 := by core033_kernel_decide
theorem rows9995 : actualRows9995=WordField.canonicalRows actualModulus 9995 (.badd 9989 9994) := by core033_kernel_decide
theorem stats9995 : actualRows9995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9995=5388 := by core033_kernel_decide
theorem rows9996 : actualRows9996=WordField.canonicalRows actualModulus 9996 (.badd 9984 9995) := by core033_kernel_decide
theorem stats9996 : actualRows9996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9996=5388 := by core033_kernel_decide
theorem rows9997 : actualRows9997=WordField.canonicalRows actualModulus 9997 (.badd 9888 9984) := by core033_kernel_decide
theorem stats9997 : actualRows9997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9997=5388 := by core033_kernel_decide
theorem rows9998 : actualRows9998=WordField.canonicalRows actualModulus 9998 (.rotr 9997 6) := by core033_kernel_decide
theorem stats9998 : actualRows9998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9998=5124 := by core033_kernel_decide
theorem rows9999 : actualRows9999=WordField.canonicalRows actualModulus 9999 (.rotr 9997 11) := by core033_kernel_decide
theorem stats9999 : actualRows9999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9999=5124 := by core033_kernel_decide
theorem rows10000 : actualRows10000=WordField.canonicalRows actualModulus 10000 (.bxor 9998 9999) := by core033_kernel_decide
theorem stats10000 : actualRows10000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10000=7428 := by core033_kernel_decide
theorem rows10001 : actualRows10001=WordField.canonicalRows actualModulus 10001 (.rotr 9997 25) := by core033_kernel_decide
theorem stats10001 : actualRows10001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10001=5124 := by core033_kernel_decide
theorem rows10002 : actualRows10002=WordField.canonicalRows actualModulus 10002 (.bxor 10000 10001) := by core033_kernel_decide
theorem stats10002 : actualRows10002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10002=7428 := by core033_kernel_decide
theorem rows10003 : actualRows10003=WordField.canonicalRows actualModulus 10003 (.badd 9916 10002) := by core033_kernel_decide
theorem stats10003 : actualRows10003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10003=5388 := by core033_kernel_decide
theorem rows10004 : actualRows10004=WordField.canonicalRows actualModulus 10004 (.band 9997 9970) := by core033_kernel_decide
theorem stats10004 : actualRows10004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10004=5124 := by core033_kernel_decide
theorem rows10005 : actualRows10005=WordField.canonicalRows actualModulus 10005 (.bnot 9997) := by core033_kernel_decide
theorem stats10005 : actualRows10005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10005=6276 := by core033_kernel_decide
theorem rows10006 : actualRows10006=WordField.canonicalRows actualModulus 10006 (.band 10005 9943) := by core033_kernel_decide
theorem stats10006 : actualRows10006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10006=5124 := by core033_kernel_decide
theorem rows10007 : actualRows10007=WordField.canonicalRows actualModulus 10007 (.bxor 10004 10006) := by core033_kernel_decide
theorem stats10007 : actualRows10007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10007=7428 := by core033_kernel_decide
theorem rows10008 : actualRows10008=WordField.canonicalRows actualModulus 10008 (.badd 10003 10007) := by core033_kernel_decide
theorem stats10008 : actualRows10008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10008=5388 := by core033_kernel_decide
theorem rows10009 : actualRows10009=WordField.canonicalRows actualModulus 10009 (.literal (BitVec.ofNat 32 4094571909)) := by core033_kernel_decide
theorem stats10009 : actualRows10009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10009=3900 := by core033_kernel_decide
theorem rows10010 : actualRows10010=WordField.canonicalRows actualModulus 10010 (.badd 10008 10009) := by core033_kernel_decide
theorem stats10010 : actualRows10010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10010=5388 := by core033_kernel_decide
theorem rows10011 : actualRows10011=WordField.canonicalRows actualModulus 10011 (.badd 10010 8534) := by core033_kernel_decide
theorem stats10011 : actualRows10011.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10011=5388 := by core033_kernel_decide
theorem rows10012 : actualRows10012=WordField.canonicalRows actualModulus 10012 (.rotr 9996 2) := by core033_kernel_decide
theorem stats10012 : actualRows10012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10012=5124 := by core033_kernel_decide
theorem rows10013 : actualRows10013=WordField.canonicalRows actualModulus 10013 (.rotr 9996 13) := by core033_kernel_decide
theorem stats10013 : actualRows10013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10013=5124 := by core033_kernel_decide
theorem rows10014 : actualRows10014=WordField.canonicalRows actualModulus 10014 (.bxor 10012 10013) := by core033_kernel_decide
theorem stats10014 : actualRows10014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10014=7428 := by core033_kernel_decide
theorem rows10015 : actualRows10015=WordField.canonicalRows actualModulus 10015 (.rotr 9996 22) := by core033_kernel_decide
theorem stats10015 : actualRows10015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10015=5124 := by core033_kernel_decide
theorem rows10016 : actualRows10016=WordField.canonicalRows actualModulus 10016 (.bxor 10014 10015) := by core033_kernel_decide
theorem stats10016 : actualRows10016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10016=7428 := by core033_kernel_decide
theorem rows10017 : actualRows10017=WordField.canonicalRows actualModulus 10017 (.band 9996 9969) := by core033_kernel_decide
theorem stats10017 : actualRows10017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10017=5124 := by core033_kernel_decide
theorem rows10018 : actualRows10018=WordField.canonicalRows actualModulus 10018 (.band 9996 9942) := by core033_kernel_decide
theorem stats10018 : actualRows10018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10018=5124 := by core033_kernel_decide
theorem rows10019 : actualRows10019=WordField.canonicalRows actualModulus 10019 (.bxor 10017 10018) := by core033_kernel_decide
theorem stats10019 : actualRows10019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10019=7428 := by core033_kernel_decide
theorem rows10020 : actualRows10020=WordField.canonicalRows actualModulus 10020 (.band 9969 9942) := by core033_kernel_decide
theorem stats10020 : actualRows10020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10020=5124 := by core033_kernel_decide
theorem rows10021 : actualRows10021=WordField.canonicalRows actualModulus 10021 (.bxor 10019 10020) := by core033_kernel_decide
theorem stats10021 : actualRows10021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10021=7428 := by core033_kernel_decide
theorem rows10022 : actualRows10022=WordField.canonicalRows actualModulus 10022 (.badd 10016 10021) := by core033_kernel_decide
theorem stats10022 : actualRows10022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10022=5388 := by core033_kernel_decide
theorem rows10023 : actualRows10023=WordField.canonicalRows actualModulus 10023 (.badd 10011 10022) := by core033_kernel_decide
theorem stats10023 : actualRows10023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10023=5388 := by core033_kernel_decide
theorem rows10024 : actualRows10024=WordField.canonicalRows actualModulus 10024 (.badd 9915 10011) := by core033_kernel_decide
theorem stats10024 : actualRows10024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10024=5388 := by core033_kernel_decide
theorem rows10025 : actualRows10025=WordField.canonicalRows actualModulus 10025 (.rotr 10024 6) := by core033_kernel_decide
theorem stats10025 : actualRows10025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10025=5124 := by core033_kernel_decide
theorem rows10026 : actualRows10026=WordField.canonicalRows actualModulus 10026 (.rotr 10024 11) := by core033_kernel_decide
theorem stats10026 : actualRows10026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10026=5124 := by core033_kernel_decide
theorem rows10027 : actualRows10027=WordField.canonicalRows actualModulus 10027 (.bxor 10025 10026) := by core033_kernel_decide
theorem stats10027 : actualRows10027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10027=7428 := by core033_kernel_decide
theorem rows10028 : actualRows10028=WordField.canonicalRows actualModulus 10028 (.rotr 10024 25) := by core033_kernel_decide
theorem stats10028 : actualRows10028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10028=5124 := by core033_kernel_decide
theorem rows10029 : actualRows10029=WordField.canonicalRows actualModulus 10029 (.bxor 10027 10028) := by core033_kernel_decide
theorem stats10029 : actualRows10029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10029=7428 := by core033_kernel_decide
theorem rows10030 : actualRows10030=WordField.canonicalRows actualModulus 10030 (.badd 9943 10029) := by core033_kernel_decide
theorem stats10030 : actualRows10030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10030=5388 := by core033_kernel_decide
theorem rows10031 : actualRows10031=WordField.canonicalRows actualModulus 10031 (.band 10024 9997) := by core033_kernel_decide
theorem stats10031 : actualRows10031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10031=5124 := by core033_kernel_decide
theorem rows10032 : actualRows10032=WordField.canonicalRows actualModulus 10032 (.bnot 10024) := by core033_kernel_decide
theorem stats10032 : actualRows10032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10032=6276 := by core033_kernel_decide
theorem rows10033 : actualRows10033=WordField.canonicalRows actualModulus 10033 (.band 10032 9970) := by core033_kernel_decide
theorem stats10033 : actualRows10033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10033=5124 := by core033_kernel_decide
theorem rows10034 : actualRows10034=WordField.canonicalRows actualModulus 10034 (.bxor 10031 10033) := by core033_kernel_decide
theorem stats10034 : actualRows10034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10034=7428 := by core033_kernel_decide
theorem rows10035 : actualRows10035=WordField.canonicalRows actualModulus 10035 (.badd 10030 10034) := by core033_kernel_decide
theorem stats10035 : actualRows10035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10035=5388 := by core033_kernel_decide
theorem rows10036 : actualRows10036=WordField.canonicalRows actualModulus 10036 (.literal (BitVec.ofNat 32 275423344)) := by core033_kernel_decide
theorem stats10036 : actualRows10036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10036=3540 := by core033_kernel_decide
theorem rows10037 : actualRows10037=WordField.canonicalRows actualModulus 10037 (.badd 10035 10036) := by core033_kernel_decide
theorem stats10037 : actualRows10037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10037=5388 := by core033_kernel_decide
def partRows154 : List R1CS.Row := actualRows9974++actualRows9975++actualRows9976++actualRows9977++actualRows9978++actualRows9979++actualRows9980++actualRows9981++actualRows9982++actualRows9983++actualRows9984++actualRows9985++actualRows9986++actualRows9987++actualRows9988++actualRows9989++actualRows9990++actualRows9991++actualRows9992++actualRows9993++actualRows9994++actualRows9995++actualRows9996++actualRows9997++actualRows9998++actualRows9999++actualRows10000++actualRows10001++actualRows10002++actualRows10003++actualRows10004++actualRows10005++actualRows10006++actualRows10007++actualRows10008++actualRows10009++actualRows10010++actualRows10011++actualRows10012++actualRows10013++actualRows10014++actualRows10015++actualRows10016++actualRows10017++actualRows10018++actualRows10019++actualRows10020++actualRows10021++actualRows10022++actualRows10023++actualRows10024++actualRows10025++actualRows10026++actualRows10027++actualRows10028++actualRows10029++actualRows10030++actualRows10031++actualRows10032++actualRows10033++actualRows10034++actualRows10035++actualRows10036++actualRows10037
def partOps154 : List WordIR.Op := [.rotr 9970 25,.bxor 9973 9974,.badd 9889 9975,.band 9970 9943,.bnot 9970,.band 9978 9916,.bxor 9977 9979,.badd 9976 9980,.literal (BitVec.ofNat 32 3600352804),.badd 9981 9982,.badd 9983 8521,.rotr 9969 2,.rotr 9969 13,.bxor 9985 9986,.rotr 9969 22,.bxor 9987 9988,.band 9969 9942,.band 9969 9915,.bxor 9990 9991,.band 9942 9915,.bxor 9992 9993,.badd 9989 9994,.badd 9984 9995,.badd 9888 9984,.rotr 9997 6,.rotr 9997 11,.bxor 9998 9999,.rotr 9997 25,.bxor 10000 10001,.badd 9916 10002,.band 9997 9970,.bnot 9997,.band 10005 9943,.bxor 10004 10006,.badd 10003 10007,.literal (BitVec.ofNat 32 4094571909),.badd 10008 10009,.badd 10010 8534,.rotr 9996 2,.rotr 9996 13,.bxor 10012 10013,.rotr 9996 22,.bxor 10014 10015,.band 9996 9969,.band 9996 9942,.bxor 10017 10018,.band 9969 9942,.bxor 10019 10020,.badd 10016 10021,.badd 10011 10022,.badd 9915 10011,.rotr 10024 6,.rotr 10024 11,.bxor 10025 10026,.rotr 10024 25,.bxor 10027 10028,.badd 9943 10029,.band 10024 9997,.bnot 10024,.band 10032 9970,.bxor 10031 10033,.badd 10030 10034,.literal (BitVec.ofNat 32 275423344),.badd 10035 10036]
theorem partExact154 : partRows154=WordField.rows actualModulus 9974 partOps154 := by
  simp only [partRows154,partOps154,WordField.rows,rows9974,rows9975,rows9976,rows9977,rows9978,rows9979,rows9980,rows9981,rows9982,rows9983,rows9984,rows9985,rows9986,rows9987,rows9988,rows9989,rows9990,rows9991,rows9992,rows9993,rows9994,rows9995,rows9996,rows9997,rows9998,rows9999,rows10000,rows10001,rows10002,rows10003,rows10004,rows10005,rows10006,rows10007,rows10008,rows10009,rows10010,rows10011,rows10012,rows10013,rows10014,rows10015,rows10016,rows10017,rows10018,rows10019,rows10020,rows10021,rows10022,rows10023,rows10024,rows10025,rows10026,rows10027,rows10028,rows10029,rows10030,rows10031,rows10032,rows10033,rows10034,rows10035,rows10036,rows10037,List.append_assoc,List.append_nil]
theorem partLength154 : partOps154.length=64 := by decide
theorem partStats154 : partRows154.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows154=368568 := by
  simp only [partRows154,List.length_append,MatrixRowBlocks.rows_weight_append,stats9974.1,stats9974.2,stats9975.1,stats9975.2,stats9976.1,stats9976.2,stats9977.1,stats9977.2,stats9978.1,stats9978.2,stats9979.1,stats9979.2,stats9980.1,stats9980.2,stats9981.1,stats9981.2,stats9982.1,stats9982.2,stats9983.1,stats9983.2,stats9984.1,stats9984.2,stats9985.1,stats9985.2,stats9986.1,stats9986.2,stats9987.1,stats9987.2,stats9988.1,stats9988.2,stats9989.1,stats9989.2,stats9990.1,stats9990.2,stats9991.1,stats9991.2,stats9992.1,stats9992.2,stats9993.1,stats9993.2,stats9994.1,stats9994.2,stats9995.1,stats9995.2,stats9996.1,stats9996.2,stats9997.1,stats9997.2,stats9998.1,stats9998.2,stats9999.1,stats9999.2,stats10000.1,stats10000.2,stats10001.1,stats10001.2,stats10002.1,stats10002.2,stats10003.1,stats10003.2,stats10004.1,stats10004.2,stats10005.1,stats10005.2,stats10006.1,stats10006.2,stats10007.1,stats10007.2,stats10008.1,stats10008.2,stats10009.1,stats10009.2,stats10010.1,stats10010.2,stats10011.1,stats10011.2,stats10012.1,stats10012.2,stats10013.1,stats10013.2,stats10014.1,stats10014.2,stats10015.1,stats10015.2,stats10016.1,stats10016.2,stats10017.1,stats10017.2,stats10018.1,stats10018.2,stats10019.1,stats10019.2,stats10020.1,stats10020.2,stats10021.1,stats10021.2,stats10022.1,stats10022.2,stats10023.1,stats10023.2,stats10024.1,stats10024.2,stats10025.1,stats10025.2,stats10026.1,stats10026.2,stats10027.1,stats10027.2,stats10028.1,stats10028.2,stats10029.1,stats10029.2,stats10030.1,stats10030.2,stats10031.1,stats10031.2,stats10032.1,stats10032.2,stats10033.1,stats10033.2,stats10034.1,stats10034.2,stats10035.1,stats10035.2,stats10036.1,stats10036.2,stats10037.1,stats10037.2]
  decide
end AuthenticatedBranchRoundCheckedRows
