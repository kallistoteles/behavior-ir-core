import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData30
import PairedPathRoundInstructionMatrixData31
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1952 : actualRows1952=WordField.canonicalRows actualModulus 1952 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1952 : actualRows1952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1952=3396 := by core033_kernel_decide
theorem rows1953 : actualRows1953=WordField.canonicalRows actualModulus 1953 (.band 1951 1952) := by core033_kernel_decide
theorem stats1953 : actualRows1953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1953=5124 := by core033_kernel_decide
theorem rows1954 : actualRows1954=WordField.canonicalRows actualModulus 1954 (.shr 1455 0) := by core033_kernel_decide
theorem stats1954 : actualRows1954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1954=5124 := by core033_kernel_decide
theorem rows1955 : actualRows1955=WordField.canonicalRows actualModulus 1955 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1955 : actualRows1955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1955=3396 := by core033_kernel_decide
theorem rows1956 : actualRows1956=WordField.canonicalRows actualModulus 1956 (.band 1954 1955) := by core033_kernel_decide
theorem stats1956 : actualRows1956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1956=5124 := by core033_kernel_decide
theorem rows1957 : actualRows1957=WordField.canonicalRows actualModulus 1957 (.shr 1455 8) := by core033_kernel_decide
theorem stats1957 : actualRows1957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1957=4548 := by core033_kernel_decide
theorem rows1958 : actualRows1958=WordField.canonicalRows actualModulus 1958 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1958 : actualRows1958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1958=3396 := by core033_kernel_decide
theorem rows1959 : actualRows1959=WordField.canonicalRows actualModulus 1959 (.band 1957 1958) := by core033_kernel_decide
theorem stats1959 : actualRows1959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1959=5124 := by core033_kernel_decide
theorem rows1960 : actualRows1960=WordField.canonicalRows actualModulus 1960 (.shr 1455 16) := by core033_kernel_decide
theorem stats1960 : actualRows1960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1960=3972 := by core033_kernel_decide
theorem rows1961 : actualRows1961=WordField.canonicalRows actualModulus 1961 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1961 : actualRows1961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1961=3396 := by core033_kernel_decide
theorem rows1962 : actualRows1962=WordField.canonicalRows actualModulus 1962 (.band 1960 1961) := by core033_kernel_decide
theorem stats1962 : actualRows1962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1962=5124 := by core033_kernel_decide
theorem rows1963 : actualRows1963=WordField.canonicalRows actualModulus 1963 (.shr 1455 24) := by core033_kernel_decide
theorem stats1963 : actualRows1963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1963=3396 := by core033_kernel_decide
theorem rows1964 : actualRows1964=WordField.canonicalRows actualModulus 1964 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1964 : actualRows1964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1964=3396 := by core033_kernel_decide
theorem rows1965 : actualRows1965=WordField.canonicalRows actualModulus 1965 (.band 1963 1964) := by core033_kernel_decide
theorem stats1965 : actualRows1965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1965=5124 := by core033_kernel_decide
theorem rows1966 : actualRows1966=WordField.canonicalRows actualModulus 1966 (.shr 1465 0) := by core033_kernel_decide
theorem stats1966 : actualRows1966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1966=5124 := by core033_kernel_decide
theorem rows1967 : actualRows1967=WordField.canonicalRows actualModulus 1967 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1967 : actualRows1967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1967=3396 := by core033_kernel_decide
theorem rows1968 : actualRows1968=WordField.canonicalRows actualModulus 1968 (.band 1966 1967) := by core033_kernel_decide
theorem stats1968 : actualRows1968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1968=5124 := by core033_kernel_decide
theorem rows1969 : actualRows1969=WordField.canonicalRows actualModulus 1969 (.shr 1465 8) := by core033_kernel_decide
theorem stats1969 : actualRows1969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1969=4548 := by core033_kernel_decide
theorem rows1970 : actualRows1970=WordField.canonicalRows actualModulus 1970 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1970 : actualRows1970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1970=3396 := by core033_kernel_decide
theorem rows1971 : actualRows1971=WordField.canonicalRows actualModulus 1971 (.band 1969 1970) := by core033_kernel_decide
theorem stats1971 : actualRows1971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1971=5124 := by core033_kernel_decide
theorem rows1972 : actualRows1972=WordField.canonicalRows actualModulus 1972 (.shr 1465 16) := by core033_kernel_decide
theorem stats1972 : actualRows1972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1972=3972 := by core033_kernel_decide
theorem rows1973 : actualRows1973=WordField.canonicalRows actualModulus 1973 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1973 : actualRows1973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1973=3396 := by core033_kernel_decide
theorem rows1974 : actualRows1974=WordField.canonicalRows actualModulus 1974 (.band 1972 1973) := by core033_kernel_decide
theorem stats1974 : actualRows1974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1974=5124 := by core033_kernel_decide
theorem rows1975 : actualRows1975=WordField.canonicalRows actualModulus 1975 (.shr 1465 24) := by core033_kernel_decide
theorem stats1975 : actualRows1975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1975=3396 := by core033_kernel_decide
theorem rows1976 : actualRows1976=WordField.canonicalRows actualModulus 1976 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1976 : actualRows1976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1976=3396 := by core033_kernel_decide
theorem rows1977 : actualRows1977=WordField.canonicalRows actualModulus 1977 (.band 1975 1976) := by core033_kernel_decide
theorem stats1977 : actualRows1977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1977=5124 := by core033_kernel_decide
theorem rows1978 : actualRows1978=WordField.canonicalRows actualModulus 1978 (.shr 1475 0) := by core033_kernel_decide
theorem stats1978 : actualRows1978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1978=5124 := by core033_kernel_decide
theorem rows1979 : actualRows1979=WordField.canonicalRows actualModulus 1979 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1979 : actualRows1979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1979=3396 := by core033_kernel_decide
theorem rows1980 : actualRows1980=WordField.canonicalRows actualModulus 1980 (.band 1978 1979) := by core033_kernel_decide
theorem stats1980 : actualRows1980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1980=5124 := by core033_kernel_decide
theorem rows1981 : actualRows1981=WordField.canonicalRows actualModulus 1981 (.shr 1475 8) := by core033_kernel_decide
theorem stats1981 : actualRows1981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1981=4548 := by core033_kernel_decide
theorem rows1982 : actualRows1982=WordField.canonicalRows actualModulus 1982 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1982 : actualRows1982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1982=3396 := by core033_kernel_decide
theorem rows1983 : actualRows1983=WordField.canonicalRows actualModulus 1983 (.band 1981 1982) := by core033_kernel_decide
theorem stats1983 : actualRows1983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1983=5124 := by core033_kernel_decide
theorem rows1984 : actualRows1984=WordField.canonicalRows actualModulus 1984 (.shr 1475 16) := by core033_kernel_decide
theorem stats1984 : actualRows1984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1984=3972 := by core033_kernel_decide
theorem rows1985 : actualRows1985=WordField.canonicalRows actualModulus 1985 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1985 : actualRows1985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1985=3396 := by core033_kernel_decide
theorem rows1986 : actualRows1986=WordField.canonicalRows actualModulus 1986 (.band 1984 1985) := by core033_kernel_decide
theorem stats1986 : actualRows1986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1986=5124 := by core033_kernel_decide
theorem rows1987 : actualRows1987=WordField.canonicalRows actualModulus 1987 (.shr 1475 24) := by core033_kernel_decide
theorem stats1987 : actualRows1987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1987=3396 := by core033_kernel_decide
theorem rows1988 : actualRows1988=WordField.canonicalRows actualModulus 1988 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1988 : actualRows1988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1988=3396 := by core033_kernel_decide
theorem rows1989 : actualRows1989=WordField.canonicalRows actualModulus 1989 (.band 1987 1988) := by core033_kernel_decide
theorem stats1989 : actualRows1989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1989=5124 := by core033_kernel_decide
theorem rows1990 : actualRows1990=WordField.canonicalRows actualModulus 1990 (.shr 1525 0) := by core033_kernel_decide
theorem stats1990 : actualRows1990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1990=5124 := by core033_kernel_decide
theorem rows1991 : actualRows1991=WordField.canonicalRows actualModulus 1991 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1991 : actualRows1991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1991=3396 := by core033_kernel_decide
theorem rows1992 : actualRows1992=WordField.canonicalRows actualModulus 1992 (.band 1990 1991) := by core033_kernel_decide
theorem stats1992 : actualRows1992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1992=5124 := by core033_kernel_decide
theorem rows1993 : actualRows1993=WordField.canonicalRows actualModulus 1993 (.shr 1525 8) := by core033_kernel_decide
theorem stats1993 : actualRows1993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1993=4548 := by core033_kernel_decide
theorem rows1994 : actualRows1994=WordField.canonicalRows actualModulus 1994 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1994 : actualRows1994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1994=3396 := by core033_kernel_decide
theorem rows1995 : actualRows1995=WordField.canonicalRows actualModulus 1995 (.band 1993 1994) := by core033_kernel_decide
theorem stats1995 : actualRows1995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1995=5124 := by core033_kernel_decide
theorem rows1996 : actualRows1996=WordField.canonicalRows actualModulus 1996 (.shr 1525 16) := by core033_kernel_decide
theorem stats1996 : actualRows1996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1996=3972 := by core033_kernel_decide
theorem rows1997 : actualRows1997=WordField.canonicalRows actualModulus 1997 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats1997 : actualRows1997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1997=3396 := by core033_kernel_decide
theorem rows1998 : actualRows1998=WordField.canonicalRows actualModulus 1998 (.band 1996 1997) := by core033_kernel_decide
theorem stats1998 : actualRows1998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1998=5124 := by core033_kernel_decide
theorem rows1999 : actualRows1999=WordField.canonicalRows actualModulus 1999 (.shr 1525 24) := by core033_kernel_decide
theorem stats1999 : actualRows1999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1999=3396 := by core033_kernel_decide
theorem rows2000 : actualRows2000=WordField.canonicalRows actualModulus 2000 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2000 : actualRows2000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2000=3396 := by core033_kernel_decide
theorem rows2001 : actualRows2001=WordField.canonicalRows actualModulus 2001 (.band 1999 2000) := by core033_kernel_decide
theorem stats2001 : actualRows2001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2001=5124 := by core033_kernel_decide
theorem rows2002 : actualRows2002=WordField.canonicalRows actualModulus 2002 (.shr 1535 0) := by core033_kernel_decide
theorem stats2002 : actualRows2002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2002=5124 := by core033_kernel_decide
theorem rows2003 : actualRows2003=WordField.canonicalRows actualModulus 2003 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2003 : actualRows2003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2003=3396 := by core033_kernel_decide
theorem rows2004 : actualRows2004=WordField.canonicalRows actualModulus 2004 (.band 2002 2003) := by core033_kernel_decide
theorem stats2004 : actualRows2004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2004=5124 := by core033_kernel_decide
theorem rows2005 : actualRows2005=WordField.canonicalRows actualModulus 2005 (.shr 1535 8) := by core033_kernel_decide
theorem stats2005 : actualRows2005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2005=4548 := by core033_kernel_decide
theorem rows2006 : actualRows2006=WordField.canonicalRows actualModulus 2006 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2006 : actualRows2006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2006=3396 := by core033_kernel_decide
theorem rows2007 : actualRows2007=WordField.canonicalRows actualModulus 2007 (.band 2005 2006) := by core033_kernel_decide
theorem stats2007 : actualRows2007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2007=5124 := by core033_kernel_decide
theorem rows2008 : actualRows2008=WordField.canonicalRows actualModulus 2008 (.shr 1535 16) := by core033_kernel_decide
theorem stats2008 : actualRows2008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2008=3972 := by core033_kernel_decide
theorem rows2009 : actualRows2009=WordField.canonicalRows actualModulus 2009 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2009 : actualRows2009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2009=3396 := by core033_kernel_decide
theorem rows2010 : actualRows2010=WordField.canonicalRows actualModulus 2010 (.band 2008 2009) := by core033_kernel_decide
theorem stats2010 : actualRows2010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2010=5124 := by core033_kernel_decide
theorem rows2011 : actualRows2011=WordField.canonicalRows actualModulus 2011 (.shr 1535 24) := by core033_kernel_decide
theorem stats2011 : actualRows2011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2011=3396 := by core033_kernel_decide
theorem rows2012 : actualRows2012=WordField.canonicalRows actualModulus 2012 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2012 : actualRows2012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2012=3396 := by core033_kernel_decide
theorem rows2013 : actualRows2013=WordField.canonicalRows actualModulus 2013 (.band 2011 2012) := by core033_kernel_decide
theorem stats2013 : actualRows2013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2013=5124 := by core033_kernel_decide
theorem rows2014 : actualRows2014=WordField.canonicalRows actualModulus 2014 (.shr 1545 0) := by core033_kernel_decide
theorem stats2014 : actualRows2014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2014=5124 := by core033_kernel_decide
theorem rows2015 : actualRows2015=WordField.canonicalRows actualModulus 2015 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats2015 : actualRows2015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2015=3396 := by core033_kernel_decide
def partRows29 : List R1CS.Row := actualRows1952++actualRows1953++actualRows1954++actualRows1955++actualRows1956++actualRows1957++actualRows1958++actualRows1959++actualRows1960++actualRows1961++actualRows1962++actualRows1963++actualRows1964++actualRows1965++actualRows1966++actualRows1967++actualRows1968++actualRows1969++actualRows1970++actualRows1971++actualRows1972++actualRows1973++actualRows1974++actualRows1975++actualRows1976++actualRows1977++actualRows1978++actualRows1979++actualRows1980++actualRows1981++actualRows1982++actualRows1983++actualRows1984++actualRows1985++actualRows1986++actualRows1987++actualRows1988++actualRows1989++actualRows1990++actualRows1991++actualRows1992++actualRows1993++actualRows1994++actualRows1995++actualRows1996++actualRows1997++actualRows1998++actualRows1999++actualRows2000++actualRows2001++actualRows2002++actualRows2003++actualRows2004++actualRows2005++actualRows2006++actualRows2007++actualRows2008++actualRows2009++actualRows2010++actualRows2011++actualRows2012++actualRows2013++actualRows2014++actualRows2015
def partOps29 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 1951 1952,.shr 1455 0,.literal (BitVec.ofNat 32 255),.band 1954 1955,.shr 1455 8,.literal (BitVec.ofNat 32 255),.band 1957 1958,.shr 1455 16,.literal (BitVec.ofNat 32 255),.band 1960 1961,.shr 1455 24,.literal (BitVec.ofNat 32 255),.band 1963 1964,.shr 1465 0,.literal (BitVec.ofNat 32 255),.band 1966 1967,.shr 1465 8,.literal (BitVec.ofNat 32 255),.band 1969 1970,.shr 1465 16,.literal (BitVec.ofNat 32 255),.band 1972 1973,.shr 1465 24,.literal (BitVec.ofNat 32 255),.band 1975 1976,.shr 1475 0,.literal (BitVec.ofNat 32 255),.band 1978 1979,.shr 1475 8,.literal (BitVec.ofNat 32 255),.band 1981 1982,.shr 1475 16,.literal (BitVec.ofNat 32 255),.band 1984 1985,.shr 1475 24,.literal (BitVec.ofNat 32 255),.band 1987 1988,.shr 1525 0,.literal (BitVec.ofNat 32 255),.band 1990 1991,.shr 1525 8,.literal (BitVec.ofNat 32 255),.band 1993 1994,.shr 1525 16,.literal (BitVec.ofNat 32 255),.band 1996 1997,.shr 1525 24,.literal (BitVec.ofNat 32 255),.band 1999 2000,.shr 1535 0,.literal (BitVec.ofNat 32 255),.band 2002 2003,.shr 1535 8,.literal (BitVec.ofNat 32 255),.band 2005 2006,.shr 1535 16,.literal (BitVec.ofNat 32 255),.band 2008 2009,.shr 1535 24,.literal (BitVec.ofNat 32 255),.band 2011 2012,.shr 1545 0,.literal (BitVec.ofNat 32 255)]
theorem partExact29 : partRows29=WordField.rows actualModulus 1952 partOps29 := by
  simp only [partRows29,partOps29,WordField.rows,rows1952,rows1953,rows1954,rows1955,rows1956,rows1957,rows1958,rows1959,rows1960,rows1961,rows1962,rows1963,rows1964,rows1965,rows1966,rows1967,rows1968,rows1969,rows1970,rows1971,rows1972,rows1973,rows1974,rows1975,rows1976,rows1977,rows1978,rows1979,rows1980,rows1981,rows1982,rows1983,rows1984,rows1985,rows1986,rows1987,rows1988,rows1989,rows1990,rows1991,rows1992,rows1993,rows1994,rows1995,rows1996,rows1997,rows1998,rows1999,rows2000,rows2001,rows2002,rows2003,rows2004,rows2005,rows2006,rows2007,rows2008,rows2009,rows2010,rows2011,rows2012,rows2013,rows2014,rows2015,List.append_assoc,List.append_nil]
