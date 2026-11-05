import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup28
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1792 : List WordIR.Op := [.rotr 1645 18]
def bytes1792 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000072b: u32 = r0000066d.rotate_right(0x00000012_u32);\n" : String)
theorem checked1792 : bytes1792=statementBytes 1835 (op1792.map lower) ∧ bytes1792.length=65 := by core033_kernel_decide
def op1793 : List WordIR.Op := [.bxor 1834 1835]
def bytes1793 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000072c: u32 = r0000072a ^ r0000072b;\n" : String)
theorem checked1793 : bytes1793=statementBytes 1836 (op1793.map lower) ∧ bytes1793.length=48 := by core033_kernel_decide
def op1794 : List WordIR.Op := [.shr 1645 3]
def bytes1794 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000072d: u32 = r0000066d >> 0x00000003_u32;\n" : String)
theorem checked1794 : bytes1794=statementBytes 1837 (op1794.map lower) ∧ bytes1794.length=54 := by core033_kernel_decide
def op1795 : List WordIR.Op := [.bxor 1836 1837]
def bytes1795 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000072e: u32 = r0000072c ^ r0000072d;\n" : String)
theorem checked1795 : bytes1795=statementBytes 1838 (op1795.map lower) ∧ bytes1795.length=48 := by core033_kernel_decide
def op1796 : List WordIR.Op := [.badd 1833 1838]
def bytes1796 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000072f: u32 = r00000729.wrapping_add(r0000072e);\n" : String)
theorem checked1796 : bytes1796=statementBytes 1839 (op1796.map lower) ∧ bytes1796.length=60 := by core033_kernel_decide
def op1797 : List WordIR.Op := [.badd 1839 1632]
def bytes1797 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000730: u32 = r0000072f.wrapping_add(r00000660);\n" : String)
theorem checked1797 : bytes1797=statementBytes 1840 (op1797.map lower) ∧ bytes1797.length=60 := by core033_kernel_decide
def op1798 : List WordIR.Op := [.rotr 1827 17]
def bytes1798 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000731: u32 = r00000723.rotate_right(0x00000011_u32);\n" : String)
theorem checked1798 : bytes1798=statementBytes 1841 (op1798.map lower) ∧ bytes1798.length=65 := by core033_kernel_decide
def op1799 : List WordIR.Op := [.rotr 1827 19]
def bytes1799 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000732: u32 = r00000723.rotate_right(0x00000013_u32);\n" : String)
theorem checked1799 : bytes1799=statementBytes 1842 (op1799.map lower) ∧ bytes1799.length=65 := by core033_kernel_decide
def op1800 : List WordIR.Op := [.bxor 1841 1842]
def bytes1800 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000733: u32 = r00000731 ^ r00000732;\n" : String)
theorem checked1800 : bytes1800=statementBytes 1843 (op1800.map lower) ∧ bytes1800.length=48 := by core033_kernel_decide
def op1801 : List WordIR.Op := [.shr 1827 10]
def bytes1801 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000734: u32 = r00000723 >> 0x0000000a_u32;\n" : String)
theorem checked1801 : bytes1801=statementBytes 1844 (op1801.map lower) ∧ bytes1801.length=54 := by core033_kernel_decide
def op1802 : List WordIR.Op := [.bxor 1843 1844]
def bytes1802 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000735: u32 = r00000733 ^ r00000734;\n" : String)
theorem checked1802 : bytes1802=statementBytes 1845 (op1802.map lower) ∧ bytes1802.length=48 := by core033_kernel_decide
def op1803 : List WordIR.Op := [.badd 1845 1762]
def bytes1803 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000736: u32 = r00000735.wrapping_add(r000006e2);\n" : String)
theorem checked1803 : bytes1803=statementBytes 1846 (op1803.map lower) ∧ bytes1803.length=60 := by core033_kernel_decide
def op1804 : List WordIR.Op := [.rotr 1658 7]
def bytes1804 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000737: u32 = r0000067a.rotate_right(0x00000007_u32);\n" : String)
theorem checked1804 : bytes1804=statementBytes 1847 (op1804.map lower) ∧ bytes1804.length=65 := by core033_kernel_decide
def op1805 : List WordIR.Op := [.rotr 1658 18]
def bytes1805 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000738: u32 = r0000067a.rotate_right(0x00000012_u32);\n" : String)
theorem checked1805 : bytes1805=statementBytes 1848 (op1805.map lower) ∧ bytes1805.length=65 := by core033_kernel_decide
def op1806 : List WordIR.Op := [.bxor 1847 1848]
def bytes1806 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000739: u32 = r00000737 ^ r00000738;\n" : String)
theorem checked1806 : bytes1806=statementBytes 1849 (op1806.map lower) ∧ bytes1806.length=48 := by core033_kernel_decide
def op1807 : List WordIR.Op := [.shr 1658 3]
def bytes1807 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073a: u32 = r0000067a >> 0x00000003_u32;\n" : String)
theorem checked1807 : bytes1807=statementBytes 1850 (op1807.map lower) ∧ bytes1807.length=54 := by core033_kernel_decide
def op1808 : List WordIR.Op := [.bxor 1849 1850]
def bytes1808 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073b: u32 = r00000739 ^ r0000073a;\n" : String)
theorem checked1808 : bytes1808=statementBytes 1851 (op1808.map lower) ∧ bytes1808.length=48 := by core033_kernel_decide
def op1809 : List WordIR.Op := [.badd 1846 1851]
def bytes1809 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073c: u32 = r00000736.wrapping_add(r0000073b);\n" : String)
theorem checked1809 : bytes1809=statementBytes 1852 (op1809.map lower) ∧ bytes1809.length=60 := by core033_kernel_decide
def op1810 : List WordIR.Op := [.badd 1852 1645]
def bytes1810 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073d: u32 = r0000073c.wrapping_add(r0000066d);\n" : String)
theorem checked1810 : bytes1810=statementBytes 1853 (op1810.map lower) ∧ bytes1810.length=60 := by core033_kernel_decide
def op1811 : List WordIR.Op := [.rotr 1840 17]
def bytes1811 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073e: u32 = r00000730.rotate_right(0x00000011_u32);\n" : String)
theorem checked1811 : bytes1811=statementBytes 1854 (op1811.map lower) ∧ bytes1811.length=65 := by core033_kernel_decide
def op1812 : List WordIR.Op := [.rotr 1840 19]
def bytes1812 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000073f: u32 = r00000730.rotate_right(0x00000013_u32);\n" : String)
theorem checked1812 : bytes1812=statementBytes 1855 (op1812.map lower) ∧ bytes1812.length=65 := by core033_kernel_decide
def op1813 : List WordIR.Op := [.bxor 1854 1855]
def bytes1813 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000740: u32 = r0000073e ^ r0000073f;\n" : String)
theorem checked1813 : bytes1813=statementBytes 1856 (op1813.map lower) ∧ bytes1813.length=48 := by core033_kernel_decide
def op1814 : List WordIR.Op := [.shr 1840 10]
def bytes1814 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000741: u32 = r00000730 >> 0x0000000a_u32;\n" : String)
theorem checked1814 : bytes1814=statementBytes 1857 (op1814.map lower) ∧ bytes1814.length=54 := by core033_kernel_decide
def op1815 : List WordIR.Op := [.bxor 1856 1857]
def bytes1815 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000742: u32 = r00000740 ^ r00000741;\n" : String)
theorem checked1815 : bytes1815=statementBytes 1858 (op1815.map lower) ∧ bytes1815.length=48 := by core033_kernel_decide
def op1816 : List WordIR.Op := [.badd 1858 1775]
def bytes1816 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000743: u32 = r00000742.wrapping_add(r000006ef);\n" : String)
theorem checked1816 : bytes1816=statementBytes 1859 (op1816.map lower) ∧ bytes1816.length=60 := by core033_kernel_decide
def op1817 : List WordIR.Op := [.rotr 1671 7]
def bytes1817 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000744: u32 = r00000687.rotate_right(0x00000007_u32);\n" : String)
theorem checked1817 : bytes1817=statementBytes 1860 (op1817.map lower) ∧ bytes1817.length=65 := by core033_kernel_decide
def op1818 : List WordIR.Op := [.rotr 1671 18]
def bytes1818 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000745: u32 = r00000687.rotate_right(0x00000012_u32);\n" : String)
theorem checked1818 : bytes1818=statementBytes 1861 (op1818.map lower) ∧ bytes1818.length=65 := by core033_kernel_decide
def op1819 : List WordIR.Op := [.bxor 1860 1861]
def bytes1819 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000746: u32 = r00000744 ^ r00000745;\n" : String)
theorem checked1819 : bytes1819=statementBytes 1862 (op1819.map lower) ∧ bytes1819.length=48 := by core033_kernel_decide
def op1820 : List WordIR.Op := [.shr 1671 3]
def bytes1820 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000747: u32 = r00000687 >> 0x00000003_u32;\n" : String)
theorem checked1820 : bytes1820=statementBytes 1863 (op1820.map lower) ∧ bytes1820.length=54 := by core033_kernel_decide
def op1821 : List WordIR.Op := [.bxor 1862 1863]
def bytes1821 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000748: u32 = r00000746 ^ r00000747;\n" : String)
theorem checked1821 : bytes1821=statementBytes 1864 (op1821.map lower) ∧ bytes1821.length=48 := by core033_kernel_decide
def op1822 : List WordIR.Op := [.badd 1859 1864]
def bytes1822 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000749: u32 = r00000743.wrapping_add(r00000748);\n" : String)
theorem checked1822 : bytes1822=statementBytes 1865 (op1822.map lower) ∧ bytes1822.length=60 := by core033_kernel_decide
def op1823 : List WordIR.Op := [.badd 1865 1658]
def bytes1823 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074a: u32 = r00000749.wrapping_add(r0000067a);\n" : String)
theorem checked1823 : bytes1823=statementBytes 1866 (op1823.map lower) ∧ bytes1823.length=60 := by core033_kernel_decide
def op1824 : List WordIR.Op := [.rotr 1853 17]
def bytes1824 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074b: u32 = r0000073d.rotate_right(0x00000011_u32);\n" : String)
theorem checked1824 : bytes1824=statementBytes 1867 (op1824.map lower) ∧ bytes1824.length=65 := by core033_kernel_decide
def op1825 : List WordIR.Op := [.rotr 1853 19]
def bytes1825 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074c: u32 = r0000073d.rotate_right(0x00000013_u32);\n" : String)
theorem checked1825 : bytes1825=statementBytes 1868 (op1825.map lower) ∧ bytes1825.length=65 := by core033_kernel_decide
def op1826 : List WordIR.Op := [.bxor 1867 1868]
def bytes1826 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074d: u32 = r0000074b ^ r0000074c;\n" : String)
theorem checked1826 : bytes1826=statementBytes 1869 (op1826.map lower) ∧ bytes1826.length=48 := by core033_kernel_decide
def op1827 : List WordIR.Op := [.shr 1853 10]
def bytes1827 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074e: u32 = r0000073d >> 0x0000000a_u32;\n" : String)
theorem checked1827 : bytes1827=statementBytes 1870 (op1827.map lower) ∧ bytes1827.length=54 := by core033_kernel_decide
def op1828 : List WordIR.Op := [.bxor 1869 1870]
def bytes1828 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000074f: u32 = r0000074d ^ r0000074e;\n" : String)
theorem checked1828 : bytes1828=statementBytes 1871 (op1828.map lower) ∧ bytes1828.length=48 := by core033_kernel_decide
def op1829 : List WordIR.Op := [.badd 1871 1788]
def bytes1829 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000750: u32 = r0000074f.wrapping_add(r000006fc);\n" : String)
theorem checked1829 : bytes1829=statementBytes 1872 (op1829.map lower) ∧ bytes1829.length=60 := by core033_kernel_decide
def op1830 : List WordIR.Op := [.rotr 1684 7]
def bytes1830 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000751: u32 = r00000694.rotate_right(0x00000007_u32);\n" : String)
theorem checked1830 : bytes1830=statementBytes 1873 (op1830.map lower) ∧ bytes1830.length=65 := by core033_kernel_decide
def op1831 : List WordIR.Op := [.rotr 1684 18]
def bytes1831 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000752: u32 = r00000694.rotate_right(0x00000012_u32);\n" : String)
theorem checked1831 : bytes1831=statementBytes 1874 (op1831.map lower) ∧ bytes1831.length=65 := by core033_kernel_decide
def op1832 : List WordIR.Op := [.bxor 1873 1874]
def bytes1832 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000753: u32 = r00000751 ^ r00000752;\n" : String)
theorem checked1832 : bytes1832=statementBytes 1875 (op1832.map lower) ∧ bytes1832.length=48 := by core033_kernel_decide
def op1833 : List WordIR.Op := [.shr 1684 3]
def bytes1833 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000754: u32 = r00000694 >> 0x00000003_u32;\n" : String)
theorem checked1833 : bytes1833=statementBytes 1876 (op1833.map lower) ∧ bytes1833.length=54 := by core033_kernel_decide
def op1834 : List WordIR.Op := [.bxor 1875 1876]
def bytes1834 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000755: u32 = r00000753 ^ r00000754;\n" : String)
theorem checked1834 : bytes1834=statementBytes 1877 (op1834.map lower) ∧ bytes1834.length=48 := by core033_kernel_decide
def op1835 : List WordIR.Op := [.badd 1872 1877]
def bytes1835 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000756: u32 = r00000750.wrapping_add(r00000755);\n" : String)
theorem checked1835 : bytes1835=statementBytes 1878 (op1835.map lower) ∧ bytes1835.length=60 := by core033_kernel_decide
def op1836 : List WordIR.Op := [.badd 1878 1671]
def bytes1836 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000757: u32 = r00000756.wrapping_add(r00000687);\n" : String)
theorem checked1836 : bytes1836=statementBytes 1879 (op1836.map lower) ∧ bytes1836.length=60 := by core033_kernel_decide
def op1837 : List WordIR.Op := [.rotr 1866 17]
def bytes1837 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000758: u32 = r0000074a.rotate_right(0x00000011_u32);\n" : String)
theorem checked1837 : bytes1837=statementBytes 1880 (op1837.map lower) ∧ bytes1837.length=65 := by core033_kernel_decide
def op1838 : List WordIR.Op := [.rotr 1866 19]
def bytes1838 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000759: u32 = r0000074a.rotate_right(0x00000013_u32);\n" : String)
theorem checked1838 : bytes1838=statementBytes 1881 (op1838.map lower) ∧ bytes1838.length=65 := by core033_kernel_decide
def op1839 : List WordIR.Op := [.bxor 1880 1881]
def bytes1839 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075a: u32 = r00000758 ^ r00000759;\n" : String)
theorem checked1839 : bytes1839=statementBytes 1882 (op1839.map lower) ∧ bytes1839.length=48 := by core033_kernel_decide
def op1840 : List WordIR.Op := [.shr 1866 10]
def bytes1840 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075b: u32 = r0000074a >> 0x0000000a_u32;\n" : String)
theorem checked1840 : bytes1840=statementBytes 1883 (op1840.map lower) ∧ bytes1840.length=54 := by core033_kernel_decide
def op1841 : List WordIR.Op := [.bxor 1882 1883]
def bytes1841 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075c: u32 = r0000075a ^ r0000075b;\n" : String)
theorem checked1841 : bytes1841=statementBytes 1884 (op1841.map lower) ∧ bytes1841.length=48 := by core033_kernel_decide
def op1842 : List WordIR.Op := [.badd 1884 1801]
def bytes1842 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075d: u32 = r0000075c.wrapping_add(r00000709);\n" : String)
theorem checked1842 : bytes1842=statementBytes 1885 (op1842.map lower) ∧ bytes1842.length=60 := by core033_kernel_decide
def op1843 : List WordIR.Op := [.rotr 1697 7]
def bytes1843 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075e: u32 = r000006a1.rotate_right(0x00000007_u32);\n" : String)
theorem checked1843 : bytes1843=statementBytes 1886 (op1843.map lower) ∧ bytes1843.length=65 := by core033_kernel_decide
def op1844 : List WordIR.Op := [.rotr 1697 18]
def bytes1844 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000075f: u32 = r000006a1.rotate_right(0x00000012_u32);\n" : String)
theorem checked1844 : bytes1844=statementBytes 1887 (op1844.map lower) ∧ bytes1844.length=65 := by core033_kernel_decide
def op1845 : List WordIR.Op := [.bxor 1886 1887]
def bytes1845 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000760: u32 = r0000075e ^ r0000075f;\n" : String)
theorem checked1845 : bytes1845=statementBytes 1888 (op1845.map lower) ∧ bytes1845.length=48 := by core033_kernel_decide
def op1846 : List WordIR.Op := [.shr 1697 3]
def bytes1846 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000761: u32 = r000006a1 >> 0x00000003_u32;\n" : String)
theorem checked1846 : bytes1846=statementBytes 1889 (op1846.map lower) ∧ bytes1846.length=54 := by core033_kernel_decide
def op1847 : List WordIR.Op := [.bxor 1888 1889]
def bytes1847 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000762: u32 = r00000760 ^ r00000761;\n" : String)
theorem checked1847 : bytes1847=statementBytes 1890 (op1847.map lower) ∧ bytes1847.length=48 := by core033_kernel_decide
def op1848 : List WordIR.Op := [.badd 1885 1890]
def bytes1848 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000763: u32 = r0000075d.wrapping_add(r00000762);\n" : String)
theorem checked1848 : bytes1848=statementBytes 1891 (op1848.map lower) ∧ bytes1848.length=60 := by core033_kernel_decide
def op1849 : List WordIR.Op := [.badd 1891 1684]
def bytes1849 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000764: u32 = r00000763.wrapping_add(r00000694);\n" : String)
theorem checked1849 : bytes1849=statementBytes 1892 (op1849.map lower) ∧ bytes1849.length=60 := by core033_kernel_decide
def op1850 : List WordIR.Op := [.rotr 1879 17]
def bytes1850 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000765: u32 = r00000757.rotate_right(0x00000011_u32);\n" : String)
theorem checked1850 : bytes1850=statementBytes 1893 (op1850.map lower) ∧ bytes1850.length=65 := by core033_kernel_decide
def op1851 : List WordIR.Op := [.rotr 1879 19]
def bytes1851 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000766: u32 = r00000757.rotate_right(0x00000013_u32);\n" : String)
theorem checked1851 : bytes1851=statementBytes 1894 (op1851.map lower) ∧ bytes1851.length=65 := by core033_kernel_decide
def op1852 : List WordIR.Op := [.bxor 1893 1894]
def bytes1852 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000767: u32 = r00000765 ^ r00000766;\n" : String)
theorem checked1852 : bytes1852=statementBytes 1895 (op1852.map lower) ∧ bytes1852.length=48 := by core033_kernel_decide
def op1853 : List WordIR.Op := [.shr 1879 10]
def bytes1853 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000768: u32 = r00000757 >> 0x0000000a_u32;\n" : String)
theorem checked1853 : bytes1853=statementBytes 1896 (op1853.map lower) ∧ bytes1853.length=54 := by core033_kernel_decide
def op1854 : List WordIR.Op := [.bxor 1895 1896]
def bytes1854 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000769: u32 = r00000767 ^ r00000768;\n" : String)
theorem checked1854 : bytes1854=statementBytes 1897 (op1854.map lower) ∧ bytes1854.length=48 := by core033_kernel_decide
def op1855 : List WordIR.Op := [.badd 1897 1814]
def bytes1855 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000076a: u32 = r00000769.wrapping_add(r00000716);\n" : String)
theorem checked1855 : bytes1855=statementBytes 1898 (op1855.map lower) ∧ bytes1855.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1792,op1793,op1794,op1795,op1796,op1797,op1798,op1799,op1800,op1801,op1802,op1803,op1804,op1805,op1806,op1807,op1808,op1809,op1810,op1811,op1812,op1813,op1814,op1815,op1816,op1817,op1818,op1819,op1820,op1821,op1822,op1823,op1824,op1825,op1826,op1827,op1828,op1829,op1830,op1831,op1832,op1833,op1834,op1835,op1836,op1837,op1838,op1839,op1840,op1841,op1842,op1843,op1844,op1845,op1846,op1847,op1848,op1849,op1850,op1851,op1852,op1853,op1854,op1855]
def chunks : List Bytes := [bytes1792,bytes1793,bytes1794,bytes1795,bytes1796,bytes1797,bytes1798,bytes1799,bytes1800,bytes1801,bytes1802,bytes1803,bytes1804,bytes1805,bytes1806,bytes1807,bytes1808,bytes1809,bytes1810,bytes1811,bytes1812,bytes1813,bytes1814,bytes1815,bytes1816,bytes1817,bytes1818,bytes1819,bytes1820,bytes1821,bytes1822,bytes1823,bytes1824,bytes1825,bytes1826,bytes1827,bytes1828,bytes1829,bytes1830,bytes1831,bytes1832,bytes1833,bytes1834,bytes1835,bytes1836,bytes1837,bytes1838,bytes1839,bytes1840,bytes1841,bytes1842,bytes1843,bytes1844,bytes1845,bytes1846,bytes1847,bytes1848,bytes1849,bytes1850,bytes1851,bytes1852,bytes1853,bytes1854,bytes1855]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1835 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1792.1 (.cons _ _ _ _ _ checked1793.1 (.cons _ _ _ _ _ checked1794.1 (.cons _ _ _ _ _ checked1795.1 (.cons _ _ _ _ _ checked1796.1 (.cons _ _ _ _ _ checked1797.1 (.cons _ _ _ _ _ checked1798.1 (.cons _ _ _ _ _ checked1799.1 (.cons _ _ _ _ _ checked1800.1 (.cons _ _ _ _ _ checked1801.1 (.cons _ _ _ _ _ checked1802.1 (.cons _ _ _ _ _ checked1803.1 (.cons _ _ _ _ _ checked1804.1 (.cons _ _ _ _ _ checked1805.1 (.cons _ _ _ _ _ checked1806.1 (.cons _ _ _ _ _ checked1807.1 (.cons _ _ _ _ _ checked1808.1 (.cons _ _ _ _ _ checked1809.1 (.cons _ _ _ _ _ checked1810.1 (.cons _ _ _ _ _ checked1811.1 (.cons _ _ _ _ _ checked1812.1 (.cons _ _ _ _ _ checked1813.1 (.cons _ _ _ _ _ checked1814.1 (.cons _ _ _ _ _ checked1815.1 (.cons _ _ _ _ _ checked1816.1 (.cons _ _ _ _ _ checked1817.1 (.cons _ _ _ _ _ checked1818.1 (.cons _ _ _ _ _ checked1819.1 (.cons _ _ _ _ _ checked1820.1 (.cons _ _ _ _ _ checked1821.1 (.cons _ _ _ _ _ checked1822.1 (.cons _ _ _ _ _ checked1823.1 (.cons _ _ _ _ _ checked1824.1 (.cons _ _ _ _ _ checked1825.1 (.cons _ _ _ _ _ checked1826.1 (.cons _ _ _ _ _ checked1827.1 (.cons _ _ _ _ _ checked1828.1 (.cons _ _ _ _ _ checked1829.1 (.cons _ _ _ _ _ checked1830.1 (.cons _ _ _ _ _ checked1831.1 (.cons _ _ _ _ _ checked1832.1 (.cons _ _ _ _ _ checked1833.1 (.cons _ _ _ _ _ checked1834.1 (.cons _ _ _ _ _ checked1835.1 (.cons _ _ _ _ _ checked1836.1 (.cons _ _ _ _ _ checked1837.1 (.cons _ _ _ _ _ checked1838.1 (.cons _ _ _ _ _ checked1839.1 (.cons _ _ _ _ _ checked1840.1 (.cons _ _ _ _ _ checked1841.1 (.cons _ _ _ _ _ checked1842.1 (.cons _ _ _ _ _ checked1843.1 (.cons _ _ _ _ _ checked1844.1 (.cons _ _ _ _ _ checked1845.1 (.cons _ _ _ _ _ checked1846.1 (.cons _ _ _ _ _ checked1847.1 (.cons _ _ _ _ _ checked1848.1 (.cons _ _ _ _ _ checked1849.1 (.cons _ _ _ _ _ checked1850.1 (.cons _ _ _ _ _ checked1851.1 (.cons _ _ _ _ _ checked1852.1 (.cons _ _ _ _ _ checked1853.1 (.cons _ _ _ _ _ checked1854.1 (.cons _ _ _ _ _ checked1855.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1835 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1792.2,checked1793.2,checked1794.2,checked1795.2,checked1796.2,checked1797.2,checked1798.2,checked1799.2,checked1800.2,checked1801.2,checked1802.2,checked1803.2,checked1804.2,checked1805.2,checked1806.2,checked1807.2,checked1808.2,checked1809.2,checked1810.2,checked1811.2,checked1812.2,checked1813.2,checked1814.2,checked1815.2,checked1816.2,checked1817.2,checked1818.2,checked1819.2,checked1820.2,checked1821.2,checked1822.2,checked1823.2,checked1824.2,checked1825.2,checked1826.2,checked1827.2,checked1828.2,checked1829.2,checked1830.2,checked1831.2,checked1832.2,checked1833.2,checked1834.2,checked1835.2,checked1836.2,checked1837.2,checked1838.2,checked1839.2,checked1840.2,checked1841.2,checked1842.2,checked1843.2,checked1844.2,checked1845.2,checked1846.2,checked1847.2,checked1848.2,checked1849.2,checked1850.2,checked1851.2,checked1852.2,checked1853.2,checked1854.2,checked1855.2]
  decide
end ArtifactSharedFrameGroup28
