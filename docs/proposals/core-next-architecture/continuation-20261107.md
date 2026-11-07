# Fortsatt Core-utredning, 2026-11-07

**Beslutsresultat: Rework kvarstår.** Tre nya faktiska kryptografiska identitetsprövningar är avslutade. Samtliga verifierar sina fullständiga förväntade resultat, men ingen motiverar att bygga hela den starka synkrona Core-kedjan kring den prövade profilen på referensmaskinen. STARK-verifieringen tog 48 ms i en ny process; dess bevisproduktion tog 379 s. Ingen komplett millisekundlösning, säkerhetsekvivalent vinnare eller positiv G1-bedömning är etablerad.

Detta fortsätter [femstegsunderlaget](README.md). Originalundersökning 033 och dess Rework ligger fast. Körningarna finns i nya daterade kataloger; originalets Core-implementation och frysta bevisrelationer har inte byggts om.

[Arkitekturkandidaten](architecture-decision-20261107.md) sammanför konsekvenserna till ansvar, giltighetsgrund, finalitetsprofiler och fortsatta bygggrindar.

## Två faktiska kryptografiska kedjor

Samma 43 heltalsord används som initial och förväntad ändpunkt. Användarkretsen är identitet och innehåller **ingen Core-logik eller autentiserat tillstånd**. Nova gör konstruktionens första steg, det första räknarsteg som inte är en ny fold och därefter ett verkligt ackumuleringssteg. Båda försöken producerar ett faktiskt komprimerat bevis, kontrollerar alla ändpunktsord och låter en ny process läsa materialet och verifiera det fullständiga förväntade resultatet.

| Observerad del | A1: preprocessing/IPA båda kurvorna | B: preprocessing/HyperKZG primärt, standard/IPA sekundärt |
| --- | ---: | ---: |
| Kall parameterframtagning/laddning | 137,81 s | 6,65 s |
| Verkligt ackumuleringssteg | 600 ms | 649 ms |
| Komprimeringsnycklar | 9,66 s | 7,54 s |
| Beviskomprimering | 633,24 s | 88,20 s |
| Slutkontroll med nyckel i minnet | 7,78 s | 354 ms |
| Ny process, laddning till fullständigt slutbesked | 46,27 s | 1,60 s |
| Verifieringsnyckel | 21 515 944 byte | 6 536 152 byte |
| Komprimerat bevis | 13 136 byte | 13 952 byte |

**Detta är enskilda diagnostiska observationer, inte p50/p95.** Profilerna har olika kurvor, konstruktioner och tillitsantaganden och får inte presenteras som en säkerhetsekvivalent speedup. Båda har en arbetstråd och CPU-affinitet till en processor på Xeon X5670. Parameter-/nyckelarbete, serialisering och processstart redovisas i rådata. Ingen summa av fasernas medianer används som slutlatens.

Varje ny konsument avvisade tre specifika fel genom sin faktiska acceptansväg: fel fullständig förväntad ändpunkt, fel förväntad verifieringsnyckelhash och extra avslutande byte i beviset. Det är användbara men begränsade kontroller. De etablerar inte Core-ursprung, hela historiken, K:s motsvarighet till kretsen eller beständig publicering.

A1 planerade tre piloter. Den första producentkörningen tog 793 s, vilket gör tre sådana oförenliga med scenariots 1800 s. Kontrollern stoppades utan budgethöjning. Den separata första verifieringen avbröts då för tidigt och är bevarad som avbruten; en ny separat verifiering slutfördes och därefter kördes de tre kontrollerna. En pilot etablerar inte det ursprungliga tresampleskriteriet eller ett kvantilutfall. B planerade uttryckligen en enda inledande smoke-körning och slutförde den med kontrollerna inom 112 s.

Underlag: [A1:s bedömning](../../../experiments/proof-backend-screen-20261107/results/assessment.json), [B:s bedömning](../../../experiments/hyperkzg-preflight-20261107/results/assessment.json), [A1:s metod/körkällor](../../../experiments/proof-backend-screen-20261107/README.md). Stora provernycklar är bevarade som bitexakta Git-chunks med genomförd återställningskontroll; originalens scope uppgraderas inte av arkiveringen.

## B:s verkliga parametrar och kvarvarande säkerhetsskillnader

