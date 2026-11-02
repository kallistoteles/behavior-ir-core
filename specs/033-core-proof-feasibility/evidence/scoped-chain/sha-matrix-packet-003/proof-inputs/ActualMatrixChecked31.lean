import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData31
import ActualMatrixData32
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.badd 2003 2007) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2008=5388 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.literal (BitVec.ofNat 32 659060556)) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2009=3900 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.badd 2008 2009) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2010=5388 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.badd 2010 478) := by core033_kernel_decide
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
theorem rows2018 : actualRows2018=WordField.canonicalRows actualModulus 2018 (.band 1996 1942) := by core033_kernel_decide
theorem stats2018 : actualRows2018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2018=5124 := by core033_kernel_decide
theorem rows2019 : actualRows2019=WordField.canonicalRows actualModulus 2019 (.bxor 2017 2018) := by core033_kernel_decide
theorem stats2019 : actualRows2019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2019=7428 := by core033_kernel_decide
theorem rows2020 : actualRows2020=WordField.canonicalRows actualModulus 2020 (.band 1969 1942) := by core033_kernel_decide
theorem stats2020 : actualRows2020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2020=5124 := by core033_kernel_decide
theorem rows2021 : actualRows2021=WordField.canonicalRows actualModulus 2021 (.bxor 2019 2020) := by core033_kernel_decide
theorem stats2021 : actualRows2021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2021=7428 := by core033_kernel_decide
theorem rows2022 : actualRows2022=WordField.canonicalRows actualModulus 2022 (.badd 2016 2021) := by core033_kernel_decide
theorem stats2022 : actualRows2022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2022=5388 := by core033_kernel_decide
theorem rows2023 : actualRows2023=WordField.canonicalRows actualModulus 2023 (.badd 2011 2022) := by core033_kernel_decide
theorem stats2023 : actualRows2023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2023=5388 := by core033_kernel_decide
theorem rows2024 : actualRows2024=WordField.canonicalRows actualModulus 2024 (.badd 1915 2011) := by core033_kernel_decide
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
theorem rows2030 : actualRows2030=WordField.canonicalRows actualModulus 2030 (.badd 1943 2029) := by core033_kernel_decide
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
theorem rows2036 : actualRows2036=WordField.canonicalRows actualModulus 2036 (.literal (BitVec.ofNat 32 883997877)) := by core033_kernel_decide
theorem stats2036 : actualRows2036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2036=3972 := by core033_kernel_decide
theorem rows2037 : actualRows2037=WordField.canonicalRows actualModulus 2037 (.badd 2035 2036) := by core033_kernel_decide
theorem stats2037 : actualRows2037.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2037=5388 := by core033_kernel_decide
theorem rows2038 : actualRows2038=WordField.canonicalRows actualModulus 2038 (.badd 2037 491) := by core033_kernel_decide
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
theorem rows2051 : actualRows2051=WordField.canonicalRows actualModulus 2051 (.badd 1942 2038) := by core033_kernel_decide
theorem stats2051 : actualRows2051.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2051=5388 := by core033_kernel_decide
theorem rows2052 : actualRows2052=WordField.canonicalRows actualModulus 2052 (.rotr 2051 6) := by core033_kernel_decide
theorem stats2052 : actualRows2052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2052=5124 := by core033_kernel_decide
theorem rows2053 : actualRows2053=WordField.canonicalRows actualModulus 2053 (.rotr 2051 11) := by core033_kernel_decide
theorem stats2053 : actualRows2053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2053=5124 := by core033_kernel_decide
theorem rows2054 : actualRows2054=WordField.canonicalRows actualModulus 2054 (.bxor 2052 2053) := by core033_kernel_decide
theorem stats2054 : actualRows2054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2054=7428 := by core033_kernel_decide
theorem rows2055 : actualRows2055=WordField.canonicalRows actualModulus 2055 (.rotr 2051 25) := by core033_kernel_decide
theorem stats2055 : actualRows2055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2055=5124 := by core033_kernel_decide
theorem rows2056 : actualRows2056=WordField.canonicalRows actualModulus 2056 (.bxor 2054 2055) := by core033_kernel_decide
theorem stats2056 : actualRows2056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2056=7428 := by core033_kernel_decide
theorem rows2057 : actualRows2057=WordField.canonicalRows actualModulus 2057 (.badd 1970 2056) := by core033_kernel_decide
theorem stats2057 : actualRows2057.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2057=5388 := by core033_kernel_decide
theorem rows2058 : actualRows2058=WordField.canonicalRows actualModulus 2058 (.band 2051 2024) := by core033_kernel_decide
theorem stats2058 : actualRows2058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2058=5124 := by core033_kernel_decide
theorem rows2059 : actualRows2059=WordField.canonicalRows actualModulus 2059 (.bnot 2051) := by core033_kernel_decide
theorem stats2059 : actualRows2059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2059=6276 := by core033_kernel_decide
theorem rows2060 : actualRows2060=WordField.canonicalRows actualModulus 2060 (.band 2059 1997) := by core033_kernel_decide
theorem stats2060 : actualRows2060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2060=5124 := by core033_kernel_decide
theorem rows2061 : actualRows2061=WordField.canonicalRows actualModulus 2061 (.bxor 2058 2060) := by core033_kernel_decide
theorem stats2061 : actualRows2061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2061=7428 := by core033_kernel_decide
theorem rows2062 : actualRows2062=WordField.canonicalRows actualModulus 2062 (.badd 2057 2061) := by core033_kernel_decide
theorem stats2062 : actualRows2062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2062=5388 := by core033_kernel_decide
theorem rows2063 : actualRows2063=WordField.canonicalRows actualModulus 2063 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats2063 : actualRows2063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2063=3828 := by core033_kernel_decide
theorem rows2064 : actualRows2064=WordField.canonicalRows actualModulus 2064 (.badd 2062 2063) := by core033_kernel_decide
theorem stats2064 : actualRows2064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2064=5388 := by core033_kernel_decide
theorem rows2065 : actualRows2065=WordField.canonicalRows actualModulus 2065 (.badd 2064 504) := by core033_kernel_decide
theorem stats2065 : actualRows2065.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2065=5388 := by core033_kernel_decide
theorem rows2066 : actualRows2066=WordField.canonicalRows actualModulus 2066 (.rotr 2050 2) := by core033_kernel_decide
theorem stats2066 : actualRows2066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2066=5124 := by core033_kernel_decide
theorem rows2067 : actualRows2067=WordField.canonicalRows actualModulus 2067 (.rotr 2050 13) := by core033_kernel_decide
theorem stats2067 : actualRows2067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2067=5124 := by core033_kernel_decide
theorem rows2068 : actualRows2068=WordField.canonicalRows actualModulus 2068 (.bxor 2066 2067) := by core033_kernel_decide
theorem stats2068 : actualRows2068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2068=7428 := by core033_kernel_decide
theorem rows2069 : actualRows2069=WordField.canonicalRows actualModulus 2069 (.rotr 2050 22) := by core033_kernel_decide
theorem stats2069 : actualRows2069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2069=5124 := by core033_kernel_decide
theorem rows2070 : actualRows2070=WordField.canonicalRows actualModulus 2070 (.bxor 2068 2069) := by core033_kernel_decide
theorem stats2070 : actualRows2070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2070=7428 := by core033_kernel_decide
theorem rows2071 : actualRows2071=WordField.canonicalRows actualModulus 2071 (.band 2050 2023) := by core033_kernel_decide
theorem stats2071 : actualRows2071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2071=5124 := by core033_kernel_decide
def partRows31 : List R1CS.Row := actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015++actualRows2016++actualRows2017++actualRows2018++actualRows2019++actualRows2020++actualRows2021++actualRows2022++actualRows2023++actualRows2024++actualRows2025++actualRows2026++actualRows2027++actualRows2028++actualRows2029++actualRows2030++actualRows2031++actualRows2032++actualRows2033++actualRows2034++actualRows2035++actualRows2036++actualRows2037++actualRows2038++actualRows2039++actualRows2040++actualRows2041++actualRows2042++actualRows2043++actualRows2044++actualRows2045++actualRows2046++actualRows2047++actualRows2048++actualRows2049++actualRows2050++actualRows2051++actualRows2052++actualRows2053++actualRows2054++actualRows2055++actualRows2056++actualRows2057++actualRows2058++actualRows2059++actualRows2060++actualRows2061++actualRows2062++actualRows2063++actualRows2064++actualRows2065++actualRows2066++actualRows2067++actualRows2068++actualRows2069++actualRows2070++actualRows2071
def partOps31 : List WordIR.Op := [.badd 2003 2007,.literal (BitVec.ofNat 32 659060556),.badd 2008 2009,.badd 2010 478,.rotr 1996 2,.rotr 1996 13,.bxor 2012 2013,.rotr 1996 22,.bxor 2014 2015,.band 1996 1969,.band 1996 1942,.bxor 2017 2018,.band 1969 1942,.bxor 2019 2020,.badd 2016 2021,.badd 2011 2022,.badd 1915 2011,.rotr 2024 6,.rotr 2024 11,.bxor 2025 2026,.rotr 2024 25,.bxor 2027 2028,.badd 1943 2029,.band 2024 1997,.bnot 2024,.band 2032 1970,.bxor 2031 2033,.badd 2030 2034,.literal (BitVec.ofNat 32 883997877),.badd 2035 2036,.badd 2037 491,.rotr 2023 2,.rotr 2023 13,.bxor 2039 2040,.rotr 2023 22,.bxor 2041 2042,.band 2023 1996,.band 2023 1969,.bxor 2044 2045,.band 1996 1969,.bxor 2046 2047,.badd 2043 2048,.badd 2038 2049,.badd 1942 2038,.rotr 2051 6,.rotr 2051 11,.bxor 2052 2053,.rotr 2051 25,.bxor 2054 2055,.badd 1970 2056,.band 2051 2024,.bnot 2051,.band 2059 1997,.bxor 2058 2060,.badd 2057 2061,.literal (BitVec.ofNat 32 958139571),.badd 2062 2063,.badd 2064 504,.rotr 2050 2,.rotr 2050 13,.bxor 2066 2067,.rotr 2050 22,.bxor 2068 2069,.band 2050 2023]
theorem partRowsExact31 : partRows31=WordField.rows actualModulus 2008 partOps31 := by
  simp only [partRows31,partOps31,WordField.rows,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,rows2016,rows2017,rows2018,rows2019,rows2020,rows2021,rows2022,rows2023,rows2024,rows2025,rows2026,rows2027,rows2028,rows2029,rows2030,rows2031,rows2032,rows2033,rows2034,rows2035,rows2036,rows2037,rows2038,rows2039,rows2040,rows2041,rows2042,rows2043,rows2044,rows2045,rows2046,rows2047,rows2048,rows2049,rows2050,rows2051,rows2052,rows2053,rows2054,rows2055,rows2056,rows2057,rows2058,rows2059,rows2060,rows2061,rows2062,rows2063,rows2064,rows2065,rows2066,rows2067,rows2068,rows2069,rows2070,rows2071,List.append_assoc,List.append_nil]
