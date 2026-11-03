import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData31
import HashBlockInstructionMatrixData32
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.bxor 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1992=7428 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.band 0 1) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=5124 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.bxor 1992 1993) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=7428 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.badd 1989 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1995=5388 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.badd 1984 1995) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1996=5388 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.badd 2 1984) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1997=5388 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.rotr 1997 6) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5124 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.rotr 1997 11) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=5124 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.bxor 1998 1999) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=7428 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.rotr 1997 25) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=5124 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.bxor 2000 2001) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2002=7428 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.badd 5 2002) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2003=5388 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.band 1997 1970) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=5124 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.bnot 1997) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=6276 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.band 2005 4) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=5124 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.bxor 2004 2006) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=7428 := by core033_kernel_decide
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.badd 2003 2007) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2008=5388 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2009=4260 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.badd 2008 2009) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2010=5388 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.badd 2010 89) := by core033_kernel_decide
theorem stats2011 : actualRows2011.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2011=5388 := by core033_kernel_decide
theorem rows2012 : actualRows2012=WordField.canonicalRows actualModulus 2012 (.rotr 1996 2) := by core033_kernel_decide
theorem stats2012 : actualRows2012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2012=5124 := by core033_kernel_decide
theorem rows2013 : actualRows2013=WordField.canonicalRows actualModulus 2013 (.rotr 1996 13) := by core033_kernel_decide
theorem stats2013 : actualRows2013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2013=5124 := by core033_kernel_decide
theorem rows2014 : actualRows2014=WordField.canonicalRows actualModulus 2014 (.bxor 2012 2013) := by core033_kernel_decide
theorem stats2014 : actualRows2014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2014=7428 := by core033_kernel_decide
theorem rows2015 : actualRows2015=WordField.canonicalRows actualModulus 2015 (.rotr 1996 22) := by core033_kernel_decide
theorem stats2015 : actualRows2015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2015=5124 := by core033_kernel_decide
theorem rows2016 : actualRows2016=WordField.canonicalRows actualModulus 2016 (.bxor 2014 2015) := by core033_kernel_decide
theorem stats2016 : actualRows2016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2016=7428 := by core033_kernel_decide
theorem rows2017 : actualRows2017=WordField.canonicalRows actualModulus 2017 (.band 1996 1969) := by core033_kernel_decide
theorem stats2017 : actualRows2017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2017=5124 := by core033_kernel_decide
theorem rows2018 : actualRows2018=WordField.canonicalRows actualModulus 2018 (.band 1996 0) := by core033_kernel_decide
theorem stats2018 : actualRows2018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2018=5124 := by core033_kernel_decide
theorem rows2019 : actualRows2019=WordField.canonicalRows actualModulus 2019 (.bxor 2017 2018) := by core033_kernel_decide
theorem stats2019 : actualRows2019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2019=7428 := by core033_kernel_decide
theorem rows2020 : actualRows2020=WordField.canonicalRows actualModulus 2020 (.band 1969 0) := by core033_kernel_decide
theorem stats2020 : actualRows2020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2020=5124 := by core033_kernel_decide
theorem rows2021 : actualRows2021=WordField.canonicalRows actualModulus 2021 (.bxor 2019 2020) := by core033_kernel_decide
theorem stats2021 : actualRows2021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2021=7428 := by core033_kernel_decide
theorem rows2022 : actualRows2022=WordField.canonicalRows actualModulus 2022 (.badd 2016 2021) := by core033_kernel_decide
theorem stats2022 : actualRows2022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2022=5388 := by core033_kernel_decide
theorem rows2023 : actualRows2023=WordField.canonicalRows actualModulus 2023 (.badd 2011 2022) := by core033_kernel_decide
theorem stats2023 : actualRows2023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2023=5388 := by core033_kernel_decide
theorem rows2024 : actualRows2024=WordField.canonicalRows actualModulus 2024 (.badd 1 2011) := by core033_kernel_decide
theorem stats2024 : actualRows2024.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2024=5388 := by core033_kernel_decide
theorem rows2025 : actualRows2025=WordField.canonicalRows actualModulus 2025 (.rotr 2024 6) := by core033_kernel_decide
theorem stats2025 : actualRows2025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2025=5124 := by core033_kernel_decide
theorem rows2026 : actualRows2026=WordField.canonicalRows actualModulus 2026 (.rotr 2024 11) := by core033_kernel_decide
theorem stats2026 : actualRows2026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2026=5124 := by core033_kernel_decide
theorem rows2027 : actualRows2027=WordField.canonicalRows actualModulus 2027 (.bxor 2025 2026) := by core033_kernel_decide
theorem stats2027 : actualRows2027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2027=7428 := by core033_kernel_decide
theorem rows2028 : actualRows2028=WordField.canonicalRows actualModulus 2028 (.rotr 2024 25) := by core033_kernel_decide
theorem stats2028 : actualRows2028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2028=5124 := by core033_kernel_decide
theorem rows2029 : actualRows2029=WordField.canonicalRows actualModulus 2029 (.bxor 2027 2028) := by core033_kernel_decide
theorem stats2029 : actualRows2029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2029=7428 := by core033_kernel_decide
theorem rows2030 : actualRows2030=WordField.canonicalRows actualModulus 2030 (.badd 4 2029) := by core033_kernel_decide
theorem stats2030 : actualRows2030.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2030=5388 := by core033_kernel_decide
theorem rows2031 : actualRows2031=WordField.canonicalRows actualModulus 2031 (.band 2024 1997) := by core033_kernel_decide
theorem stats2031 : actualRows2031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2031=5124 := by core033_kernel_decide
theorem rows2032 : actualRows2032=WordField.canonicalRows actualModulus 2032 (.bnot 2024) := by core033_kernel_decide
theorem stats2032 : actualRows2032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2032=6276 := by core033_kernel_decide
theorem rows2033 : actualRows2033=WordField.canonicalRows actualModulus 2033 (.band 2032 1970) := by core033_kernel_decide
theorem stats2033 : actualRows2033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2033=5124 := by core033_kernel_decide
theorem rows2034 : actualRows2034=WordField.canonicalRows actualModulus 2034 (.bxor 2031 2033) := by core033_kernel_decide
theorem stats2034 : actualRows2034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2034=7428 := by core033_kernel_decide
theorem rows2035 : actualRows2035=WordField.canonicalRows actualModulus 2035 (.badd 2030 2034) := by core033_kernel_decide
theorem stats2035 : actualRows2035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2035=5388 := by core033_kernel_decide
theorem rows2036 : actualRows2036=WordField.canonicalRows actualModulus 2036 (.literal (BitVec.ofNat 32 3921009573)) := by core033_kernel_decide
theorem stats2036 : actualRows2036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2036=4260 := by core033_kernel_decide
theorem rows2037 : actualRows2037=WordField.canonicalRows actualModulus 2037 (.badd 2035 2036) := by core033_kernel_decide
theorem stats2037 : actualRows2037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2037=5388 := by core033_kernel_decide
theorem rows2038 : actualRows2038=WordField.canonicalRows actualModulus 2038 (.badd 2037 95) := by core033_kernel_decide
theorem stats2038 : actualRows2038.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2038=5388 := by core033_kernel_decide
theorem rows2039 : actualRows2039=WordField.canonicalRows actualModulus 2039 (.rotr 2023 2) := by core033_kernel_decide
theorem stats2039 : actualRows2039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2039=5124 := by core033_kernel_decide
theorem rows2040 : actualRows2040=WordField.canonicalRows actualModulus 2040 (.rotr 2023 13) := by core033_kernel_decide
theorem stats2040 : actualRows2040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2040=5124 := by core033_kernel_decide
theorem rows2041 : actualRows2041=WordField.canonicalRows actualModulus 2041 (.bxor 2039 2040) := by core033_kernel_decide
theorem stats2041 : actualRows2041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2041=7428 := by core033_kernel_decide
theorem rows2042 : actualRows2042=WordField.canonicalRows actualModulus 2042 (.rotr 2023 22) := by core033_kernel_decide
theorem stats2042 : actualRows2042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2042=5124 := by core033_kernel_decide
theorem rows2043 : actualRows2043=WordField.canonicalRows actualModulus 2043 (.bxor 2041 2042) := by core033_kernel_decide
theorem stats2043 : actualRows2043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2043=7428 := by core033_kernel_decide
theorem rows2044 : actualRows2044=WordField.canonicalRows actualModulus 2044 (.band 2023 1996) := by core033_kernel_decide
theorem stats2044 : actualRows2044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2044=5124 := by core033_kernel_decide
theorem rows2045 : actualRows2045=WordField.canonicalRows actualModulus 2045 (.band 2023 1969) := by core033_kernel_decide
theorem stats2045 : actualRows2045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2045=5124 := by core033_kernel_decide
theorem rows2046 : actualRows2046=WordField.canonicalRows actualModulus 2046 (.bxor 2044 2045) := by core033_kernel_decide
theorem stats2046 : actualRows2046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2046=7428 := by core033_kernel_decide
theorem rows2047 : actualRows2047=WordField.canonicalRows actualModulus 2047 (.band 1996 1969) := by core033_kernel_decide
theorem stats2047 : actualRows2047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2047=5124 := by core033_kernel_decide
theorem rows2048 : actualRows2048=WordField.canonicalRows actualModulus 2048 (.bxor 2046 2047) := by core033_kernel_decide
theorem stats2048 : actualRows2048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2048=7428 := by core033_kernel_decide
theorem rows2049 : actualRows2049=WordField.canonicalRows actualModulus 2049 (.badd 2043 2048) := by core033_kernel_decide
theorem stats2049 : actualRows2049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2049=5388 := by core033_kernel_decide
theorem rows2050 : actualRows2050=WordField.canonicalRows actualModulus 2050 (.badd 2038 2049) := by core033_kernel_decide
theorem stats2050 : actualRows2050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2050=5388 := by core033_kernel_decide
theorem rows2051 : actualRows2051=WordField.canonicalRows actualModulus 2051 (.badd 0 2038) := by core033_kernel_decide
theorem stats2051 : actualRows2051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2051=5388 := by core033_kernel_decide
theorem rows2052 : actualRows2052=WordField.canonicalRows actualModulus 2052 (.rotr 2051 6) := by core033_kernel_decide
theorem stats2052 : actualRows2052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2052=5124 := by core033_kernel_decide
theorem rows2053 : actualRows2053=WordField.canonicalRows actualModulus 2053 (.rotr 2051 11) := by core033_kernel_decide
theorem stats2053 : actualRows2053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2053=5124 := by core033_kernel_decide
theorem rows2054 : actualRows2054=WordField.canonicalRows actualModulus 2054 (.bxor 2052 2053) := by core033_kernel_decide
theorem stats2054 : actualRows2054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2054=7428 := by core033_kernel_decide
theorem rows2055 : actualRows2055=WordField.canonicalRows actualModulus 2055 (.rotr 2051 25) := by core033_kernel_decide
theorem stats2055 : actualRows2055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2055=5124 := by core033_kernel_decide
def partRows30 : List R1CS.Row := actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007++actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015++actualRows2016++actualRows2017++actualRows2018++actualRows2019++actualRows2020++actualRows2021++actualRows2022++actualRows2023++actualRows2024++actualRows2025++actualRows2026++actualRows2027++actualRows2028++actualRows2029++actualRows2030++actualRows2031++actualRows2032++actualRows2033++actualRows2034++actualRows2035++actualRows2036++actualRows2037++actualRows2038++actualRows2039++actualRows2040++actualRows2041++actualRows2042++actualRows2043++actualRows2044++actualRows2045++actualRows2046++actualRows2047++actualRows2048++actualRows2049++actualRows2050++actualRows2051++actualRows2052++actualRows2053++actualRows2054++actualRows2055
def partOps30 : List WordIR.Op := [.bxor 1990 1991,.band 0 1,.bxor 1992 1993,.badd 1989 1994,.badd 1984 1995,.badd 2 1984,.rotr 1997 6,.rotr 1997 11,.bxor 1998 1999,.rotr 1997 25,.bxor 2000 2001,.badd 5 2002,.band 1997 1970,.bnot 1997,.band 2005 4,.bxor 2004 2006,.badd 2003 2007,.literal (BitVec.ofNat 32 3049323471),.badd 2008 2009,.badd 2010 89,.rotr 1996 2,.rotr 1996 13,.bxor 2012 2013,.rotr 1996 22,.bxor 2014 2015,.band 1996 1969,.band 1996 0,.bxor 2017 2018,.band 1969 0,.bxor 2019 2020,.badd 2016 2021,.badd 2011 2022,.badd 1 2011,.rotr 2024 6,.rotr 2024 11,.bxor 2025 2026,.rotr 2024 25,.bxor 2027 2028,.badd 4 2029,.band 2024 1997,.bnot 2024,.band 2032 1970,.bxor 2031 2033,.badd 2030 2034,.literal (BitVec.ofNat 32 3921009573),.badd 2035 2036,.badd 2037 95,.rotr 2023 2,.rotr 2023 13,.bxor 2039 2040,.rotr 2023 22,.bxor 2041 2042,.band 2023 1996,.band 2023 1969,.bxor 2044 2045,.band 1996 1969,.bxor 2046 2047,.badd 2043 2048,.badd 2038 2049,.badd 0 2038,.rotr 2051 6,.rotr 2051 11,.bxor 2052 2053,.rotr 2051 25]
theorem partExact30 : partRows30=WordField.rows actualModulus 1992 partOps30 := by
  simp only [partRows30,partOps30,WordField.rows,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,rows2016,rows2017,rows2018,rows2019,rows2020,rows2021,rows2022,rows2023,rows2024,rows2025,rows2026,rows2027,rows2028,rows2029,rows2030,rows2031,rows2032,rows2033,rows2034,rows2035,rows2036,rows2037,rows2038,rows2039,rows2040,rows2041,rows2042,rows2043,rows2044,rows2045,rows2046,rows2047,rows2048,rows2049,rows2050,rows2051,rows2052,rows2053,rows2054,rows2055,List.append_assoc,List.append_nil]