Produktionsvägens BN256-kapacitetsupptäckt krävde **371 699 generatorer**, vilket innebär minsta power 19. Den hämtade Hermez-filen är **604 062 872 byte** och matchar exakt det i förväg valda officiella BLAKE2b-512-värdet. Transporten sparas i 64 MiB-delar under samma filstorleksgräns som övriga försök. Därefter kopieras endast originalets råa sektioner: 524 288 G1-punkter och två G2-punkter, utan ny nyckelgenerering eller ändrad backend-källkod.

Den producerade tresektionsfilen är 33 554 780 byte. Ett uttryckligt byteidentiskt kompatibilitetsalias används för Novas filnamnssökning; materialet benämns **Hermez**, aldrig PSE0080. Framgångsrik faktisk parameterladdning följdes av bevisproduktion och verifiering. Loadern kontrollerar laddade punkter; det är inte en ny oberoende verifiering av hela ceremonitranskriptet. Tilliten till publicerat digest/transkript, implementationskod och minst en ärlig bidragsgivare är uttryckliga antaganden. Inga kända-tau-testparametrar används. [Proveniens och kopieringskvitto](../../../experiments/hyperkzg-preflight-20261107/artifacts/verified-pruned/receipt.json).

[Säkerhetsjämförelsen](security-comparability-20261107.md) markerar ekvivalens som **NotEstablished**. Pasta-grupparbete, BN254:s pairing-/target-field-antaganden och STARK-parametrar är olika frågor. Vi hävdar varken strikt 128 bitar för samtliga eller en säkerhetsekvivalent rangordning.

## STARK: verkligt bevis, snabb kontroll men dyr produktion

SDK 3.0.6 verifierade ett verkligt succinct STARK-kvitto för den fasta 43-ordsgästen. Utvecklingsläge var avstängt och enbart `InnerReceipt::Succinct` accepterades. Den lokala producenten var officiell `r0vm` 3.0.6 via explicit IPC; klienten/verifieraren kompilerades separat utan native proving-kärnor. Releasearkivets publicerade SHA-256 kontrollerades före körning. Producentens påstående var inte en acceptansgrund: verifieraren kontrollerade image-ID och hela journalresultatet själv.

| Observerad del | C: RISC Zero 3.0.6, standard succinct STARK |
| --- | ---: |
| Lokal bevisproduktion via IPC inklusive SDK-integritetskontroll | 379,187 s |
| Producentprocessen som helhet | 379,253 s |
| Ytterligare slutkontroll av image och alla 43 ord, samma process | 34,24 ms |
| Ny process: läsning, avkodning och full kontroll | 47,54 ms |
| Serialiserat kvitto | 223 922 byte |
| Gästsession | 1 segment, 65 536 totala cykler |

Det är **en observation** på en CPU, inte p50/p95 eller en etablerad nykonsumentgrind. Till skillnad från Nova-försöken är detta en gästexekvering, inte en upprepad ackumulerad Core-relation. Den bevisar inte initiering, ett historiskt prefix eller beständig publicering. Jämför därför varken råtider eller säkerhet som om profilerna bevisade samma kompletta produktkontrakt.

Den nya verifierarprocessen avvisade fel förväntat slutresultat, fel image-ID, extra avslutande bevisbyte och ett välformat SDK-Fake-kvitto genom de avsedda acceptanskontrollerna. Den villkorade wire-mutationen av journalen kördes inte: det förväntade bytemönstret var inte entydigt lokaliserat. Detta står kvar som `NotRunUnestablishedJournalByteLocation`, inte ett passerat test. [Maskinläsbar bedömning](../../../experiments/stark-preflight-20261107/results/assessment.json), [råresultat](../../../experiments/stark-preflight-20261107/results/stark-summary.json) och [metod/källor](../../../experiments/stark-preflight-20261107/README.md).

Förberedelsen var också kostsam och redovisas separat. Det officiella gästrustarkivet verifierades och installerades privat. NixOS-loader och LLD-dispatch behövde registrerade privata startwrappers; originalens ELF-bytes ändrades inte. Gästbygget slutfördes på 247 s och klientbygget på 235 s. Tidigare GCC-hostbygge stoppades vid 900 s, dess enda fortsättning vid cirka 643 s och en separat Clang-profil vid 900 s. Dessa misslyckade konstruktioner är inte kryptografiska runtime-resultat och deras tid försvinner inte ur förberedelsekostnaden. Den ursprungliga fyratimmarsgränsen behölls.