theorem partLength29 : partOps29.length=64 := by decide
theorem partStats29 : partRows29.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows29=272640 := by
  simp only [partRows29,List.length_append,MatrixRowBlocks.rows_weight_append,stats1952.1,stats1952.2,stats1953.1,stats1953.2,stats1954.1,stats1954.2,stats1955.1,stats1955.2,stats1956.1,stats1956.2,stats1957.1,stats1957.2,stats1958.1,stats1958.2,stats1959.1,stats1959.2,stats1960.1,stats1960.2,stats1961.1,stats1961.2,stats1962.1,stats1962.2,stats1963.1,stats1963.2,stats1964.1,stats1964.2,stats1965.1,stats1965.2,stats1966.1,stats1966.2,stats1967.1,stats1967.2,stats1968.1,stats1968.2,stats1969.1,stats1969.2,stats1970.1,stats1970.2,stats1971.1,stats1971.2,stats1972.1,stats1972.2,stats1973.1,stats1973.2,stats1974.1,stats1974.2,stats1975.1,stats1975.2,stats1976.1,stats1976.2,stats1977.1,stats1977.2,stats1978.1,stats1978.2,stats1979.1,stats1979.2,stats1980.1,stats1980.2,stats1981.1,stats1981.2,stats1982.1,stats1982.2,stats1983.1,stats1983.2,stats1984.1,stats1984.2,stats1985.1,stats1985.2,stats1986.1,stats1986.2,stats1987.1,stats1987.2,stats1988.1,stats1988.2,stats1989.1,stats1989.2,stats1990.1,stats1990.2,stats1991.1,stats1991.2,stats1992.1,stats1992.2,stats1993.1,stats1993.2,stats1994.1,stats1994.2,stats1995.1,stats1995.2,stats1996.1,stats1996.2,stats1997.1,stats1997.2,stats1998.1,stats1998.2,stats1999.1,stats1999.2,stats2000.1,stats2000.2,stats2001.1,stats2001.2,stats2002.1,stats2002.2,stats2003.1,stats2003.2,stats2004.1,stats2004.2,stats2005.1,stats2005.2,stats2006.1,stats2006.2,stats2007.1,stats2007.2,stats2008.1,stats2008.2,stats2009.1,stats2009.2,stats2010.1,stats2010.2,stats2011.1,stats2011.2,stats2012.1,stats2012.2,stats2013.1,stats2013.2,stats2014.1,stats2014.2,stats2015.1,stats2015.2]
  decide
end PairedPathRoundCheckedRows
