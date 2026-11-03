import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData30
import PathRoundDispatchInstructionMatrixData31
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1963 : actualRows1963=WordField.canonicalRows actualModulus 1963 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1963 : actualRows1963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1963=2892 := by core033_kernel_decide
theorem rows1964 : actualRows1964=WordField.canonicalRows actualModulus 1964 (.badd 1962 1963) := by core033_kernel_decide
theorem stats1964 : actualRows1964.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1964=5388 := by core033_kernel_decide
theorem rows1965 : actualRows1965=WordField.canonicalRows actualModulus 1965 (.bnot 1964) := by core033_kernel_decide
theorem stats1965 : actualRows1965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1965=6276 := by core033_kernel_decide
theorem rows1966 : actualRows1966=WordField.canonicalRows actualModulus 1966 (.literal (BitVec.ofNat 32 1779033703)) := by core033_kernel_decide
theorem stats1966 : actualRows1966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1966=3972 := by core033_kernel_decide
theorem rows1967 : actualRows1967=WordField.canonicalRows actualModulus 1967 (.band 1965 1966) := by core033_kernel_decide
theorem stats1967 : actualRows1967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1967=5124 := by core033_kernel_decide
theorem rows1968 : actualRows1968=WordField.canonicalRows actualModulus 1968 (.bxor 1940 1967) := by core033_kernel_decide
theorem stats1968 : actualRows1968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1968=7428 := by core033_kernel_decide
theorem rows1969 : actualRows1969=WordField.canonicalRows actualModulus 1969 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1969 : actualRows1969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1969=2892 := by core033_kernel_decide
theorem rows1970 : actualRows1970=WordField.canonicalRows actualModulus 1970 (.bxor 96 1969) := by core033_kernel_decide
theorem stats1970 : actualRows1970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1970=7428 := by core033_kernel_decide
theorem rows1971 : actualRows1971=WordField.canonicalRows actualModulus 1971 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1971 : actualRows1971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1971=2820 := by core033_kernel_decide
theorem rows1972 : actualRows1972=WordField.canonicalRows actualModulus 1972 (.bnot 1971) := by core033_kernel_decide
theorem stats1972 : actualRows1972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1972=6276 := by core033_kernel_decide
theorem rows1973 : actualRows1973=WordField.canonicalRows actualModulus 1973 (.band 1970 1972) := by core033_kernel_decide
theorem stats1973 : actualRows1973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1973=5124 := by core033_kernel_decide
theorem rows1974 : actualRows1974=WordField.canonicalRows actualModulus 1974 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1974 : actualRows1974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1974=2892 := by core033_kernel_decide
theorem rows1975 : actualRows1975=WordField.canonicalRows actualModulus 1975 (.bxor 96 1974) := by core033_kernel_decide
theorem stats1975 : actualRows1975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1975=7428 := by core033_kernel_decide
theorem rows1976 : actualRows1976=WordField.canonicalRows actualModulus 1976 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1976 : actualRows1976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1976=2820 := by core033_kernel_decide
theorem rows1977 : actualRows1977=WordField.canonicalRows actualModulus 1977 (.bnot 1976) := by core033_kernel_decide
theorem stats1977 : actualRows1977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1977=6276 := by core033_kernel_decide
theorem rows1978 : actualRows1978=WordField.canonicalRows actualModulus 1978 (.bxor 1975 1977) := by core033_kernel_decide
theorem stats1978 : actualRows1978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1978=7428 := by core033_kernel_decide
theorem rows1979 : actualRows1979=WordField.canonicalRows actualModulus 1979 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1979 : actualRows1979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1979=2892 := by core033_kernel_decide
theorem rows1980 : actualRows1980=WordField.canonicalRows actualModulus 1980 (.bxor 96 1979) := by core033_kernel_decide
theorem stats1980 : actualRows1980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1980=7428 := by core033_kernel_decide
theorem rows1981 : actualRows1981=WordField.canonicalRows actualModulus 1981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1981 : actualRows1981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1981=2820 := by core033_kernel_decide
theorem rows1982 : actualRows1982=WordField.canonicalRows actualModulus 1982 (.bnot 1981) := by core033_kernel_decide
theorem stats1982 : actualRows1982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1982=6276 := by core033_kernel_decide
theorem rows1983 : actualRows1983=WordField.canonicalRows actualModulus 1983 (.badd 1980 1982) := by core033_kernel_decide
theorem stats1983 : actualRows1983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1983=5388 := by core033_kernel_decide
theorem rows1984 : actualRows1984=WordField.canonicalRows actualModulus 1984 (.bnot 1983) := by core033_kernel_decide
theorem stats1984 : actualRows1984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1984=6276 := by core033_kernel_decide
theorem rows1985 : actualRows1985=WordField.canonicalRows actualModulus 1985 (.band 1978 1984) := by core033_kernel_decide
theorem stats1985 : actualRows1985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1985=5124 := by core033_kernel_decide
theorem rows1986 : actualRows1986=WordField.canonicalRows actualModulus 1986 (.bxor 1973 1985) := by core033_kernel_decide
theorem stats1986 : actualRows1986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1986=7428 := by core033_kernel_decide
theorem rows1987 : actualRows1987=WordField.canonicalRows actualModulus 1987 (.shr 1986 31) := by core033_kernel_decide
theorem stats1987 : actualRows1987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1987=2892 := by core033_kernel_decide
theorem rows1988 : actualRows1988=WordField.canonicalRows actualModulus 1988 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1988 : actualRows1988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1988=2892 := by core033_kernel_decide
theorem rows1989 : actualRows1989=WordField.canonicalRows actualModulus 1989 (.bxor 1987 1988) := by core033_kernel_decide
theorem stats1989 : actualRows1989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1989=7428 := by core033_kernel_decide
theorem rows1990 : actualRows1990=WordField.canonicalRows actualModulus 1990 (.bnot 1989) := by core033_kernel_decide
theorem stats1990 : actualRows1990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1990=6276 := by core033_kernel_decide
theorem rows1991 : actualRows1991=WordField.canonicalRows actualModulus 1991 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1991 : actualRows1991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1991=2892 := by core033_kernel_decide
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.badd 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1992=5388 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.band 1992 492) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=5124 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=2892 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.bxor 96 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1995=7428 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1996=2820 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.bnot 1996) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1997=6276 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.band 1995 1997) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5124 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=2892 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.bxor 96 1999) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=7428 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=2820 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.bnot 2001) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2002=6276 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.bxor 2000 2002) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2003=7428 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=2892 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.bxor 96 2004) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=7428 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=2820 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.bnot 2006) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=6276 := by core033_kernel_decide
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.badd 2005 2007) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2008=5388 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.bnot 2008) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2009=6276 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.band 2003 2009) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2010=5124 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.bxor 1998 2010) := by core033_kernel_decide
theorem stats2011 : actualRows2011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2011=7428 := by core033_kernel_decide
theorem rows2012 : actualRows2012=WordField.canonicalRows actualModulus 2012 (.shr 2011 31) := by core033_kernel_decide
theorem stats2012 : actualRows2012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2012=2892 := by core033_kernel_decide
theorem rows2013 : actualRows2013=WordField.canonicalRows actualModulus 2013 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2013 : actualRows2013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2013=2892 := by core033_kernel_decide
theorem rows2014 : actualRows2014=WordField.canonicalRows actualModulus 2014 (.bxor 2012 2013) := by core033_kernel_decide
theorem stats2014 : actualRows2014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2014=7428 := by core033_kernel_decide
theorem rows2015 : actualRows2015=WordField.canonicalRows actualModulus 2015 (.bnot 2014) := by core033_kernel_decide
theorem stats2015 : actualRows2015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2015=6276 := by core033_kernel_decide
theorem rows2016 : actualRows2016=WordField.canonicalRows actualModulus 2016 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2016 : actualRows2016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2016=2892 := by core033_kernel_decide
theorem rows2017 : actualRows2017=WordField.canonicalRows actualModulus 2017 (.badd 2015 2016) := by core033_kernel_decide
theorem stats2017 : actualRows2017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2017=5388 := by core033_kernel_decide
theorem rows2018 : actualRows2018=WordField.canonicalRows actualModulus 2018 (.bnot 2017) := by core033_kernel_decide
theorem stats2018 : actualRows2018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2018=6276 := by core033_kernel_decide
theorem rows2019 : actualRows2019=WordField.canonicalRows actualModulus 2019 (.literal (BitVec.ofNat 32 3144134277)) := by core033_kernel_decide
theorem stats2019 : actualRows2019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2019=4188 := by core033_kernel_decide
theorem rows2020 : actualRows2020=WordField.canonicalRows actualModulus 2020 (.band 2018 2019) := by core033_kernel_decide
theorem stats2020 : actualRows2020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2020=5124 := by core033_kernel_decide
theorem rows2021 : actualRows2021=WordField.canonicalRows actualModulus 2021 (.bxor 1993 2020) := by core033_kernel_decide
theorem stats2021 : actualRows2021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2021=7428 := by core033_kernel_decide
theorem rows2022 : actualRows2022=WordField.canonicalRows actualModulus 2022 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2022 : actualRows2022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2022=2892 := by core033_kernel_decide
theorem rows2023 : actualRows2023=WordField.canonicalRows actualModulus 2023 (.bxor 96 2022) := by core033_kernel_decide
theorem stats2023 : actualRows2023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2023=7428 := by core033_kernel_decide
theorem rows2024 : actualRows2024=WordField.canonicalRows actualModulus 2024 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2024 : actualRows2024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2024=2820 := by core033_kernel_decide
theorem rows2025 : actualRows2025=WordField.canonicalRows actualModulus 2025 (.bnot 2024) := by core033_kernel_decide
theorem stats2025 : actualRows2025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2025=6276 := by core033_kernel_decide
theorem rows2026 : actualRows2026=WordField.canonicalRows actualModulus 2026 (.band 2023 2025) := by core033_kernel_decide
theorem stats2026 : actualRows2026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2026=5124 := by core033_kernel_decide
def partRows30 : List R1CS.Row := actualRows1963++actualRows1964++actualRows1965++actualRows1966++actualRows1967++actualRows1968++actualRows1969++actualRows1970++actualRows1971++actualRows1972++actualRows1973++actualRows1974++actualRows1975++actualRows1976++actualRows1977++actualRows1978++actualRows1979++actualRows1980++actualRows1981++actualRows1982++actualRows1983++actualRows1984++actualRows1985++actualRows1986++actualRows1987++actualRows1988++actualRows1989++actualRows1990++actualRows1991++actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007++actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015++actualRows2016++actualRows2017++actualRows2018++actualRows2019++actualRows2020++actualRows2021++actualRows2022++actualRows2023++actualRows2024++actualRows2025++actualRows2026
def partOps30 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 1962 1963,.bnot 1964,.literal (BitVec.ofNat 32 1779033703),.band 1965 1966,.bxor 1940 1967,.literal (BitVec.ofNat 32 2),.bxor 96 1969,.literal (BitVec.ofNat 32 0),.bnot 1971,.band 1970 1972,.literal (BitVec.ofNat 32 2),.bxor 96 1974,.literal (BitVec.ofNat 32 0),.bnot 1976,.bxor 1975 1977,.literal (BitVec.ofNat 32 2),.bxor 96 1979,.literal (BitVec.ofNat 32 0),.bnot 1981,.badd 1980 1982,.bnot 1983,.band 1978 1984,.bxor 1973 1985,.shr 1986 31,.literal (BitVec.ofNat 32 1),.bxor 1987 1988,.bnot 1989,.literal (BitVec.ofNat 32 1),.badd 1990 1991,.band 1992 492,.literal (BitVec.ofNat 32 2),.bxor 96 1994,.literal (BitVec.ofNat 32 0),.bnot 1996,.band 1995 1997,.literal (BitVec.ofNat 32 2),.bxor 96 1999,.literal (BitVec.ofNat 32 0),.bnot 2001,.bxor 2000 2002,.literal (BitVec.ofNat 32 2),.bxor 96 2004,.literal (BitVec.ofNat 32 0),.bnot 2006,.badd 2005 2007,.bnot 2008,.band 2003 2009,.bxor 1998 2010,.shr 2011 31,.literal (BitVec.ofNat 32 1),.bxor 2012 2013,.bnot 2014,.literal (BitVec.ofNat 32 1),.badd 2015 2016,.bnot 2017,.literal (BitVec.ofNat 32 3144134277),.band 2018 2019,.bxor 1993 2020,.literal (BitVec.ofNat 32 2),.bxor 96 2022,.literal (BitVec.ofNat 32 0),.bnot 2024,.band 2023 2025]
theorem partExact30 : partRows30=WordField.rows actualModulus 1963 partOps30 := by
  simp only [partRows30,partOps30,WordField.rows,rows1963,rows1964,rows1965,rows1966,rows1967,rows1968,rows1969,rows1970,rows1971,rows1972,rows1973,rows1974,rows1975,rows1976,rows1977,rows1978,rows1979,rows1980,rows1981,rows1982,rows1983,rows1984,rows1985,rows1986,rows1987,rows1988,rows1989,rows1990,rows1991,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,rows2016,rows2017,rows2018,rows2019,rows2020,rows2021,rows2022,rows2023,rows2024,rows2025,rows2026,List.append_assoc,List.append_nil]