theorem partLength30 : partOps30.length=64 := by decide
theorem partStats30 : partRows30.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows30=372168 := by
  simp only [partRows30,List.length_append,MatrixRowBlocks.rows_weight_append,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2,stats2016.1,stats2016.2,stats2017.1,stats2017.2,stats2018.1,stats2018.2,stats2019.1,stats2019.2,stats2020.1,stats2020.2,stats2021.1,stats2021.2,stats2022.1,stats2022.2,stats2023.1,stats2023.2,stats2024.1,stats2024.2,stats2025.1,stats2025.2,stats2026.1,stats2026.2,stats2027.1,stats2027.2,stats2028.1,stats2028.2,stats2029.1,stats2029.2,stats2030.1,stats2030.2,stats2031.1,stats2031.2,stats2032.1,stats2032.2,stats2033.1,stats2033.2,stats2034.1,stats2034.2,stats2035.1,stats2035.2,stats2036.1,stats2036.2,stats2037.1,stats2037.2,stats2038.1,stats2038.2,stats2039.1,stats2039.2,stats2040.1,stats2040.2,stats2041.1,stats2041.2,stats2042.1,stats2042.2,stats2043.1,stats2043.2,stats2044.1,stats2044.2,stats2045.1,stats2045.2,stats2046.1,stats2046.2,stats2047.1,stats2047.2,stats2048.1,stats2048.2,stats2049.1,stats2049.2,stats2050.1,stats2050.2,stats2051.1,stats2051.2,stats2052.1,stats2052.2,stats2053.1,stats2053.2,stats2054.1,stats2054.2,stats2055.1,stats2055.2]
  decide
end HashBlockCheckedRows
