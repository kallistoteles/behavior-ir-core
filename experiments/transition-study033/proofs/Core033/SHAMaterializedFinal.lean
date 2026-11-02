import Core033.SHAMaterialized
namespace Core033.SHAMaterialized
open WordIR WordStage
set_option Elab.async false
set_option maxHeartbeats 4000000
set_option maxRecDepth 8192
def ops113 : List WordIR.Op := [.badd 7 2294,.badd 6 2321,.badd 5 2348,.badd 4 2375,.badd 3 2293,.badd 2 2320,.badd 1 2347,.badd 0 2374]++ops112
attribute [irreducible] ops113
theorem len113 : ops113.length=2360 := by simp only [ops113,List.length_append,List.length_cons,List.length_nil,len112]
def b113 : Builder := ⟨24,ops113⟩
def outputRegisters : List Nat := [2376,2377,2378,2379,2380,2381,2382,2383]
theorem feed_exact : SHA256Compiled.feedForward (SHA256Compiled.inputState.registers.zip s112.registers) b112 = (outputRegisters,b113) := by
  simp only [SHA256Compiled.feedForward,SHA256Compiled.inputState,SHA256Stage.State.registers,s112,List.zip_cons_cons,List.zip_nil_left,b112,WordStage.emit,Builder.next,List.length_cons,len112]
  unfold outputRegisters b113 ops113
  rfl
theorem scheduled_exact : SHA256Compiled.scheduled=(w48,b48) := by
  unfold SHA256Compiled.scheduled
  have initialBuilder : Builder.empty 24=b0 := by unfold Builder.empty b0 ops0;rfl
  have initialWords : Array.ofFn SHA256Compiled.inputBlock=w0 := rfl
  rw [initialBuilder,initialWords]
  simp only [show List.range 48=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47] by decide,SHA256Schedule.loop,step1,step2,step3,step4,step5,step6,step7,step8,step9,step10,step11,step12,step13,step14,step15,step16,step17,step18,step19,step20,step21,step22,step23,step24,step25,step26,step27,step28,step29,step30,step31,step32,step33,step34,step35,step36,step37,step38,step39,step40,step41,step42,step43,step44,step45,step46,step47,step48]
