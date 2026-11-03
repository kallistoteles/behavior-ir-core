import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData202
import AuthenticatedBranchRoundInstructionMatrixData203
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12982 : actualRows12982=WordField.canonicalRows actualModulus 12982 (.bxor 12980 12981) := by core033_kernel_decide
theorem stats12982 : actualRows12982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12982=7428 := by core033_kernel_decide
theorem rows12983 : actualRows12983=WordField.canonicalRows actualModulus 12983 (.bnot 12982) := by core033_kernel_decide
theorem stats12983 : actualRows12983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12983=6276 := by core033_kernel_decide
theorem rows12984 : actualRows12984=WordField.canonicalRows actualModulus 12984 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12984 : actualRows12984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12984=2892 := by core033_kernel_decide
theorem rows12985 : actualRows12985=WordField.canonicalRows actualModulus 12985 (.badd 12983 12984) := by core033_kernel_decide
theorem stats12985 : actualRows12985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12985=5388 := by core033_kernel_decide
theorem rows12986 : actualRows12986=WordField.canonicalRows actualModulus 12986 (.bnot 12985) := by core033_kernel_decide
theorem stats12986 : actualRows12986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12986=6276 := by core033_kernel_decide
theorem rows12987 : actualRows12987=WordField.canonicalRows actualModulus 12987 (.band 12986 1618) := by core033_kernel_decide
theorem stats12987 : actualRows12987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12987=5124 := by core033_kernel_decide
theorem rows12988 : actualRows12988=WordField.canonicalRows actualModulus 12988 (.bxor 12961 12987) := by core033_kernel_decide
theorem stats12988 : actualRows12988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12988=7428 := by core033_kernel_decide
theorem rows12989 : actualRows12989=WordField.canonicalRows actualModulus 12989 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12989 : actualRows12989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12989=2964 := by core033_kernel_decide
theorem rows12990 : actualRows12990=WordField.canonicalRows actualModulus 12990 (.bxor 693 12989) := by core033_kernel_decide
theorem stats12990 : actualRows12990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12990=7428 := by core033_kernel_decide
theorem rows12991 : actualRows12991=WordField.canonicalRows actualModulus 12991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12991 : actualRows12991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12991=2820 := by core033_kernel_decide
theorem rows12992 : actualRows12992=WordField.canonicalRows actualModulus 12992 (.bnot 12991) := by core033_kernel_decide
theorem stats12992 : actualRows12992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12992=6276 := by core033_kernel_decide
theorem rows12993 : actualRows12993=WordField.canonicalRows actualModulus 12993 (.band 12990 12992) := by core033_kernel_decide
theorem stats12993 : actualRows12993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12993=5124 := by core033_kernel_decide
theorem rows12994 : actualRows12994=WordField.canonicalRows actualModulus 12994 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12994 : actualRows12994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12994=2964 := by core033_kernel_decide
theorem rows12995 : actualRows12995=WordField.canonicalRows actualModulus 12995 (.bxor 693 12994) := by core033_kernel_decide
theorem stats12995 : actualRows12995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12995=7428 := by core033_kernel_decide
theorem rows12996 : actualRows12996=WordField.canonicalRows actualModulus 12996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12996 : actualRows12996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12996=2820 := by core033_kernel_decide
theorem rows12997 : actualRows12997=WordField.canonicalRows actualModulus 12997 (.bnot 12996) := by core033_kernel_decide
theorem stats12997 : actualRows12997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12997=6276 := by core033_kernel_decide
theorem rows12998 : actualRows12998=WordField.canonicalRows actualModulus 12998 (.bxor 12995 12997) := by core033_kernel_decide
theorem stats12998 : actualRows12998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12998=7428 := by core033_kernel_decide
theorem rows12999 : actualRows12999=WordField.canonicalRows actualModulus 12999 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12999 : actualRows12999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12999=2964 := by core033_kernel_decide
theorem rows13000 : actualRows13000=WordField.canonicalRows actualModulus 13000 (.bxor 693 12999) := by core033_kernel_decide
theorem stats13000 : actualRows13000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13000=7428 := by core033_kernel_decide
theorem rows13001 : actualRows13001=WordField.canonicalRows actualModulus 13001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13001 : actualRows13001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13001=2820 := by core033_kernel_decide
theorem rows13002 : actualRows13002=WordField.canonicalRows actualModulus 13002 (.bnot 13001) := by core033_kernel_decide
theorem stats13002 : actualRows13002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13002=6276 := by core033_kernel_decide
theorem rows13003 : actualRows13003=WordField.canonicalRows actualModulus 13003 (.badd 13000 13002) := by core033_kernel_decide
theorem stats13003 : actualRows13003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13003=5388 := by core033_kernel_decide
theorem rows13004 : actualRows13004=WordField.canonicalRows actualModulus 13004 (.bnot 13003) := by core033_kernel_decide
theorem stats13004 : actualRows13004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13004=6276 := by core033_kernel_decide
theorem rows13005 : actualRows13005=WordField.canonicalRows actualModulus 13005 (.band 12998 13004) := by core033_kernel_decide
theorem stats13005 : actualRows13005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13005=5124 := by core033_kernel_decide
theorem rows13006 : actualRows13006=WordField.canonicalRows actualModulus 13006 (.bxor 12993 13005) := by core033_kernel_decide
theorem stats13006 : actualRows13006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13006=7428 := by core033_kernel_decide
theorem rows13007 : actualRows13007=WordField.canonicalRows actualModulus 13007 (.shr 13006 31) := by core033_kernel_decide
theorem stats13007 : actualRows13007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13007=2892 := by core033_kernel_decide
theorem rows13008 : actualRows13008=WordField.canonicalRows actualModulus 13008 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13008 : actualRows13008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13008=2892 := by core033_kernel_decide
theorem rows13009 : actualRows13009=WordField.canonicalRows actualModulus 13009 (.bxor 13007 13008) := by core033_kernel_decide
theorem stats13009 : actualRows13009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13009=7428 := by core033_kernel_decide
theorem rows13010 : actualRows13010=WordField.canonicalRows actualModulus 13010 (.bnot 13009) := by core033_kernel_decide
theorem stats13010 : actualRows13010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13010=6276 := by core033_kernel_decide
theorem rows13011 : actualRows13011=WordField.canonicalRows actualModulus 13011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13011 : actualRows13011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13011=2892 := by core033_kernel_decide
theorem rows13012 : actualRows13012=WordField.canonicalRows actualModulus 13012 (.badd 13010 13011) := by core033_kernel_decide
theorem stats13012 : actualRows13012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13012=5388 := by core033_kernel_decide
theorem rows13013 : actualRows13013=WordField.canonicalRows actualModulus 13013 (.band 13012 10950) := by core033_kernel_decide
theorem stats13013 : actualRows13013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13013=5124 := by core033_kernel_decide
theorem rows13014 : actualRows13014=WordField.canonicalRows actualModulus 13014 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13014 : actualRows13014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13014=2964 := by core033_kernel_decide
theorem rows13015 : actualRows13015=WordField.canonicalRows actualModulus 13015 (.bxor 693 13014) := by core033_kernel_decide
theorem stats13015 : actualRows13015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13015=7428 := by core033_kernel_decide
theorem rows13016 : actualRows13016=WordField.canonicalRows actualModulus 13016 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13016 : actualRows13016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13016=2820 := by core033_kernel_decide
theorem rows13017 : actualRows13017=WordField.canonicalRows actualModulus 13017 (.bnot 13016) := by core033_kernel_decide
theorem stats13017 : actualRows13017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13017=6276 := by core033_kernel_decide
theorem rows13018 : actualRows13018=WordField.canonicalRows actualModulus 13018 (.band 13015 13017) := by core033_kernel_decide
theorem stats13018 : actualRows13018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13018=5124 := by core033_kernel_decide
theorem rows13019 : actualRows13019=WordField.canonicalRows actualModulus 13019 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13019 : actualRows13019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13019=2964 := by core033_kernel_decide
theorem rows13020 : actualRows13020=WordField.canonicalRows actualModulus 13020 (.bxor 693 13019) := by core033_kernel_decide
theorem stats13020 : actualRows13020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13020=7428 := by core033_kernel_decide
theorem rows13021 : actualRows13021=WordField.canonicalRows actualModulus 13021 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13021 : actualRows13021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13021=2820 := by core033_kernel_decide
theorem rows13022 : actualRows13022=WordField.canonicalRows actualModulus 13022 (.bnot 13021) := by core033_kernel_decide
theorem stats13022 : actualRows13022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13022=6276 := by core033_kernel_decide
theorem rows13023 : actualRows13023=WordField.canonicalRows actualModulus 13023 (.bxor 13020 13022) := by core033_kernel_decide
theorem stats13023 : actualRows13023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13023=7428 := by core033_kernel_decide
theorem rows13024 : actualRows13024=WordField.canonicalRows actualModulus 13024 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13024 : actualRows13024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13024=2964 := by core033_kernel_decide
theorem rows13025 : actualRows13025=WordField.canonicalRows actualModulus 13025 (.bxor 693 13024) := by core033_kernel_decide
theorem stats13025 : actualRows13025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13025=7428 := by core033_kernel_decide
theorem rows13026 : actualRows13026=WordField.canonicalRows actualModulus 13026 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13026 : actualRows13026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13026=2820 := by core033_kernel_decide
theorem rows13027 : actualRows13027=WordField.canonicalRows actualModulus 13027 (.bnot 13026) := by core033_kernel_decide
theorem stats13027 : actualRows13027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13027=6276 := by core033_kernel_decide
theorem rows13028 : actualRows13028=WordField.canonicalRows actualModulus 13028 (.badd 13025 13027) := by core033_kernel_decide
theorem stats13028 : actualRows13028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13028=5388 := by core033_kernel_decide
theorem rows13029 : actualRows13029=WordField.canonicalRows actualModulus 13029 (.bnot 13028) := by core033_kernel_decide
theorem stats13029 : actualRows13029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13029=6276 := by core033_kernel_decide
theorem rows13030 : actualRows13030=WordField.canonicalRows actualModulus 13030 (.band 13023 13029) := by core033_kernel_decide
theorem stats13030 : actualRows13030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13030=5124 := by core033_kernel_decide
theorem rows13031 : actualRows13031=WordField.canonicalRows actualModulus 13031 (.bxor 13018 13030) := by core033_kernel_decide
theorem stats13031 : actualRows13031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13031=7428 := by core033_kernel_decide
theorem rows13032 : actualRows13032=WordField.canonicalRows actualModulus 13032 (.shr 13031 31) := by core033_kernel_decide
theorem stats13032 : actualRows13032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13032=2892 := by core033_kernel_decide
theorem rows13033 : actualRows13033=WordField.canonicalRows actualModulus 13033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13033 : actualRows13033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13033=2892 := by core033_kernel_decide
theorem rows13034 : actualRows13034=WordField.canonicalRows actualModulus 13034 (.bxor 13032 13033) := by core033_kernel_decide
theorem stats13034 : actualRows13034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13034=7428 := by core033_kernel_decide
theorem rows13035 : actualRows13035=WordField.canonicalRows actualModulus 13035 (.bnot 13034) := by core033_kernel_decide
theorem stats13035 : actualRows13035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13035=6276 := by core033_kernel_decide
theorem rows13036 : actualRows13036=WordField.canonicalRows actualModulus 13036 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13036 : actualRows13036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13036=2892 := by core033_kernel_decide
theorem rows13037 : actualRows13037=WordField.canonicalRows actualModulus 13037 (.badd 13035 13036) := by core033_kernel_decide
theorem stats13037 : actualRows13037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13037=5388 := by core033_kernel_decide
theorem rows13038 : actualRows13038=WordField.canonicalRows actualModulus 13038 (.bnot 13037) := by core033_kernel_decide
theorem stats13038 : actualRows13038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13038=6276 := by core033_kernel_decide
theorem rows13039 : actualRows13039=WordField.canonicalRows actualModulus 13039 (.band 13038 1629) := by core033_kernel_decide
theorem stats13039 : actualRows13039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13039=5124 := by core033_kernel_decide
theorem rows13040 : actualRows13040=WordField.canonicalRows actualModulus 13040 (.bxor 13013 13039) := by core033_kernel_decide
theorem stats13040 : actualRows13040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13040=7428 := by core033_kernel_decide
theorem rows13041 : actualRows13041=WordField.canonicalRows actualModulus 13041 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13041 : actualRows13041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13041=2964 := by core033_kernel_decide
theorem rows13042 : actualRows13042=WordField.canonicalRows actualModulus 13042 (.bxor 693 13041) := by core033_kernel_decide
theorem stats13042 : actualRows13042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13042=7428 := by core033_kernel_decide
theorem rows13043 : actualRows13043=WordField.canonicalRows actualModulus 13043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13043 : actualRows13043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13043=2820 := by core033_kernel_decide
theorem rows13044 : actualRows13044=WordField.canonicalRows actualModulus 13044 (.bnot 13043) := by core033_kernel_decide
theorem stats13044 : actualRows13044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13044=6276 := by core033_kernel_decide
theorem rows13045 : actualRows13045=WordField.canonicalRows actualModulus 13045 (.band 13042 13044) := by core033_kernel_decide
theorem stats13045 : actualRows13045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13045=5124 := by core033_kernel_decide
def partRows201 : List R1CS.Row := actualRows12982++actualRows12983++actualRows12984++actualRows12985++actualRows12986++actualRows12987++actualRows12988++actualRows12989++actualRows12990++actualRows12991++actualRows12992++actualRows12993++actualRows12994++actualRows12995++actualRows12996++actualRows12997++actualRows12998++actualRows12999++actualRows13000++actualRows13001++actualRows13002++actualRows13003++actualRows13004++actualRows13005++actualRows13006++actualRows13007++actualRows13008++actualRows13009++actualRows13010++actualRows13011++actualRows13012++actualRows13013++actualRows13014++actualRows13015++actualRows13016++actualRows13017++actualRows13018++actualRows13019++actualRows13020++actualRows13021++actualRows13022++actualRows13023++actualRows13024++actualRows13025++actualRows13026++actualRows13027++actualRows13028++actualRows13029++actualRows13030++actualRows13031++actualRows13032++actualRows13033++actualRows13034++actualRows13035++actualRows13036++actualRows13037++actualRows13038++actualRows13039++actualRows13040++actualRows13041++actualRows13042++actualRows13043++actualRows13044++actualRows13045
def partOps201 : List WordIR.Op := [.bxor 12980 12981,.bnot 12982,.literal (BitVec.ofNat 32 1),.badd 12983 12984,.bnot 12985,.band 12986 1618,.bxor 12961 12987,.literal (BitVec.ofNat 32 3),.bxor 693 12989,.literal (BitVec.ofNat 32 0),.bnot 12991,.band 12990 12992,.literal (BitVec.ofNat 32 3),.bxor 693 12994,.literal (BitVec.ofNat 32 0),.bnot 12996,.bxor 12995 12997,.literal (BitVec.ofNat 32 3),.bxor 693 12999,.literal (BitVec.ofNat 32 0),.bnot 13001,.badd 13000 13002,.bnot 13003,.band 12998 13004,.bxor 12993 13005,.shr 13006 31,.literal (BitVec.ofNat 32 1),.bxor 13007 13008,.bnot 13009,.literal (BitVec.ofNat 32 1),.badd 13010 13011,.band 13012 10950,.literal (BitVec.ofNat 32 3),.bxor 693 13014,.literal (BitVec.ofNat 32 0),.bnot 13016,.band 13015 13017,.literal (BitVec.ofNat 32 3),.bxor 693 13019,.literal (BitVec.ofNat 32 0),.bnot 13021,.bxor 13020 13022,.literal (BitVec.ofNat 32 3),.bxor 693 13024,.literal (BitVec.ofNat 32 0),.bnot 13026,.badd 13025 13027,.bnot 13028,.band 13023 13029,.bxor 13018 13030,.shr 13031 31,.literal (BitVec.ofNat 32 1),.bxor 13032 13033,.bnot 13034,.literal (BitVec.ofNat 32 1),.badd 13035 13036,.bnot 13037,.band 13038 1629,.bxor 13013 13039,.literal (BitVec.ofNat 32 3),.bxor 693 13041,.literal (BitVec.ofNat 32 0),.bnot 13043,.band 13042 13044]
theorem partExact201 : partRows201=WordField.rows actualModulus 12982 partOps201 := by
  simp only [partRows201,partOps201,WordField.rows,rows12982,rows12983,rows12984,rows12985,rows12986,rows12987,rows12988,rows12989,rows12990,rows12991,rows12992,rows12993,rows12994,rows12995,rows12996,rows12997,rows12998,rows12999,rows13000,rows13001,rows13002,rows13003,rows13004,rows13005,rows13006,rows13007,rows13008,rows13009,rows13010,rows13011,rows13012,rows13013,rows13014,rows13015,rows13016,rows13017,rows13018,rows13019,rows13020,rows13021,rows13022,rows13023,rows13024,rows13025,rows13026,rows13027,rows13028,rows13029,rows13030,rows13031,rows13032,rows13033,rows13034,rows13035,rows13036,rows13037,rows13038,rows13039,rows13040,rows13041,rows13042,rows13043,rows13044,rows13045,List.append_assoc,List.append_nil]
