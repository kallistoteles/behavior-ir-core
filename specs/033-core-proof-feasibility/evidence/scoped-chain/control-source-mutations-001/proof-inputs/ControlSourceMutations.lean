import ActualControlBytes
import Core033.SourceBlockControl
namespace ControlSourceMutations
open Core033 WordIR WordSource WordSourceBlocks SourceBlockControl ActualControlBytes
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def before0 : Bytes := actualHeader
def after0 : Bytes := bytes1++bytes2++bytes3++bytes4++bytes5++bytes6++bytes7++bytes8++bytes9++bytes10++bytes11++bytes12++bytes13++bytes14++bytes15++bytes16++bytes17++bytes18++bytes19++bytes20++bytes21++bytes22++bytes23++bytes24++bytes25++bytes26++bytes27++bytes28++bytes29++bytes30++bytes31++bytes32++bytes33++bytes34++bytes35++bytes36++bytes37++bytes38++bytes39++bytes40++bytes41++bytes42++bytes43++bytes44++bytes45++bytes46++bytes47++bytes48++bytes49++bytes50++bytes51++bytes52++actualFooter
theorem decomposed0 : actualBytes=before0++bytes0++after0 := by
  simp only [actualBytes,actualBody,before0,after0,List.flatten_cons,List.flatten_nil,List.append_nil,List.append_assoc]
theorem accepted0 : validate ActualControlIR.program (before0++bytes0++after0)=true := by
  rw [←decomposed0]
  exact actual_validated
def before8 : Bytes := actualHeader++bytes0++bytes1++bytes2++bytes3++bytes4++bytes5++bytes6++bytes7
def after8 : Bytes := bytes9++bytes10++bytes11++bytes12++bytes13++bytes14++bytes15++bytes16++bytes17++bytes18++bytes19++bytes20++bytes21++bytes22++bytes23++bytes24++bytes25++bytes26++bytes27++bytes28++bytes29++bytes30++bytes31++bytes32++bytes33++bytes34++bytes35++bytes36++bytes37++bytes38++bytes39++bytes40++bytes41++bytes42++bytes43++bytes44++bytes45++bytes46++bytes47++bytes48++bytes49++bytes50++bytes51++bytes52++actualFooter
theorem decomposed8 : actualBytes=before8++bytes8++after8 := by
  simp only [actualBytes,actualBody,before8,after8,List.flatten_cons,List.flatten_nil,List.append_nil,List.append_assoc]
theorem accepted8 : validate ActualControlIR.program (before8++bytes8++after8)=true := by
  rw [←decomposed8]
  exact actual_validated
def bad0 : Bytes := ("    let r00000007: u32 = r00000000 ^ r00000002;\n" : String).toByteArray.data.toList
theorem component0 : decide (bad0=statementBytes 7 (op0.map lower))=false := by core033_kernel_decide
theorem rejected0 : validate ActualControlIR.program (before0++bad0++after0)=false :=
  replacement_rejected ActualControlIR.program before0 bytes0 bad0 after0 accepted0
    (same_checked_component bytes0 bad0 _ checked0.1 component0)
def bad1 : Bytes := ("    let r00000007: u32 = r00000000 + r00000002;\n" : String).toByteArray.data.toList
theorem component1 : decide (bad1=statementBytes 7 (op0.map lower))=false := by core033_kernel_decide
theorem rejected1 : validate ActualControlIR.program (before0++bad1++after0)=false :=
  replacement_rejected ActualControlIR.program before0 bytes0 bad1 after0 accepted0
    (same_checked_component bytes0 bad1 _ checked0.1 component1)
def bad2 : Bytes := ("    let r00000007: u32 = r00000000.wrapping_add(r00000003);\n" : String).toByteArray.data.toList
theorem component2 : decide (bad2=statementBytes 7 (op0.map lower))=false := by core033_kernel_decide
theorem rejected2 : validate ActualControlIR.program (before0++bad2++after0)=false :=
  replacement_rejected ActualControlIR.program before0 bytes0 bad2 after0 accepted0
    (same_checked_component bytes0 bad2 _ checked0.1 component2)
def bad3 : Bytes := ("    let r00000008: u32 = r00000000.wrapping_add(r00000002);\n" : String).toByteArray.data.toList
theorem component3 : decide (bad3=statementBytes 7 (op0.map lower))=false := by core033_kernel_decide
theorem rejected3 : validate ActualControlIR.program (before0++bad3++after0)=false :=
  replacement_rejected ActualControlIR.program before0 bytes0 bad3 after0 accepted0
    (same_checked_component bytes0 bad3 _ checked0.1 component3)
def bad4 : Bytes := ("    let r0000000f: u32 = r0000000e >> 0x0000001e_u32;\n" : String).toByteArray.data.toList
theorem component4 : decide (bad4=statementBytes 15 (op8.map lower))=false := by core033_kernel_decide
theorem rejected4 : validate ActualControlIR.program (before8++bad4++after8)=false :=
  replacement_rejected ActualControlIR.program before8 bytes8 bad4 after8 accepted8
    (same_checked_component bytes8 bad4 _ checked8.1 component4)
def bad5 : Bytes := ("    let r0000000f: u32 = r0000000e >> 0x00000020_u32;\n" : String).toByteArray.data.toList
theorem component5 : decide (bad5=statementBytes 15 (op8.map lower))=false := by core033_kernel_decide
theorem rejected5 : validate ActualControlIR.program (before8++bad5++after8)=false :=
  replacement_rejected ActualControlIR.program before8 bytes8 bad5 after8 accepted8
    (same_checked_component bytes8 bad5 _ checked8.1 component5)
end ControlSourceMutations
