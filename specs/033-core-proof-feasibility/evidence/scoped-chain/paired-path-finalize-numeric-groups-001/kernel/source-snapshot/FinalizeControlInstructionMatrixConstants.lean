import Core033.R1CS
namespace FinalizeControlInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
def coefficient0 : Nat := 1
def coefficient1 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948096
def coefficient2 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948095
def coefficient3 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948093
def coefficient4 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948089
def coefficient5 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948081
def coefficient6 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948065
def coefficient7 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948033
def coefficient8 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362947969
def coefficient9 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362947841
def coefficient10 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362947585
def coefficient11 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362947073
def coefficient12 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362946049
def coefficient13 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362944001
def coefficient14 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362939905
def coefficient15 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362931713
def coefficient16 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362915329
def coefficient17 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362882561
def coefficient18 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362817025
def coefficient19 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362685953
def coefficient20 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362423809
def coefficient21 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393361899521
def coefficient22 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393360850945
def coefficient23 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393358753793
def coefficient24 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393354559489
def coefficient25 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393346170881
def coefficient26 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393329393665
def coefficient27 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393295839233
def coefficient28 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393228730369
def coefficient29 : Nat := 28948022309329048855892746252171976963363056481941647379679742748393094512641
def coefficient30 : Nat := 28948022309329048855892746252171976963363056481941647379679742748392826077185
def coefficient31 : Nat := 28948022309329048855892746252171976963363056481941647379679742748392289206273
def coefficient32 : Nat := 28948022309329048855892746252171976963363056481941647379679742748391215464449
def coefficient33 : Nat := 2
def coefficient34 : Nat := 28948022309329048855892746252171976963363056481941647379679742748389067980801
def rowFamily0 (wire0: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient0⟩],[⟨0,coefficient1⟩,⟨wire0,coefficient0⟩],[]⟩
def rowFamily1 (wire0 wire1 wire2 wire3 wire4 wire5 wire6 wire7 wire8 wire9 wire10 wire11 wire12 wire13 wire14 wire15 wire16 wire17 wire18 wire19 wire20 wire21 wire22 wire23 wire24 wire25 wire26 wire27 wire28 wire29 wire30 wire31 wire32: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient0⟩,⟨wire1,coefficient1⟩,⟨wire2,coefficient2⟩,⟨wire3,coefficient3⟩,⟨wire4,coefficient4⟩,⟨wire5,coefficient5⟩,⟨wire6,coefficient6⟩,⟨wire7,coefficient7⟩,⟨wire8,coefficient8⟩,⟨wire9,coefficient9⟩,⟨wire10,coefficient10⟩,⟨wire11,coefficient11⟩,⟨wire12,coefficient12⟩,⟨wire13,coefficient13⟩,⟨wire14,coefficient14⟩,⟨wire15,coefficient15⟩,⟨wire16,coefficient16⟩,⟨wire17,coefficient17⟩,⟨wire18,coefficient18⟩,⟨wire19,coefficient19⟩,⟨wire20,coefficient20⟩,⟨wire21,coefficient21⟩,⟨wire22,coefficient22⟩,⟨wire23,coefficient23⟩,⟨wire24,coefficient24⟩,⟨wire25,coefficient25⟩,⟨wire26,coefficient26⟩,⟨wire27,coefficient27⟩,⟨wire28,coefficient28⟩,⟨wire29,coefficient29⟩,⟨wire30,coefficient30⟩,⟨wire31,coefficient31⟩,⟨wire32,coefficient32⟩],[⟨0,coefficient0⟩],[]⟩
def rowFamily2 (wire0: Nat) : Core033.R1CS.Row := ⟨[],[],[⟨wire0,coefficient0⟩]⟩
def rowFamily3 (wire0: Nat) : Core033.R1CS.Row := ⟨[⟨0,coefficient0⟩],[⟨0,coefficient0⟩],[⟨wire0,coefficient0⟩]⟩
def rowFamily4 (wire0 wire1 wire2: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient33⟩],[⟨wire1,coefficient0⟩],[⟨wire0,coefficient0⟩,⟨wire1,coefficient0⟩,⟨wire2,coefficient1⟩]⟩
def rowFamily5 (wire0 wire1: Nat) : Core033.R1CS.Row := ⟨[⟨0,coefficient0⟩,⟨wire0,coefficient1⟩],[⟨0,coefficient0⟩],[⟨wire1,coefficient0⟩]⟩
def rowFamily6 (wire0 wire1 wire2: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient0⟩],[⟨wire1,coefficient0⟩],[⟨wire2,coefficient0⟩]⟩
def rowFamily7 (wire0 wire1 wire2 wire3: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient0⟩,⟨wire1,coefficient0⟩,⟨wire2,coefficient1⟩,⟨wire3,coefficient34⟩],[⟨0,coefficient0⟩],[]⟩
def rowFamily8 (wire0 wire1: Nat) : Core033.R1CS.Row := ⟨[⟨wire0,coefficient0⟩,⟨wire1,coefficient1⟩],[⟨0,coefficient0⟩],[]⟩
def actualModulus : Nat := 28948022309329048855892746252171976963363056481941647379679742748393362948097
def actualVariableCount : Nat := 13815
def actualConstantOne : Nat := 0
def actualInputPorts : List Nat := [1]++[35]++[69]++[103]++[137]++[171]++[205]++[239]++[273]++[307]++[341]++[375]++[409]++[443]++[477]++[511]++[545]++[579]++[613]++[647]++[681]++[715]++[749]++[783]++[817]++[851]++[885]++[919]++[953]++[987]++[1021]++[1055]++[1089]++[1123]++[1157]++[1191]++[1225]++[1259]++[1293]++[1327]++[1361]++[1395]++[1429]++[1463]++[1497]++[1531]++[1565]++[1599]++[1633]++[1667]++[1701]++[1735]++[1769]++[1803]++[1837]++[1871]++[1905]++[1939]++[1973]++[2007]++[2041]++[2075]++[2109]++[2143]++[2177]++[2211]++[2245]++[2279]++[2313]++[2347]++[2381]++[2415]++[2449]++[2483]++[2517]++[2551]++[2585]++[2619]++[2653]++[2687]++[2721]++[2755]++[2789]++[2823]++[2857]++[2891]++[2925]++[2959]++[2993]++[3027]++[3061]++[3095]++[3129]++[3163]++[3197]++[3231]
def actualPrivatePorts : List Nat := List.range' 2 33++List.range' 36 33++List.range' 70 33++List.range' 104 33++List.range' 138 33++List.range' 172 33++List.range' 206 33++List.range' 240 33++List.range' 274 33++List.range' 308 33++List.range' 342 33++List.range' 376 33++List.range' 410 33++List.range' 444 33++List.range' 478 33++List.range' 512 33++List.range' 546 33++List.range' 580 33++List.range' 614 33++List.range' 648 33++List.range' 682 33++List.range' 716 33++List.range' 750 33++List.range' 784 33++List.range' 818 33++List.range' 852 33++List.range' 886 33++List.range' 920 33++List.range' 954 33++List.range' 988 33++List.range' 1022 33++List.range' 1056 33++List.range' 1090 33++List.range' 1124 33++List.range' 1158 33++List.range' 1192 33++List.range' 1226 33++List.range' 1260 33++List.range' 1294 33++List.range' 1328 33++List.range' 1362 33++List.range' 1396 33++List.range' 1430 33++List.range' 1464 33++List.range' 1498 33++List.range' 1532 33++List.range' 1566 33++List.range' 1600 33++List.range' 1634 33++List.range' 1668 33++List.range' 1702 33++List.range' 1736 33++List.range' 1770 33++List.range' 1804 33++List.range' 1838 33++List.range' 1872 33++List.range' 1906 33++List.range' 1940 33++List.range' 1974 33++List.range' 2008 33++List.range' 2042 33++List.range' 2076 33++List.range' 2110 33++List.range' 2144 33++List.range' 2178 33++List.range' 2212 33++List.range' 2246 33++List.range' 2280 33++List.range' 2314 33++List.range' 2348 33++List.range' 2382 33++List.range' 2416 33++List.range' 2450 33++List.range' 2484 33++List.range' 2518 33++List.range' 2552 33++List.range' 2586 33++List.range' 2620 33++List.range' 2654 33++List.range' 2688 33++List.range' 2722 33++List.range' 2756 33++List.range' 2790 33++List.range' 2824 33++List.range' 2858 33++List.range' 2892 33++List.range' 2926 33++List.range' 2960 33++List.range' 2994 33++List.range' 3028 33++List.range' 3062 33++List.range' 3096 33++List.range' 3130 33++List.range' 3164 33++List.range' 3198 33++List.range' 3232 10471
def actualOutputPorts : List Nat := List.range' 13703 112
end FinalizeControlInstructionData
