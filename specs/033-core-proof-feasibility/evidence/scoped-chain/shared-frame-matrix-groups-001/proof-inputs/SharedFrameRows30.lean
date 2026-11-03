import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData30
import SharedFrameInstructionMatrixData31
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1963 : actualRows1963=WordField.canonicalRows actualModulus 1963 (.badd 1962 1879) := by core033_kernel_decide
theorem stats1963 : actualRows1963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1963=5388 := by core033_kernel_decide
theorem rows1964 : actualRows1964=WordField.canonicalRows actualModulus 1964 (.rotr 1775 7) := by core033_kernel_decide
theorem stats1964 : actualRows1964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1964=5124 := by core033_kernel_decide
theorem rows1965 : actualRows1965=WordField.canonicalRows actualModulus 1965 (.rotr 1775 18) := by core033_kernel_decide
theorem stats1965 : actualRows1965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1965=5124 := by core033_kernel_decide
theorem rows1966 : actualRows1966=WordField.canonicalRows actualModulus 1966 (.bxor 1964 1965) := by core033_kernel_decide
theorem stats1966 : actualRows1966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1966=7428 := by core033_kernel_decide
theorem rows1967 : actualRows1967=WordField.canonicalRows actualModulus 1967 (.shr 1775 3) := by core033_kernel_decide
theorem stats1967 : actualRows1967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1967=4908 := by core033_kernel_decide
theorem rows1968 : actualRows1968=WordField.canonicalRows actualModulus 1968 (.bxor 1966 1967) := by core033_kernel_decide
theorem stats1968 : actualRows1968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1968=7428 := by core033_kernel_decide
theorem rows1969 : actualRows1969=WordField.canonicalRows actualModulus 1969 (.badd 1963 1968) := by core033_kernel_decide
theorem stats1969 : actualRows1969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1969=5388 := by core033_kernel_decide
theorem rows1970 : actualRows1970=WordField.canonicalRows actualModulus 1970 (.badd 1969 1762) := by core033_kernel_decide
theorem stats1970 : actualRows1970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1970=5388 := by core033_kernel_decide
theorem rows1971 : actualRows1971=WordField.canonicalRows actualModulus 1971 (.rotr 1957 17) := by core033_kernel_decide
theorem stats1971 : actualRows1971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1971=5124 := by core033_kernel_decide
theorem rows1972 : actualRows1972=WordField.canonicalRows actualModulus 1972 (.rotr 1957 19) := by core033_kernel_decide
theorem stats1972 : actualRows1972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1972=5124 := by core033_kernel_decide
theorem rows1973 : actualRows1973=WordField.canonicalRows actualModulus 1973 (.bxor 1971 1972) := by core033_kernel_decide
theorem stats1973 : actualRows1973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1973=7428 := by core033_kernel_decide
theorem rows1974 : actualRows1974=WordField.canonicalRows actualModulus 1974 (.shr 1957 10) := by core033_kernel_decide
theorem stats1974 : actualRows1974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1974=4404 := by core033_kernel_decide
theorem rows1975 : actualRows1975=WordField.canonicalRows actualModulus 1975 (.bxor 1973 1974) := by core033_kernel_decide
theorem stats1975 : actualRows1975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1975=7428 := by core033_kernel_decide
theorem rows1976 : actualRows1976=WordField.canonicalRows actualModulus 1976 (.badd 1975 1892) := by core033_kernel_decide
theorem stats1976 : actualRows1976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1976=5388 := by core033_kernel_decide
theorem rows1977 : actualRows1977=WordField.canonicalRows actualModulus 1977 (.rotr 1788 7) := by core033_kernel_decide
theorem stats1977 : actualRows1977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1977=5124 := by core033_kernel_decide
theorem rows1978 : actualRows1978=WordField.canonicalRows actualModulus 1978 (.rotr 1788 18) := by core033_kernel_decide
theorem stats1978 : actualRows1978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1978=5124 := by core033_kernel_decide
theorem rows1979 : actualRows1979=WordField.canonicalRows actualModulus 1979 (.bxor 1977 1978) := by core033_kernel_decide
theorem stats1979 : actualRows1979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1979=7428 := by core033_kernel_decide
theorem rows1980 : actualRows1980=WordField.canonicalRows actualModulus 1980 (.shr 1788 3) := by core033_kernel_decide
theorem stats1980 : actualRows1980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1980=4908 := by core033_kernel_decide
theorem rows1981 : actualRows1981=WordField.canonicalRows actualModulus 1981 (.bxor 1979 1980) := by core033_kernel_decide
theorem stats1981 : actualRows1981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1981=7428 := by core033_kernel_decide
theorem rows1982 : actualRows1982=WordField.canonicalRows actualModulus 1982 (.badd 1976 1981) := by core033_kernel_decide
theorem stats1982 : actualRows1982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1982=5388 := by core033_kernel_decide
theorem rows1983 : actualRows1983=WordField.canonicalRows actualModulus 1983 (.badd 1982 1775) := by core033_kernel_decide
theorem stats1983 : actualRows1983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1983=5388 := by core033_kernel_decide
theorem rows1984 : actualRows1984=WordField.canonicalRows actualModulus 1984 (.rotr 1970 17) := by core033_kernel_decide
theorem stats1984 : actualRows1984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1984=5124 := by core033_kernel_decide
theorem rows1985 : actualRows1985=WordField.canonicalRows actualModulus 1985 (.rotr 1970 19) := by core033_kernel_decide
theorem stats1985 : actualRows1985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1985=5124 := by core033_kernel_decide
theorem rows1986 : actualRows1986=WordField.canonicalRows actualModulus 1986 (.bxor 1984 1985) := by core033_kernel_decide
theorem stats1986 : actualRows1986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1986=7428 := by core033_kernel_decide
theorem rows1987 : actualRows1987=WordField.canonicalRows actualModulus 1987 (.shr 1970 10) := by core033_kernel_decide
theorem stats1987 : actualRows1987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1987=4404 := by core033_kernel_decide
theorem rows1988 : actualRows1988=WordField.canonicalRows actualModulus 1988 (.bxor 1986 1987) := by core033_kernel_decide
theorem stats1988 : actualRows1988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1988=7428 := by core033_kernel_decide
theorem rows1989 : actualRows1989=WordField.canonicalRows actualModulus 1989 (.badd 1988 1905) := by core033_kernel_decide
theorem stats1989 : actualRows1989.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1989=5388 := by core033_kernel_decide
theorem rows1990 : actualRows1990=WordField.canonicalRows actualModulus 1990 (.rotr 1801 7) := by core033_kernel_decide
theorem stats1990 : actualRows1990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1990=5124 := by core033_kernel_decide
theorem rows1991 : actualRows1991=WordField.canonicalRows actualModulus 1991 (.rotr 1801 18) := by core033_kernel_decide
theorem stats1991 : actualRows1991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1991=5124 := by core033_kernel_decide
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.bxor 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1992=7428 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.shr 1801 3) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=4908 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.bxor 1992 1993) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=7428 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.badd 1989 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1995=5388 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.badd 1995 1788) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1996=5388 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.rotr 1983 17) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1997=5124 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.rotr 1983 19) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5124 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.bxor 1997 1998) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=7428 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.shr 1983 10) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=4404 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.bxor 1999 2000) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=7428 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.badd 2001 1918) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2002=5388 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.rotr 1814 7) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2003=5124 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.rotr 1814 18) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=5124 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.bxor 2003 2004) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=7428 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.shr 1814 3) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=4908 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.bxor 2005 2006) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=7428 := by core033_kernel_decide
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.badd 2002 2007) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2008=5388 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.badd 2008 1801) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2009=5388 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.rotr 1996 17) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2010=5124 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.rotr 1996 19) := by core033_kernel_decide
theorem stats2011 : actualRows2011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2011=5124 := by core033_kernel_decide
theorem rows2012 : actualRows2012=WordField.canonicalRows actualModulus 2012 (.bxor 2010 2011) := by core033_kernel_decide
theorem stats2012 : actualRows2012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2012=7428 := by core033_kernel_decide
theorem rows2013 : actualRows2013=WordField.canonicalRows actualModulus 2013 (.shr 1996 10) := by core033_kernel_decide
theorem stats2013 : actualRows2013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2013=4404 := by core033_kernel_decide
theorem rows2014 : actualRows2014=WordField.canonicalRows actualModulus 2014 (.bxor 2012 2013) := by core033_kernel_decide
theorem stats2014 : actualRows2014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2014=7428 := by core033_kernel_decide
theorem rows2015 : actualRows2015=WordField.canonicalRows actualModulus 2015 (.badd 2014 1931) := by core033_kernel_decide
theorem stats2015 : actualRows2015.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2015=5388 := by core033_kernel_decide
theorem rows2016 : actualRows2016=WordField.canonicalRows actualModulus 2016 (.rotr 1827 7) := by core033_kernel_decide
theorem stats2016 : actualRows2016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2016=5124 := by core033_kernel_decide
theorem rows2017 : actualRows2017=WordField.canonicalRows actualModulus 2017 (.rotr 1827 18) := by core033_kernel_decide
theorem stats2017 : actualRows2017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2017=5124 := by core033_kernel_decide
theorem rows2018 : actualRows2018=WordField.canonicalRows actualModulus 2018 (.bxor 2016 2017) := by core033_kernel_decide
theorem stats2018 : actualRows2018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2018=7428 := by core033_kernel_decide
theorem rows2019 : actualRows2019=WordField.canonicalRows actualModulus 2019 (.shr 1827 3) := by core033_kernel_decide
theorem stats2019 : actualRows2019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2019=4908 := by core033_kernel_decide
theorem rows2020 : actualRows2020=WordField.canonicalRows actualModulus 2020 (.bxor 2018 2019) := by core033_kernel_decide
theorem stats2020 : actualRows2020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2020=7428 := by core033_kernel_decide
theorem rows2021 : actualRows2021=WordField.canonicalRows actualModulus 2021 (.badd 2015 2020) := by core033_kernel_decide
theorem stats2021 : actualRows2021.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2021=5388 := by core033_kernel_decide
theorem rows2022 : actualRows2022=WordField.canonicalRows actualModulus 2022 (.badd 2021 1814) := by core033_kernel_decide
theorem stats2022 : actualRows2022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2022=5388 := by core033_kernel_decide
theorem rows2023 : actualRows2023=WordField.canonicalRows actualModulus 2023 (.rotr 2009 17) := by core033_kernel_decide
theorem stats2023 : actualRows2023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2023=5124 := by core033_kernel_decide
theorem rows2024 : actualRows2024=WordField.canonicalRows actualModulus 2024 (.rotr 2009 19) := by core033_kernel_decide
theorem stats2024 : actualRows2024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2024=5124 := by core033_kernel_decide
theorem rows2025 : actualRows2025=WordField.canonicalRows actualModulus 2025 (.bxor 2023 2024) := by core033_kernel_decide
theorem stats2025 : actualRows2025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2025=7428 := by core033_kernel_decide
theorem rows2026 : actualRows2026=WordField.canonicalRows actualModulus 2026 (.shr 2009 10) := by core033_kernel_decide
theorem stats2026 : actualRows2026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2026=4404 := by core033_kernel_decide
def partRows30 : List R1CS.Row := actualRows1963++actualRows1964++actualRows1965++actualRows1966++actualRows1967++actualRows1968++actualRows1969++actualRows1970++actualRows1971++actualRows1972++actualRows1973++actualRows1974++actualRows1975++actualRows1976++actualRows1977++actualRows1978++actualRows1979++actualRows1980++actualRows1981++actualRows1982++actualRows1983++actualRows1984++actualRows1985++actualRows1986++actualRows1987++actualRows1988++actualRows1989++actualRows1990++actualRows1991++actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007++actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015++actualRows2016++actualRows2017++actualRows2018++actualRows2019++actualRows2020++actualRows2021++actualRows2022++actualRows2023++actualRows2024++actualRows2025++actualRows2026
def partOps30 : List WordIR.Op := [.badd 1962 1879,.rotr 1775 7,.rotr 1775 18,.bxor 1964 1965,.shr 1775 3,.bxor 1966 1967,.badd 1963 1968,.badd 1969 1762,.rotr 1957 17,.rotr 1957 19,.bxor 1971 1972,.shr 1957 10,.bxor 1973 1974,.badd 1975 1892,.rotr 1788 7,.rotr 1788 18,.bxor 1977 1978,.shr 1788 3,.bxor 1979 1980,.badd 1976 1981,.badd 1982 1775,.rotr 1970 17,.rotr 1970 19,.bxor 1984 1985,.shr 1970 10,.bxor 1986 1987,.badd 1988 1905,.rotr 1801 7,.rotr 1801 18,.bxor 1990 1991,.shr 1801 3,.bxor 1992 1993,.badd 1989 1994,.badd 1995 1788,.rotr 1983 17,.rotr 1983 19,.bxor 1997 1998,.shr 1983 10,.bxor 1999 2000,.badd 2001 1918,.rotr 1814 7,.rotr 1814 18,.bxor 2003 2004,.shr 1814 3,.bxor 2005 2006,.badd 2002 2007,.badd 2008 1801,.rotr 1996 17,.rotr 1996 19,.bxor 2010 2011,.shr 1996 10,.bxor 2012 2013,.badd 2014 1931,.rotr 1827 7,.rotr 1827 18,.bxor 2016 2017,.shr 1827 3,.bxor 2018 2019,.badd 2015 2020,.badd 2021 1814,.rotr 2009 17,.rotr 2009 19,.bxor 2023 2024,.shr 2009 10]
theorem partExact30 : partRows30=WordField.rows actualModulus 1963 partOps30 := by
  simp only [partRows30,partOps30,WordField.rows,rows1963,rows1964,rows1965,rows1966,rows1967,rows1968,rows1969,rows1970,rows1971,rows1972,rows1973,rows1974,rows1975,rows1976,rows1977,rows1978,rows1979,rows1980,rows1981,rows1982,rows1983,rows1984,rows1985,rows1986,rows1987,rows1988,rows1989,rows1990,rows1991,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,rows2016,rows2017,rows2018,rows2019,rows2020,rows2021,rows2022,rows2023,rows2024,rows2025,rows2026,List.append_assoc,List.append_nil]
