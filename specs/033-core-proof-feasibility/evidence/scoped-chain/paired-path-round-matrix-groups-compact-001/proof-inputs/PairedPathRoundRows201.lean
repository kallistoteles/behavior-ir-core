import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData202
import PairedPathRoundInstructionMatrixData203
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12960 : actualRows12960=WordField.canonicalRows actualModulus 12960 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12960 : actualRows12960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12960=2964 := by core033_kernel_decide
theorem rows12961 : actualRows12961=WordField.canonicalRows actualModulus 12961 (.bxor 442 12960) := by core033_kernel_decide
theorem stats12961 : actualRows12961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12961=7428 := by core033_kernel_decide
theorem rows12962 : actualRows12962=WordField.canonicalRows actualModulus 12962 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12962 : actualRows12962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12962=2820 := by core033_kernel_decide
theorem rows12963 : actualRows12963=WordField.canonicalRows actualModulus 12963 (.bnot 12962) := by core033_kernel_decide
theorem stats12963 : actualRows12963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12963=6276 := by core033_kernel_decide
theorem rows12964 : actualRows12964=WordField.canonicalRows actualModulus 12964 (.bxor 12961 12963) := by core033_kernel_decide
theorem stats12964 : actualRows12964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12964=7428 := by core033_kernel_decide
theorem rows12965 : actualRows12965=WordField.canonicalRows actualModulus 12965 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12965 : actualRows12965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12965=2964 := by core033_kernel_decide
theorem rows12966 : actualRows12966=WordField.canonicalRows actualModulus 12966 (.bxor 442 12965) := by core033_kernel_decide
theorem stats12966 : actualRows12966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12966=7428 := by core033_kernel_decide
theorem rows12967 : actualRows12967=WordField.canonicalRows actualModulus 12967 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12967 : actualRows12967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12967=2820 := by core033_kernel_decide
theorem rows12968 : actualRows12968=WordField.canonicalRows actualModulus 12968 (.bnot 12967) := by core033_kernel_decide
theorem stats12968 : actualRows12968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12968=6276 := by core033_kernel_decide
theorem rows12969 : actualRows12969=WordField.canonicalRows actualModulus 12969 (.badd 12966 12968) := by core033_kernel_decide
theorem stats12969 : actualRows12969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12969=5388 := by core033_kernel_decide
theorem rows12970 : actualRows12970=WordField.canonicalRows actualModulus 12970 (.bnot 12969) := by core033_kernel_decide
theorem stats12970 : actualRows12970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12970=6276 := by core033_kernel_decide
theorem rows12971 : actualRows12971=WordField.canonicalRows actualModulus 12971 (.band 12964 12970) := by core033_kernel_decide
theorem stats12971 : actualRows12971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12971=5124 := by core033_kernel_decide
theorem rows12972 : actualRows12972=WordField.canonicalRows actualModulus 12972 (.bxor 12959 12971) := by core033_kernel_decide
theorem stats12972 : actualRows12972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12972=7428 := by core033_kernel_decide
theorem rows12973 : actualRows12973=WordField.canonicalRows actualModulus 12973 (.shr 12972 31) := by core033_kernel_decide
theorem stats12973 : actualRows12973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12973=2892 := by core033_kernel_decide
theorem rows12974 : actualRows12974=WordField.canonicalRows actualModulus 12974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12974 : actualRows12974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12974=2892 := by core033_kernel_decide
theorem rows12975 : actualRows12975=WordField.canonicalRows actualModulus 12975 (.bxor 12973 12974) := by core033_kernel_decide
theorem stats12975 : actualRows12975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12975=7428 := by core033_kernel_decide
theorem rows12976 : actualRows12976=WordField.canonicalRows actualModulus 12976 (.bnot 12975) := by core033_kernel_decide
theorem stats12976 : actualRows12976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12976=6276 := by core033_kernel_decide
theorem rows12977 : actualRows12977=WordField.canonicalRows actualModulus 12977 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12977 : actualRows12977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12977=2892 := by core033_kernel_decide
theorem rows12978 : actualRows12978=WordField.canonicalRows actualModulus 12978 (.badd 12976 12977) := by core033_kernel_decide
theorem stats12978 : actualRows12978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12978=5388 := by core033_kernel_decide
theorem rows12979 : actualRows12979=WordField.canonicalRows actualModulus 12979 (.bnot 12978) := by core033_kernel_decide
theorem stats12979 : actualRows12979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12979=6276 := by core033_kernel_decide
theorem rows12980 : actualRows12980=WordField.canonicalRows actualModulus 12980 (.band 12979 9808) := by core033_kernel_decide
theorem stats12980 : actualRows12980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12980=5124 := by core033_kernel_decide
theorem rows12981 : actualRows12981=WordField.canonicalRows actualModulus 12981 (.bxor 12954 12980) := by core033_kernel_decide
theorem stats12981 : actualRows12981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12981=7428 := by core033_kernel_decide
theorem rows12982 : actualRows12982=WordField.canonicalRows actualModulus 12982 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12982 : actualRows12982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12982=2892 := by core033_kernel_decide
theorem rows12983 : actualRows12983=WordField.canonicalRows actualModulus 12983 (.bxor 442 12982) := by core033_kernel_decide
theorem stats12983 : actualRows12983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12983=7428 := by core033_kernel_decide
theorem rows12984 : actualRows12984=WordField.canonicalRows actualModulus 12984 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12984 : actualRows12984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12984=2820 := by core033_kernel_decide
theorem rows12985 : actualRows12985=WordField.canonicalRows actualModulus 12985 (.bnot 12984) := by core033_kernel_decide
theorem stats12985 : actualRows12985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12985=6276 := by core033_kernel_decide
theorem rows12986 : actualRows12986=WordField.canonicalRows actualModulus 12986 (.band 12983 12985) := by core033_kernel_decide
theorem stats12986 : actualRows12986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12986=5124 := by core033_kernel_decide
theorem rows12987 : actualRows12987=WordField.canonicalRows actualModulus 12987 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12987 : actualRows12987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12987=2892 := by core033_kernel_decide
theorem rows12988 : actualRows12988=WordField.canonicalRows actualModulus 12988 (.bxor 442 12987) := by core033_kernel_decide
theorem stats12988 : actualRows12988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12988=7428 := by core033_kernel_decide
theorem rows12989 : actualRows12989=WordField.canonicalRows actualModulus 12989 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12989 : actualRows12989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12989=2820 := by core033_kernel_decide
theorem rows12990 : actualRows12990=WordField.canonicalRows actualModulus 12990 (.bnot 12989) := by core033_kernel_decide
theorem stats12990 : actualRows12990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12990=6276 := by core033_kernel_decide
theorem rows12991 : actualRows12991=WordField.canonicalRows actualModulus 12991 (.bxor 12988 12990) := by core033_kernel_decide
theorem stats12991 : actualRows12991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12991=7428 := by core033_kernel_decide
theorem rows12992 : actualRows12992=WordField.canonicalRows actualModulus 12992 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12992 : actualRows12992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12992=2892 := by core033_kernel_decide
theorem rows12993 : actualRows12993=WordField.canonicalRows actualModulus 12993 (.bxor 442 12992) := by core033_kernel_decide
theorem stats12993 : actualRows12993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12993=7428 := by core033_kernel_decide
theorem rows12994 : actualRows12994=WordField.canonicalRows actualModulus 12994 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12994 : actualRows12994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12994=2820 := by core033_kernel_decide
theorem rows12995 : actualRows12995=WordField.canonicalRows actualModulus 12995 (.bnot 12994) := by core033_kernel_decide
theorem stats12995 : actualRows12995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12995=6276 := by core033_kernel_decide
theorem rows12996 : actualRows12996=WordField.canonicalRows actualModulus 12996 (.badd 12993 12995) := by core033_kernel_decide
theorem stats12996 : actualRows12996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12996=5388 := by core033_kernel_decide
theorem rows12997 : actualRows12997=WordField.canonicalRows actualModulus 12997 (.bnot 12996) := by core033_kernel_decide
theorem stats12997 : actualRows12997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12997=6276 := by core033_kernel_decide
theorem rows12998 : actualRows12998=WordField.canonicalRows actualModulus 12998 (.band 12991 12997) := by core033_kernel_decide
theorem stats12998 : actualRows12998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12998=5124 := by core033_kernel_decide
theorem rows12999 : actualRows12999=WordField.canonicalRows actualModulus 12999 (.bxor 12986 12998) := by core033_kernel_decide
theorem stats12999 : actualRows12999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12999=7428 := by core033_kernel_decide
theorem rows13000 : actualRows13000=WordField.canonicalRows actualModulus 13000 (.shr 12999 31) := by core033_kernel_decide
theorem stats13000 : actualRows13000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13000=2892 := by core033_kernel_decide
theorem rows13001 : actualRows13001=WordField.canonicalRows actualModulus 13001 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13001 : actualRows13001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13001=2892 := by core033_kernel_decide
theorem rows13002 : actualRows13002=WordField.canonicalRows actualModulus 13002 (.bxor 13000 13001) := by core033_kernel_decide
theorem stats13002 : actualRows13002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13002=7428 := by core033_kernel_decide
theorem rows13003 : actualRows13003=WordField.canonicalRows actualModulus 13003 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13003 : actualRows13003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13003=2892 := by core033_kernel_decide
theorem rows13004 : actualRows13004=WordField.canonicalRows actualModulus 13004 (.bxor 442 13003) := by core033_kernel_decide
theorem stats13004 : actualRows13004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13004=7428 := by core033_kernel_decide
theorem rows13005 : actualRows13005=WordField.canonicalRows actualModulus 13005 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13005 : actualRows13005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13005=2820 := by core033_kernel_decide
theorem rows13006 : actualRows13006=WordField.canonicalRows actualModulus 13006 (.bnot 13005) := by core033_kernel_decide
theorem stats13006 : actualRows13006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13006=6276 := by core033_kernel_decide
theorem rows13007 : actualRows13007=WordField.canonicalRows actualModulus 13007 (.band 13004 13006) := by core033_kernel_decide
theorem stats13007 : actualRows13007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13007=5124 := by core033_kernel_decide
theorem rows13008 : actualRows13008=WordField.canonicalRows actualModulus 13008 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13008 : actualRows13008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13008=2892 := by core033_kernel_decide
theorem rows13009 : actualRows13009=WordField.canonicalRows actualModulus 13009 (.bxor 442 13008) := by core033_kernel_decide
theorem stats13009 : actualRows13009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13009=7428 := by core033_kernel_decide
theorem rows13010 : actualRows13010=WordField.canonicalRows actualModulus 13010 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13010 : actualRows13010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13010=2820 := by core033_kernel_decide
theorem rows13011 : actualRows13011=WordField.canonicalRows actualModulus 13011 (.bnot 13010) := by core033_kernel_decide
theorem stats13011 : actualRows13011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13011=6276 := by core033_kernel_decide
theorem rows13012 : actualRows13012=WordField.canonicalRows actualModulus 13012 (.bxor 13009 13011) := by core033_kernel_decide
theorem stats13012 : actualRows13012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13012=7428 := by core033_kernel_decide
theorem rows13013 : actualRows13013=WordField.canonicalRows actualModulus 13013 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13013 : actualRows13013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13013=2892 := by core033_kernel_decide
theorem rows13014 : actualRows13014=WordField.canonicalRows actualModulus 13014 (.bxor 442 13013) := by core033_kernel_decide
theorem stats13014 : actualRows13014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13014=7428 := by core033_kernel_decide
theorem rows13015 : actualRows13015=WordField.canonicalRows actualModulus 13015 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13015 : actualRows13015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13015=2820 := by core033_kernel_decide
theorem rows13016 : actualRows13016=WordField.canonicalRows actualModulus 13016 (.bnot 13015) := by core033_kernel_decide
theorem stats13016 : actualRows13016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13016=6276 := by core033_kernel_decide
theorem rows13017 : actualRows13017=WordField.canonicalRows actualModulus 13017 (.badd 13014 13016) := by core033_kernel_decide
theorem stats13017 : actualRows13017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13017=5388 := by core033_kernel_decide
theorem rows13018 : actualRows13018=WordField.canonicalRows actualModulus 13018 (.bnot 13017) := by core033_kernel_decide
theorem stats13018 : actualRows13018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13018=6276 := by core033_kernel_decide
theorem rows13019 : actualRows13019=WordField.canonicalRows actualModulus 13019 (.band 13012 13018) := by core033_kernel_decide
theorem stats13019 : actualRows13019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13019=5124 := by core033_kernel_decide
theorem rows13020 : actualRows13020=WordField.canonicalRows actualModulus 13020 (.bxor 13007 13019) := by core033_kernel_decide
theorem stats13020 : actualRows13020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13020=7428 := by core033_kernel_decide
theorem rows13021 : actualRows13021=WordField.canonicalRows actualModulus 13021 (.shr 13020 31) := by core033_kernel_decide
theorem stats13021 : actualRows13021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13021=2892 := by core033_kernel_decide
theorem rows13022 : actualRows13022=WordField.canonicalRows actualModulus 13022 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13022 : actualRows13022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13022=2892 := by core033_kernel_decide
theorem rows13023 : actualRows13023=WordField.canonicalRows actualModulus 13023 (.bxor 13021 13022) := by core033_kernel_decide
theorem stats13023 : actualRows13023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13023=7428 := by core033_kernel_decide
def partRows201 : List R1CS.Row := actualRows12960++actualRows12961++actualRows12962++actualRows12963++actualRows12964++actualRows12965++actualRows12966++actualRows12967++actualRows12968++actualRows12969++actualRows12970++actualRows12971++actualRows12972++actualRows12973++actualRows12974++actualRows12975++actualRows12976++actualRows12977++actualRows12978++actualRows12979++actualRows12980++actualRows12981++actualRows12982++actualRows12983++actualRows12984++actualRows12985++actualRows12986++actualRows12987++actualRows12988++actualRows12989++actualRows12990++actualRows12991++actualRows12992++actualRows12993++actualRows12994++actualRows12995++actualRows12996++actualRows12997++actualRows12998++actualRows12999++actualRows13000++actualRows13001++actualRows13002++actualRows13003++actualRows13004++actualRows13005++actualRows13006++actualRows13007++actualRows13008++actualRows13009++actualRows13010++actualRows13011++actualRows13012++actualRows13013++actualRows13014++actualRows13015++actualRows13016++actualRows13017++actualRows13018++actualRows13019++actualRows13020++actualRows13021++actualRows13022++actualRows13023
def partOps201 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 442 12960,.literal (BitVec.ofNat 32 0),.bnot 12962,.bxor 12961 12963,.literal (BitVec.ofNat 32 3),.bxor 442 12965,.literal (BitVec.ofNat 32 0),.bnot 12967,.badd 12966 12968,.bnot 12969,.band 12964 12970,.bxor 12959 12971,.shr 12972 31,.literal (BitVec.ofNat 32 1),.bxor 12973 12974,.bnot 12975,.literal (BitVec.ofNat 32 1),.badd 12976 12977,.bnot 12978,.band 12979 9808,.bxor 12954 12980,.literal (BitVec.ofNat 32 1),.bxor 442 12982,.literal (BitVec.ofNat 32 0),.bnot 12984,.band 12983 12985,.literal (BitVec.ofNat 32 1),.bxor 442 12987,.literal (BitVec.ofNat 32 0),.bnot 12989,.bxor 12988 12990,.literal (BitVec.ofNat 32 1),.bxor 442 12992,.literal (BitVec.ofNat 32 0),.bnot 12994,.badd 12993 12995,.bnot 12996,.band 12991 12997,.bxor 12986 12998,.shr 12999 31,.literal (BitVec.ofNat 32 1),.bxor 13000 13001,.literal (BitVec.ofNat 32 2),.bxor 442 13003,.literal (BitVec.ofNat 32 0),.bnot 13005,.band 13004 13006,.literal (BitVec.ofNat 32 2),.bxor 442 13008,.literal (BitVec.ofNat 32 0),.bnot 13010,.bxor 13009 13011,.literal (BitVec.ofNat 32 2),.bxor 442 13013,.literal (BitVec.ofNat 32 0),.bnot 13015,.badd 13014 13016,.bnot 13017,.band 13012 13018,.bxor 13007 13019,.shr 13020 31,.literal (BitVec.ofNat 32 1),.bxor 13021 13022]
theorem partExact201 : partRows201=WordField.rows actualModulus 12960 partOps201 := by
  simp only [partRows201,partOps201,WordField.rows,rows12960,rows12961,rows12962,rows12963,rows12964,rows12965,rows12966,rows12967,rows12968,rows12969,rows12970,rows12971,rows12972,rows12973,rows12974,rows12975,rows12976,rows12977,rows12978,rows12979,rows12980,rows12981,rows12982,rows12983,rows12984,rows12985,rows12986,rows12987,rows12988,rows12989,rows12990,rows12991,rows12992,rows12993,rows12994,rows12995,rows12996,rows12997,rows12998,rows12999,rows13000,rows13001,rows13002,rows13003,rows13004,rows13005,rows13006,rows13007,rows13008,rows13009,rows13010,rows13011,rows13012,rows13013,rows13014,rows13015,rows13016,rows13017,rows13018,rows13019,rows13020,rows13021,rows13022,rows13023,List.append_assoc,List.append_nil]
