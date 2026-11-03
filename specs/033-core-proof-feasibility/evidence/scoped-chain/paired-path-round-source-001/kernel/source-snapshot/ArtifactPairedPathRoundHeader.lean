import Core033.SourceParameters
import Core033.KernelDecide
namespace ArtifactPairedPathRoundHeader
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def line0 : Bytes := ("    r00000000: u32,\n" : String).toByteArray.data.toList
theorem lineChecked0 : line0=parameterBytes 0 1 ∧ line0.length=20 := by core033_kernel_decide
def line1 : Bytes := ("    r00000001: u32,\n" : String).toByteArray.data.toList
theorem lineChecked1 : line1=parameterBytes 1 1 ∧ line1.length=20 := by core033_kernel_decide
def line2 : Bytes := ("    r00000002: u32,\n" : String).toByteArray.data.toList
theorem lineChecked2 : line2=parameterBytes 2 1 ∧ line2.length=20 := by core033_kernel_decide
def line3 : Bytes := ("    r00000003: u32,\n" : String).toByteArray.data.toList
theorem lineChecked3 : line3=parameterBytes 3 1 ∧ line3.length=20 := by core033_kernel_decide
def line4 : Bytes := ("    r00000004: u32,\n" : String).toByteArray.data.toList
theorem lineChecked4 : line4=parameterBytes 4 1 ∧ line4.length=20 := by core033_kernel_decide
def line5 : Bytes := ("    r00000005: u32,\n" : String).toByteArray.data.toList
theorem lineChecked5 : line5=parameterBytes 5 1 ∧ line5.length=20 := by core033_kernel_decide
def line6 : Bytes := ("    r00000006: u32,\n" : String).toByteArray.data.toList
theorem lineChecked6 : line6=parameterBytes 6 1 ∧ line6.length=20 := by core033_kernel_decide
def line7 : Bytes := ("    r00000007: u32,\n" : String).toByteArray.data.toList
theorem lineChecked7 : line7=parameterBytes 7 1 ∧ line7.length=20 := by core033_kernel_decide
def line8 : Bytes := ("    r00000008: u32,\n" : String).toByteArray.data.toList
theorem lineChecked8 : line8=parameterBytes 8 1 ∧ line8.length=20 := by core033_kernel_decide
def line9 : Bytes := ("    r00000009: u32,\n" : String).toByteArray.data.toList
theorem lineChecked9 : line9=parameterBytes 9 1 ∧ line9.length=20 := by core033_kernel_decide
def line10 : Bytes := ("    r0000000a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked10 : line10=parameterBytes 10 1 ∧ line10.length=20 := by core033_kernel_decide
def line11 : Bytes := ("    r0000000b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked11 : line11=parameterBytes 11 1 ∧ line11.length=20 := by core033_kernel_decide
def line12 : Bytes := ("    r0000000c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked12 : line12=parameterBytes 12 1 ∧ line12.length=20 := by core033_kernel_decide
def line13 : Bytes := ("    r0000000d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked13 : line13=parameterBytes 13 1 ∧ line13.length=20 := by core033_kernel_decide
def line14 : Bytes := ("    r0000000e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked14 : line14=parameterBytes 14 1 ∧ line14.length=20 := by core033_kernel_decide
def line15 : Bytes := ("    r0000000f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked15 : line15=parameterBytes 15 1 ∧ line15.length=20 := by core033_kernel_decide
def line16 : Bytes := ("    r00000010: u32,\n" : String).toByteArray.data.toList
theorem lineChecked16 : line16=parameterBytes 16 1 ∧ line16.length=20 := by core033_kernel_decide
def line17 : Bytes := ("    r00000011: u32,\n" : String).toByteArray.data.toList
theorem lineChecked17 : line17=parameterBytes 17 1 ∧ line17.length=20 := by core033_kernel_decide
def line18 : Bytes := ("    r00000012: u32,\n" : String).toByteArray.data.toList
theorem lineChecked18 : line18=parameterBytes 18 1 ∧ line18.length=20 := by core033_kernel_decide
def line19 : Bytes := ("    r00000013: u32,\n" : String).toByteArray.data.toList
theorem lineChecked19 : line19=parameterBytes 19 1 ∧ line19.length=20 := by core033_kernel_decide
def line20 : Bytes := ("    r00000014: u32,\n" : String).toByteArray.data.toList
theorem lineChecked20 : line20=parameterBytes 20 1 ∧ line20.length=20 := by core033_kernel_decide
def line21 : Bytes := ("    r00000015: u32,\n" : String).toByteArray.data.toList
theorem lineChecked21 : line21=parameterBytes 21 1 ∧ line21.length=20 := by core033_kernel_decide
def line22 : Bytes := ("    r00000016: u32,\n" : String).toByteArray.data.toList
theorem lineChecked22 : line22=parameterBytes 22 1 ∧ line22.length=20 := by core033_kernel_decide
def line23 : Bytes := ("    r00000017: u32,\n" : String).toByteArray.data.toList
theorem lineChecked23 : line23=parameterBytes 23 1 ∧ line23.length=20 := by core033_kernel_decide
def line24 : Bytes := ("    r00000018: u32,\n" : String).toByteArray.data.toList
theorem lineChecked24 : line24=parameterBytes 24 1 ∧ line24.length=20 := by core033_kernel_decide
def line25 : Bytes := ("    r00000019: u32,\n" : String).toByteArray.data.toList
theorem lineChecked25 : line25=parameterBytes 25 1 ∧ line25.length=20 := by core033_kernel_decide
def line26 : Bytes := ("    r0000001a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked26 : line26=parameterBytes 26 1 ∧ line26.length=20 := by core033_kernel_decide
def line27 : Bytes := ("    r0000001b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked27 : line27=parameterBytes 27 1 ∧ line27.length=20 := by core033_kernel_decide
def line28 : Bytes := ("    r0000001c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked28 : line28=parameterBytes 28 1 ∧ line28.length=20 := by core033_kernel_decide
def line29 : Bytes := ("    r0000001d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked29 : line29=parameterBytes 29 1 ∧ line29.length=20 := by core033_kernel_decide
def line30 : Bytes := ("    r0000001e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked30 : line30=parameterBytes 30 1 ∧ line30.length=20 := by core033_kernel_decide
def line31 : Bytes := ("    r0000001f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked31 : line31=parameterBytes 31 1 ∧ line31.length=20 := by core033_kernel_decide
def line32 : Bytes := ("    r00000020: u32,\n" : String).toByteArray.data.toList
theorem lineChecked32 : line32=parameterBytes 32 1 ∧ line32.length=20 := by core033_kernel_decide
def line33 : Bytes := ("    r00000021: u32,\n" : String).toByteArray.data.toList
theorem lineChecked33 : line33=parameterBytes 33 1 ∧ line33.length=20 := by core033_kernel_decide
def line34 : Bytes := ("    r00000022: u32,\n" : String).toByteArray.data.toList
theorem lineChecked34 : line34=parameterBytes 34 1 ∧ line34.length=20 := by core033_kernel_decide
def line35 : Bytes := ("    r00000023: u32,\n" : String).toByteArray.data.toList
theorem lineChecked35 : line35=parameterBytes 35 1 ∧ line35.length=20 := by core033_kernel_decide
def line36 : Bytes := ("    r00000024: u32,\n" : String).toByteArray.data.toList
theorem lineChecked36 : line36=parameterBytes 36 1 ∧ line36.length=20 := by core033_kernel_decide
def line37 : Bytes := ("    r00000025: u32,\n" : String).toByteArray.data.toList
theorem lineChecked37 : line37=parameterBytes 37 1 ∧ line37.length=20 := by core033_kernel_decide
def line38 : Bytes := ("    r00000026: u32,\n" : String).toByteArray.data.toList
theorem lineChecked38 : line38=parameterBytes 38 1 ∧ line38.length=20 := by core033_kernel_decide
def line39 : Bytes := ("    r00000027: u32,\n" : String).toByteArray.data.toList
theorem lineChecked39 : line39=parameterBytes 39 1 ∧ line39.length=20 := by core033_kernel_decide
def line40 : Bytes := ("    r00000028: u32,\n" : String).toByteArray.data.toList
theorem lineChecked40 : line40=parameterBytes 40 1 ∧ line40.length=20 := by core033_kernel_decide
def line41 : Bytes := ("    r00000029: u32,\n" : String).toByteArray.data.toList
theorem lineChecked41 : line41=parameterBytes 41 1 ∧ line41.length=20 := by core033_kernel_decide
def line42 : Bytes := ("    r0000002a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked42 : line42=parameterBytes 42 1 ∧ line42.length=20 := by core033_kernel_decide
def line43 : Bytes := ("    r0000002b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked43 : line43=parameterBytes 43 1 ∧ line43.length=20 := by core033_kernel_decide
def line44 : Bytes := ("    r0000002c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked44 : line44=parameterBytes 44 1 ∧ line44.length=20 := by core033_kernel_decide
def line45 : Bytes := ("    r0000002d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked45 : line45=parameterBytes 45 1 ∧ line45.length=20 := by core033_kernel_decide
def line46 : Bytes := ("    r0000002e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked46 : line46=parameterBytes 46 1 ∧ line46.length=20 := by core033_kernel_decide
def line47 : Bytes := ("    r0000002f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked47 : line47=parameterBytes 47 1 ∧ line47.length=20 := by core033_kernel_decide
def line48 : Bytes := ("    r00000030: u32,\n" : String).toByteArray.data.toList
theorem lineChecked48 : line48=parameterBytes 48 1 ∧ line48.length=20 := by core033_kernel_decide
def line49 : Bytes := ("    r00000031: u32,\n" : String).toByteArray.data.toList
theorem lineChecked49 : line49=parameterBytes 49 1 ∧ line49.length=20 := by core033_kernel_decide
def line50 : Bytes := ("    r00000032: u32,\n" : String).toByteArray.data.toList
theorem lineChecked50 : line50=parameterBytes 50 1 ∧ line50.length=20 := by core033_kernel_decide
def line51 : Bytes := ("    r00000033: u32,\n" : String).toByteArray.data.toList
theorem lineChecked51 : line51=parameterBytes 51 1 ∧ line51.length=20 := by core033_kernel_decide
def line52 : Bytes := ("    r00000034: u32,\n" : String).toByteArray.data.toList
theorem lineChecked52 : line52=parameterBytes 52 1 ∧ line52.length=20 := by core033_kernel_decide
def line53 : Bytes := ("    r00000035: u32,\n" : String).toByteArray.data.toList
theorem lineChecked53 : line53=parameterBytes 53 1 ∧ line53.length=20 := by core033_kernel_decide
def line54 : Bytes := ("    r00000036: u32,\n" : String).toByteArray.data.toList
theorem lineChecked54 : line54=parameterBytes 54 1 ∧ line54.length=20 := by core033_kernel_decide
def line55 : Bytes := ("    r00000037: u32,\n" : String).toByteArray.data.toList
theorem lineChecked55 : line55=parameterBytes 55 1 ∧ line55.length=20 := by core033_kernel_decide
def line56 : Bytes := ("    r00000038: u32,\n" : String).toByteArray.data.toList
theorem lineChecked56 : line56=parameterBytes 56 1 ∧ line56.length=20 := by core033_kernel_decide
def line57 : Bytes := ("    r00000039: u32,\n" : String).toByteArray.data.toList
theorem lineChecked57 : line57=parameterBytes 57 1 ∧ line57.length=20 := by core033_kernel_decide
def line58 : Bytes := ("    r0000003a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked58 : line58=parameterBytes 58 1 ∧ line58.length=20 := by core033_kernel_decide
def line59 : Bytes := ("    r0000003b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked59 : line59=parameterBytes 59 1 ∧ line59.length=20 := by core033_kernel_decide
def line60 : Bytes := ("    r0000003c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked60 : line60=parameterBytes 60 1 ∧ line60.length=20 := by core033_kernel_decide
def line61 : Bytes := ("    r0000003d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked61 : line61=parameterBytes 61 1 ∧ line61.length=20 := by core033_kernel_decide
def line62 : Bytes := ("    r0000003e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked62 : line62=parameterBytes 62 1 ∧ line62.length=20 := by core033_kernel_decide
def line63 : Bytes := ("    r0000003f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked63 : line63=parameterBytes 63 1 ∧ line63.length=20 := by core033_kernel_decide
def line64 : Bytes := ("    r00000040: u32,\n" : String).toByteArray.data.toList
theorem lineChecked64 : line64=parameterBytes 64 1 ∧ line64.length=20 := by core033_kernel_decide
def line65 : Bytes := ("    r00000041: u32,\n" : String).toByteArray.data.toList
theorem lineChecked65 : line65=parameterBytes 65 1 ∧ line65.length=20 := by core033_kernel_decide
def line66 : Bytes := ("    r00000042: u32,\n" : String).toByteArray.data.toList
theorem lineChecked66 : line66=parameterBytes 66 1 ∧ line66.length=20 := by core033_kernel_decide
def line67 : Bytes := ("    r00000043: u32,\n" : String).toByteArray.data.toList
theorem lineChecked67 : line67=parameterBytes 67 1 ∧ line67.length=20 := by core033_kernel_decide
def line68 : Bytes := ("    r00000044: u32,\n" : String).toByteArray.data.toList
theorem lineChecked68 : line68=parameterBytes 68 1 ∧ line68.length=20 := by core033_kernel_decide
def line69 : Bytes := ("    r00000045: u32,\n" : String).toByteArray.data.toList
theorem lineChecked69 : line69=parameterBytes 69 1 ∧ line69.length=20 := by core033_kernel_decide
def line70 : Bytes := ("    r00000046: u32,\n" : String).toByteArray.data.toList
theorem lineChecked70 : line70=parameterBytes 70 1 ∧ line70.length=20 := by core033_kernel_decide
def line71 : Bytes := ("    r00000047: u32,\n" : String).toByteArray.data.toList
theorem lineChecked71 : line71=parameterBytes 71 1 ∧ line71.length=20 := by core033_kernel_decide
def line72 : Bytes := ("    r00000048: u32,\n" : String).toByteArray.data.toList
theorem lineChecked72 : line72=parameterBytes 72 1 ∧ line72.length=20 := by core033_kernel_decide
def line73 : Bytes := ("    r00000049: u32,\n" : String).toByteArray.data.toList
theorem lineChecked73 : line73=parameterBytes 73 1 ∧ line73.length=20 := by core033_kernel_decide
def line74 : Bytes := ("    r0000004a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked74 : line74=parameterBytes 74 1 ∧ line74.length=20 := by core033_kernel_decide
def line75 : Bytes := ("    r0000004b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked75 : line75=parameterBytes 75 1 ∧ line75.length=20 := by core033_kernel_decide
def line76 : Bytes := ("    r0000004c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked76 : line76=parameterBytes 76 1 ∧ line76.length=20 := by core033_kernel_decide
def line77 : Bytes := ("    r0000004d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked77 : line77=parameterBytes 77 1 ∧ line77.length=20 := by core033_kernel_decide
def line78 : Bytes := ("    r0000004e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked78 : line78=parameterBytes 78 1 ∧ line78.length=20 := by core033_kernel_decide
def line79 : Bytes := ("    r0000004f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked79 : line79=parameterBytes 79 1 ∧ line79.length=20 := by core033_kernel_decide
def line80 : Bytes := ("    r00000050: u32,\n" : String).toByteArray.data.toList
theorem lineChecked80 : line80=parameterBytes 80 1 ∧ line80.length=20 := by core033_kernel_decide
def line81 : Bytes := ("    r00000051: u32,\n" : String).toByteArray.data.toList
theorem lineChecked81 : line81=parameterBytes 81 1 ∧ line81.length=20 := by core033_kernel_decide
def line82 : Bytes := ("    r00000052: u32,\n" : String).toByteArray.data.toList
theorem lineChecked82 : line82=parameterBytes 82 1 ∧ line82.length=20 := by core033_kernel_decide
def line83 : Bytes := ("    r00000053: u32,\n" : String).toByteArray.data.toList
theorem lineChecked83 : line83=parameterBytes 83 1 ∧ line83.length=20 := by core033_kernel_decide
def line84 : Bytes := ("    r00000054: u32,\n" : String).toByteArray.data.toList
theorem lineChecked84 : line84=parameterBytes 84 1 ∧ line84.length=20 := by core033_kernel_decide
def line85 : Bytes := ("    r00000055: u32,\n" : String).toByteArray.data.toList
theorem lineChecked85 : line85=parameterBytes 85 1 ∧ line85.length=20 := by core033_kernel_decide
def line86 : Bytes := ("    r00000056: u32,\n" : String).toByteArray.data.toList
theorem lineChecked86 : line86=parameterBytes 86 1 ∧ line86.length=20 := by core033_kernel_decide
def line87 : Bytes := ("    r00000057: u32,\n" : String).toByteArray.data.toList
theorem lineChecked87 : line87=parameterBytes 87 1 ∧ line87.length=20 := by core033_kernel_decide
def line88 : Bytes := ("    r00000058: u32,\n" : String).toByteArray.data.toList
theorem lineChecked88 : line88=parameterBytes 88 1 ∧ line88.length=20 := by core033_kernel_decide
def line89 : Bytes := ("    r00000059: u32,\n" : String).toByteArray.data.toList
theorem lineChecked89 : line89=parameterBytes 89 1 ∧ line89.length=20 := by core033_kernel_decide
def line90 : Bytes := ("    r0000005a: u32,\n" : String).toByteArray.data.toList
theorem lineChecked90 : line90=parameterBytes 90 1 ∧ line90.length=20 := by core033_kernel_decide
def line91 : Bytes := ("    r0000005b: u32,\n" : String).toByteArray.data.toList
theorem lineChecked91 : line91=parameterBytes 91 1 ∧ line91.length=20 := by core033_kernel_decide
def line92 : Bytes := ("    r0000005c: u32,\n" : String).toByteArray.data.toList
theorem lineChecked92 : line92=parameterBytes 92 1 ∧ line92.length=20 := by core033_kernel_decide
def line93 : Bytes := ("    r0000005d: u32,\n" : String).toByteArray.data.toList
theorem lineChecked93 : line93=parameterBytes 93 1 ∧ line93.length=20 := by core033_kernel_decide
def line94 : Bytes := ("    r0000005e: u32,\n" : String).toByteArray.data.toList
theorem lineChecked94 : line94=parameterBytes 94 1 ∧ line94.length=20 := by core033_kernel_decide
def line95 : Bytes := ("    r0000005f: u32,\n" : String).toByteArray.data.toList
theorem lineChecked95 : line95=parameterBytes 95 1 ∧ line95.length=20 := by core033_kernel_decide
def parameters : List Bytes := [line0,line1,line2,line3,line4,line5,line6,line7,line8,line9,line10,line11,line12,line13,line14,line15,line16,line17,line18,line19,line20,line21,line22,line23,line24,line25,line26,line27,line28,line29,line30,line31,line32,line33,line34,line35,line36,line37,line38,line39,line40,line41,line42,line43,line44,line45,line46,line47,line48,line49,line50,line51,line52,line53,line54,line55,line56,line57,line58,line59,line60,line61,line62,line63,line64,line65,line66,line67,line68,line69,line70,line71,line72,line73,line74,line75,line76,line77,line78,line79,line80,line81,line82,line83,line84,line85,line86,line87,line88,line89,line90,line91,line92,line93,line94,line95]
def preamble : Bytes := ("pub fn checker_step(\n" : String).toByteArray.data.toList
def ending : Bytes := (") -> [u32; 0x000000bb_usize] {\n" : String).toByteArray.data.toList
def actualHeader : Bytes := preamble++parameters.flatten++ending
theorem preambleChecked : preamble=Codec.textBytes "pub fn checker_step(\n" ∧ preamble.length=21 := by core033_kernel_decide
theorem endingChecked : ending=Codec.textBytes ") -> [u32; 0x"++hexDigits 8 187++Codec.textBytes "_usize] {\n" ∧ ending.length=31 := by core033_kernel_decide
theorem parameterChain : SourceParameters.Chain 0 parameters := by
  unfold parameters
  exact (.cons _ _ _ lineChecked0.1 (.cons _ _ _ lineChecked1.1 (.cons _ _ _ lineChecked2.1 (.cons _ _ _ lineChecked3.1 (.cons _ _ _ lineChecked4.1 (.cons _ _ _ lineChecked5.1 (.cons _ _ _ lineChecked6.1 (.cons _ _ _ lineChecked7.1 (.cons _ _ _ lineChecked8.1 (.cons _ _ _ lineChecked9.1 (.cons _ _ _ lineChecked10.1 (.cons _ _ _ lineChecked11.1 (.cons _ _ _ lineChecked12.1 (.cons _ _ _ lineChecked13.1 (.cons _ _ _ lineChecked14.1 (.cons _ _ _ lineChecked15.1 (.cons _ _ _ lineChecked16.1 (.cons _ _ _ lineChecked17.1 (.cons _ _ _ lineChecked18.1 (.cons _ _ _ lineChecked19.1 (.cons _ _ _ lineChecked20.1 (.cons _ _ _ lineChecked21.1 (.cons _ _ _ lineChecked22.1 (.cons _ _ _ lineChecked23.1 (.cons _ _ _ lineChecked24.1 (.cons _ _ _ lineChecked25.1 (.cons _ _ _ lineChecked26.1 (.cons _ _ _ lineChecked27.1 (.cons _ _ _ lineChecked28.1 (.cons _ _ _ lineChecked29.1 (.cons _ _ _ lineChecked30.1 (.cons _ _ _ lineChecked31.1 (.cons _ _ _ lineChecked32.1 (.cons _ _ _ lineChecked33.1 (.cons _ _ _ lineChecked34.1 (.cons _ _ _ lineChecked35.1 (.cons _ _ _ lineChecked36.1 (.cons _ _ _ lineChecked37.1 (.cons _ _ _ lineChecked38.1 (.cons _ _ _ lineChecked39.1 (.cons _ _ _ lineChecked40.1 (.cons _ _ _ lineChecked41.1 (.cons _ _ _ lineChecked42.1 (.cons _ _ _ lineChecked43.1 (.cons _ _ _ lineChecked44.1 (.cons _ _ _ lineChecked45.1 (.cons _ _ _ lineChecked46.1 (.cons _ _ _ lineChecked47.1 (.cons _ _ _ lineChecked48.1 (.cons _ _ _ lineChecked49.1 (.cons _ _ _ lineChecked50.1 (.cons _ _ _ lineChecked51.1 (.cons _ _ _ lineChecked52.1 (.cons _ _ _ lineChecked53.1 (.cons _ _ _ lineChecked54.1 (.cons _ _ _ lineChecked55.1 (.cons _ _ _ lineChecked56.1 (.cons _ _ _ lineChecked57.1 (.cons _ _ _ lineChecked58.1 (.cons _ _ _ lineChecked59.1 (.cons _ _ _ lineChecked60.1 (.cons _ _ _ lineChecked61.1 (.cons _ _ _ lineChecked62.1 (.cons _ _ _ lineChecked63.1 (.cons _ _ _ lineChecked64.1 (.cons _ _ _ lineChecked65.1 (.cons _ _ _ lineChecked66.1 (.cons _ _ _ lineChecked67.1 (.cons _ _ _ lineChecked68.1 (.cons _ _ _ lineChecked69.1 (.cons _ _ _ lineChecked70.1 (.cons _ _ _ lineChecked71.1 (.cons _ _ _ lineChecked72.1 (.cons _ _ _ lineChecked73.1 (.cons _ _ _ lineChecked74.1 (.cons _ _ _ lineChecked75.1 (.cons _ _ _ lineChecked76.1 (.cons _ _ _ lineChecked77.1 (.cons _ _ _ lineChecked78.1 (.cons _ _ _ lineChecked79.1 (.cons _ _ _ lineChecked80.1 (.cons _ _ _ lineChecked81.1 (.cons _ _ _ lineChecked82.1 (.cons _ _ _ lineChecked83.1 (.cons _ _ _ lineChecked84.1 (.cons _ _ _ lineChecked85.1 (.cons _ _ _ lineChecked86.1 (.cons _ _ _ lineChecked87.1 (.cons _ _ _ lineChecked88.1 (.cons _ _ _ lineChecked89.1 (.cons _ _ _ lineChecked90.1 (.cons _ _ _ lineChecked91.1 (.cons _ _ _ lineChecked92.1 (.cons _ _ _ lineChecked93.1 (.cons _ _ _ lineChecked94.1 (.cons _ _ _ lineChecked95.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem checked : actualHeader=headerBytes 96 187 ∧ actualHeader.length=1972 := by
  constructor
  · unfold actualHeader headerBytes
    rw [preambleChecked.1,SourceParameters.chain_exact parameterChain,endingChecked.1]
    rfl
  · simp only [actualHeader,List.length_append,WordSource.chunk_sizes_exact,parameters,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,preambleChecked.2,endingChecked.2,lineChecked0.2,lineChecked1.2,lineChecked2.2,lineChecked3.2,lineChecked4.2,lineChecked5.2,lineChecked6.2,lineChecked7.2,lineChecked8.2,lineChecked9.2,lineChecked10.2,lineChecked11.2,lineChecked12.2,lineChecked13.2,lineChecked14.2,lineChecked15.2,lineChecked16.2,lineChecked17.2,lineChecked18.2,lineChecked19.2,lineChecked20.2,lineChecked21.2,lineChecked22.2,lineChecked23.2,lineChecked24.2,lineChecked25.2,lineChecked26.2,lineChecked27.2,lineChecked28.2,lineChecked29.2,lineChecked30.2,lineChecked31.2,lineChecked32.2,lineChecked33.2,lineChecked34.2,lineChecked35.2,lineChecked36.2,lineChecked37.2,lineChecked38.2,lineChecked39.2,lineChecked40.2,lineChecked41.2,lineChecked42.2,lineChecked43.2,lineChecked44.2,lineChecked45.2,lineChecked46.2,lineChecked47.2,lineChecked48.2,lineChecked49.2,lineChecked50.2,lineChecked51.2,lineChecked52.2,lineChecked53.2,lineChecked54.2,lineChecked55.2,lineChecked56.2,lineChecked57.2,lineChecked58.2,lineChecked59.2,lineChecked60.2,lineChecked61.2,lineChecked62.2,lineChecked63.2,lineChecked64.2,lineChecked65.2,lineChecked66.2,lineChecked67.2,lineChecked68.2,lineChecked69.2,lineChecked70.2,lineChecked71.2,lineChecked72.2,lineChecked73.2,lineChecked74.2,lineChecked75.2,lineChecked76.2,lineChecked77.2,lineChecked78.2,lineChecked79.2,lineChecked80.2,lineChecked81.2,lineChecked82.2,lineChecked83.2,lineChecked84.2,lineChecked85.2,lineChecked86.2,lineChecked87.2,lineChecked88.2,lineChecked89.2,lineChecked90.2,lineChecked91.2,lineChecked92.2,lineChecked93.2,lineChecked94.2,lineChecked95.2]
    decide
end ArtifactPairedPathRoundHeader
