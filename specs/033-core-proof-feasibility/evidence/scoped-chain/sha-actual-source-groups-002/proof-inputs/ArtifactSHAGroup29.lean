import Core033.SHAMaterializedFinal
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSHABlocks
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1856 : List WordIR.Op := [.rotr 1861 22]
def bytes1856 : Bytes := ("    let r00000758: u32 = r00000745.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1856 : bytes1856=statementBytes 1880 (op1856.map lower) ∧ bytes1856.length=65 := by core033_kernel_decide
def op1857 : List WordIR.Op := [.bxor 1879 1880]
def bytes1857 : Bytes := ("    let r00000759: u32 = r00000757 ^ r00000758;\n" : String).toByteArray.data.toList
theorem checked1857 : bytes1857=statementBytes 1881 (op1857.map lower) ∧ bytes1857.length=48 := by core033_kernel_decide
def op1858 : List WordIR.Op := [.band 1861 1834]
def bytes1858 : Bytes := ("    let r0000075a: u32 = r00000745 & r0000072a;\n" : String).toByteArray.data.toList
theorem checked1858 : bytes1858=statementBytes 1882 (op1858.map lower) ∧ bytes1858.length=48 := by core033_kernel_decide
def op1859 : List WordIR.Op := [.band 1861 1807]
def bytes1859 : Bytes := ("    let r0000075b: u32 = r00000745 & r0000070f;\n" : String).toByteArray.data.toList
theorem checked1859 : bytes1859=statementBytes 1883 (op1859.map lower) ∧ bytes1859.length=48 := by core033_kernel_decide
def op1860 : List WordIR.Op := [.bxor 1882 1883]
def bytes1860 : Bytes := ("    let r0000075c: u32 = r0000075a ^ r0000075b;\n" : String).toByteArray.data.toList
theorem checked1860 : bytes1860=statementBytes 1884 (op1860.map lower) ∧ bytes1860.length=48 := by core033_kernel_decide
def op1861 : List WordIR.Op := [.band 1834 1807]
def bytes1861 : Bytes := ("    let r0000075d: u32 = r0000072a & r0000070f;\n" : String).toByteArray.data.toList
theorem checked1861 : bytes1861=statementBytes 1885 (op1861.map lower) ∧ bytes1861.length=48 := by core033_kernel_decide
def op1862 : List WordIR.Op := [.bxor 1884 1885]
def bytes1862 : Bytes := ("    let r0000075e: u32 = r0000075c ^ r0000075d;\n" : String).toByteArray.data.toList
theorem checked1862 : bytes1862=statementBytes 1886 (op1862.map lower) ∧ bytes1862.length=48 := by core033_kernel_decide
def op1863 : List WordIR.Op := [.badd 1881 1886]
def bytes1863 : Bytes := ("    let r0000075f: u32 = r00000759.wrapping_add(r0000075e);\n" : String).toByteArray.data.toList
theorem checked1863 : bytes1863=statementBytes 1887 (op1863.map lower) ∧ bytes1863.length=60 := by core033_kernel_decide
def op1864 : List WordIR.Op := [.badd 1876 1887]
def bytes1864 : Bytes := ("    let r00000760: u32 = r00000754.wrapping_add(r0000075f);\n" : String).toByteArray.data.toList
theorem checked1864 : bytes1864=statementBytes 1888 (op1864.map lower) ∧ bytes1864.length=60 := by core033_kernel_decide
def op1865 : List WordIR.Op := [.badd 1780 1876]
def bytes1865 : Bytes := ("    let r00000761: u32 = r000006f4.wrapping_add(r00000754);\n" : String).toByteArray.data.toList
theorem checked1865 : bytes1865=statementBytes 1889 (op1865.map lower) ∧ bytes1865.length=60 := by core033_kernel_decide
def op1866 : List WordIR.Op := [.rotr 1889 6]
def bytes1866 : Bytes := ("    let r00000762: u32 = r00000761.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1866 : bytes1866=statementBytes 1890 (op1866.map lower) ∧ bytes1866.length=65 := by core033_kernel_decide
def op1867 : List WordIR.Op := [.rotr 1889 11]
def bytes1867 : Bytes := ("    let r00000763: u32 = r00000761.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1867 : bytes1867=statementBytes 1891 (op1867.map lower) ∧ bytes1867.length=65 := by core033_kernel_decide
def op1868 : List WordIR.Op := [.bxor 1890 1891]
def bytes1868 : Bytes := ("    let r00000764: u32 = r00000762 ^ r00000763;\n" : String).toByteArray.data.toList
theorem checked1868 : bytes1868=statementBytes 1892 (op1868.map lower) ∧ bytes1868.length=48 := by core033_kernel_decide
def op1869 : List WordIR.Op := [.rotr 1889 25]
def bytes1869 : Bytes := ("    let r00000765: u32 = r00000761.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1869 : bytes1869=statementBytes 1893 (op1869.map lower) ∧ bytes1869.length=65 := by core033_kernel_decide
def op1870 : List WordIR.Op := [.bxor 1892 1893]
def bytes1870 : Bytes := ("    let r00000766: u32 = r00000764 ^ r00000765;\n" : String).toByteArray.data.toList
theorem checked1870 : bytes1870=statementBytes 1894 (op1870.map lower) ∧ bytes1870.length=48 := by core033_kernel_decide
def op1871 : List WordIR.Op := [.badd 1808 1894]
def bytes1871 : Bytes := ("    let r00000767: u32 = r00000710.wrapping_add(r00000766);\n" : String).toByteArray.data.toList
theorem checked1871 : bytes1871=statementBytes 1895 (op1871.map lower) ∧ bytes1871.length=60 := by core033_kernel_decide
def op1872 : List WordIR.Op := [.band 1889 1862]
def bytes1872 : Bytes := ("    let r00000768: u32 = r00000761 & r00000746;\n" : String).toByteArray.data.toList
theorem checked1872 : bytes1872=statementBytes 1896 (op1872.map lower) ∧ bytes1872.length=48 := by core033_kernel_decide
def op1873 : List WordIR.Op := [.bnot 1889]
def bytes1873 : Bytes := ("    let r00000769: u32 = !r00000761;\n" : String).toByteArray.data.toList
theorem checked1873 : bytes1873=statementBytes 1897 (op1873.map lower) ∧ bytes1873.length=37 := by core033_kernel_decide
def op1874 : List WordIR.Op := [.band 1897 1835]
def bytes1874 : Bytes := ("    let r0000076a: u32 = r00000769 & r0000072b;\n" : String).toByteArray.data.toList
theorem checked1874 : bytes1874=statementBytes 1898 (op1874.map lower) ∧ bytes1874.length=48 := by core033_kernel_decide
def op1875 : List WordIR.Op := [.bxor 1896 1898]
def bytes1875 : Bytes := ("    let r0000076b: u32 = r00000768 ^ r0000076a;\n" : String).toByteArray.data.toList
theorem checked1875 : bytes1875=statementBytes 1899 (op1875.map lower) ∧ bytes1875.length=48 := by core033_kernel_decide
def op1876 : List WordIR.Op := [.badd 1895 1899]
def bytes1876 : Bytes := ("    let r0000076c: u32 = r00000767.wrapping_add(r0000076b);\n" : String).toByteArray.data.toList
theorem checked1876 : bytes1876=statementBytes 1900 (op1876.map lower) ∧ bytes1876.length=60 := by core033_kernel_decide
def op1877 : List WordIR.Op := [.literal (BitVec.ofNat 32 4094571909)]
def bytes1877 : Bytes := ("    let r0000076d: u32 = 0xf40e3585_u32;\n" : String).toByteArray.data.toList
theorem checked1877 : bytes1877=statementBytes 1901 (op1877.map lower) ∧ bytes1877.length=41 := by core033_kernel_decide
def op1878 : List WordIR.Op := [.badd 1900 1901]
def bytes1878 : Bytes := ("    let r0000076e: u32 = r0000076c.wrapping_add(r0000076d);\n" : String).toByteArray.data.toList
theorem checked1878 : bytes1878=statementBytes 1902 (op1878.map lower) ∧ bytes1878.length=60 := by core033_kernel_decide
def op1879 : List WordIR.Op := [.badd 1902 426]
def bytes1879 : Bytes := ("    let r0000076f: u32 = r0000076e.wrapping_add(r000001aa);\n" : String).toByteArray.data.toList
theorem checked1879 : bytes1879=statementBytes 1903 (op1879.map lower) ∧ bytes1879.length=60 := by core033_kernel_decide
def op1880 : List WordIR.Op := [.rotr 1888 2]
def bytes1880 : Bytes := ("    let r00000770: u32 = r00000760.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1880 : bytes1880=statementBytes 1904 (op1880.map lower) ∧ bytes1880.length=65 := by core033_kernel_decide
def op1881 : List WordIR.Op := [.rotr 1888 13]
def bytes1881 : Bytes := ("    let r00000771: u32 = r00000760.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1881 : bytes1881=statementBytes 1905 (op1881.map lower) ∧ bytes1881.length=65 := by core033_kernel_decide
def op1882 : List WordIR.Op := [.bxor 1904 1905]
def bytes1882 : Bytes := ("    let r00000772: u32 = r00000770 ^ r00000771;\n" : String).toByteArray.data.toList
theorem checked1882 : bytes1882=statementBytes 1906 (op1882.map lower) ∧ bytes1882.length=48 := by core033_kernel_decide
def op1883 : List WordIR.Op := [.rotr 1888 22]
def bytes1883 : Bytes := ("    let r00000773: u32 = r00000760.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1883 : bytes1883=statementBytes 1907 (op1883.map lower) ∧ bytes1883.length=65 := by core033_kernel_decide
def op1884 : List WordIR.Op := [.bxor 1906 1907]
def bytes1884 : Bytes := ("    let r00000774: u32 = r00000772 ^ r00000773;\n" : String).toByteArray.data.toList
theorem checked1884 : bytes1884=statementBytes 1908 (op1884.map lower) ∧ bytes1884.length=48 := by core033_kernel_decide
def op1885 : List WordIR.Op := [.band 1888 1861]
def bytes1885 : Bytes := ("    let r00000775: u32 = r00000760 & r00000745;\n" : String).toByteArray.data.toList
theorem checked1885 : bytes1885=statementBytes 1909 (op1885.map lower) ∧ bytes1885.length=48 := by core033_kernel_decide
def op1886 : List WordIR.Op := [.band 1888 1834]
def bytes1886 : Bytes := ("    let r00000776: u32 = r00000760 & r0000072a;\n" : String).toByteArray.data.toList
theorem checked1886 : bytes1886=statementBytes 1910 (op1886.map lower) ∧ bytes1886.length=48 := by core033_kernel_decide
def op1887 : List WordIR.Op := [.bxor 1909 1910]
def bytes1887 : Bytes := ("    let r00000777: u32 = r00000775 ^ r00000776;\n" : String).toByteArray.data.toList
theorem checked1887 : bytes1887=statementBytes 1911 (op1887.map lower) ∧ bytes1887.length=48 := by core033_kernel_decide
def op1888 : List WordIR.Op := [.band 1861 1834]
def bytes1888 : Bytes := ("    let r00000778: u32 = r00000745 & r0000072a;\n" : String).toByteArray.data.toList
theorem checked1888 : bytes1888=statementBytes 1912 (op1888.map lower) ∧ bytes1888.length=48 := by core033_kernel_decide
def op1889 : List WordIR.Op := [.bxor 1911 1912]
def bytes1889 : Bytes := ("    let r00000779: u32 = r00000777 ^ r00000778;\n" : String).toByteArray.data.toList
theorem checked1889 : bytes1889=statementBytes 1913 (op1889.map lower) ∧ bytes1889.length=48 := by core033_kernel_decide
def op1890 : List WordIR.Op := [.badd 1908 1913]
def bytes1890 : Bytes := ("    let r0000077a: u32 = r00000774.wrapping_add(r00000779);\n" : String).toByteArray.data.toList
theorem checked1890 : bytes1890=statementBytes 1914 (op1890.map lower) ∧ bytes1890.length=60 := by core033_kernel_decide
def op1891 : List WordIR.Op := [.badd 1903 1914]
def bytes1891 : Bytes := ("    let r0000077b: u32 = r0000076f.wrapping_add(r0000077a);\n" : String).toByteArray.data.toList
theorem checked1891 : bytes1891=statementBytes 1915 (op1891.map lower) ∧ bytes1891.length=60 := by core033_kernel_decide
def op1892 : List WordIR.Op := [.badd 1807 1903]
def bytes1892 : Bytes := ("    let r0000077c: u32 = r0000070f.wrapping_add(r0000076f);\n" : String).toByteArray.data.toList
theorem checked1892 : bytes1892=statementBytes 1916 (op1892.map lower) ∧ bytes1892.length=60 := by core033_kernel_decide
def op1893 : List WordIR.Op := [.rotr 1916 6]
def bytes1893 : Bytes := ("    let r0000077d: u32 = r0000077c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked1893 : bytes1893=statementBytes 1917 (op1893.map lower) ∧ bytes1893.length=65 := by core033_kernel_decide
def op1894 : List WordIR.Op := [.rotr 1916 11]
def bytes1894 : Bytes := ("    let r0000077e: u32 = r0000077c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked1894 : bytes1894=statementBytes 1918 (op1894.map lower) ∧ bytes1894.length=65 := by core033_kernel_decide
def op1895 : List WordIR.Op := [.bxor 1917 1918]
def bytes1895 : Bytes := ("    let r0000077f: u32 = r0000077d ^ r0000077e;\n" : String).toByteArray.data.toList
theorem checked1895 : bytes1895=statementBytes 1919 (op1895.map lower) ∧ bytes1895.length=48 := by core033_kernel_decide
def op1896 : List WordIR.Op := [.rotr 1916 25]
def bytes1896 : Bytes := ("    let r00000780: u32 = r0000077c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked1896 : bytes1896=statementBytes 1920 (op1896.map lower) ∧ bytes1896.length=65 := by core033_kernel_decide
def op1897 : List WordIR.Op := [.bxor 1919 1920]
def bytes1897 : Bytes := ("    let r00000781: u32 = r0000077f ^ r00000780;\n" : String).toByteArray.data.toList
theorem checked1897 : bytes1897=statementBytes 1921 (op1897.map lower) ∧ bytes1897.length=48 := by core033_kernel_decide
def op1898 : List WordIR.Op := [.badd 1835 1921]
def bytes1898 : Bytes := ("    let r00000782: u32 = r0000072b.wrapping_add(r00000781);\n" : String).toByteArray.data.toList
theorem checked1898 : bytes1898=statementBytes 1922 (op1898.map lower) ∧ bytes1898.length=60 := by core033_kernel_decide
def op1899 : List WordIR.Op := [.band 1916 1889]
def bytes1899 : Bytes := ("    let r00000783: u32 = r0000077c & r00000761;\n" : String).toByteArray.data.toList
theorem checked1899 : bytes1899=statementBytes 1923 (op1899.map lower) ∧ bytes1899.length=48 := by core033_kernel_decide
def op1900 : List WordIR.Op := [.bnot 1916]
def bytes1900 : Bytes := ("    let r00000784: u32 = !r0000077c;\n" : String).toByteArray.data.toList
theorem checked1900 : bytes1900=statementBytes 1924 (op1900.map lower) ∧ bytes1900.length=37 := by core033_kernel_decide
def op1901 : List WordIR.Op := [.band 1924 1862]
def bytes1901 : Bytes := ("    let r00000785: u32 = r00000784 & r00000746;\n" : String).toByteArray.data.toList
theorem checked1901 : bytes1901=statementBytes 1925 (op1901.map lower) ∧ bytes1901.length=48 := by core033_kernel_decide
def op1902 : List WordIR.Op := [.bxor 1923 1925]
def bytes1902 : Bytes := ("    let r00000786: u32 = r00000783 ^ r00000785;\n" : String).toByteArray.data.toList
theorem checked1902 : bytes1902=statementBytes 1926 (op1902.map lower) ∧ bytes1902.length=48 := by core033_kernel_decide
def op1903 : List WordIR.Op := [.badd 1922 1926]
def bytes1903 : Bytes := ("    let r00000787: u32 = r00000782.wrapping_add(r00000786);\n" : String).toByteArray.data.toList
theorem checked1903 : bytes1903=statementBytes 1927 (op1903.map lower) ∧ bytes1903.length=60 := by core033_kernel_decide
def op1904 : List WordIR.Op := [.literal (BitVec.ofNat 32 275423344)]
def bytes1904 : Bytes := ("    let r00000788: u32 = 0x106aa070_u32;\n" : String).toByteArray.data.toList
theorem checked1904 : bytes1904=statementBytes 1928 (op1904.map lower) ∧ bytes1904.length=41 := by core033_kernel_decide
def op1905 : List WordIR.Op := [.badd 1927 1928]
def bytes1905 : Bytes := ("    let r00000789: u32 = r00000787.wrapping_add(r00000788);\n" : String).toByteArray.data.toList
theorem checked1905 : bytes1905=statementBytes 1929 (op1905.map lower) ∧ bytes1905.length=60 := by core033_kernel_decide
def op1906 : List WordIR.Op := [.badd 1929 439]
def bytes1906 : Bytes := ("    let r0000078a: u32 = r00000789.wrapping_add(r000001b7);\n" : String).toByteArray.data.toList
theorem checked1906 : bytes1906=statementBytes 1930 (op1906.map lower) ∧ bytes1906.length=60 := by core033_kernel_decide
def op1907 : List WordIR.Op := [.rotr 1915 2]
def bytes1907 : Bytes := ("    let r0000078b: u32 = r0000077b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked1907 : bytes1907=statementBytes 1931 (op1907.map lower) ∧ bytes1907.length=65 := by core033_kernel_decide
def op1908 : List WordIR.Op := [.rotr 1915 13]
def bytes1908 : Bytes := ("    let r0000078c: u32 = r0000077b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked1908 : bytes1908=statementBytes 1932 (op1908.map lower) ∧ bytes1908.length=65 := by core033_kernel_decide
def op1909 : List WordIR.Op := [.bxor 1931 1932]
def bytes1909 : Bytes := ("    let r0000078d: u32 = r0000078b ^ r0000078c;\n" : String).toByteArray.data.toList
theorem checked1909 : bytes1909=statementBytes 1933 (op1909.map lower) ∧ bytes1909.length=48 := by core033_kernel_decide
def op1910 : List WordIR.Op := [.rotr 1915 22]
def bytes1910 : Bytes := ("    let r0000078e: u32 = r0000077b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked1910 : bytes1910=statementBytes 1934 (op1910.map lower) ∧ bytes1910.length=65 := by core033_kernel_decide
def op1911 : List WordIR.Op := [.bxor 1933 1934]
def bytes1911 : Bytes := ("    let r0000078f: u32 = r0000078d ^ r0000078e;\n" : String).toByteArray.data.toList
theorem checked1911 : bytes1911=statementBytes 1935 (op1911.map lower) ∧ bytes1911.length=48 := by core033_kernel_decide
def op1912 : List WordIR.Op := [.band 1915 1888]
def bytes1912 : Bytes := ("    let r00000790: u32 = r0000077b & r00000760;\n" : String).toByteArray.data.toList
theorem checked1912 : bytes1912=statementBytes 1936 (op1912.map lower) ∧ bytes1912.length=48 := by core033_kernel_decide
def op1913 : List WordIR.Op := [.band 1915 1861]
def bytes1913 : Bytes := ("    let r00000791: u32 = r0000077b & r00000745;\n" : String).toByteArray.data.toList
theorem checked1913 : bytes1913=statementBytes 1937 (op1913.map lower) ∧ bytes1913.length=48 := by core033_kernel_decide
def op1914 : List WordIR.Op := [.bxor 1936 1937]
def bytes1914 : Bytes := ("    let r00000792: u32 = r00000790 ^ r00000791;\n" : String).toByteArray.data.toList
theorem checked1914 : bytes1914=statementBytes 1938 (op1914.map lower) ∧ bytes1914.length=48 := by core033_kernel_decide
def op1915 : List WordIR.Op := [.band 1888 1861]
def bytes1915 : Bytes := ("    let r00000793: u32 = r00000760 & r00000745;\n" : String).toByteArray.data.toList
theorem checked1915 : bytes1915=statementBytes 1939 (op1915.map lower) ∧ bytes1915.length=48 := by core033_kernel_decide
def op1916 : List WordIR.Op := [.bxor 1938 1939]
def bytes1916 : Bytes := ("    let r00000794: u32 = r00000792 ^ r00000793;\n" : String).toByteArray.data.toList
theorem checked1916 : bytes1916=statementBytes 1940 (op1916.map lower) ∧ bytes1916.length=48 := by core033_kernel_decide
def op1917 : List WordIR.Op := [.badd 1935 1940]
def bytes1917 : Bytes := ("    let r00000795: u32 = r0000078f.wrapping_add(r00000794);\n" : String).toByteArray.data.toList
theorem checked1917 : bytes1917=statementBytes 1941 (op1917.map lower) ∧ bytes1917.length=60 := by core033_kernel_decide
def op1918 : List WordIR.Op := [.badd 1930 1941]
def bytes1918 : Bytes := ("    let r00000796: u32 = r0000078a.wrapping_add(r00000795);\n" : String).toByteArray.data.toList
theorem checked1918 : bytes1918=statementBytes 1942 (op1918.map lower) ∧ bytes1918.length=60 := by core033_kernel_decide
def op1919 : List WordIR.Op := [.badd 1834 1930]
def bytes1919 : Bytes := ("    let r00000797: u32 = r0000072a.wrapping_add(r0000078a);\n" : String).toByteArray.data.toList
theorem checked1919 : bytes1919=statementBytes 1943 (op1919.map lower) ∧ bytes1919.length=60 := by core033_kernel_decide
def innerBlocks29 : List (List WordIR.Op) := [op1856,op1857,op1858,op1859,op1860,op1861,op1862,op1863,op1864,op1865,op1866,op1867,op1868,op1869,op1870,op1871,op1872,op1873,op1874,op1875,op1876,op1877,op1878,op1879,op1880,op1881,op1882,op1883,op1884,op1885,op1886,op1887,op1888,op1889,op1890,op1891,op1892,op1893,op1894,op1895,op1896,op1897,op1898,op1899,op1900,op1901,op1902,op1903,op1904,op1905,op1906,op1907,op1908,op1909,op1910,op1911,op1912,op1913,op1914,op1915,op1916,op1917,op1918,op1919]
def innerBytes29 : List Bytes := [bytes1856,bytes1857,bytes1858,bytes1859,bytes1860,bytes1861,bytes1862,bytes1863,bytes1864,bytes1865,bytes1866,bytes1867,bytes1868,bytes1869,bytes1870,bytes1871,bytes1872,bytes1873,bytes1874,bytes1875,bytes1876,bytes1877,bytes1878,bytes1879,bytes1880,bytes1881,bytes1882,bytes1883,bytes1884,bytes1885,bytes1886,bytes1887,bytes1888,bytes1889,bytes1890,bytes1891,bytes1892,bytes1893,bytes1894,bytes1895,bytes1896,bytes1897,bytes1898,bytes1899,bytes1900,bytes1901,bytes1902,bytes1903,bytes1904,bytes1905,bytes1906,bytes1907,bytes1908,bytes1909,bytes1910,bytes1911,bytes1912,bytes1913,bytes1914,bytes1915,bytes1916,bytes1917,bytes1918,bytes1919]
def partOps29 : List WordIR.Op := innerBlocks29.flatten
def partBytes29 : Bytes := innerBytes29.flatten
theorem partChain29 : BlockChain 1880 innerBlocks29 innerBytes29 := by
  unfold innerBlocks29 innerBytes29
  exact (.cons _ _ _ _ _ checked1856.1 (.cons _ _ _ _ _ checked1857.1 (.cons _ _ _ _ _ checked1858.1 (.cons _ _ _ _ _ checked1859.1 (.cons _ _ _ _ _ checked1860.1 (.cons _ _ _ _ _ checked1861.1 (.cons _ _ _ _ _ checked1862.1 (.cons _ _ _ _ _ checked1863.1 (.cons _ _ _ _ _ checked1864.1 (.cons _ _ _ _ _ checked1865.1 (.cons _ _ _ _ _ checked1866.1 (.cons _ _ _ _ _ checked1867.1 (.cons _ _ _ _ _ checked1868.1 (.cons _ _ _ _ _ checked1869.1 (.cons _ _ _ _ _ checked1870.1 (.cons _ _ _ _ _ checked1871.1 (.cons _ _ _ _ _ checked1872.1 (.cons _ _ _ _ _ checked1873.1 (.cons _ _ _ _ _ checked1874.1 (.cons _ _ _ _ _ checked1875.1 (.cons _ _ _ _ _ checked1876.1 (.cons _ _ _ _ _ checked1877.1 (.cons _ _ _ _ _ checked1878.1 (.cons _ _ _ _ _ checked1879.1 (.cons _ _ _ _ _ checked1880.1 (.cons _ _ _ _ _ checked1881.1 (.cons _ _ _ _ _ checked1882.1 (.cons _ _ _ _ _ checked1883.1 (.cons _ _ _ _ _ checked1884.1 (.cons _ _ _ _ _ checked1885.1 (.cons _ _ _ _ _ checked1886.1 (.cons _ _ _ _ _ checked1887.1 (.cons _ _ _ _ _ checked1888.1 (.cons _ _ _ _ _ checked1889.1 (.cons _ _ _ _ _ checked1890.1 (.cons _ _ _ _ _ checked1891.1 (.cons _ _ _ _ _ checked1892.1 (.cons _ _ _ _ _ checked1893.1 (.cons _ _ _ _ _ checked1894.1 (.cons _ _ _ _ _ checked1895.1 (.cons _ _ _ _ _ checked1896.1 (.cons _ _ _ _ _ checked1897.1 (.cons _ _ _ _ _ checked1898.1 (.cons _ _ _ _ _ checked1899.1 (.cons _ _ _ _ _ checked1900.1 (.cons _ _ _ _ _ checked1901.1 (.cons _ _ _ _ _ checked1902.1 (.cons _ _ _ _ _ checked1903.1 (.cons _ _ _ _ _ checked1904.1 (.cons _ _ _ _ _ checked1905.1 (.cons _ _ _ _ _ checked1906.1 (.cons _ _ _ _ _ checked1907.1 (.cons _ _ _ _ _ checked1908.1 (.cons _ _ _ _ _ checked1909.1 (.cons _ _ _ _ _ checked1910.1 (.cons _ _ _ _ _ checked1911.1 (.cons _ _ _ _ _ checked1912.1 (.cons _ _ _ _ _ checked1913.1 (.cons _ _ _ _ _ checked1914.1 (.cons _ _ _ _ _ checked1915.1 (.cons _ _ _ _ _ checked1916.1 (.cons _ _ _ _ _ checked1917.1 (.cons _ _ _ _ _ checked1918.1 (.cons _ _ _ _ _ checked1919.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked29 : partBytes29=statementBytes 1880 (partOps29.map lower) ∧ partBytes29.length=3461 := by
  constructor
  · exact (chain_exact partChain29).trans (body_exact innerBlocks29 1880)
  · simp only [partBytes29,WordSource.chunk_sizes_exact,innerBytes29,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1856.2,checked1857.2,checked1858.2,checked1859.2,checked1860.2,checked1861.2,checked1862.2,checked1863.2,checked1864.2,checked1865.2,checked1866.2,checked1867.2,checked1868.2,checked1869.2,checked1870.2,checked1871.2,checked1872.2,checked1873.2,checked1874.2,checked1875.2,checked1876.2,checked1877.2,checked1878.2,checked1879.2,checked1880.2,checked1881.2,checked1882.2,checked1883.2,checked1884.2,checked1885.2,checked1886.2,checked1887.2,checked1888.2,checked1889.2,checked1890.2,checked1891.2,checked1892.2,checked1893.2,checked1894.2,checked1895.2,checked1896.2,checked1897.2,checked1898.2,checked1899.2,checked1900.2,checked1901.2,checked1902.2,checked1903.2,checked1904.2,checked1905.2,checked1906.2,checked1907.2,checked1908.2,checked1909.2,checked1910.2,checked1911.2,checked1912.2,checked1913.2,checked1914.2,checked1915.2,checked1916.2,checked1917.2,checked1918.2,checked1919.2]
    decide
theorem partLength29 : partOps29.length=64 := by
  simp only [partOps29,innerBlocks29,op1856,op1857,op1858,op1859,op1860,op1861,op1862,op1863,op1864,op1865,op1866,op1867,op1868,op1869,op1870,op1871,op1872,op1873,op1874,op1875,op1876,op1877,op1878,op1879,op1880,op1881,op1882,op1883,op1884,op1885,op1886,op1887,op1888,op1889,op1890,op1891,op1892,op1893,op1894,op1895,op1896,op1897,op1898,op1899,op1900,op1901,op1902,op1903,op1904,op1905,op1906,op1907,op1908,op1909,op1910,op1911,op1912,op1913,op1914,op1915,op1916,op1917,op1918,op1919,List.flatten_cons,List.flatten_nil,List.length_append,List.length_cons,List.length_nil]
end ArtifactSHABlocks
