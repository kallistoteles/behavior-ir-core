import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData186
import AuthenticatedBranchRoundInstructionMatrixData187
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11958 : actualRows11958=WordField.canonicalRows actualModulus 11958 (.bxor 11955 11957) := by core033_kernel_decide
theorem stats11958 : actualRows11958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11958=7428 := by core033_kernel_decide
theorem rows11959 : actualRows11959=WordField.canonicalRows actualModulus 11959 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11959 : actualRows11959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11959=2964 := by core033_kernel_decide
theorem rows11960 : actualRows11960=WordField.canonicalRows actualModulus 11960 (.bxor 693 11959) := by core033_kernel_decide
theorem stats11960 : actualRows11960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11960=7428 := by core033_kernel_decide
theorem rows11961 : actualRows11961=WordField.canonicalRows actualModulus 11961 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11961 : actualRows11961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11961=2820 := by core033_kernel_decide
theorem rows11962 : actualRows11962=WordField.canonicalRows actualModulus 11962 (.bnot 11961) := by core033_kernel_decide
theorem stats11962 : actualRows11962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11962=6276 := by core033_kernel_decide
theorem rows11963 : actualRows11963=WordField.canonicalRows actualModulus 11963 (.badd 11960 11962) := by core033_kernel_decide
theorem stats11963 : actualRows11963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11963=5388 := by core033_kernel_decide
theorem rows11964 : actualRows11964=WordField.canonicalRows actualModulus 11964 (.bnot 11963) := by core033_kernel_decide
theorem stats11964 : actualRows11964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11964=6276 := by core033_kernel_decide
theorem rows11965 : actualRows11965=WordField.canonicalRows actualModulus 11965 (.band 11958 11964) := by core033_kernel_decide
theorem stats11965 : actualRows11965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11965=5124 := by core033_kernel_decide
theorem rows11966 : actualRows11966=WordField.canonicalRows actualModulus 11966 (.bxor 11953 11965) := by core033_kernel_decide
theorem stats11966 : actualRows11966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11966=7428 := by core033_kernel_decide
theorem rows11967 : actualRows11967=WordField.canonicalRows actualModulus 11967 (.shr 11966 31) := by core033_kernel_decide
theorem stats11967 : actualRows11967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11967=2892 := by core033_kernel_decide
theorem rows11968 : actualRows11968=WordField.canonicalRows actualModulus 11968 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11968 : actualRows11968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11968=2892 := by core033_kernel_decide
theorem rows11969 : actualRows11969=WordField.canonicalRows actualModulus 11969 (.bxor 11967 11968) := by core033_kernel_decide
theorem stats11969 : actualRows11969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11969=7428 := by core033_kernel_decide
theorem rows11970 : actualRows11970=WordField.canonicalRows actualModulus 11970 (.bnot 11969) := by core033_kernel_decide
theorem stats11970 : actualRows11970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11970=6276 := by core033_kernel_decide
theorem rows11971 : actualRows11971=WordField.canonicalRows actualModulus 11971 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11971 : actualRows11971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11971=2892 := by core033_kernel_decide
theorem rows11972 : actualRows11972=WordField.canonicalRows actualModulus 11972 (.badd 11970 11971) := by core033_kernel_decide
theorem stats11972 : actualRows11972.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11972=5388 := by core033_kernel_decide
theorem rows11973 : actualRows11973=WordField.canonicalRows actualModulus 11973 (.band 11972 10730) := by core033_kernel_decide
theorem stats11973 : actualRows11973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11973=5124 := by core033_kernel_decide
theorem rows11974 : actualRows11974=WordField.canonicalRows actualModulus 11974 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11974 : actualRows11974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11974=2964 := by core033_kernel_decide
theorem rows11975 : actualRows11975=WordField.canonicalRows actualModulus 11975 (.bxor 693 11974) := by core033_kernel_decide
theorem stats11975 : actualRows11975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11975=7428 := by core033_kernel_decide
theorem rows11976 : actualRows11976=WordField.canonicalRows actualModulus 11976 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11976 : actualRows11976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11976=2820 := by core033_kernel_decide
theorem rows11977 : actualRows11977=WordField.canonicalRows actualModulus 11977 (.bnot 11976) := by core033_kernel_decide
theorem stats11977 : actualRows11977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11977=6276 := by core033_kernel_decide
theorem rows11978 : actualRows11978=WordField.canonicalRows actualModulus 11978 (.band 11975 11977) := by core033_kernel_decide
theorem stats11978 : actualRows11978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11978=5124 := by core033_kernel_decide
theorem rows11979 : actualRows11979=WordField.canonicalRows actualModulus 11979 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11979 : actualRows11979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11979=2964 := by core033_kernel_decide
theorem rows11980 : actualRows11980=WordField.canonicalRows actualModulus 11980 (.bxor 693 11979) := by core033_kernel_decide
theorem stats11980 : actualRows11980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11980=7428 := by core033_kernel_decide
theorem rows11981 : actualRows11981=WordField.canonicalRows actualModulus 11981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11981 : actualRows11981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11981=2820 := by core033_kernel_decide
theorem rows11982 : actualRows11982=WordField.canonicalRows actualModulus 11982 (.bnot 11981) := by core033_kernel_decide
theorem stats11982 : actualRows11982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11982=6276 := by core033_kernel_decide
theorem rows11983 : actualRows11983=WordField.canonicalRows actualModulus 11983 (.bxor 11980 11982) := by core033_kernel_decide
theorem stats11983 : actualRows11983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11983=7428 := by core033_kernel_decide
theorem rows11984 : actualRows11984=WordField.canonicalRows actualModulus 11984 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11984 : actualRows11984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11984=2964 := by core033_kernel_decide
theorem rows11985 : actualRows11985=WordField.canonicalRows actualModulus 11985 (.bxor 693 11984) := by core033_kernel_decide
theorem stats11985 : actualRows11985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11985=7428 := by core033_kernel_decide
theorem rows11986 : actualRows11986=WordField.canonicalRows actualModulus 11986 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11986 : actualRows11986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11986=2820 := by core033_kernel_decide
theorem rows11987 : actualRows11987=WordField.canonicalRows actualModulus 11987 (.bnot 11986) := by core033_kernel_decide
theorem stats11987 : actualRows11987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11987=6276 := by core033_kernel_decide
theorem rows11988 : actualRows11988=WordField.canonicalRows actualModulus 11988 (.badd 11985 11987) := by core033_kernel_decide
theorem stats11988 : actualRows11988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11988=5388 := by core033_kernel_decide
theorem rows11989 : actualRows11989=WordField.canonicalRows actualModulus 11989 (.bnot 11988) := by core033_kernel_decide
theorem stats11989 : actualRows11989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11989=6276 := by core033_kernel_decide
theorem rows11990 : actualRows11990=WordField.canonicalRows actualModulus 11990 (.band 11983 11989) := by core033_kernel_decide
theorem stats11990 : actualRows11990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11990=5124 := by core033_kernel_decide
theorem rows11991 : actualRows11991=WordField.canonicalRows actualModulus 11991 (.bxor 11978 11990) := by core033_kernel_decide
theorem stats11991 : actualRows11991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11991=7428 := by core033_kernel_decide
theorem rows11992 : actualRows11992=WordField.canonicalRows actualModulus 11992 (.shr 11991 31) := by core033_kernel_decide
theorem stats11992 : actualRows11992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11992=2892 := by core033_kernel_decide
theorem rows11993 : actualRows11993=WordField.canonicalRows actualModulus 11993 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11993 : actualRows11993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11993=2892 := by core033_kernel_decide
theorem rows11994 : actualRows11994=WordField.canonicalRows actualModulus 11994 (.bxor 11992 11993) := by core033_kernel_decide
theorem stats11994 : actualRows11994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11994=7428 := by core033_kernel_decide
theorem rows11995 : actualRows11995=WordField.canonicalRows actualModulus 11995 (.bnot 11994) := by core033_kernel_decide
theorem stats11995 : actualRows11995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11995=6276 := by core033_kernel_decide
theorem rows11996 : actualRows11996=WordField.canonicalRows actualModulus 11996 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11996 : actualRows11996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11996=2892 := by core033_kernel_decide
theorem rows11997 : actualRows11997=WordField.canonicalRows actualModulus 11997 (.badd 11995 11996) := by core033_kernel_decide
theorem stats11997 : actualRows11997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11997=5388 := by core033_kernel_decide
theorem rows11998 : actualRows11998=WordField.canonicalRows actualModulus 11998 (.bnot 11997) := by core033_kernel_decide
theorem stats11998 : actualRows11998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11998=6276 := by core033_kernel_decide
theorem rows11999 : actualRows11999=WordField.canonicalRows actualModulus 11999 (.band 11998 1409) := by core033_kernel_decide
theorem stats11999 : actualRows11999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11999=5124 := by core033_kernel_decide
theorem rows12000 : actualRows12000=WordField.canonicalRows actualModulus 12000 (.bxor 11973 11999) := by core033_kernel_decide
theorem stats12000 : actualRows12000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12000=7428 := by core033_kernel_decide
theorem rows12001 : actualRows12001=WordField.canonicalRows actualModulus 12001 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12001 : actualRows12001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12001=2964 := by core033_kernel_decide
theorem rows12002 : actualRows12002=WordField.canonicalRows actualModulus 12002 (.bxor 693 12001) := by core033_kernel_decide
theorem stats12002 : actualRows12002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12002=7428 := by core033_kernel_decide
theorem rows12003 : actualRows12003=WordField.canonicalRows actualModulus 12003 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12003 : actualRows12003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12003=2820 := by core033_kernel_decide
theorem rows12004 : actualRows12004=WordField.canonicalRows actualModulus 12004 (.bnot 12003) := by core033_kernel_decide
theorem stats12004 : actualRows12004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12004=6276 := by core033_kernel_decide
theorem rows12005 : actualRows12005=WordField.canonicalRows actualModulus 12005 (.band 12002 12004) := by core033_kernel_decide
theorem stats12005 : actualRows12005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12005=5124 := by core033_kernel_decide
theorem rows12006 : actualRows12006=WordField.canonicalRows actualModulus 12006 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12006 : actualRows12006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12006=2964 := by core033_kernel_decide
theorem rows12007 : actualRows12007=WordField.canonicalRows actualModulus 12007 (.bxor 693 12006) := by core033_kernel_decide
theorem stats12007 : actualRows12007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12007=7428 := by core033_kernel_decide
theorem rows12008 : actualRows12008=WordField.canonicalRows actualModulus 12008 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12008 : actualRows12008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12008=2820 := by core033_kernel_decide
theorem rows12009 : actualRows12009=WordField.canonicalRows actualModulus 12009 (.bnot 12008) := by core033_kernel_decide
theorem stats12009 : actualRows12009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12009=6276 := by core033_kernel_decide
theorem rows12010 : actualRows12010=WordField.canonicalRows actualModulus 12010 (.bxor 12007 12009) := by core033_kernel_decide
theorem stats12010 : actualRows12010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12010=7428 := by core033_kernel_decide
theorem rows12011 : actualRows12011=WordField.canonicalRows actualModulus 12011 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12011 : actualRows12011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12011=2964 := by core033_kernel_decide
theorem rows12012 : actualRows12012=WordField.canonicalRows actualModulus 12012 (.bxor 693 12011) := by core033_kernel_decide
theorem stats12012 : actualRows12012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12012=7428 := by core033_kernel_decide
theorem rows12013 : actualRows12013=WordField.canonicalRows actualModulus 12013 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12013 : actualRows12013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12013=2820 := by core033_kernel_decide
theorem rows12014 : actualRows12014=WordField.canonicalRows actualModulus 12014 (.bnot 12013) := by core033_kernel_decide
theorem stats12014 : actualRows12014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12014=6276 := by core033_kernel_decide
theorem rows12015 : actualRows12015=WordField.canonicalRows actualModulus 12015 (.badd 12012 12014) := by core033_kernel_decide
theorem stats12015 : actualRows12015.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12015=5388 := by core033_kernel_decide
theorem rows12016 : actualRows12016=WordField.canonicalRows actualModulus 12016 (.bnot 12015) := by core033_kernel_decide
theorem stats12016 : actualRows12016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12016=6276 := by core033_kernel_decide
theorem rows12017 : actualRows12017=WordField.canonicalRows actualModulus 12017 (.band 12010 12016) := by core033_kernel_decide
theorem stats12017 : actualRows12017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12017=5124 := by core033_kernel_decide
theorem rows12018 : actualRows12018=WordField.canonicalRows actualModulus 12018 (.bxor 12005 12017) := by core033_kernel_decide
theorem stats12018 : actualRows12018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12018=7428 := by core033_kernel_decide
theorem rows12019 : actualRows12019=WordField.canonicalRows actualModulus 12019 (.shr 12018 31) := by core033_kernel_decide
theorem stats12019 : actualRows12019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12019=2892 := by core033_kernel_decide
theorem rows12020 : actualRows12020=WordField.canonicalRows actualModulus 12020 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12020 : actualRows12020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12020=2892 := by core033_kernel_decide
theorem rows12021 : actualRows12021=WordField.canonicalRows actualModulus 12021 (.bxor 12019 12020) := by core033_kernel_decide
theorem stats12021 : actualRows12021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12021=7428 := by core033_kernel_decide
def partRows185 : List R1CS.Row := actualRows11958++actualRows11959++actualRows11960++actualRows11961++actualRows11962++actualRows11963++actualRows11964++actualRows11965++actualRows11966++actualRows11967++actualRows11968++actualRows11969++actualRows11970++actualRows11971++actualRows11972++actualRows11973++actualRows11974++actualRows11975++actualRows11976++actualRows11977++actualRows11978++actualRows11979++actualRows11980++actualRows11981++actualRows11982++actualRows11983++actualRows11984++actualRows11985++actualRows11986++actualRows11987++actualRows11988++actualRows11989++actualRows11990++actualRows11991++actualRows11992++actualRows11993++actualRows11994++actualRows11995++actualRows11996++actualRows11997++actualRows11998++actualRows11999++actualRows12000++actualRows12001++actualRows12002++actualRows12003++actualRows12004++actualRows12005++actualRows12006++actualRows12007++actualRows12008++actualRows12009++actualRows12010++actualRows12011++actualRows12012++actualRows12013++actualRows12014++actualRows12015++actualRows12016++actualRows12017++actualRows12018++actualRows12019++actualRows12020++actualRows12021
def partOps185 : List WordIR.Op := [.bxor 11955 11957,.literal (BitVec.ofNat 32 3),.bxor 693 11959,.literal (BitVec.ofNat 32 0),.bnot 11961,.badd 11960 11962,.bnot 11963,.band 11958 11964,.bxor 11953 11965,.shr 11966 31,.literal (BitVec.ofNat 32 1),.bxor 11967 11968,.bnot 11969,.literal (BitVec.ofNat 32 1),.badd 11970 11971,.band 11972 10730,.literal (BitVec.ofNat 32 3),.bxor 693 11974,.literal (BitVec.ofNat 32 0),.bnot 11976,.band 11975 11977,.literal (BitVec.ofNat 32 3),.bxor 693 11979,.literal (BitVec.ofNat 32 0),.bnot 11981,.bxor 11980 11982,.literal (BitVec.ofNat 32 3),.bxor 693 11984,.literal (BitVec.ofNat 32 0),.bnot 11986,.badd 11985 11987,.bnot 11988,.band 11983 11989,.bxor 11978 11990,.shr 11991 31,.literal (BitVec.ofNat 32 1),.bxor 11992 11993,.bnot 11994,.literal (BitVec.ofNat 32 1),.badd 11995 11996,.bnot 11997,.band 11998 1409,.bxor 11973 11999,.literal (BitVec.ofNat 32 3),.bxor 693 12001,.literal (BitVec.ofNat 32 0),.bnot 12003,.band 12002 12004,.literal (BitVec.ofNat 32 3),.bxor 693 12006,.literal (BitVec.ofNat 32 0),.bnot 12008,.bxor 12007 12009,.literal (BitVec.ofNat 32 3),.bxor 693 12011,.literal (BitVec.ofNat 32 0),.bnot 12013,.badd 12012 12014,.bnot 12015,.band 12010 12016,.bxor 12005 12017,.shr 12018 31,.literal (BitVec.ofNat 32 1),.bxor 12019 12020]
theorem partExact185 : partRows185=WordField.rows actualModulus 11958 partOps185 := by
  simp only [partRows185,partOps185,WordField.rows,rows11958,rows11959,rows11960,rows11961,rows11962,rows11963,rows11964,rows11965,rows11966,rows11967,rows11968,rows11969,rows11970,rows11971,rows11972,rows11973,rows11974,rows11975,rows11976,rows11977,rows11978,rows11979,rows11980,rows11981,rows11982,rows11983,rows11984,rows11985,rows11986,rows11987,rows11988,rows11989,rows11990,rows11991,rows11992,rows11993,rows11994,rows11995,rows11996,rows11997,rows11998,rows11999,rows12000,rows12001,rows12002,rows12003,rows12004,rows12005,rows12006,rows12007,rows12008,rows12009,rows12010,rows12011,rows12012,rows12013,rows12014,rows12015,rows12016,rows12017,rows12018,rows12019,rows12020,rows12021,List.append_assoc,List.append_nil]
