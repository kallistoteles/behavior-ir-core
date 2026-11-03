import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData30
import AuthenticatedBranchRoundInstructionMatrixData31
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1974 : actualRows1974=WordField.canonicalRows actualModulus 1974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1974 : actualRows1974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1974=2892 := by core033_kernel_decide
theorem rows1975 : actualRows1975=WordField.canonicalRows actualModulus 1975 (.band 1973 1974) := by core033_kernel_decide
theorem stats1975 : actualRows1975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1975=5124 := by core033_kernel_decide
theorem rows1976 : actualRows1976=WordField.canonicalRows actualModulus 1976 (.bnot 1975) := by core033_kernel_decide
theorem stats1976 : actualRows1976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1976=6276 := by core033_kernel_decide
theorem rows1977 : actualRows1977=WordField.canonicalRows actualModulus 1977 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1977 : actualRows1977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1977=2892 := by core033_kernel_decide
theorem rows1978 : actualRows1978=WordField.canonicalRows actualModulus 1978 (.badd 1976 1977) := by core033_kernel_decide
theorem stats1978 : actualRows1978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1978=5388 := by core033_kernel_decide
theorem rows1979 : actualRows1979=WordField.canonicalRows actualModulus 1979 (.shr 1954 1) := by core033_kernel_decide
theorem stats1979 : actualRows1979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1979=5052 := by core033_kernel_decide
theorem rows1980 : actualRows1980=WordField.canonicalRows actualModulus 1980 (.band 1978 1979) := by core033_kernel_decide
theorem stats1980 : actualRows1980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1980=5124 := by core033_kernel_decide
theorem rows1981 : actualRows1981=WordField.canonicalRows actualModulus 1981 (.shr 1824 0) := by core033_kernel_decide
theorem stats1981 : actualRows1981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1981=5124 := by core033_kernel_decide
theorem rows1982 : actualRows1982=WordField.canonicalRows actualModulus 1982 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1982 : actualRows1982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1982=2892 := by core033_kernel_decide
theorem rows1983 : actualRows1983=WordField.canonicalRows actualModulus 1983 (.band 1981 1982) := by core033_kernel_decide
theorem stats1983 : actualRows1983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1983=5124 := by core033_kernel_decide
theorem rows1984 : actualRows1984=WordField.canonicalRows actualModulus 1984 (.bnot 1983) := by core033_kernel_decide
theorem stats1984 : actualRows1984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1984=6276 := by core033_kernel_decide
theorem rows1985 : actualRows1985=WordField.canonicalRows actualModulus 1985 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1985 : actualRows1985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1985=2892 := by core033_kernel_decide
theorem rows1986 : actualRows1986=WordField.canonicalRows actualModulus 1986 (.badd 1984 1985) := by core033_kernel_decide
theorem stats1986 : actualRows1986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1986=5388 := by core033_kernel_decide
theorem rows1987 : actualRows1987=WordField.canonicalRows actualModulus 1987 (.bnot 1986) := by core033_kernel_decide
theorem stats1987 : actualRows1987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1987=6276 := by core033_kernel_decide
theorem rows1988 : actualRows1988=WordField.canonicalRows actualModulus 1988 (.band 1987 1954) := by core033_kernel_decide
theorem stats1988 : actualRows1988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1988=5124 := by core033_kernel_decide
theorem rows1989 : actualRows1989=WordField.canonicalRows actualModulus 1989 (.bxor 1980 1988) := by core033_kernel_decide
theorem stats1989 : actualRows1989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1989=7428 := by core033_kernel_decide
theorem rows1990 : actualRows1990=WordField.canonicalRows actualModulus 1990 (.shr 1824 1) := by core033_kernel_decide
theorem stats1990 : actualRows1990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1990=5052 := by core033_kernel_decide
theorem rows1991 : actualRows1991=WordField.canonicalRows actualModulus 1991 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1991 : actualRows1991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1991=2892 := by core033_kernel_decide
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.band 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1992=5124 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.bnot 1992) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=6276 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=2892 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.badd 1993 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1995=5388 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.shr 1989 2) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1996=4980 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.band 1995 1996) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1997=5124 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.shr 1824 1) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5052 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=2892 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.band 1998 1999) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=5124 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.bnot 2000) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=6276 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2002=2892 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.badd 2001 2002) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2003=5388 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.bnot 2003) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=6276 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.band 2004 1989) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=5124 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.bxor 1997 2005) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=7428 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.shr 1824 2) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=4980 := by core033_kernel_decide
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2008=2892 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.band 2007 2008) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2009=5124 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.bnot 2009) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2010=6276 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2011 : actualRows2011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2011=2892 := by core033_kernel_decide
theorem rows2012 : actualRows2012=WordField.canonicalRows actualModulus 2012 (.badd 2010 2011) := by core033_kernel_decide
theorem stats2012 : actualRows2012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2012=5388 := by core033_kernel_decide
theorem rows2013 : actualRows2013=WordField.canonicalRows actualModulus 2013 (.shr 2006 4) := by core033_kernel_decide
theorem stats2013 : actualRows2013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2013=4836 := by core033_kernel_decide
theorem rows2014 : actualRows2014=WordField.canonicalRows actualModulus 2014 (.band 2012 2013) := by core033_kernel_decide
theorem stats2014 : actualRows2014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2014=5124 := by core033_kernel_decide
theorem rows2015 : actualRows2015=WordField.canonicalRows actualModulus 2015 (.shr 1824 2) := by core033_kernel_decide
theorem stats2015 : actualRows2015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2015=4980 := by core033_kernel_decide
theorem rows2016 : actualRows2016=WordField.canonicalRows actualModulus 2016 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2016 : actualRows2016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2016=2892 := by core033_kernel_decide
theorem rows2017 : actualRows2017=WordField.canonicalRows actualModulus 2017 (.band 2015 2016) := by core033_kernel_decide
theorem stats2017 : actualRows2017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2017=5124 := by core033_kernel_decide
theorem rows2018 : actualRows2018=WordField.canonicalRows actualModulus 2018 (.bnot 2017) := by core033_kernel_decide
theorem stats2018 : actualRows2018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2018=6276 := by core033_kernel_decide
theorem rows2019 : actualRows2019=WordField.canonicalRows actualModulus 2019 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2019 : actualRows2019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2019=2892 := by core033_kernel_decide
theorem rows2020 : actualRows2020=WordField.canonicalRows actualModulus 2020 (.badd 2018 2019) := by core033_kernel_decide
theorem stats2020 : actualRows2020.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2020=5388 := by core033_kernel_decide
theorem rows2021 : actualRows2021=WordField.canonicalRows actualModulus 2021 (.bnot 2020) := by core033_kernel_decide
theorem stats2021 : actualRows2021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2021=6276 := by core033_kernel_decide
theorem rows2022 : actualRows2022=WordField.canonicalRows actualModulus 2022 (.band 2021 2006) := by core033_kernel_decide
theorem stats2022 : actualRows2022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2022=5124 := by core033_kernel_decide
theorem rows2023 : actualRows2023=WordField.canonicalRows actualModulus 2023 (.bxor 2014 2022) := by core033_kernel_decide
theorem stats2023 : actualRows2023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2023=7428 := by core033_kernel_decide
theorem rows2024 : actualRows2024=WordField.canonicalRows actualModulus 2024 (.shr 1824 3) := by core033_kernel_decide
theorem stats2024 : actualRows2024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2024=4908 := by core033_kernel_decide
theorem rows2025 : actualRows2025=WordField.canonicalRows actualModulus 2025 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2025 : actualRows2025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2025=2892 := by core033_kernel_decide
theorem rows2026 : actualRows2026=WordField.canonicalRows actualModulus 2026 (.band 2024 2025) := by core033_kernel_decide
theorem stats2026 : actualRows2026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2026=5124 := by core033_kernel_decide
theorem rows2027 : actualRows2027=WordField.canonicalRows actualModulus 2027 (.bnot 2026) := by core033_kernel_decide
theorem stats2027 : actualRows2027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2027=6276 := by core033_kernel_decide
theorem rows2028 : actualRows2028=WordField.canonicalRows actualModulus 2028 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2028 : actualRows2028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2028=2892 := by core033_kernel_decide
theorem rows2029 : actualRows2029=WordField.canonicalRows actualModulus 2029 (.badd 2027 2028) := by core033_kernel_decide
theorem stats2029 : actualRows2029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2029=5388 := by core033_kernel_decide
theorem rows2030 : actualRows2030=WordField.canonicalRows actualModulus 2030 (.shr 2023 8) := by core033_kernel_decide
theorem stats2030 : actualRows2030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2030=4548 := by core033_kernel_decide
theorem rows2031 : actualRows2031=WordField.canonicalRows actualModulus 2031 (.band 2029 2030) := by core033_kernel_decide
theorem stats2031 : actualRows2031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2031=5124 := by core033_kernel_decide
theorem rows2032 : actualRows2032=WordField.canonicalRows actualModulus 2032 (.shr 1824 3) := by core033_kernel_decide
theorem stats2032 : actualRows2032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2032=4908 := by core033_kernel_decide
theorem rows2033 : actualRows2033=WordField.canonicalRows actualModulus 2033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2033 : actualRows2033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2033=2892 := by core033_kernel_decide
theorem rows2034 : actualRows2034=WordField.canonicalRows actualModulus 2034 (.band 2032 2033) := by core033_kernel_decide
theorem stats2034 : actualRows2034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2034=5124 := by core033_kernel_decide
theorem rows2035 : actualRows2035=WordField.canonicalRows actualModulus 2035 (.bnot 2034) := by core033_kernel_decide
theorem stats2035 : actualRows2035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2035=6276 := by core033_kernel_decide
theorem rows2036 : actualRows2036=WordField.canonicalRows actualModulus 2036 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2036 : actualRows2036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2036=2892 := by core033_kernel_decide
theorem rows2037 : actualRows2037=WordField.canonicalRows actualModulus 2037 (.badd 2035 2036) := by core033_kernel_decide
theorem stats2037 : actualRows2037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2037=5388 := by core033_kernel_decide
def partRows29 : List R1CS.Row := actualRows1974++actualRows1975++actualRows1976++actualRows1977++actualRows1978++actualRows1979++actualRows1980++actualRows1981++actualRows1982++actualRows1983++actualRows1984++actualRows1985++actualRows1986++actualRows1987++actualRows1988++actualRows1989++actualRows1990++actualRows1991++actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007++actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015++actualRows2016++actualRows2017++actualRows2018++actualRows2019++actualRows2020++actualRows2021++actualRows2022++actualRows2023++actualRows2024++actualRows2025++actualRows2026++actualRows2027++actualRows2028++actualRows2029++actualRows2030++actualRows2031++actualRows2032++actualRows2033++actualRows2034++actualRows2035++actualRows2036++actualRows2037
def partOps29 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.band 1973 1974,.bnot 1975,.literal (BitVec.ofNat 32 1),.badd 1976 1977,.shr 1954 1,.band 1978 1979,.shr 1824 0,.literal (BitVec.ofNat 32 1),.band 1981 1982,.bnot 1983,.literal (BitVec.ofNat 32 1),.badd 1984 1985,.bnot 1986,.band 1987 1954,.bxor 1980 1988,.shr 1824 1,.literal (BitVec.ofNat 32 1),.band 1990 1991,.bnot 1992,.literal (BitVec.ofNat 32 1),.badd 1993 1994,.shr 1989 2,.band 1995 1996,.shr 1824 1,.literal (BitVec.ofNat 32 1),.band 1998 1999,.bnot 2000,.literal (BitVec.ofNat 32 1),.badd 2001 2002,.bnot 2003,.band 2004 1989,.bxor 1997 2005,.shr 1824 2,.literal (BitVec.ofNat 32 1),.band 2007 2008,.bnot 2009,.literal (BitVec.ofNat 32 1),.badd 2010 2011,.shr 2006 4,.band 2012 2013,.shr 1824 2,.literal (BitVec.ofNat 32 1),.band 2015 2016,.bnot 2017,.literal (BitVec.ofNat 32 1),.badd 2018 2019,.bnot 2020,.band 2021 2006,.bxor 2014 2022,.shr 1824 3,.literal (BitVec.ofNat 32 1),.band 2024 2025,.bnot 2026,.literal (BitVec.ofNat 32 1),.badd 2027 2028,.shr 2023 8,.band 2029 2030,.shr 1824 3,.literal (BitVec.ofNat 32 1),.band 2032 2033,.bnot 2034,.literal (BitVec.ofNat 32 1),.badd 2035 2036]
theorem partExact29 : partRows29=WordField.rows actualModulus 1974 partOps29 := by
  simp only [partRows29,partOps29,WordField.rows,rows1974,rows1975,rows1976,rows1977,rows1978,rows1979,rows1980,rows1981,rows1982,rows1983,rows1984,rows1985,rows1986,rows1987,rows1988,rows1989,rows1990,rows1991,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,rows2016,rows2017,rows2018,rows2019,rows2020,rows2021,rows2022,rows2023,rows2024,rows2025,rows2026,rows2027,rows2028,rows2029,rows2030,rows2031,rows2032,rows2033,rows2034,rows2035,rows2036,rows2037,List.append_assoc,List.append_nil]