theorem working_exact : SHA256Compiled.working=(s112,b112) := by
  unfold SHA256Compiled.working
  rw [scheduled_exact]
  change SHA256Compiled.roundLoop (List.range 64) s48 b48 w48=(s112,b112)
  have round0 : SHA256Stage.round b48 s48 (SHA256.constants.getD 0 0) (w48.getD 0 0)=(s49,b49) := step49
  have round1 : SHA256Stage.round b49 s49 (SHA256.constants.getD 1 0) (w48.getD 1 0)=(s50,b50) := step50
  have round2 : SHA256Stage.round b50 s50 (SHA256.constants.getD 2 0) (w48.getD 2 0)=(s51,b51) := step51
  have round3 : SHA256Stage.round b51 s51 (SHA256.constants.getD 3 0) (w48.getD 3 0)=(s52,b52) := step52
  have round4 : SHA256Stage.round b52 s52 (SHA256.constants.getD 4 0) (w48.getD 4 0)=(s53,b53) := step53
  have round5 : SHA256Stage.round b53 s53 (SHA256.constants.getD 5 0) (w48.getD 5 0)=(s54,b54) := step54
  have round6 : SHA256Stage.round b54 s54 (SHA256.constants.getD 6 0) (w48.getD 6 0)=(s55,b55) := step55
  have round7 : SHA256Stage.round b55 s55 (SHA256.constants.getD 7 0) (w48.getD 7 0)=(s56,b56) := step56
  have round8 : SHA256Stage.round b56 s56 (SHA256.constants.getD 8 0) (w48.getD 8 0)=(s57,b57) := step57
  have round9 : SHA256Stage.round b57 s57 (SHA256.constants.getD 9 0) (w48.getD 9 0)=(s58,b58) := step58
  have round10 : SHA256Stage.round b58 s58 (SHA256.constants.getD 10 0) (w48.getD 10 0)=(s59,b59) := step59
  have round11 : SHA256Stage.round b59 s59 (SHA256.constants.getD 11 0) (w48.getD 11 0)=(s60,b60) := step60
  have round12 : SHA256Stage.round b60 s60 (SHA256.constants.getD 12 0) (w48.getD 12 0)=(s61,b61) := step61
  have round13 : SHA256Stage.round b61 s61 (SHA256.constants.getD 13 0) (w48.getD 13 0)=(s62,b62) := step62
  have round14 : SHA256Stage.round b62 s62 (SHA256.constants.getD 14 0) (w48.getD 14 0)=(s63,b63) := step63
  have round15 : SHA256Stage.round b63 s63 (SHA256.constants.getD 15 0) (w48.getD 15 0)=(s64,b64) := step64
  have round16 : SHA256Stage.round b64 s64 (SHA256.constants.getD 16 0) (w48.getD 16 0)=(s65,b65) := step65
  have round17 : SHA256Stage.round b65 s65 (SHA256.constants.getD 17 0) (w48.getD 17 0)=(s66,b66) := step66
  have round18 : SHA256Stage.round b66 s66 (SHA256.constants.getD 18 0) (w48.getD 18 0)=(s67,b67) := step67
  have round19 : SHA256Stage.round b67 s67 (SHA256.constants.getD 19 0) (w48.getD 19 0)=(s68,b68) := step68
  have round20 : SHA256Stage.round b68 s68 (SHA256.constants.getD 20 0) (w48.getD 20 0)=(s69,b69) := step69
  have round21 : SHA256Stage.round b69 s69 (SHA256.constants.getD 21 0) (w48.getD 21 0)=(s70,b70) := step70
  have round22 : SHA256Stage.round b70 s70 (SHA256.constants.getD 22 0) (w48.getD 22 0)=(s71,b71) := step71
  have round23 : SHA256Stage.round b71 s71 (SHA256.constants.getD 23 0) (w48.getD 23 0)=(s72,b72) := step72
  have round24 : SHA256Stage.round b72 s72 (SHA256.constants.getD 24 0) (w48.getD 24 0)=(s73,b73) := step73
  have round25 : SHA256Stage.round b73 s73 (SHA256.constants.getD 25 0) (w48.getD 25 0)=(s74,b74) := step74
  have round26 : SHA256Stage.round b74 s74 (SHA256.constants.getD 26 0) (w48.getD 26 0)=(s75,b75) := step75
  have round27 : SHA256Stage.round b75 s75 (SHA256.constants.getD 27 0) (w48.getD 27 0)=(s76,b76) := step76
  have round28 : SHA256Stage.round b76 s76 (SHA256.constants.getD 28 0) (w48.getD 28 0)=(s77,b77) := step77
  have round29 : SHA256Stage.round b77 s77 (SHA256.constants.getD 29 0) (w48.getD 29 0)=(s78,b78) := step78
  have round30 : SHA256Stage.round b78 s78 (SHA256.constants.getD 30 0) (w48.getD 30 0)=(s79,b79) := step79
  have round31 : SHA256Stage.round b79 s79 (SHA256.constants.getD 31 0) (w48.getD 31 0)=(s80,b80) := step80
  have round32 : SHA256Stage.round b80 s80 (SHA256.constants.getD 32 0) (w48.getD 32 0)=(s81,b81) := step81
  have round33 : SHA256Stage.round b81 s81 (SHA256.constants.getD 33 0) (w48.getD 33 0)=(s82,b82) := step82
  have round34 : SHA256Stage.round b82 s82 (SHA256.constants.getD 34 0) (w48.getD 34 0)=(s83,b83) := step83
  have round35 : SHA256Stage.round b83 s83 (SHA256.constants.getD 35 0) (w48.getD 35 0)=(s84,b84) := step84
  have round36 : SHA256Stage.round b84 s84 (SHA256.constants.getD 36 0) (w48.getD 36 0)=(s85,b85) := step85
  have round37 : SHA256Stage.round b85 s85 (SHA256.constants.getD 37 0) (w48.getD 37 0)=(s86,b86) := step86
  have round38 : SHA256Stage.round b86 s86 (SHA256.constants.getD 38 0) (w48.getD 38 0)=(s87,b87) := step87
  have round39 : SHA256Stage.round b87 s87 (SHA256.constants.getD 39 0) (w48.getD 39 0)=(s88,b88) := step88
  have round40 : SHA256Stage.round b88 s88 (SHA256.constants.getD 40 0) (w48.getD 40 0)=(s89,b89) := step89
  have round41 : SHA256Stage.round b89 s89 (SHA256.constants.getD 41 0) (w48.getD 41 0)=(s90,b90) := step90
  have round42 : SHA256Stage.round b90 s90 (SHA256.constants.getD 42 0) (w48.getD 42 0)=(s91,b91) := step91
  have round43 : SHA256Stage.round b91 s91 (SHA256.constants.getD 43 0) (w48.getD 43 0)=(s92,b92) := step92
  have round44 : SHA256Stage.round b92 s92 (SHA256.constants.getD 44 0) (w48.getD 44 0)=(s93,b93) := step93
  have round45 : SHA256Stage.round b93 s93 (SHA256.constants.getD 45 0) (w48.getD 45 0)=(s94,b94) := step94
  have round46 : SHA256Stage.round b94 s94 (SHA256.constants.getD 46 0) (w48.getD 46 0)=(s95,b95) := step95
  have round47 : SHA256Stage.round b95 s95 (SHA256.constants.getD 47 0) (w48.getD 47 0)=(s96,b96) := step96
  have round48 : SHA256Stage.round b96 s96 (SHA256.constants.getD 48 0) (w48.getD 48 0)=(s97,b97) := step97
  have round49 : SHA256Stage.round b97 s97 (SHA256.constants.getD 49 0) (w48.getD 49 0)=(s98,b98) := step98
  have round50 : SHA256Stage.round b98 s98 (SHA256.constants.getD 50 0) (w48.getD 50 0)=(s99,b99) := step99
  have round51 : SHA256Stage.round b99 s99 (SHA256.constants.getD 51 0) (w48.getD 51 0)=(s100,b100) := step100
  have round52 : SHA256Stage.round b100 s100 (SHA256.constants.getD 52 0) (w48.getD 52 0)=(s101,b101) := step101
  have round53 : SHA256Stage.round b101 s101 (SHA256.constants.getD 53 0) (w48.getD 53 0)=(s102,b102) := step102
  have round54 : SHA256Stage.round b102 s102 (SHA256.constants.getD 54 0) (w48.getD 54 0)=(s103,b103) := step103
  have round55 : SHA256Stage.round b103 s103 (SHA256.constants.getD 55 0) (w48.getD 55 0)=(s104,b104) := step104
  have round56 : SHA256Stage.round b104 s104 (SHA256.constants.getD 56 0) (w48.getD 56 0)=(s105,b105) := step105
  have round57 : SHA256Stage.round b105 s105 (SHA256.constants.getD 57 0) (w48.getD 57 0)=(s106,b106) := step106
  have round58 : SHA256Stage.round b106 s106 (SHA256.constants.getD 58 0) (w48.getD 58 0)=(s107,b107) := step107
  have round59 : SHA256Stage.round b107 s107 (SHA256.constants.getD 59 0) (w48.getD 59 0)=(s108,b108) := step108
  have round60 : SHA256Stage.round b108 s108 (SHA256.constants.getD 60 0) (w48.getD 60 0)=(s109,b109) := step109
  have round61 : SHA256Stage.round b109 s109 (SHA256.constants.getD 61 0) (w48.getD 61 0)=(s110,b110) := step110
  have round62 : SHA256Stage.round b110 s110 (SHA256.constants.getD 62 0) (w48.getD 62 0)=(s111,b111) := step111
  have round63 : SHA256Stage.round b111 s111 (SHA256.constants.getD 63 0) (w48.getD 63 0)=(s112,b112) := step112
  simp only [show List.range 64=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63] by decide,SHA256Compiled.roundLoop,round0,round1,round2,round3,round4,round5,round6,round7,round8,round9,round10,round11,round12,round13,round14,round15,round16,round17,round18,round19,round20,round21,round22,round23,round24,round25,round26,round27,round28,round29,round30,round31,round32,round33,round34,round35,round36,round37,round38,round39,round40,round41,round42,round43,round44,round45,round46,round47,round48,round49,round50,round51,round52,round53,round54,round55,round56,round57,round58,round59,round60,round61,round62,round63]
theorem finished_exact : SHA256Compiled.finished=(outputRegisters,b113) := by
  unfold SHA256Compiled.finished
  rw [working_exact]
  exact feed_exact
def program : WordIR.Program := ⟨24,b113.operations,outputRegisters⟩
theorem program_exact : SHA256Compiled.program=program := by
  unfold SHA256Compiled.program
  rw [finished_exact]
  rfl
theorem program_meaning (inputs : Nat → WordIR.Word) : program.eval inputs=SHA256.stateWords (SHA256.compress (SHA256Compiled.expectedState inputs) (SHA256Compiled.expectedBlock inputs)) := by
  rw [←program_exact]
  exact SHA256Compiled.program_meaning inputs
end Core033.SHAMaterialized
