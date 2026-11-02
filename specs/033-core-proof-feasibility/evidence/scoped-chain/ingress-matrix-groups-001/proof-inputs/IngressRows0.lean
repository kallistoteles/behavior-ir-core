import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData1
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.rotr 0 8) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=5124 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.rotr 1 16) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=5124 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.badd 64 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows66=5388 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.rotr 2 24) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=5124 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.badd 66 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows68=5388 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.badd 68 3) := by core033_kernel_decide
theorem stats69 : actualRows69.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows69=5388 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.rotr 4 8) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=5124 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.rotr 5 16) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=5124 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.badd 70 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows72=5388 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.rotr 6 24) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=5124 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.badd 72 73) := by core033_kernel_decide
theorem stats74 : actualRows74.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows74=5388 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.badd 74 7) := by core033_kernel_decide
theorem stats75 : actualRows75.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows75=5388 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.rotr 8 8) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=5124 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.rotr 9 16) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=5124 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.badd 76 77) := by core033_kernel_decide
theorem stats78 : actualRows78.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows78=5388 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.rotr 10 24) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=5124 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.badd 78 79) := by core033_kernel_decide
theorem stats80 : actualRows80.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows80=5388 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.badd 80 11) := by core033_kernel_decide
theorem stats81 : actualRows81.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows81=5388 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.rotr 12 8) := by core033_kernel_decide
theorem stats82 : actualRows82.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows82=5124 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.rotr 13 16) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=5124 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.badd 82 83) := by core033_kernel_decide
theorem stats84 : actualRows84.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows84=5388 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.rotr 14 24) := by core033_kernel_decide
theorem stats85 : actualRows85.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows85=5124 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.badd 84 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows86=5388 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.badd 86 15) := by core033_kernel_decide
theorem stats87 : actualRows87.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows87=5388 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.rotr 16 8) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=5124 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.rotr 17 16) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=5124 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.badd 88 89) := by core033_kernel_decide
theorem stats90 : actualRows90.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows90=5388 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.rotr 18 24) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=5124 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.badd 90 91) := by core033_kernel_decide
theorem stats92 : actualRows92.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows92=5388 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.badd 92 19) := by core033_kernel_decide
theorem stats93 : actualRows93.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows93=5388 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.rotr 20 8) := by core033_kernel_decide
theorem stats94 : actualRows94.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows94=5124 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.rotr 21 16) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=5124 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.badd 94 95) := by core033_kernel_decide
theorem stats96 : actualRows96.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows96=5388 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.rotr 22 24) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=5124 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.badd 96 97) := by core033_kernel_decide
theorem stats98 : actualRows98.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows98=5388 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.badd 98 23) := by core033_kernel_decide
theorem stats99 : actualRows99.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows99=5388 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.rotr 24 8) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=5124 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.rotr 25 16) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=5124 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.badd 100 101) := by core033_kernel_decide
theorem stats102 : actualRows102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows102=5388 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.rotr 26 24) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=5124 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.badd 102 103) := by core033_kernel_decide
theorem stats104 : actualRows104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows104=5388 := by core033_kernel_decide
theorem rows105 : actualRows105=WordField.canonicalRows actualModulus 105 (.badd 104 27) := by core033_kernel_decide
theorem stats105 : actualRows105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows105=5388 := by core033_kernel_decide
theorem rows106 : actualRows106=WordField.canonicalRows actualModulus 106 (.rotr 28 8) := by core033_kernel_decide
theorem stats106 : actualRows106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows106=5124 := by core033_kernel_decide
theorem rows107 : actualRows107=WordField.canonicalRows actualModulus 107 (.rotr 29 16) := by core033_kernel_decide
theorem stats107 : actualRows107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows107=5124 := by core033_kernel_decide
theorem rows108 : actualRows108=WordField.canonicalRows actualModulus 108 (.badd 106 107) := by core033_kernel_decide
theorem stats108 : actualRows108.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows108=5388 := by core033_kernel_decide
theorem rows109 : actualRows109=WordField.canonicalRows actualModulus 109 (.rotr 30 24) := by core033_kernel_decide
theorem stats109 : actualRows109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows109=5124 := by core033_kernel_decide
theorem rows110 : actualRows110=WordField.canonicalRows actualModulus 110 (.badd 108 109) := by core033_kernel_decide
theorem stats110 : actualRows110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows110=5388 := by core033_kernel_decide
theorem rows111 : actualRows111=WordField.canonicalRows actualModulus 111 (.badd 110 31) := by core033_kernel_decide
theorem stats111 : actualRows111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows111=5388 := by core033_kernel_decide
theorem rows112 : actualRows112=WordField.canonicalRows actualModulus 112 (.rotr 32 8) := by core033_kernel_decide
theorem stats112 : actualRows112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows112=5124 := by core033_kernel_decide
theorem rows113 : actualRows113=WordField.canonicalRows actualModulus 113 (.rotr 33 16) := by core033_kernel_decide
theorem stats113 : actualRows113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows113=5124 := by core033_kernel_decide
theorem rows114 : actualRows114=WordField.canonicalRows actualModulus 114 (.badd 112 113) := by core033_kernel_decide
theorem stats114 : actualRows114.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows114=5388 := by core033_kernel_decide
theorem rows115 : actualRows115=WordField.canonicalRows actualModulus 115 (.rotr 34 24) := by core033_kernel_decide
theorem stats115 : actualRows115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows115=5124 := by core033_kernel_decide
theorem rows116 : actualRows116=WordField.canonicalRows actualModulus 116 (.badd 114 115) := by core033_kernel_decide
theorem stats116 : actualRows116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows116=5388 := by core033_kernel_decide
theorem rows117 : actualRows117=WordField.canonicalRows actualModulus 117 (.badd 116 35) := by core033_kernel_decide
theorem stats117 : actualRows117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows117=5388 := by core033_kernel_decide
theorem rows118 : actualRows118=WordField.canonicalRows actualModulus 118 (.rotr 36 8) := by core033_kernel_decide
theorem stats118 : actualRows118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows118=5124 := by core033_kernel_decide
theorem rows119 : actualRows119=WordField.canonicalRows actualModulus 119 (.rotr 37 16) := by core033_kernel_decide
theorem stats119 : actualRows119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows119=5124 := by core033_kernel_decide
theorem rows120 : actualRows120=WordField.canonicalRows actualModulus 120 (.badd 118 119) := by core033_kernel_decide
theorem stats120 : actualRows120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows120=5388 := by core033_kernel_decide
theorem rows121 : actualRows121=WordField.canonicalRows actualModulus 121 (.rotr 38 24) := by core033_kernel_decide
theorem stats121 : actualRows121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows121=5124 := by core033_kernel_decide
theorem rows122 : actualRows122=WordField.canonicalRows actualModulus 122 (.badd 120 121) := by core033_kernel_decide
theorem stats122 : actualRows122.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows122=5388 := by core033_kernel_decide
theorem rows123 : actualRows123=WordField.canonicalRows actualModulus 123 (.badd 122 39) := by core033_kernel_decide
theorem stats123 : actualRows123.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows123=5388 := by core033_kernel_decide
theorem rows124 : actualRows124=WordField.canonicalRows actualModulus 124 (.rotr 40 8) := by core033_kernel_decide
theorem stats124 : actualRows124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows124=5124 := by core033_kernel_decide
theorem rows125 : actualRows125=WordField.canonicalRows actualModulus 125 (.rotr 41 16) := by core033_kernel_decide
theorem stats125 : actualRows125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows125=5124 := by core033_kernel_decide
theorem rows126 : actualRows126=WordField.canonicalRows actualModulus 126 (.badd 124 125) := by core033_kernel_decide
theorem stats126 : actualRows126.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows126=5388 := by core033_kernel_decide
theorem rows127 : actualRows127=WordField.canonicalRows actualModulus 127 (.rotr 42 24) := by core033_kernel_decide
theorem stats127 : actualRows127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows127=5124 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows64++actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104++actualRows105++actualRows106++actualRows107++actualRows108++actualRows109++actualRows110++actualRows111++actualRows112++actualRows113++actualRows114++actualRows115++actualRows116++actualRows117++actualRows118++actualRows119++actualRows120++actualRows121++actualRows122++actualRows123++actualRows124++actualRows125++actualRows126++actualRows127
def partOps0 : List WordIR.Op := [.rotr 0 8,.rotr 1 16,.badd 64 65,.rotr 2 24,.badd 66 67,.badd 68 3,.rotr 4 8,.rotr 5 16,.badd 70 71,.rotr 6 24,.badd 72 73,.badd 74 7,.rotr 8 8,.rotr 9 16,.badd 76 77,.rotr 10 24,.badd 78 79,.badd 80 11,.rotr 12 8,.rotr 13 16,.badd 82 83,.rotr 14 24,.badd 84 85,.badd 86 15,.rotr 16 8,.rotr 17 16,.badd 88 89,.rotr 18 24,.badd 90 91,.badd 92 19,.rotr 20 8,.rotr 21 16,.badd 94 95,.rotr 22 24,.badd 96 97,.badd 98 23,.rotr 24 8,.rotr 25 16,.badd 100 101,.rotr 26 24,.badd 102 103,.badd 104 27,.rotr 28 8,.rotr 29 16,.badd 106 107,.rotr 30 24,.badd 108 109,.badd 110 31,.rotr 32 8,.rotr 33 16,.badd 112 113,.rotr 34 24,.badd 114 115,.badd 116 35,.rotr 36 8,.rotr 37 16,.badd 118 119,.rotr 38 24,.badd 120 121,.badd 122 39,.rotr 40 8,.rotr 41 16,.badd 124 125,.rotr 42 24]
theorem partExact0 : partRows0=WordField.rows actualModulus 64 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,rows105,rows106,rows107,rows108,rows109,rows110,rows111,rows112,rows113,rows114,rows115,rows116,rows117,rows118,rows119,rows120,rows121,rows122,rows123,rows124,rows125,rows126,rows127,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2207 ∧ MatrixRowBlocks.rowsWeight partRows0=336120 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats64.1,stats64.2,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2,stats105.1,stats105.2,stats106.1,stats106.2,stats107.1,stats107.2,stats108.1,stats108.2,stats109.1,stats109.2,stats110.1,stats110.2,stats111.1,stats111.2,stats112.1,stats112.2,stats113.1,stats113.2,stats114.1,stats114.2,stats115.1,stats115.2,stats116.1,stats116.2,stats117.1,stats117.2,stats118.1,stats118.2,stats119.1,stats119.2,stats120.1,stats120.2,stats121.1,stats121.2,stats122.1,stats122.2,stats123.1,stats123.2,stats124.1,stats124.2,stats125.1,stats125.2,stats126.1,stats126.2,stats127.1,stats127.2]
  decide
end IngressCheckedRows