theorem partLength29 : partOps29.length=64 := by decide
theorem partStats29 : partRows29.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows29=311976 := by
  simp only [partRows29,List.length_append,MatrixRowBlocks.rows_weight_append,stats1974.1,stats1974.2,stats1975.1,stats1975.2,stats1976.1,stats1976.2,stats1977.1,stats1977.2,stats1978.1,stats1978.2,stats1979.1,stats1979.2,stats1980.1,stats1980.2,stats1981.1,stats1981.2,stats1982.1,stats1982.2,stats1983.1,stats1983.2,stats1984.1,stats1984.2,stats1985.1,stats1985.2,stats1986.1,stats1986.2,stats1987.1,stats1987.2,stats1988.1,stats1988.2,stats1989.1,stats1989.2,stats1990.1,stats1990.2,stats1991.1,stats1991.2,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2,stats2016.1,stats2016.2,stats2017.1,stats2017.2,stats2018.1,stats2018.2,stats2019.1,stats2019.2,stats2020.1,stats2020.2,stats2021.1,stats2021.2,stats2022.1,stats2022.2,stats2023.1,stats2023.2,stats2024.1,stats2024.2,stats2025.1,stats2025.2,stats2026.1,stats2026.2,stats2027.1,stats2027.2,stats2028.1,stats2028.2,stats2029.1,stats2029.2,stats2030.1,stats2030.2,stats2031.1,stats2031.2,stats2032.1,stats2032.2,stats2033.1,stats2033.2,stats2034.1,stats2034.2,stats2035.1,stats2035.2,stats2036.1,stats2036.2,stats2037.1,stats2037.2]
  decide
end AuthenticatedBranchRoundCheckedRows