theorem partLength30 : partOps30.length=64 := by decide
theorem partStats30 : partRows30.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows30=329328 := by
  simp only [partRows30,List.length_append,MatrixRowBlocks.rows_weight_append,stats1963.1,stats1963.2,stats1964.1,stats1964.2,stats1965.1,stats1965.2,stats1966.1,stats1966.2,stats1967.1,stats1967.2,stats1968.1,stats1968.2,stats1969.1,stats1969.2,stats1970.1,stats1970.2,stats1971.1,stats1971.2,stats1972.1,stats1972.2,stats1973.1,stats1973.2,stats1974.1,stats1974.2,stats1975.1,stats1975.2,stats1976.1,stats1976.2,stats1977.1,stats1977.2,stats1978.1,stats1978.2,stats1979.1,stats1979.2,stats1980.1,stats1980.2,stats1981.1,stats1981.2,stats1982.1,stats1982.2,stats1983.1,stats1983.2,stats1984.1,stats1984.2,stats1985.1,stats1985.2,stats1986.1,stats1986.2,stats1987.1,stats1987.2,stats1988.1,stats1988.2,stats1989.1,stats1989.2,stats1990.1,stats1990.2,stats1991.1,stats1991.2,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2,stats2016.1,stats2016.2,stats2017.1,stats2017.2,stats2018.1,stats2018.2,stats2019.1,stats2019.2,stats2020.1,stats2020.2,stats2021.1,stats2021.2,stats2022.1,stats2022.2,stats2023.1,stats2023.2,stats2024.1,stats2024.2,stats2025.1,stats2025.2,stats2026.1,stats2026.2]
  decide
end PathRoundDispatchCheckedRows