theorem partLength30 : partOps30.length=64 := by decide
theorem partStats30 : partRows30.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows30=370992 := by
  simp only [partRows30,List.length_append,MatrixRowBlocks.rows_weight_append,stats1963.1,stats1963.2,stats1964.1,stats1964.2,stats1965.1,stats1965.2,stats1966.1,stats1966.2,stats1967.1,stats1967.2,stats1968.1,stats1968.2,stats1969.1,stats1969.2,stats1970.1,stats1970.2,stats1971.1,stats1971.2,stats1972.1,stats1972.2,stats1973.1,stats1973.2,stats1974.1,stats1974.2,stats1975.1,stats1975.2,stats1976.1,stats1976.2,stats1977.1,stats1977.2,stats1978.1,stats1978.2,stats1979.1,stats1979.2,stats1980.1,stats1980.2,stats1981.1,stats1981.2,stats1982.1,stats1982.2,stats1983.1,stats1983.2,stats1984.1,stats1984.2,stats1985.1,stats1985.2,stats1986.1,stats1986.2,stats1987.1,stats1987.2,stats1988.1,stats1988.2,stats1989.1,stats1989.2,stats1990.1,stats1990.2,stats1991.1,stats1991.2,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2,stats2016.1,stats2016.2,stats2017.1,stats2017.2,stats2018.1,stats2018.2,stats2019.1,stats2019.2,stats2020.1,stats2020.2,stats2021.1,stats2021.2,stats2022.1,stats2022.2,stats2023.1,stats2023.2,stats2024.1,stats2024.2,stats2025.1,stats2025.2,stats2026.1,stats2026.2]
  decide
end SharedFrameCheckedRows
