import ArtifactSHABlocks
import Core033.SourceBlockControl
namespace SHASourceControls
open Core033 Core033.WordIR Core033.WordSource Core033.WordSourceBlocks Core033.SourceBlockControl ArtifactSHABlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def firstTail : Bytes := innerBytes0.tail.flatten++actualBody.tail.flatten++actualFooter
theorem first_decomposition : actualBytes=actualHeader++bytes0++firstTail := by
  simp only [actualBytes,actualBody,partBytes0,innerBytes0,firstTail,List.tail_cons,List.flatten_cons,List.flatten_nil,List.nil_append,List.append_nil,List.append_assoc]
theorem first_accepted : validate SHAMaterialized.program (actualHeader++bytes0++firstTail)=true := by
  rw [←first_decomposition]
  exact actual_validated
theorem header_accepted : validate SHAMaterialized.program ([]++actualHeader++(actualBody.flatten++actualFooter))=true := by
  simpa only [List.nil_append,List.append_assoc,actualBytes] using actual_validated
theorem footer_accepted : validate SHAMaterialized.program ((actualHeader++actualBody.flatten)++actualFooter++[])=true := by
  simpa only [List.append_nil,actualBytes] using actual_validated
def changed0 : Bytes := ("    let r00000018: u32 = r00000016.rotate_left(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem component0_rejected : decide (changed0=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole0_rejected : validate SHAMaterialized.program (actualHeader++changed0++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed0 firstTail first_accepted
    (same_checked_component bytes0 changed0 (statementBytes 24 (op0.map lower)) checked0.1 component0_rejected)
def changed1 : Bytes := ("    let r00000018: u32 = r00000016.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem component1_rejected : decide (changed1=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole1_rejected : validate SHAMaterialized.program (actualHeader++changed1++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed1 firstTail first_accepted
    (same_checked_component bytes0 changed1 (statementBytes 24 (op0.map lower)) checked0.1 component1_rejected)
def changed2 : Bytes := ("    let r00000018: u32 = r00000017.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem component2_rejected : decide (changed2=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole2_rejected : validate SHAMaterialized.program (actualHeader++changed2++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed2 firstTail first_accepted
    (same_checked_component bytes0 changed2 (statementBytes 24 (op0.map lower)) checked0.1 component2_rejected)
def changed3 : Bytes := ("    let r00000019: u32 = r00000016.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem component3_rejected : decide (changed3=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole3_rejected : validate SHAMaterialized.program (actualHeader++changed3++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed3 firstTail first_accepted
    (same_checked_component bytes0 changed3 (statementBytes 24 (op0.map lower)) checked0.1 component3_rejected)
def changed4 : Bytes := ("    let r00000018: u32 = r00000016.wrapping_add(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem component4_rejected : decide (changed4=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole4_rejected : validate SHAMaterialized.program (actualHeader++changed4++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed4 firstTail first_accepted
    (same_checked_component bytes0 changed4 (statementBytes 24 (op0.map lower)) checked0.1 component4_rejected)
def changed5 : Bytes := ("    let r00000018: u32 = r00000016 >> 0x00000020_u32;\n" : String).toByteArray.data.toList
theorem component5_rejected : decide (changed5=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole5_rejected : validate SHAMaterialized.program (actualHeader++changed5++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed5 firstTail first_accepted
    (same_checked_component bytes0 changed5 (statementBytes 24 (op0.map lower)) checked0.1 component5_rejected)
def changed6 : Bytes := ("pub fn checker_step(\n    r00000000: i32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n) -> [u32; 0x00000008_usize] {\n" : String).toByteArray.data.toList
theorem component6_rejected : decide (changed6=headerBytes 24 8)=false := by core033_kernel_decide
theorem whole6_rejected : validate SHAMaterialized.program ([]++changed6++(actualBody.flatten++actualFooter))=false :=
  replacement_rejected SHAMaterialized.program [] actualHeader changed6 (actualBody.flatten++actualFooter) header_accepted
    (same_checked_component actualHeader changed6 (headerBytes 24 8) header_checked.1 component6_rejected)
def changed7 : Bytes := ("#[cfg(any())]\npub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n) -> [u32; 0x00000008_usize] {\n" : String).toByteArray.data.toList
theorem component7_rejected : decide (changed7=headerBytes 24 8)=false := by core033_kernel_decide
theorem whole7_rejected : validate SHAMaterialized.program ([]++changed7++(actualBody.flatten++actualFooter))=false :=
  replacement_rejected SHAMaterialized.program [] actualHeader changed7 (actualBody.flatten++actualFooter) header_accepted
    (same_checked_component actualHeader changed7 (headerBytes 24 8) header_checked.1 component7_rejected)
def changed8 : Bytes := ("macro_rules! changed { () => {} }\npub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n) -> [u32; 0x00000008_usize] {\n" : String).toByteArray.data.toList
theorem component8_rejected : decide (changed8=headerBytes 24 8)=false := by core033_kernel_decide
theorem whole8_rejected : validate SHAMaterialized.program ([]++changed8++(actualBody.flatten++actualFooter))=false :=
  replacement_rejected SHAMaterialized.program [] actualHeader changed8 (actualBody.flatten++actualFooter) header_accepted
    (same_checked_component actualHeader changed8 (headerBytes 24 8) header_checked.1 component8_rejected)
def changed9 : Bytes := ("    let r00000018: u32 = unsafe { r00000016.rotate_right(0x00000011_u32) };\n" : String).toByteArray.data.toList
theorem component9_rejected : decide (changed9=statementBytes 24 (op0.map lower))=false := by core033_kernel_decide
theorem whole9_rejected : validate SHAMaterialized.program (actualHeader++changed9++firstTail)=false :=
  replacement_rejected SHAMaterialized.program actualHeader bytes0 changed9 firstTail first_accepted
    (same_checked_component bytes0 changed9 (statementBytes 24 (op0.map lower)) checked0.1 component9_rejected)
def changed10 : Bytes := ("    [r00000000, r00000949, r0000094a, r0000094b, r0000094c, r0000094d, r0000094e, r0000094f]\n}\n" : String).toByteArray.data.toList
theorem component10_rejected : decide (changed10=suffix SHAMaterialized.outputRegisters)=false := by core033_kernel_decide
theorem whole10_rejected : validate SHAMaterialized.program ((actualHeader++actualBody.flatten)++changed10++[])=false :=
  replacement_rejected SHAMaterialized.program (actualHeader++actualBody.flatten) actualFooter changed10 [] footer_accepted
    (same_checked_component actualFooter changed10 (suffix SHAMaterialized.outputRegisters) footer_checked.1 component10_rejected)
def changed11 : Bytes := ("    [r00000948, r00000949, r0000094a, r0000094b, r0000094c, r0000094d, r0000094e, r0000094f]\n}\npub fn extra() -> u32 { 0 }\n" : String).toByteArray.data.toList
theorem component11_rejected : decide (changed11=suffix SHAMaterialized.outputRegisters)=false := by core033_kernel_decide
theorem whole11_rejected : validate SHAMaterialized.program ((actualHeader++actualBody.flatten)++changed11++[])=false :=
  replacement_rejected SHAMaterialized.program (actualHeader++actualBody.flatten) actualFooter changed11 [] footer_accepted
    (same_checked_component actualFooter changed11 (suffix SHAMaterialized.outputRegisters) footer_checked.1 component11_rejected)
end SHASourceControls
