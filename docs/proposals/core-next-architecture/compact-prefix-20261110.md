# Core: samma exakta kedja med mindre bevisindata

2026-11-10. Uppföljning av [de fyra öppna slutmålen](completion-20261110.md)
och den tidigare bevisproducentens minnesfel. Detta är en separat, begränsad
forskningskörning med [deklarerad plan och resursbudget](../../../experiments/core-prefix-compact-20261110/PLAN.md).

**Slututfall: Rework. Inget certifikat producerades inom 900 sekunder.**
Försöket stoppades efter 900,203 s av tidsgränsen; det tidigare minnesfelet
återkom inte före stoppet. [Bevisförsökets råkvitto och bedömning](../../../experiments/core-prefix-compact-20261110/results/assessment-001.json).
Detta underkänner den prövade profilen som väg till synkron millisekundfinalitet.
Det är ingen omöjlighetssats om andra konstruktioner eller Core-idén.

Den lokala K-koden, initieringen, de två begärandena, SHA-träden med 256 nivåer
och hela det förväntade resultatet är oförändrade. Förändringarna är ett
kompakt vittnesformat och mindre VM-segment. Tomma syskon skickas som bitar
och återskapas från samma kontrollerade hashdefinition före K-kontrollen.
Felaktiga metadata repareras inte. Tidigare bevis eller mätfiler skrivs inte om.

## Vad exekveringen visar

| Mått | Föregående profil | Ny profil |
| --- | ---: | ---: |
| Vittne för båda övergångarna |138 425 byte |852 byte |
| Gästens användarcykler |13 927 133 |6 336 621 |
| Faktiska segment |16, exponent 20/19 |35, exponent 18 |
| Diagnostiskt exekveringsanrop |1,340 s |1,045 s |
| Full journal |5 378 byte |Samma 5 378 bytes, exakt |
| Bevisförsök |766,507 s, allokeringsfel |900,203 s, tidsstopp |
| Färdigt prefixcertifikat |Nej |Nej |

Vittnet blir 99,4 procent mindre och cykelantalet minskar 54,5 procent i den
ändrade profilen. Detta är inga latenskvantiler. Två variabler ändras samtidigt;
vi har inte isolerat deras respektive bidrag. Anropstiden omfattar också lokal
IPC och SDK-exekvering och är inte ett mått på enbart den rena K-funktionen.

Sex native-kontroller passerar, inklusive jämförelse av hela typade förslag,
trunkerade och felaktiga ramar, metadata utan reparation, faktisk K-avvisning
av förfalskning och byteexakt jämförelse av hela den gamla slutjournalen.
De första tre testerna kördes röda före implementationen. Både native- och
gästbygget lyckas. [Rådata och försöksbeskrivning](../../../experiments/core-prefix-compact-20261110/README.md),
[maskinläsbar diagnostisk jämförelse](../../../experiments/core-prefix-compact-20261110/results/execution-comparison.json).

Formattering, sex tester och Clippy för den nya fristående värd-cratens alla
targets passerar med varningar som fel. Två faktiska isolerade negativa
konsumentkontroller visar att ett riktigt äldre identitetsbevis avvisas för
den nya kedjan: antingen stämmer inte image-ID:t, eller så stämmer inte hela
journalen efter lyckad kryptografisk kontroll av rätt gammalt image-ID.
Detta ersätter inte den positiva prefixkontroll som fortfarande inte kan
köras. [Kodgrindar](../../../experiments/core-prefix-compact-20261110/results/code-checks-001/assessment.json),
[konsumentkontroller](../../../experiments/core-prefix-compact-20261110/results/unrelated-control-assessment.json).

## Vad detta betyder för arkitekturen

Transportkomprimering kan ta bort mycket onödigt arbete utan att byta
semantik eller autentiseringsrelation. Det gör inte den nuvarande
beviskonstruktionen till en visad millisekundlösning. Redan den separata
exekveringsdiagnosen ligger i sekundskalan, innan ett kryptografiskt bevis
är färdigt. En enda diagnos är varken en universell undre gräns eller en
komplett produktmätning.

Ett eventuellt VM-bevis gäller den körbara lokala relationen. Det etablerar
inte automatiskt den öppna motsvarigheten till full Core-semantik. Därför
kan den här prövningen inte stänga de fyra slutmålen genom att byta etikett
på ett lyckat litet exempel. Det starka kravet på färdig certifiering före
slutbesked ligger kvar.

## Slutstatus för den begärda helheten

| Slutmål | Status efter uppföljningen |
| --- | --- |
| Full Core-semantik i K |Inte etablerad; den körbara K:n är fortfarande en sluten profil |
| Formell faktisk kodmotsvarighet |Inte etablerad för hela K, codecs, hash och exekveringskedja |
| Kryptografiskt historikprefix |Inget färdigt faktiskt prefixbevis i denna eller den föregående lokala prövningen |
| Full beständig certifierad publicering |Inte etablerad; lokal lagring får inte ersätta saknad certifiering |

Den här försöksgrenen är färdigbedömd, men den begärda kompletta Core-lösningen
är **inte färdig**. Vi har inget underlag för att fortsätta en full ombyggnad
på just denna synkrona bevisprofil. Nästa arkitekturkandidat måste kunna klara
ett riktigt autentiserat övergångsfall med marginal innan den får bära hela
Core. Att öka tidsgränsen eller aktivera ett annat finalitetskontrakt skulle
vara andra beslut och görs inte här.
