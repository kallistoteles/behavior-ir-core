# Core 035: återanvänd verifierat arbete med samma semantik

**Slutsats: lokal återanvändning fungerar för det prövade fragmentet, men den kompletta gamla operationen är fortfarande för dyr. Kandidaten är villkorad och ska inte produktionsintegreras på detta underlag.**

Vid 256 objekt och 8 historiksteg minskade den diagnostiska medianen för semantiskt arbete från 126.573 till 19.887 ms. Hela övergången minskade från 880.003 till 657.212 ms (25.32%). Den direkt uppmätta cykeln med första steg och fortsatt `finish` minskade från 1751.053 till 1374.764 ms (21.49%). Varje median bygger på tre observationer; inga p50/p95-, kapacitets- eller signifikanspåståenden görs.

Den frysta matrisen genomfördes med 60 tidsobservationer och 20 separata arbetsobservationer. Varje prov fick en ny faktiskt kontrollerad förälder och en direkt efterföljande övergång i samma process. Alla fullständiga originaljämförelser stämde. Programkontroll, historiketablering inklusive initiala vyer och eftergranskning redovisas separat från den vanliga operationen.

| Objekt / historik | R hela ms | G hela ms | V hela ms | GV hela ms | GV semantiskt ms |
| --- | ---: | ---: | ---: | ---: | ---: |
| 2 / 8 | 40.233 | 43.353 | 42.949 | 32.096 | 2.358 |
| 64 / 8 | 230.082 | 233.829 | 262.344 | 183.687 | 6.582 |
| 256 / 8 | 880.003 | 873.522 | 965.517 | 657.212 | 19.887 |
| 2 / 32 | 45.140 | 44.561 | 53.151 | 41.745 | 2.496 |
| 2 / 128 | 42.118 | 46.145 | 50.371 | 41.975 | 2.502 |

R återetablerar den valda motorgiltigheten och använder originalvägen. G behåller den giltighetsgrunden med i övrigt originalarbete. V använder underhållna vyer och en ny prepared invocation, men måste återetablera deras grund inne i varje operation. GV kombinerar behållen grund och kontrollerade vyer. Alla använder samma `Store<Capture>`, fullständiga LD8-modul med åtta handlingar och tre ursprungliga Safety-policyer. Optimeringen väljs bara för det exakt avgränsade `finish`-fragmentet; övriga fall använder originalvägen.

G eliminerade den valda redundanta fulla passagen. Vid 256 objekt sjönk den motsvarande medianfasen från 12.008045 ms i R till 247 ns i G, men den kompletta medianen förbättrades bara från 880.003 till 873.522 ms. V utan behållen grund behövde cirka 298.147 ms återetablering och blev långsammare än R. Den större vinsten kräver kombinationen. Det är diagnostiska komponentresultat under den frysta försöksordningen, inte en statistiskt skattad generell interaktion.

GV klarade de fördeklarerade kriterierna vid 256 objekt: semantisk median≤50 ms ochhögst en fjärdedel av R, samt komplett median≤80% av R. Ingen av de fem kompletta GV-medianerna eller direkt uppmätta cykelmedianerna översteg 110% av motsvarande R. Det klarar de numeriska kriterierna för detta försök; kvalitets- och korrekthetspremisser bedöms separat.

Arbetskontrollen visade noll orelaterade regelrader, gamla historiska beslutsbesök, provider-materialiseringar och kompletta snapshot-kopior i GV:s prövade lokala väg. Underhållna vyer och versioner stämde med ny full originalrekonstruktion. Det matematiska arbetsmåttet räknar logiska åtkomster; native använder bland annat BTree-index med åtkomstkostnad beroende av storlek. Historikappend, minneshantering, kodning och fullständiga originalrapporter får egna fysiska kostnader.

Det kompletta utdataarbetet växer fortfarande. För första steg och fortsättning tillsammans var originalunderlaget 31,416 byte vid 2 objekt,254,058 vid 64 och943,530 vid 256. Den konservativt bokförda semantiska fasens tid växte också från 2.358 till 19.887 ms; försöket visar ingen konstant native-latens för godtycklig population. Exakta allocator-/relokeringsbyte saknas och redovisas som otillgängliga. Full originalproduktion, identitetsarbete, faktiskt minnescommit, nödvändigt underhåll, förväntad slutpunktskontroll och resultatets fil-fsync ingår i den kompletta operationen. Detta är inte beständig applikationspublicering: Q6 är fortfarande obevisad.

Tolv exakt specificerade Lean-rötter klarade typ- och transitiv axiomkontroll samt färsk kernelkontroll. De gäller godtyckliga ändliga, typade tillstånd i den deklarerade modellen. En separat kontroll reproducerade kedjan och alla fem originalfall. Kopplingen från native Rust, projektion och originalkodare till modellen är fortfarande uttryckligen villkorad. Finita tester eller en giltig sluttillstånd ersätter inte ett generellt bevis för exakt native-exekvering. Både hela originalobservationen och det ursprungliga kommando-/felbeteendet jämfördes.

Den kanoniska grinden passerade format och workspace-Clippy, men stoppades under `cargo test` av `CacheGrowthLimit`: den observerade cachen var 2,173,816,717 byte mot 2 GiB-gränsen. Alla ägda processer avslutades. Inget semantiskt fel rapporterades före stoppet. Scoped-kontrollerna passerade och det uttryckligen fördeklarerade resursundantaget tillät forskningsmatrisen efter rensning av den egna byggcachen. **Den fulla kanoniska grinden är inte godkänd och integration förblir BLOCKED.** Inga gränser höjdes, prover ersattes eller klockor startades om.

De frysta native-kontrollerna passerade 26 tester, sex protokolltester och sex tester av originalobservationen; Python-sviten passerade 60 tester. C01–C20 har faktisk evidens. C01/C02 inkluderar avvisning av identiska körbara filer och en korrekt märkt GV-post med verkligt inaktiv V-mekanism. De negativa klassificeringarna är kontroller över verkliga stängda körposter, inte ett separat kompilerat illvilligt program. Äldre utvecklingsfel, resursstopp och korrigerade kontroll-/exportförsök är bevarade separat.

Nästa avgränsade arkitektursteg bör behålla den verifierade grundens och beroendevyernas tydliga gränser, täppa till den native-formella kopplingen för `finish`, och separat pröva ett kompakt övergångsunderlag med exakt rekonstruktion av originalrapporten. Ett sådant underlag skulle ändra observations-/identitetskontrakt och behöver en egen specifikation; det införs inte här. Ytterligare optimering av samma stora format kan inte på detta resultat beskrivas som lösningen på hela Cores millisekundmål.

Den separata valideringen och de valda historiska bevarandekontrollerna avslutades efter 5653.302 sekunder inom ursprungliga 7200 sekunder. Fyra äldre manifest och 185 bundna indata kontrollerades; de två orelaterade 033-filerna finns kvar. Hela den historiska arkivmängden har inte lästs om.

Underlag: [fryst bedömning](evidence/campaign-001/assessment/assessment.json), [hela kampanjindexet](evidence/campaign-001/closed-artifacts.json), [oberoende validering](evidence/validation-001/result.json), [bevarandekontroll](evidence/validation-001/preservation.json), [kanoniskt resursstopp](evidence/campaign-001/roles/quality/canonical/receipt.json), [tolv bevisrötter](evidence/campaign-001/roles/proofs/proof-check/result.json), [reproduktion](reproduction.md).