[SDK-profilen](risc0-resolved-profile-20261107.md) skiljer avsiktligt olika interna versionsnummer från oavsiktlig drift. Interna versioner och kontrollerade parameterfiler matchar releasepinnen; hela det senare upplösta registret är inte identiskt med upstreams låsfil. Faktiska låsfiler och featuregrafer behålls. Säkerhetsuppskattningarna är inte etablerade som ekvivalenta med Nova-profilerna eller som strikt 128 bitar. Det snabba verifieringsutfallet innebär heller inte snabb bevisproduktion.

## Arkitekturbeslut efter försöken

Det här stärker skälen att utveckla **exakt K-semantik, autentiserat tillstånd, prefixbevis och beständig publicering som separata ansvar**. Ett byte av komprimeringsvariant räcker inte för de observerade kostnaderna. En korrekt identitetskrets etablerar heller inte en fysisk Core-K eller dess överensstämmelse med en kryptografisk relation.

Det oförändrade jämförelsekravet är fortfarande ett färdigt synkront certifikat och oberoende kontroll före certifierad commit. En modell med snabb lokal K och senare historikbevis är ett separat produktkontrakt. Den får inte införas genom att kalla en lokal kvittens för samma finalitet som en ny oberoende mottagare har verifierat.

Ingen full Core-kretsombyggnad mot dessa tre prövade profiler motiveras för det starka synkrona millisekundmålet. Det är ett avgränsat praktiskt byggbeslut utifrån uppmätt kostnad, inte en undre gräns för all framtida kryptografi. Ansvarsfördelningen i arkitekturkandidaten rekommenderas däremot: den bevarar värdet av korrekt K utan att låsa Core till en dyr proof-backend. Annan hårdvara, annan konstruktion eller annat finalitetskontrakt kräver ett nytt redovisat beslut och nya fullständiga prov.

## Vad genomgången av de fem stegen har etablerat

| Steg | Slutfört i denna fortsättning | Kvar före produktgodkännande |
| --- | --- | --- |
| 1. Tillit och verifieringskrav | Producent, ny mottagare, giltighetsgrund och auktoritativ gren är separerade | Uttryckligt produktbeslut om eventuellt annat finalitets-/tillitskontrakt |
| 2. Arkitektur och kontrakt | Fem modulansvar med samma bundna övergång och tydliga publiceringsskyldigheter | Körbar full K och maskinkontrollerad motsvarighet till respektive adapter |
| 3. Beviskandidater | Tre nya riktiga identitetsbevis, nya verifierarprocesser och specificerade avvisningskontroller | Ingen kandidat är godkänd för fulla synkrona millisekundkravet; ingen säkerhetsekvivalent rangordning |
| 4. Gemensam autentiserad övergång | Sex referensfall och 24 fulla SHA-256-trädrötter återkontrollerade | Init→två riktiga K-övergångar→ny mottagare är inte implementerat/bevisat av kandidaterna |
| 5. Hela kostnaden | Förberedelse, stopp, faktisk bevis-/verifieringskostnad och separata kontrakt redovisade | Beständig full kedja, återstart/konflikt/kommandon och 100 hela observationer per cell är inte körda |

Detta avslutar den avgränsade backendförprövningen med **Rework**, inte den fulla Core-implementationen. Vi går inte vidare med dyra autentiserade helkretsar när redan identitetsförprövningen saknar tidsmarginal. För att bygga en slutlig lösning återstår antingen en ny trovärdig synkron bevisprofil eller ett uttryckligt annat produktkontrakt, och därefter de kvarstående korrekthets- och leveransgrindarna.

Verifiering inför publicering: [142 frysta indatabindingar](frozen-input-verification-20261107.json), [Nova-artefakternas hash och fulla chunk-byteåterställning](proof-artifact-verification-20261107.json), sex referensresultat/24 rötter samt syntax och lokala dokumentlänkar. [Kontrollscope och ej körda grindar](validation-20261107.json) redovisas uttryckligen. Detta ersätter inte oberoende full reproduktion eller 033:s öppna kvalitetsgrind.