theorem partLength201 : partOps201.length=64 := by decide
theorem partStats201 : partRows201.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows201=335376 := by
  simp only [partRows201,List.length_append,MatrixRowBlocks.rows_weight_append,stats12982.1,stats12982.2,stats12983.1,stats12983.2,stats12984.1,stats12984.2,stats12985.1,stats12985.2,stats12986.1,stats12986.2,stats12987.1,stats12987.2,stats12988.1,stats12988.2,stats12989.1,stats12989.2,stats12990.1,stats12990.2,stats12991.1,stats12991.2,stats12992.1,stats12992.2,stats12993.1,stats12993.2,stats12994.1,stats12994.2,stats12995.1,stats12995.2,stats12996.1,stats12996.2,stats12997.1,stats12997.2,stats12998.1,stats12998.2,stats12999.1,stats12999.2,stats13000.1,stats13000.2,stats13001.1,stats13001.2,stats13002.1,stats13002.2,stats13003.1,stats13003.2,stats13004.1,stats13004.2,stats13005.1,stats13005.2,stats13006.1,stats13006.2,stats13007.1,stats13007.2,stats13008.1,stats13008.2,stats13009.1,stats13009.2,stats13010.1,stats13010.2,stats13011.1,stats13011.2,stats13012.1,stats13012.2,stats13013.1,stats13013.2,stats13014.1,stats13014.2,stats13015.1,stats13015.2,stats13016.1,stats13016.2,stats13017.1,stats13017.2,stats13018.1,stats13018.2,stats13019.1,stats13019.2,stats13020.1,stats13020.2,stats13021.1,stats13021.2,stats13022.1,stats13022.2,stats13023.1,stats13023.2,stats13024.1,stats13024.2,stats13025.1,stats13025.2,stats13026.1,stats13026.2,stats13027.1,stats13027.2,stats13028.1,stats13028.2,stats13029.1,stats13029.2,stats13030.1,stats13030.2,stats13031.1,stats13031.2,stats13032.1,stats13032.2,stats13033.1,stats13033.2,stats13034.1,stats13034.2,stats13035.1,stats13035.2,stats13036.1,stats13036.2,stats13037.1,stats13037.2,stats13038.1,stats13038.2,stats13039.1,stats13039.2,stats13040.1,stats13040.2,stats13041.1,stats13041.2,stats13042.1,stats13042.2,stats13043.1,stats13043.2,stats13044.1,stats13044.2,stats13045.1,stats13045.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
