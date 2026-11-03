import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup31
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1984 : List WordIR.Op := [.bxor 2025 2026]
def bytes1984 : Bytes := ("    let r000007eb: u32 = r000007e9 ^ r000007ea;\n" : String).toByteArray.data.toList
theorem checked1984 : bytes1984=statementBytes 2027 (op1984.map lower) ∧ bytes1984.length=48 := by core033_kernel_decide
def op1985 : List WordIR.Op := [.badd 2027 1944]
def bytes1985 : Bytes := ("    let r000007ec: u32 = r000007eb.wrapping_add(r00000798);\n" : String).toByteArray.data.toList
theorem checked1985 : bytes1985=statementBytes 2028 (op1985.map lower) ∧ bytes1985.length=60 := by core033_kernel_decide
def op1986 : List WordIR.Op := [.rotr 1840 7]
def bytes1986 : Bytes := ("    let r000007ed: u32 = r00000730.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1986 : bytes1986=statementBytes 2029 (op1986.map lower) ∧ bytes1986.length=65 := by core033_kernel_decide
def op1987 : List WordIR.Op := [.rotr 1840 18]
def bytes1987 : Bytes := ("    let r000007ee: u32 = r00000730.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked1987 : bytes1987=statementBytes 2030 (op1987.map lower) ∧ bytes1987.length=65 := by core033_kernel_decide
def op1988 : List WordIR.Op := [.bxor 2029 2030]
def bytes1988 : Bytes := ("    let r000007ef: u32 = r000007ed ^ r000007ee;\n" : String).toByteArray.data.toList
theorem checked1988 : bytes1988=statementBytes 2031 (op1988.map lower) ∧ bytes1988.length=48 := by core033_kernel_decide
def op1989 : List WordIR.Op := [.shr 1840 3]
def bytes1989 : Bytes := ("    let r000007f0: u32 = r00000730 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked1989 : bytes1989=statementBytes 2032 (op1989.map lower) ∧ bytes1989.length=54 := by core033_kernel_decide
def op1990 : List WordIR.Op := [.bxor 2031 2032]
def bytes1990 : Bytes := ("    let r000007f1: u32 = r000007ef ^ r000007f0;\n" : String).toByteArray.data.toList
theorem checked1990 : bytes1990=statementBytes 2033 (op1990.map lower) ∧ bytes1990.length=48 := by core033_kernel_decide
def op1991 : List WordIR.Op := [.badd 2028 2033]
def bytes1991 : Bytes := ("    let r000007f2: u32 = r000007ec.wrapping_add(r000007f1);\n" : String).toByteArray.data.toList
theorem checked1991 : bytes1991=statementBytes 2034 (op1991.map lower) ∧ bytes1991.length=60 := by core033_kernel_decide
def op1992 : List WordIR.Op := [.badd 2034 1827]
def bytes1992 : Bytes := ("    let r000007f3: u32 = r000007f2.wrapping_add(r00000723);\n" : String).toByteArray.data.toList
theorem checked1992 : bytes1992=statementBytes 2035 (op1992.map lower) ∧ bytes1992.length=60 := by core033_kernel_decide
def op1993 : List WordIR.Op := [.rotr 2022 17]
def bytes1993 : Bytes := ("    let r000007f4: u32 = r000007e6.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked1993 : bytes1993=statementBytes 2036 (op1993.map lower) ∧ bytes1993.length=65 := by core033_kernel_decide
def op1994 : List WordIR.Op := [.rotr 2022 19]
def bytes1994 : Bytes := ("    let r000007f5: u32 = r000007e6.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked1994 : bytes1994=statementBytes 2037 (op1994.map lower) ∧ bytes1994.length=65 := by core033_kernel_decide
def op1995 : List WordIR.Op := [.bxor 2036 2037]
def bytes1995 : Bytes := ("    let r000007f6: u32 = r000007f4 ^ r000007f5;\n" : String).toByteArray.data.toList
theorem checked1995 : bytes1995=statementBytes 2038 (op1995.map lower) ∧ bytes1995.length=48 := by core033_kernel_decide
def op1996 : List WordIR.Op := [.shr 2022 10]
def bytes1996 : Bytes := ("    let r000007f7: u32 = r000007e6 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked1996 : bytes1996=statementBytes 2039 (op1996.map lower) ∧ bytes1996.length=54 := by core033_kernel_decide
def op1997 : List WordIR.Op := [.bxor 2038 2039]
def bytes1997 : Bytes := ("    let r000007f8: u32 = r000007f6 ^ r000007f7;\n" : String).toByteArray.data.toList
theorem checked1997 : bytes1997=statementBytes 2040 (op1997.map lower) ∧ bytes1997.length=48 := by core033_kernel_decide
def op1998 : List WordIR.Op := [.badd 2040 1957]
def bytes1998 : Bytes := ("    let r000007f9: u32 = r000007f8.wrapping_add(r000007a5);\n" : String).toByteArray.data.toList
theorem checked1998 : bytes1998=statementBytes 2041 (op1998.map lower) ∧ bytes1998.length=60 := by core033_kernel_decide
def op1999 : List WordIR.Op := [.rotr 1853 7]
def bytes1999 : Bytes := ("    let r000007fa: u32 = r0000073d.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked1999 : bytes1999=statementBytes 2042 (op1999.map lower) ∧ bytes1999.length=65 := by core033_kernel_decide
def op2000 : List WordIR.Op := [.rotr 1853 18]
def bytes2000 : Bytes := ("    let r000007fb: u32 = r0000073d.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked2000 : bytes2000=statementBytes 2043 (op2000.map lower) ∧ bytes2000.length=65 := by core033_kernel_decide
def op2001 : List WordIR.Op := [.bxor 2042 2043]
def bytes2001 : Bytes := ("    let r000007fc: u32 = r000007fa ^ r000007fb;\n" : String).toByteArray.data.toList
theorem checked2001 : bytes2001=statementBytes 2044 (op2001.map lower) ∧ bytes2001.length=48 := by core033_kernel_decide
def op2002 : List WordIR.Op := [.shr 1853 3]
def bytes2002 : Bytes := ("    let r000007fd: u32 = r0000073d >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2002 : bytes2002=statementBytes 2045 (op2002.map lower) ∧ bytes2002.length=54 := by core033_kernel_decide
def op2003 : List WordIR.Op := [.bxor 2044 2045]
def bytes2003 : Bytes := ("    let r000007fe: u32 = r000007fc ^ r000007fd;\n" : String).toByteArray.data.toList
theorem checked2003 : bytes2003=statementBytes 2046 (op2003.map lower) ∧ bytes2003.length=48 := by core033_kernel_decide
def op2004 : List WordIR.Op := [.badd 2041 2046]
def bytes2004 : Bytes := ("    let r000007ff: u32 = r000007f9.wrapping_add(r000007fe);\n" : String).toByteArray.data.toList
theorem checked2004 : bytes2004=statementBytes 2047 (op2004.map lower) ∧ bytes2004.length=60 := by core033_kernel_decide
def op2005 : List WordIR.Op := [.badd 2047 1840]
def bytes2005 : Bytes := ("    let r00000800: u32 = r000007ff.wrapping_add(r00000730);\n" : String).toByteArray.data.toList
theorem checked2005 : bytes2005=statementBytes 2048 (op2005.map lower) ∧ bytes2005.length=60 := by core033_kernel_decide
def op2006 : List WordIR.Op := [.rotr 2035 17]
def bytes2006 : Bytes := ("    let r00000801: u32 = r000007f3.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked2006 : bytes2006=statementBytes 2049 (op2006.map lower) ∧ bytes2006.length=65 := by core033_kernel_decide
def op2007 : List WordIR.Op := [.rotr 2035 19]
def bytes2007 : Bytes := ("    let r00000802: u32 = r000007f3.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked2007 : bytes2007=statementBytes 2050 (op2007.map lower) ∧ bytes2007.length=65 := by core033_kernel_decide
def op2008 : List WordIR.Op := [.bxor 2049 2050]
def bytes2008 : Bytes := ("    let r00000803: u32 = r00000801 ^ r00000802;\n" : String).toByteArray.data.toList
theorem checked2008 : bytes2008=statementBytes 2051 (op2008.map lower) ∧ bytes2008.length=48 := by core033_kernel_decide
def op2009 : List WordIR.Op := [.shr 2035 10]
def bytes2009 : Bytes := ("    let r00000804: u32 = r000007f3 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked2009 : bytes2009=statementBytes 2052 (op2009.map lower) ∧ bytes2009.length=54 := by core033_kernel_decide
def op2010 : List WordIR.Op := [.bxor 2051 2052]
def bytes2010 : Bytes := ("    let r00000805: u32 = r00000803 ^ r00000804;\n" : String).toByteArray.data.toList
theorem checked2010 : bytes2010=statementBytes 2053 (op2010.map lower) ∧ bytes2010.length=48 := by core033_kernel_decide
def op2011 : List WordIR.Op := [.badd 2053 1970]
def bytes2011 : Bytes := ("    let r00000806: u32 = r00000805.wrapping_add(r000007b2);\n" : String).toByteArray.data.toList
theorem checked2011 : bytes2011=statementBytes 2054 (op2011.map lower) ∧ bytes2011.length=60 := by core033_kernel_decide
def op2012 : List WordIR.Op := [.rotr 1866 7]
def bytes2012 : Bytes := ("    let r00000807: u32 = r0000074a.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked2012 : bytes2012=statementBytes 2055 (op2012.map lower) ∧ bytes2012.length=65 := by core033_kernel_decide
def op2013 : List WordIR.Op := [.rotr 1866 18]
def bytes2013 : Bytes := ("    let r00000808: u32 = r0000074a.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked2013 : bytes2013=statementBytes 2056 (op2013.map lower) ∧ bytes2013.length=65 := by core033_kernel_decide
def op2014 : List WordIR.Op := [.bxor 2055 2056]
def bytes2014 : Bytes := ("    let r00000809: u32 = r00000807 ^ r00000808;\n" : String).toByteArray.data.toList
theorem checked2014 : bytes2014=statementBytes 2057 (op2014.map lower) ∧ bytes2014.length=48 := by core033_kernel_decide
def op2015 : List WordIR.Op := [.shr 1866 3]
def bytes2015 : Bytes := ("    let r0000080a: u32 = r0000074a >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2015 : bytes2015=statementBytes 2058 (op2015.map lower) ∧ bytes2015.length=54 := by core033_kernel_decide
def op2016 : List WordIR.Op := [.bxor 2057 2058]
def bytes2016 : Bytes := ("    let r0000080b: u32 = r00000809 ^ r0000080a;\n" : String).toByteArray.data.toList
theorem checked2016 : bytes2016=statementBytes 2059 (op2016.map lower) ∧ bytes2016.length=48 := by core033_kernel_decide
def op2017 : List WordIR.Op := [.badd 2054 2059]
def bytes2017 : Bytes := ("    let r0000080c: u32 = r00000806.wrapping_add(r0000080b);\n" : String).toByteArray.data.toList
theorem checked2017 : bytes2017=statementBytes 2060 (op2017.map lower) ∧ bytes2017.length=60 := by core033_kernel_decide
def op2018 : List WordIR.Op := [.badd 2060 1853]
def bytes2018 : Bytes := ("    let r0000080d: u32 = r0000080c.wrapping_add(r0000073d);\n" : String).toByteArray.data.toList
theorem checked2018 : bytes2018=statementBytes 2061 (op2018.map lower) ∧ bytes2018.length=60 := by core033_kernel_decide
def op2019 : List WordIR.Op := [.rotr 2048 17]
def bytes2019 : Bytes := ("    let r0000080e: u32 = r00000800.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked2019 : bytes2019=statementBytes 2062 (op2019.map lower) ∧ bytes2019.length=65 := by core033_kernel_decide
def op2020 : List WordIR.Op := [.rotr 2048 19]
def bytes2020 : Bytes := ("    let r0000080f: u32 = r00000800.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked2020 : bytes2020=statementBytes 2063 (op2020.map lower) ∧ bytes2020.length=65 := by core033_kernel_decide
def op2021 : List WordIR.Op := [.bxor 2062 2063]
def bytes2021 : Bytes := ("    let r00000810: u32 = r0000080e ^ r0000080f;\n" : String).toByteArray.data.toList
theorem checked2021 : bytes2021=statementBytes 2064 (op2021.map lower) ∧ bytes2021.length=48 := by core033_kernel_decide
def op2022 : List WordIR.Op := [.shr 2048 10]
def bytes2022 : Bytes := ("    let r00000811: u32 = r00000800 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked2022 : bytes2022=statementBytes 2065 (op2022.map lower) ∧ bytes2022.length=54 := by core033_kernel_decide
def op2023 : List WordIR.Op := [.bxor 2064 2065]
def bytes2023 : Bytes := ("    let r00000812: u32 = r00000810 ^ r00000811;\n" : String).toByteArray.data.toList
theorem checked2023 : bytes2023=statementBytes 2066 (op2023.map lower) ∧ bytes2023.length=48 := by core033_kernel_decide
def op2024 : List WordIR.Op := [.badd 2066 1983]
def bytes2024 : Bytes := ("    let r00000813: u32 = r00000812.wrapping_add(r000007bf);\n" : String).toByteArray.data.toList
theorem checked2024 : bytes2024=statementBytes 2067 (op2024.map lower) ∧ bytes2024.length=60 := by core033_kernel_decide
def op2025 : List WordIR.Op := [.rotr 1879 7]
def bytes2025 : Bytes := ("    let r00000814: u32 = r00000757.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked2025 : bytes2025=statementBytes 2068 (op2025.map lower) ∧ bytes2025.length=65 := by core033_kernel_decide
def op2026 : List WordIR.Op := [.rotr 1879 18]
def bytes2026 : Bytes := ("    let r00000815: u32 = r00000757.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked2026 : bytes2026=statementBytes 2069 (op2026.map lower) ∧ bytes2026.length=65 := by core033_kernel_decide
def op2027 : List WordIR.Op := [.bxor 2068 2069]
def bytes2027 : Bytes := ("    let r00000816: u32 = r00000814 ^ r00000815;\n" : String).toByteArray.data.toList
theorem checked2027 : bytes2027=statementBytes 2070 (op2027.map lower) ∧ bytes2027.length=48 := by core033_kernel_decide
def op2028 : List WordIR.Op := [.shr 1879 3]
def bytes2028 : Bytes := ("    let r00000817: u32 = r00000757 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2028 : bytes2028=statementBytes 2071 (op2028.map lower) ∧ bytes2028.length=54 := by core033_kernel_decide
def op2029 : List WordIR.Op := [.bxor 2070 2071]
def bytes2029 : Bytes := ("    let r00000818: u32 = r00000816 ^ r00000817;\n" : String).toByteArray.data.toList
theorem checked2029 : bytes2029=statementBytes 2072 (op2029.map lower) ∧ bytes2029.length=48 := by core033_kernel_decide
def op2030 : List WordIR.Op := [.badd 2067 2072]
def bytes2030 : Bytes := ("    let r00000819: u32 = r00000813.wrapping_add(r00000818);\n" : String).toByteArray.data.toList
theorem checked2030 : bytes2030=statementBytes 2073 (op2030.map lower) ∧ bytes2030.length=60 := by core033_kernel_decide
def op2031 : List WordIR.Op := [.badd 2073 1866]
def bytes2031 : Bytes := ("    let r0000081a: u32 = r00000819.wrapping_add(r0000074a);\n" : String).toByteArray.data.toList
theorem checked2031 : bytes2031=statementBytes 2074 (op2031.map lower) ∧ bytes2031.length=60 := by core033_kernel_decide
def op2032 : List WordIR.Op := [.rotr 2061 17]
def bytes2032 : Bytes := ("    let r0000081b: u32 = r0000080d.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked2032 : bytes2032=statementBytes 2075 (op2032.map lower) ∧ bytes2032.length=65 := by core033_kernel_decide
def op2033 : List WordIR.Op := [.rotr 2061 19]
def bytes2033 : Bytes := ("    let r0000081c: u32 = r0000080d.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked2033 : bytes2033=statementBytes 2076 (op2033.map lower) ∧ bytes2033.length=65 := by core033_kernel_decide
def op2034 : List WordIR.Op := [.bxor 2075 2076]
def bytes2034 : Bytes := ("    let r0000081d: u32 = r0000081b ^ r0000081c;\n" : String).toByteArray.data.toList
theorem checked2034 : bytes2034=statementBytes 2077 (op2034.map lower) ∧ bytes2034.length=48 := by core033_kernel_decide
def op2035 : List WordIR.Op := [.shr 2061 10]
def bytes2035 : Bytes := ("    let r0000081e: u32 = r0000080d >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked2035 : bytes2035=statementBytes 2078 (op2035.map lower) ∧ bytes2035.length=54 := by core033_kernel_decide
def op2036 : List WordIR.Op := [.bxor 2077 2078]
def bytes2036 : Bytes := ("    let r0000081f: u32 = r0000081d ^ r0000081e;\n" : String).toByteArray.data.toList
theorem checked2036 : bytes2036=statementBytes 2079 (op2036.map lower) ∧ bytes2036.length=48 := by core033_kernel_decide
def op2037 : List WordIR.Op := [.badd 2079 1996]
def bytes2037 : Bytes := ("    let r00000820: u32 = r0000081f.wrapping_add(r000007cc);\n" : String).toByteArray.data.toList
theorem checked2037 : bytes2037=statementBytes 2080 (op2037.map lower) ∧ bytes2037.length=60 := by core033_kernel_decide
def op2038 : List WordIR.Op := [.rotr 1892 7]
def bytes2038 : Bytes := ("    let r00000821: u32 = r00000764.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked2038 : bytes2038=statementBytes 2081 (op2038.map lower) ∧ bytes2038.length=65 := by core033_kernel_decide
def op2039 : List WordIR.Op := [.rotr 1892 18]
def bytes2039 : Bytes := ("    let r00000822: u32 = r00000764.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked2039 : bytes2039=statementBytes 2082 (op2039.map lower) ∧ bytes2039.length=65 := by core033_kernel_decide
def op2040 : List WordIR.Op := [.bxor 2081 2082]
def bytes2040 : Bytes := ("    let r00000823: u32 = r00000821 ^ r00000822;\n" : String).toByteArray.data.toList
theorem checked2040 : bytes2040=statementBytes 2083 (op2040.map lower) ∧ bytes2040.length=48 := by core033_kernel_decide
def op2041 : List WordIR.Op := [.shr 1892 3]
def bytes2041 : Bytes := ("    let r00000824: u32 = r00000764 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2041 : bytes2041=statementBytes 2084 (op2041.map lower) ∧ bytes2041.length=54 := by core033_kernel_decide
def op2042 : List WordIR.Op := [.bxor 2083 2084]
def bytes2042 : Bytes := ("    let r00000825: u32 = r00000823 ^ r00000824;\n" : String).toByteArray.data.toList
theorem checked2042 : bytes2042=statementBytes 2085 (op2042.map lower) ∧ bytes2042.length=48 := by core033_kernel_decide
def op2043 : List WordIR.Op := [.badd 2080 2085]
def bytes2043 : Bytes := ("    let r00000826: u32 = r00000820.wrapping_add(r00000825);\n" : String).toByteArray.data.toList
theorem checked2043 : bytes2043=statementBytes 2086 (op2043.map lower) ∧ bytes2043.length=60 := by core033_kernel_decide
def op2044 : List WordIR.Op := [.badd 2086 1879]
def bytes2044 : Bytes := ("    let r00000827: u32 = r00000826.wrapping_add(r00000757);\n" : String).toByteArray.data.toList
theorem checked2044 : bytes2044=statementBytes 2087 (op2044.map lower) ∧ bytes2044.length=60 := by core033_kernel_decide
def op2045 : List WordIR.Op := [.rotr 2074 17]
def bytes2045 : Bytes := ("    let r00000828: u32 = r0000081a.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked2045 : bytes2045=statementBytes 2088 (op2045.map lower) ∧ bytes2045.length=65 := by core033_kernel_decide
def op2046 : List WordIR.Op := [.rotr 2074 19]
def bytes2046 : Bytes := ("    let r00000829: u32 = r0000081a.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked2046 : bytes2046=statementBytes 2089 (op2046.map lower) ∧ bytes2046.length=65 := by core033_kernel_decide
def op2047 : List WordIR.Op := [.bxor 2088 2089]
def bytes2047 : Bytes := ("    let r0000082a: u32 = r00000828 ^ r00000829;\n" : String).toByteArray.data.toList
theorem checked2047 : bytes2047=statementBytes 2090 (op2047.map lower) ∧ bytes2047.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1984,op1985,op1986,op1987,op1988,op1989,op1990,op1991,op1992,op1993,op1994,op1995,op1996,op1997,op1998,op1999,op2000,op2001,op2002,op2003,op2004,op2005,op2006,op2007,op2008,op2009,op2010,op2011,op2012,op2013,op2014,op2015,op2016,op2017,op2018,op2019,op2020,op2021,op2022,op2023,op2024,op2025,op2026,op2027,op2028,op2029,op2030,op2031,op2032,op2033,op2034,op2035,op2036,op2037,op2038,op2039,op2040,op2041,op2042,op2043,op2044,op2045,op2046,op2047]
def chunks : List Bytes := [bytes1984,bytes1985,bytes1986,bytes1987,bytes1988,bytes1989,bytes1990,bytes1991,bytes1992,bytes1993,bytes1994,bytes1995,bytes1996,bytes1997,bytes1998,bytes1999,bytes2000,bytes2001,bytes2002,bytes2003,bytes2004,bytes2005,bytes2006,bytes2007,bytes2008,bytes2009,bytes2010,bytes2011,bytes2012,bytes2013,bytes2014,bytes2015,bytes2016,bytes2017,bytes2018,bytes2019,bytes2020,bytes2021,bytes2022,bytes2023,bytes2024,bytes2025,bytes2026,bytes2027,bytes2028,bytes2029,bytes2030,bytes2031,bytes2032,bytes2033,bytes2034,bytes2035,bytes2036,bytes2037,bytes2038,bytes2039,bytes2040,bytes2041,bytes2042,bytes2043,bytes2044,bytes2045,bytes2046,bytes2047]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2027 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1984.1 (.cons _ _ _ _ _ checked1985.1 (.cons _ _ _ _ _ checked1986.1 (.cons _ _ _ _ _ checked1987.1 (.cons _ _ _ _ _ checked1988.1 (.cons _ _ _ _ _ checked1989.1 (.cons _ _ _ _ _ checked1990.1 (.cons _ _ _ _ _ checked1991.1 (.cons _ _ _ _ _ checked1992.1 (.cons _ _ _ _ _ checked1993.1 (.cons _ _ _ _ _ checked1994.1 (.cons _ _ _ _ _ checked1995.1 (.cons _ _ _ _ _ checked1996.1 (.cons _ _ _ _ _ checked1997.1 (.cons _ _ _ _ _ checked1998.1 (.cons _ _ _ _ _ checked1999.1 (.cons _ _ _ _ _ checked2000.1 (.cons _ _ _ _ _ checked2001.1 (.cons _ _ _ _ _ checked2002.1 (.cons _ _ _ _ _ checked2003.1 (.cons _ _ _ _ _ checked2004.1 (.cons _ _ _ _ _ checked2005.1 (.cons _ _ _ _ _ checked2006.1 (.cons _ _ _ _ _ checked2007.1 (.cons _ _ _ _ _ checked2008.1 (.cons _ _ _ _ _ checked2009.1 (.cons _ _ _ _ _ checked2010.1 (.cons _ _ _ _ _ checked2011.1 (.cons _ _ _ _ _ checked2012.1 (.cons _ _ _ _ _ checked2013.1 (.cons _ _ _ _ _ checked2014.1 (.cons _ _ _ _ _ checked2015.1 (.cons _ _ _ _ _ checked2016.1 (.cons _ _ _ _ _ checked2017.1 (.cons _ _ _ _ _ checked2018.1 (.cons _ _ _ _ _ checked2019.1 (.cons _ _ _ _ _ checked2020.1 (.cons _ _ _ _ _ checked2021.1 (.cons _ _ _ _ _ checked2022.1 (.cons _ _ _ _ _ checked2023.1 (.cons _ _ _ _ _ checked2024.1 (.cons _ _ _ _ _ checked2025.1 (.cons _ _ _ _ _ checked2026.1 (.cons _ _ _ _ _ checked2027.1 (.cons _ _ _ _ _ checked2028.1 (.cons _ _ _ _ _ checked2029.1 (.cons _ _ _ _ _ checked2030.1 (.cons _ _ _ _ _ checked2031.1 (.cons _ _ _ _ _ checked2032.1 (.cons _ _ _ _ _ checked2033.1 (.cons _ _ _ _ _ checked2034.1 (.cons _ _ _ _ _ checked2035.1 (.cons _ _ _ _ _ checked2036.1 (.cons _ _ _ _ _ checked2037.1 (.cons _ _ _ _ _ checked2038.1 (.cons _ _ _ _ _ checked2039.1 (.cons _ _ _ _ _ checked2040.1 (.cons _ _ _ _ _ checked2041.1 (.cons _ _ _ _ _ checked2042.1 (.cons _ _ _ _ _ checked2043.1 (.cons _ _ _ _ _ checked2044.1 (.cons _ _ _ _ _ checked2045.1 (.cons _ _ _ _ _ checked2046.1 (.cons _ _ _ _ _ checked2047.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2027 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3646 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1984.2,checked1985.2,checked1986.2,checked1987.2,checked1988.2,checked1989.2,checked1990.2,checked1991.2,checked1992.2,checked1993.2,checked1994.2,checked1995.2,checked1996.2,checked1997.2,checked1998.2,checked1999.2,checked2000.2,checked2001.2,checked2002.2,checked2003.2,checked2004.2,checked2005.2,checked2006.2,checked2007.2,checked2008.2,checked2009.2,checked2010.2,checked2011.2,checked2012.2,checked2013.2,checked2014.2,checked2015.2,checked2016.2,checked2017.2,checked2018.2,checked2019.2,checked2020.2,checked2021.2,checked2022.2,checked2023.2,checked2024.2,checked2025.2,checked2026.2,checked2027.2,checked2028.2,checked2029.2,checked2030.2,checked2031.2,checked2032.2,checked2033.2,checked2034.2,checked2035.2,checked2036.2,checked2037.2,checked2038.2,checked2039.2,checked2040.2,checked2041.2,checked2042.2,checked2043.2,checked2044.2,checked2045.2,checked2046.2,checked2047.2]
  decide
end ArtifactSharedFrameGroup31