theorem partLength185 : partOps185.length=64 := by decide
theorem partStats185 : partRows185.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows185=334296 := by
  simp only [partRows185,List.length_append,MatrixRowBlocks.rows_weight_append,stats11958.1,stats11958.2,stats11959.1,stats11959.2,stats11960.1,stats11960.2,stats11961.1,stats11961.2,stats11962.1,stats11962.2,stats11963.1,stats11963.2,stats11964.1,stats11964.2,stats11965.1,stats11965.2,stats11966.1,stats11966.2,stats11967.1,stats11967.2,stats11968.1,stats11968.2,stats11969.1,stats11969.2,stats11970.1,stats11970.2,stats11971.1,stats11971.2,stats11972.1,stats11972.2,stats11973.1,stats11973.2,stats11974.1,stats11974.2,stats11975.1,stats11975.2,stats11976.1,stats11976.2,stats11977.1,stats11977.2,stats11978.1,stats11978.2,stats11979.1,stats11979.2,stats11980.1,stats11980.2,stats11981.1,stats11981.2,stats11982.1,stats11982.2,stats11983.1,stats11983.2,stats11984.1,stats11984.2,stats11985.1,stats11985.2,stats11986.1,stats11986.2,stats11987.1,stats11987.2,stats11988.1,stats11988.2,stats11989.1,stats11989.2,stats11990.1,stats11990.2,stats11991.1,stats11991.2,stats11992.1,stats11992.2,stats11993.1,stats11993.2,stats11994.1,stats11994.2,stats11995.1,stats11995.2,stats11996.1,stats11996.2,stats11997.1,stats11997.2,stats11998.1,stats11998.2,stats11999.1,stats11999.2,stats12000.1,stats12000.2,stats12001.1,stats12001.2,stats12002.1,stats12002.2,stats12003.1,stats12003.2,stats12004.1,stats12004.2,stats12005.1,stats12005.2,stats12006.1,stats12006.2,stats12007.1,stats12007.2,stats12008.1,stats12008.2,stats12009.1,stats12009.2,stats12010.1,stats12010.2,stats12011.1,stats12011.2,stats12012.1,stats12012.2,stats12013.1,stats12013.2,stats12014.1,stats12014.2,stats12015.1,stats12015.2,stats12016.1,stats12016.2,stats12017.1,stats12017.2,stats12018.1,stats12018.2,stats12019.1,stats12019.2,stats12020.1,stats12020.2,stats12021.1,stats12021.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