theorem partOpsLength31 : partOps31.length=64 := by decide
theorem partStats31 : partRows31.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows31=367920 := by
  simp only [partRows31,List.length_append,MatrixRowBlocks.rows_weight_append,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2,stats2016.1,stats2016.2,stats2017.1,stats2017.2,stats2018.1,stats2018.2,stats2019.1,stats2019.2,stats2020.1,stats2020.2,stats2021.1,stats2021.2,stats2022.1,stats2022.2,stats2023.1,stats2023.2,stats2024.1,stats2024.2,stats2025.1,stats2025.2,stats2026.1,stats2026.2,stats2027.1,stats2027.2,stats2028.1,stats2028.2,stats2029.1,stats2029.2,stats2030.1,stats2030.2,stats2031.1,stats2031.2,stats2032.1,stats2032.2,stats2033.1,stats2033.2,stats2034.1,stats2034.2,stats2035.1,stats2035.2,stats2036.1,stats2036.2,stats2037.1,stats2037.2,stats2038.1,stats2038.2,stats2039.1,stats2039.2,stats2040.1,stats2040.2,stats2041.1,stats2041.2,stats2042.1,stats2042.2,stats2043.1,stats2043.2,stats2044.1,stats2044.2,stats2045.1,stats2045.2,stats2046.1,stats2046.2,stats2047.1,stats2047.2,stats2048.1,stats2048.2,stats2049.1,stats2049.2,stats2050.1,stats2050.2,stats2051.1,stats2051.2,stats2052.1,stats2052.2,stats2053.1,stats2053.2,stats2054.1,stats2054.2,stats2055.1,stats2055.2,stats2056.1,stats2056.2,stats2057.1,stats2057.2,stats2058.1,stats2058.2,stats2059.1,stats2059.2,stats2060.1,stats2060.2,stats2061.1,stats2061.2,stats2062.1,stats2062.2,stats2063.1,stats2063.2,stats2064.1,stats2064.2,stats2065.1,stats2065.2,stats2066.1,stats2066.2,stats2067.1,stats2067.2,stats2068.1,stats2068.2,stats2069.1,stats2069.2,stats2070.1,stats2070.2,stats2071.1,stats2071.2]
  decide
end ActualSHAMatrixRows