theorem partLength201 : partOps201.length=64 := by decide
theorem partStats201 : partRows201.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows201=333672 := by
  simp only [partRows201,List.length_append,MatrixRowBlocks.rows_weight_append,stats12960.1,stats12960.2,stats12961.1,stats12961.2,stats12962.1,stats12962.2,stats12963.1,stats12963.2,stats12964.1,stats12964.2,stats12965.1,stats12965.2,stats12966.1,stats12966.2,stats12967.1,stats12967.2,stats12968.1,stats12968.2,stats12969.1,stats12969.2,stats12970.1,stats12970.2,stats12971.1,stats12971.2,stats12972.1,stats12972.2,stats12973.1,stats12973.2,stats12974.1,stats12974.2,stats12975.1,stats12975.2,stats12976.1,stats12976.2,stats12977.1,stats12977.2,stats12978.1,stats12978.2,stats12979.1,stats12979.2,stats12980.1,stats12980.2,stats12981.1,stats12981.2,stats12982.1,stats12982.2,stats12983.1,stats12983.2,stats12984.1,stats12984.2,stats12985.1,stats12985.2,stats12986.1,stats12986.2,stats12987.1,stats12987.2,stats12988.1,stats12988.2,stats12989.1,stats12989.2,stats12990.1,stats12990.2,stats12991.1,stats12991.2,stats12992.1,stats12992.2,stats12993.1,stats12993.2,stats12994.1,stats12994.2,stats12995.1,stats12995.2,stats12996.1,stats12996.2,stats12997.1,stats12997.2,stats12998.1,stats12998.2,stats12999.1,stats12999.2,stats13000.1,stats13000.2,stats13001.1,stats13001.2,stats13002.1,stats13002.2,stats13003.1,stats13003.2,stats13004.1,stats13004.2,stats13005.1,stats13005.2,stats13006.1,stats13006.2,stats13007.1,stats13007.2,stats13008.1,stats13008.2,stats13009.1,stats13009.2,stats13010.1,stats13010.2,stats13011.1,stats13011.2,stats13012.1,stats13012.2,stats13013.1,stats13013.2,stats13014.1,stats13014.2,stats13015.1,stats13015.2,stats13016.1,stats13016.2,stats13017.1,stats13017.2,stats13018.1,stats13018.2,stats13019.1,stats13019.2,stats13020.1,stats13020.2,stats13021.1,stats13021.2,stats13022.1,stats13022.2,stats13023.1,stats13023.2]
  decide
end PairedPathRoundCheckedRows
