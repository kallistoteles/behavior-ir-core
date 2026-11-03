import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup28
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1792 : List WordIR.Op := [.shr 1083 0]
def bytes1792 : Bytes := ("    let r00000760: u32 = r0000043b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1792 : bytes1792=statementBytes 1888 (op1792.map lower) ∧ bytes1792.length=54 := by core033_kernel_decide
def op1793 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1793 : Bytes := ("    let r00000761: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1793 : bytes1793=statementBytes 1889 (op1793.map lower) ∧ bytes1793.length=41 := by core033_kernel_decide
def op1794 : List WordIR.Op := [.band 1888 1889]
def bytes1794 : Bytes := ("    let r00000762: u32 = r00000760 & r00000761;\n" : String).toByteArray.data.toList
theorem checked1794 : bytes1794=statementBytes 1890 (op1794.map lower) ∧ bytes1794.length=48 := by core033_kernel_decide
def op1795 : List WordIR.Op := [.shr 1083 8]
def bytes1795 : Bytes := ("    let r00000763: u32 = r0000043b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1795 : bytes1795=statementBytes 1891 (op1795.map lower) ∧ bytes1795.length=54 := by core033_kernel_decide
def op1796 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1796 : Bytes := ("    let r00000764: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1796 : bytes1796=statementBytes 1892 (op1796.map lower) ∧ bytes1796.length=41 := by core033_kernel_decide
def op1797 : List WordIR.Op := [.band 1891 1892]
def bytes1797 : Bytes := ("    let r00000765: u32 = r00000763 & r00000764;\n" : String).toByteArray.data.toList
theorem checked1797 : bytes1797=statementBytes 1893 (op1797.map lower) ∧ bytes1797.length=48 := by core033_kernel_decide
def op1798 : List WordIR.Op := [.shr 1405 0]
def bytes1798 : Bytes := ("    let r00000766: u32 = r0000057d >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1798 : bytes1798=statementBytes 1894 (op1798.map lower) ∧ bytes1798.length=54 := by core033_kernel_decide
def op1799 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1799 : Bytes := ("    let r00000767: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1799 : bytes1799=statementBytes 1895 (op1799.map lower) ∧ bytes1799.length=41 := by core033_kernel_decide
def op1800 : List WordIR.Op := [.band 1894 1895]
def bytes1800 : Bytes := ("    let r00000768: u32 = r00000766 & r00000767;\n" : String).toByteArray.data.toList
theorem checked1800 : bytes1800=statementBytes 1896 (op1800.map lower) ∧ bytes1800.length=48 := by core033_kernel_decide
def op1801 : List WordIR.Op := [.shr 1405 8]
def bytes1801 : Bytes := ("    let r00000769: u32 = r0000057d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1801 : bytes1801=statementBytes 1897 (op1801.map lower) ∧ bytes1801.length=54 := by core033_kernel_decide
def op1802 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1802 : Bytes := ("    let r0000076a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1802 : bytes1802=statementBytes 1898 (op1802.map lower) ∧ bytes1802.length=41 := by core033_kernel_decide
def op1803 : List WordIR.Op := [.band 1897 1898]
def bytes1803 : Bytes := ("    let r0000076b: u32 = r00000769 & r0000076a;\n" : String).toByteArray.data.toList
theorem checked1803 : bytes1803=statementBytes 1899 (op1803.map lower) ∧ bytes1803.length=48 := by core033_kernel_decide
def op1804 : List WordIR.Op := [.shr 1405 16]
def bytes1804 : Bytes := ("    let r0000076c: u32 = r0000057d >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1804 : bytes1804=statementBytes 1900 (op1804.map lower) ∧ bytes1804.length=54 := by core033_kernel_decide
def op1805 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1805 : Bytes := ("    let r0000076d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1805 : bytes1805=statementBytes 1901 (op1805.map lower) ∧ bytes1805.length=41 := by core033_kernel_decide
def op1806 : List WordIR.Op := [.band 1900 1901]
def bytes1806 : Bytes := ("    let r0000076e: u32 = r0000076c & r0000076d;\n" : String).toByteArray.data.toList
theorem checked1806 : bytes1806=statementBytes 1902 (op1806.map lower) ∧ bytes1806.length=48 := by core033_kernel_decide
def op1807 : List WordIR.Op := [.shr 1405 24]
def bytes1807 : Bytes := ("    let r0000076f: u32 = r0000057d >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1807 : bytes1807=statementBytes 1903 (op1807.map lower) ∧ bytes1807.length=54 := by core033_kernel_decide
def op1808 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1808 : Bytes := ("    let r00000770: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1808 : bytes1808=statementBytes 1904 (op1808.map lower) ∧ bytes1808.length=41 := by core033_kernel_decide
def op1809 : List WordIR.Op := [.band 1903 1904]
def bytes1809 : Bytes := ("    let r00000771: u32 = r0000076f & r00000770;\n" : String).toByteArray.data.toList
theorem checked1809 : bytes1809=statementBytes 1905 (op1809.map lower) ∧ bytes1809.length=48 := by core033_kernel_decide
def op1810 : List WordIR.Op := [.shr 1415 0]
def bytes1810 : Bytes := ("    let r00000772: u32 = r00000587 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1810 : bytes1810=statementBytes 1906 (op1810.map lower) ∧ bytes1810.length=54 := by core033_kernel_decide
def op1811 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1811 : Bytes := ("    let r00000773: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1811 : bytes1811=statementBytes 1907 (op1811.map lower) ∧ bytes1811.length=41 := by core033_kernel_decide
def op1812 : List WordIR.Op := [.band 1906 1907]
def bytes1812 : Bytes := ("    let r00000774: u32 = r00000772 & r00000773;\n" : String).toByteArray.data.toList
theorem checked1812 : bytes1812=statementBytes 1908 (op1812.map lower) ∧ bytes1812.length=48 := by core033_kernel_decide
def op1813 : List WordIR.Op := [.shr 1415 8]
def bytes1813 : Bytes := ("    let r00000775: u32 = r00000587 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1813 : bytes1813=statementBytes 1909 (op1813.map lower) ∧ bytes1813.length=54 := by core033_kernel_decide
def op1814 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1814 : Bytes := ("    let r00000776: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1814 : bytes1814=statementBytes 1910 (op1814.map lower) ∧ bytes1814.length=41 := by core033_kernel_decide
def op1815 : List WordIR.Op := [.band 1909 1910]
def bytes1815 : Bytes := ("    let r00000777: u32 = r00000775 & r00000776;\n" : String).toByteArray.data.toList
theorem checked1815 : bytes1815=statementBytes 1911 (op1815.map lower) ∧ bytes1815.length=48 := by core033_kernel_decide
def op1816 : List WordIR.Op := [.shr 1415 16]
def bytes1816 : Bytes := ("    let r00000778: u32 = r00000587 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1816 : bytes1816=statementBytes 1912 (op1816.map lower) ∧ bytes1816.length=54 := by core033_kernel_decide
def op1817 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1817 : Bytes := ("    let r00000779: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1817 : bytes1817=statementBytes 1913 (op1817.map lower) ∧ bytes1817.length=41 := by core033_kernel_decide
def op1818 : List WordIR.Op := [.band 1912 1913]
def bytes1818 : Bytes := ("    let r0000077a: u32 = r00000778 & r00000779;\n" : String).toByteArray.data.toList
theorem checked1818 : bytes1818=statementBytes 1914 (op1818.map lower) ∧ bytes1818.length=48 := by core033_kernel_decide
def op1819 : List WordIR.Op := [.shr 1415 24]
def bytes1819 : Bytes := ("    let r0000077b: u32 = r00000587 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1819 : bytes1819=statementBytes 1915 (op1819.map lower) ∧ bytes1819.length=54 := by core033_kernel_decide
def op1820 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1820 : Bytes := ("    let r0000077c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1820 : bytes1820=statementBytes 1916 (op1820.map lower) ∧ bytes1820.length=41 := by core033_kernel_decide
def op1821 : List WordIR.Op := [.band 1915 1916]
def bytes1821 : Bytes := ("    let r0000077d: u32 = r0000077b & r0000077c;\n" : String).toByteArray.data.toList
theorem checked1821 : bytes1821=statementBytes 1917 (op1821.map lower) ∧ bytes1821.length=48 := by core033_kernel_decide
def op1822 : List WordIR.Op := [.shr 1425 0]
def bytes1822 : Bytes := ("    let r0000077e: u32 = r00000591 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1822 : bytes1822=statementBytes 1918 (op1822.map lower) ∧ bytes1822.length=54 := by core033_kernel_decide
def op1823 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1823 : Bytes := ("    let r0000077f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1823 : bytes1823=statementBytes 1919 (op1823.map lower) ∧ bytes1823.length=41 := by core033_kernel_decide
def op1824 : List WordIR.Op := [.band 1918 1919]
def bytes1824 : Bytes := ("    let r00000780: u32 = r0000077e & r0000077f;\n" : String).toByteArray.data.toList
theorem checked1824 : bytes1824=statementBytes 1920 (op1824.map lower) ∧ bytes1824.length=48 := by core033_kernel_decide
def op1825 : List WordIR.Op := [.shr 1425 8]
def bytes1825 : Bytes := ("    let r00000781: u32 = r00000591 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1825 : bytes1825=statementBytes 1921 (op1825.map lower) ∧ bytes1825.length=54 := by core033_kernel_decide
def op1826 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1826 : Bytes := ("    let r00000782: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1826 : bytes1826=statementBytes 1922 (op1826.map lower) ∧ bytes1826.length=41 := by core033_kernel_decide
def op1827 : List WordIR.Op := [.band 1921 1922]
def bytes1827 : Bytes := ("    let r00000783: u32 = r00000781 & r00000782;\n" : String).toByteArray.data.toList
theorem checked1827 : bytes1827=statementBytes 1923 (op1827.map lower) ∧ bytes1827.length=48 := by core033_kernel_decide
def op1828 : List WordIR.Op := [.shr 1425 16]
def bytes1828 : Bytes := ("    let r00000784: u32 = r00000591 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1828 : bytes1828=statementBytes 1924 (op1828.map lower) ∧ bytes1828.length=54 := by core033_kernel_decide
def op1829 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1829 : Bytes := ("    let r00000785: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1829 : bytes1829=statementBytes 1925 (op1829.map lower) ∧ bytes1829.length=41 := by core033_kernel_decide
def op1830 : List WordIR.Op := [.band 1924 1925]
def bytes1830 : Bytes := ("    let r00000786: u32 = r00000784 & r00000785;\n" : String).toByteArray.data.toList
theorem checked1830 : bytes1830=statementBytes 1926 (op1830.map lower) ∧ bytes1830.length=48 := by core033_kernel_decide
def op1831 : List WordIR.Op := [.shr 1425 24]
def bytes1831 : Bytes := ("    let r00000787: u32 = r00000591 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1831 : bytes1831=statementBytes 1927 (op1831.map lower) ∧ bytes1831.length=54 := by core033_kernel_decide
def op1832 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1832 : Bytes := ("    let r00000788: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1832 : bytes1832=statementBytes 1928 (op1832.map lower) ∧ bytes1832.length=41 := by core033_kernel_decide
def op1833 : List WordIR.Op := [.band 1927 1928]
def bytes1833 : Bytes := ("    let r00000789: u32 = r00000787 & r00000788;\n" : String).toByteArray.data.toList
theorem checked1833 : bytes1833=statementBytes 1929 (op1833.map lower) ∧ bytes1833.length=48 := by core033_kernel_decide
def op1834 : List WordIR.Op := [.shr 1435 0]
def bytes1834 : Bytes := ("    let r0000078a: u32 = r0000059b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1834 : bytes1834=statementBytes 1930 (op1834.map lower) ∧ bytes1834.length=54 := by core033_kernel_decide
def op1835 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1835 : Bytes := ("    let r0000078b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1835 : bytes1835=statementBytes 1931 (op1835.map lower) ∧ bytes1835.length=41 := by core033_kernel_decide
def op1836 : List WordIR.Op := [.band 1930 1931]
def bytes1836 : Bytes := ("    let r0000078c: u32 = r0000078a & r0000078b;\n" : String).toByteArray.data.toList
theorem checked1836 : bytes1836=statementBytes 1932 (op1836.map lower) ∧ bytes1836.length=48 := by core033_kernel_decide
def op1837 : List WordIR.Op := [.shr 1435 8]
def bytes1837 : Bytes := ("    let r0000078d: u32 = r0000059b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1837 : bytes1837=statementBytes 1933 (op1837.map lower) ∧ bytes1837.length=54 := by core033_kernel_decide
def op1838 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1838 : Bytes := ("    let r0000078e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1838 : bytes1838=statementBytes 1934 (op1838.map lower) ∧ bytes1838.length=41 := by core033_kernel_decide
def op1839 : List WordIR.Op := [.band 1933 1934]
def bytes1839 : Bytes := ("    let r0000078f: u32 = r0000078d & r0000078e;\n" : String).toByteArray.data.toList
theorem checked1839 : bytes1839=statementBytes 1935 (op1839.map lower) ∧ bytes1839.length=48 := by core033_kernel_decide
def op1840 : List WordIR.Op := [.shr 1435 16]
def bytes1840 : Bytes := ("    let r00000790: u32 = r0000059b >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1840 : bytes1840=statementBytes 1936 (op1840.map lower) ∧ bytes1840.length=54 := by core033_kernel_decide
def op1841 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1841 : Bytes := ("    let r00000791: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1841 : bytes1841=statementBytes 1937 (op1841.map lower) ∧ bytes1841.length=41 := by core033_kernel_decide
def op1842 : List WordIR.Op := [.band 1936 1937]
def bytes1842 : Bytes := ("    let r00000792: u32 = r00000790 & r00000791;\n" : String).toByteArray.data.toList
theorem checked1842 : bytes1842=statementBytes 1938 (op1842.map lower) ∧ bytes1842.length=48 := by core033_kernel_decide
def op1843 : List WordIR.Op := [.shr 1435 24]
def bytes1843 : Bytes := ("    let r00000793: u32 = r0000059b >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1843 : bytes1843=statementBytes 1939 (op1843.map lower) ∧ bytes1843.length=54 := by core033_kernel_decide
def op1844 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1844 : Bytes := ("    let r00000794: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1844 : bytes1844=statementBytes 1940 (op1844.map lower) ∧ bytes1844.length=41 := by core033_kernel_decide
def op1845 : List WordIR.Op := [.band 1939 1940]
def bytes1845 : Bytes := ("    let r00000795: u32 = r00000793 & r00000794;\n" : String).toByteArray.data.toList
theorem checked1845 : bytes1845=statementBytes 1941 (op1845.map lower) ∧ bytes1845.length=48 := by core033_kernel_decide
def op1846 : List WordIR.Op := [.shr 1445 0]
def bytes1846 : Bytes := ("    let r00000796: u32 = r000005a5 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1846 : bytes1846=statementBytes 1942 (op1846.map lower) ∧ bytes1846.length=54 := by core033_kernel_decide
def op1847 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1847 : Bytes := ("    let r00000797: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1847 : bytes1847=statementBytes 1943 (op1847.map lower) ∧ bytes1847.length=41 := by core033_kernel_decide
def op1848 : List WordIR.Op := [.band 1942 1943]
def bytes1848 : Bytes := ("    let r00000798: u32 = r00000796 & r00000797;\n" : String).toByteArray.data.toList
theorem checked1848 : bytes1848=statementBytes 1944 (op1848.map lower) ∧ bytes1848.length=48 := by core033_kernel_decide
def op1849 : List WordIR.Op := [.shr 1445 8]
def bytes1849 : Bytes := ("    let r00000799: u32 = r000005a5 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1849 : bytes1849=statementBytes 1945 (op1849.map lower) ∧ bytes1849.length=54 := by core033_kernel_decide
def op1850 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1850 : Bytes := ("    let r0000079a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1850 : bytes1850=statementBytes 1946 (op1850.map lower) ∧ bytes1850.length=41 := by core033_kernel_decide
def op1851 : List WordIR.Op := [.band 1945 1946]
def bytes1851 : Bytes := ("    let r0000079b: u32 = r00000799 & r0000079a;\n" : String).toByteArray.data.toList
theorem checked1851 : bytes1851=statementBytes 1947 (op1851.map lower) ∧ bytes1851.length=48 := by core033_kernel_decide
def op1852 : List WordIR.Op := [.shr 1445 16]
def bytes1852 : Bytes := ("    let r0000079c: u32 = r000005a5 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked1852 : bytes1852=statementBytes 1948 (op1852.map lower) ∧ bytes1852.length=54 := by core033_kernel_decide
def op1853 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes1853 : Bytes := ("    let r0000079d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked1853 : bytes1853=statementBytes 1949 (op1853.map lower) ∧ bytes1853.length=41 := by core033_kernel_decide
def op1854 : List WordIR.Op := [.band 1948 1949]
def bytes1854 : Bytes := ("    let r0000079e: u32 = r0000079c & r0000079d;\n" : String).toByteArray.data.toList
theorem checked1854 : bytes1854=statementBytes 1950 (op1854.map lower) ∧ bytes1854.length=48 := by core033_kernel_decide
def op1855 : List WordIR.Op := [.shr 1445 24]
def bytes1855 : Bytes := ("    let r0000079f: u32 = r000005a5 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked1855 : bytes1855=statementBytes 1951 (op1855.map lower) ∧ bytes1855.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1792,op1793,op1794,op1795,op1796,op1797,op1798,op1799,op1800,op1801,op1802,op1803,op1804,op1805,op1806,op1807,op1808,op1809,op1810,op1811,op1812,op1813,op1814,op1815,op1816,op1817,op1818,op1819,op1820,op1821,op1822,op1823,op1824,op1825,op1826,op1827,op1828,op1829,op1830,op1831,op1832,op1833,op1834,op1835,op1836,op1837,op1838,op1839,op1840,op1841,op1842,op1843,op1844,op1845,op1846,op1847,op1848,op1849,op1850,op1851,op1852,op1853,op1854,op1855]
def chunks : List Bytes := [bytes1792,bytes1793,bytes1794,bytes1795,bytes1796,bytes1797,bytes1798,bytes1799,bytes1800,bytes1801,bytes1802,bytes1803,bytes1804,bytes1805,bytes1806,bytes1807,bytes1808,bytes1809,bytes1810,bytes1811,bytes1812,bytes1813,bytes1814,bytes1815,bytes1816,bytes1817,bytes1818,bytes1819,bytes1820,bytes1821,bytes1822,bytes1823,bytes1824,bytes1825,bytes1826,bytes1827,bytes1828,bytes1829,bytes1830,bytes1831,bytes1832,bytes1833,bytes1834,bytes1835,bytes1836,bytes1837,bytes1838,bytes1839,bytes1840,bytes1841,bytes1842,bytes1843,bytes1844,bytes1845,bytes1846,bytes1847,bytes1848,bytes1849,bytes1850,bytes1851,bytes1852,bytes1853,bytes1854,bytes1855]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1888 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1792.1 (.cons _ _ _ _ _ checked1793.1 (.cons _ _ _ _ _ checked1794.1 (.cons _ _ _ _ _ checked1795.1 (.cons _ _ _ _ _ checked1796.1 (.cons _ _ _ _ _ checked1797.1 (.cons _ _ _ _ _ checked1798.1 (.cons _ _ _ _ _ checked1799.1 (.cons _ _ _ _ _ checked1800.1 (.cons _ _ _ _ _ checked1801.1 (.cons _ _ _ _ _ checked1802.1 (.cons _ _ _ _ _ checked1803.1 (.cons _ _ _ _ _ checked1804.1 (.cons _ _ _ _ _ checked1805.1 (.cons _ _ _ _ _ checked1806.1 (.cons _ _ _ _ _ checked1807.1 (.cons _ _ _ _ _ checked1808.1 (.cons _ _ _ _ _ checked1809.1 (.cons _ _ _ _ _ checked1810.1 (.cons _ _ _ _ _ checked1811.1 (.cons _ _ _ _ _ checked1812.1 (.cons _ _ _ _ _ checked1813.1 (.cons _ _ _ _ _ checked1814.1 (.cons _ _ _ _ _ checked1815.1 (.cons _ _ _ _ _ checked1816.1 (.cons _ _ _ _ _ checked1817.1 (.cons _ _ _ _ _ checked1818.1 (.cons _ _ _ _ _ checked1819.1 (.cons _ _ _ _ _ checked1820.1 (.cons _ _ _ _ _ checked1821.1 (.cons _ _ _ _ _ checked1822.1 (.cons _ _ _ _ _ checked1823.1 (.cons _ _ _ _ _ checked1824.1 (.cons _ _ _ _ _ checked1825.1 (.cons _ _ _ _ _ checked1826.1 (.cons _ _ _ _ _ checked1827.1 (.cons _ _ _ _ _ checked1828.1 (.cons _ _ _ _ _ checked1829.1 (.cons _ _ _ _ _ checked1830.1 (.cons _ _ _ _ _ checked1831.1 (.cons _ _ _ _ _ checked1832.1 (.cons _ _ _ _ _ checked1833.1 (.cons _ _ _ _ _ checked1834.1 (.cons _ _ _ _ _ checked1835.1 (.cons _ _ _ _ _ checked1836.1 (.cons _ _ _ _ _ checked1837.1 (.cons _ _ _ _ _ checked1838.1 (.cons _ _ _ _ _ checked1839.1 (.cons _ _ _ _ _ checked1840.1 (.cons _ _ _ _ _ checked1841.1 (.cons _ _ _ _ _ checked1842.1 (.cons _ _ _ _ _ checked1843.1 (.cons _ _ _ _ _ checked1844.1 (.cons _ _ _ _ _ checked1845.1 (.cons _ _ _ _ _ checked1846.1 (.cons _ _ _ _ _ checked1847.1 (.cons _ _ _ _ _ checked1848.1 (.cons _ _ _ _ _ checked1849.1 (.cons _ _ _ _ _ checked1850.1 (.cons _ _ _ _ _ checked1851.1 (.cons _ _ _ _ _ checked1852.1 (.cons _ _ _ _ _ checked1853.1 (.cons _ _ _ _ _ checked1854.1 (.cons _ _ _ _ _ checked1855.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1888 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3057 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1792.2,checked1793.2,checked1794.2,checked1795.2,checked1796.2,checked1797.2,checked1798.2,checked1799.2,checked1800.2,checked1801.2,checked1802.2,checked1803.2,checked1804.2,checked1805.2,checked1806.2,checked1807.2,checked1808.2,checked1809.2,checked1810.2,checked1811.2,checked1812.2,checked1813.2,checked1814.2,checked1815.2,checked1816.2,checked1817.2,checked1818.2,checked1819.2,checked1820.2,checked1821.2,checked1822.2,checked1823.2,checked1824.2,checked1825.2,checked1826.2,checked1827.2,checked1828.2,checked1829.2,checked1830.2,checked1831.2,checked1832.2,checked1833.2,checked1834.2,checked1835.2,checked1836.2,checked1837.2,checked1838.2,checked1839.2,checked1840.2,checked1841.2,checked1842.2,checked1843.2,checked1844.2,checked1845.2,checked1846.2,checked1847.2,checked1848.2,checked1849.2,checked1850.2,checked1851.2,checked1852.2,checked1853.2,checked1854.2,checked1855.2]
  decide
end ArtifactPairedPathRoundGroup28
