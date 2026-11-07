# Core: arkitekturansvar och beslut efter nästa kostnadsprövning

2026-11-07. Arkitekturkandidat, inte en produktionsaktivering eller etablerad millisekundlösning. Läs tillsammans med [mätresultaten](continuation-20261107.md) och [korrekthetskraven från 033](../../../specs/033-core-proof-feasibility/contracts/semantic-and-evidence.md). De sista bevis-/prestandagrindarna får underkänna kandidaten.

**Beslutsförslag:** bygg Core kring en exakt, självständigt specificerad verifierare K och ett beständigt autentiserat tillstånd. Gör kryptografisk prefixcertifiering till en separat mekanism med ett uttryckligt finalitetskontrakt. Behåll stark synkron certifiering som jämförelsekrav tills ett annat produktkontrakt har valts. De faktiskt prövade Nova- och STARK-profilerna motiverar ingen full K-krets-/gästombyggnad för synkront certifierade 50/100 ms på referensmaskinen. STARK:s nya verifierarprocess tog 48 ms men bevisproduktionen 379 s; snabb kontroll etablerar inte snabb slutlig övergång.

## Utgångspunkten är vad som måste vara sant

För en godkänd övergång behövs fyra skilda påståenden:

1. Den valda kompletta program-/semantikprofilen och begäran är exakt de avsedda.
2. Utgångstillståndets giltighet är etablerad, och de uppgifter övergången använder hör till det tillståndet och är fullständiga för sina skyldigheter.
3. Just den begärda övergången följer Core-semantiken och bevarar giltigheten, inklusive exakt resultat, första fel, effekter och kommandon.
4. Det slutliga svaret hör till den auktoritativa, beständigt publicerade historikpositionen och kan inte upprepas som en ny canonical händelse av misstag.

Ingen av dessa följer enbart av att ett hashvärde stämmer. Ett korrekt proof kan dessutom avse en annan giltig gren. Ett lagringskvitto visar inte ensamt korrekt exekvering; ett kryptografiskt bevis visar inte ensamt fjärrdiskens fsync, vilken gren som är aktuell eller att en extern effekt har utförts.

Den matematiska återanvändningslagen är villkorad: **om** rätt utgångstillstånd redan är giltigt och K korrekt kontrollerar bevarandet, behöver tidigare opåverkade skyldigheter inte utvärderas på nytt. Premissen får inte ersättas med en boolesk flagga från producenten. 033:s bevisade delresultat ger stöd för lagen under angivna premisser, men etablerar inte den fullständiga körbara K-konstruktionen.

## Fem djupa moduler med avgränsad auktoritet

| Modul | Ansvar | Betrodd slutsats |
| --- | --- | --- |
| Semantik och K | Tolkar exakt antagen Core-profil och kontrollerar övergångens skyldigheter och giltighetsbevarande | Kontrollerad lokal övergång från en redan etablerad grund |
| Autentiserat tillstånd | Kanoniska typade nycklar/värden, live- och livstidsidentiteter, kontrollerade sammanfattningar och öppningar | De använda uppgifterna/fullständighetsvittnena hör till rätt rötter |
| Producent och underhållna vyer | Planerar, indexerar, återanvänder beräkningar och föreslår resultat/vittnen | Ingen egen acceptansauktoritet; varje förslag kan vara fel |
| Prefixcertifiering | Binder giltig initialisering och K-övergångar till exakt offentlig ändpunkt | Oberoende kontroll av det deklarerade prefixet under vald kryptografisk profil |
| Beständig publicering | Exakt-förälder-transaktion, historik, evidens, svar, request-ID och kommandon | Auktoritativ beständig publicering under angiven lagrings-/auktoritetsmodell |

K ska inte känna till producentens cachepolicy, databasoptimering eller proof-backendens interna sökstrategi. Prefixcertifieringen ska inte få en alternativ egen Core-semantik. Lagringen ska inte göra ett obestyrkt producentresultat giltigt genom att bara skriva det till disk.

Gränssnitten behöver ungefär följande innebörd, inte nödvändigtvis dessa konkreta typnamn:

```text
establish(origin, program) -> ValidBasis | error
propose(parent, request) -> Proposal + Witnesses
check(ValidBasis, request, Proposal, Witnesses) -> CheckedTransition | error
certify(PrefixBasis, CheckedTransition) -> PrefixCertificate | unavailable
publish(exactParent, requestId, CheckedTransition, requiredEvidence) -> DurableResult
```

`ValidBasis` kan etableras från kontrollerad initialisering, en verifierad prefixcertifiering eller en lokalt tidigare kontrollerad kedja enligt uttrycklig tillitsmodell. Ett serialiserat objekt som kallas `ValidBasis` får inte vara en ny trust root. Vid kall återstart behövs en verifierbar eller uttryckligt betrodd återställningsgrund; kostnaden och eventuell checkpoint-/lagringsauktoritet måste redovisas.

## Vad K behöver kontrollera

K måste binda rätt program/profil, exakt förälder, begäran och fångad kontext till resultatet. En ändring från x=1 till x=2 får inte godtas som svar på begäran x=3 bara för att båda värdena uppfyller x>0. Ett korrekt antal räcker inte om queryns medlemmar eller den använda observationen är fel.

Verifieraren måste också bevara livstidsidentiteter och live⊆used, kompletta beroenden, tomma queries, nytillkomna medlemmar, exakta Int64-fel inklusive mellanliggande overflow samt Core:s första-fel-/fasordning. Fulla typade nycklar måste bindas; en kolliderande kortadress eller ett obundet metadatafält är inte en ersättning. Två lika kommandon ska fortfarande vara två kommandon med rätt ordning/multiplicitet.

Att underhålla count eller ett referensindex är korrekt endast om initialiseringen och **varje** förändring av vyn är kontrollerad. Om ett nytt objekt kan ändra en tidigare tom query är objektets frånvaro inte bevis för att queryresultatet är opåverkat. Producentens beroendeanalys måste därför ge fullständighetsvittnen, inte bara en lista över observerade cacheträffar.

K behöver ett maskinkontrollerbart korrekthetsargument mot exakt Core-semantik samt motsvarighet till den faktiskt körda koden. Varje kryptografisk adapter behöver dessutom motsvarighet till sin verkliga krets/guest, sina fält, encodings och offentliga in-/utdata. Ändliga testfall är nödvändiga kontroller men ersätter inte dessa argument. Att prova hela gamla Core som oracle får inte bli ett dolt substitut för en saknad verifierare eller bevisrelation.

## Tillstånd och evidens har olika uppgifter

Tillståndsstrukturen bör dela opåverkade delar och bära exakt kontrollerade hjälpvyer. Lokalt arbete ska kunna följa förändringens faktiska beroenden. Hash-/trädkonstruktionen är en egen versionssatt profil: byte till komprimerade stigar eller fältvänlig hash kräver nya bindnings-/korrekthetsargument och säkerhetspremisser. Det är inte en gratis optimering av gammal identitet.

Händelsens semantiska identitet binder avsedda indata, utdata och ett exakt observationsrecept. Den får inte bero på cacheträffar, queryplan, proof-form eller hur beviset hittades. Stora fullständiga observationer kan rekonstrueras för revision från bundet underlag. Receptet får inte ersätta efterfrågade data utan att det nya evidenskontraktet uttryckligen skiljer operationens kompakta kvitto från full rekonstruktion.

En kommandohändelse kan lämna innehållsrötterna oförändrade och ändå flytta historiken. Tillståndsidentitet och historikidentitet ska därför vara skilda. Ett avslag kan lämna huvudpositionen oförändrad men ska fortfarande kunna få ett atomärt, idempotent request-resultat.

## Finalitet är ett produktkontrakt, inte en cacheinställning

| Profil | Vad svaret garanterar | Vad en ny oberoende mottagare behöver |
| --- | --- | --- |
| Synkront prefixcertifierad | Beviset är färdigt, fullständigt kontrollerat och exakt-förälder-publiceringen beständig innan motsvarande slutbesked | Självvalt betrott verifieringsmaterial/ursprung samt certifikat och förväntad full ändpunkt |
| Lokalt kontrollerad, senare prefixcertifierad | K har kontrollerat övergången från sin etablerade grund; lokal och certifierad position är separata | Vänta på det nya prefixbeviset, kontrollera tillåten svans själv eller acceptera en uttryckligen annan checkpoint-auktoritet |
| Mottagaren kontrollerar K | Mottagaren kontrollerar en övergång eller svans från sin egen godkända grund | Redan verifierad kedja, certifierad checkpoint, omspelning eller namngiven betrodd utfärdare |

De senare profilerna är förslag till alternativa kontrakt och är inte aktiverade här. Matematiskt korrekt lokal exekvering behöver inte göras beroende av en viss SNARK/STARK. Men lokal kontroll ensam bevisar inte ett okänt historiskt prefix för en ny mottagare.

Om asynkron certifiering väljs behövs tydliga statusar och skilda lokala/certifierade huvuden, kögränser, återhämtning och regler vid uteblivet/felaktigt bevis. Externa kommandon måste invänta den certifieringsnivå deras kontrakt kräver. Lokal svarstid får inte rapporteras som certifierad finalitet. En obegränsad beviskö är inte en skalningslösning.

## Publiceringen avslutar kedjan

Publicera tillstånd, historik, underlag, request-resultat och kommandon konsekvent i samma deklarerade transaktionsmodell och vid exakt förälder. Skydda request-ID atomärt även för avslag. En förlorad kvittens eller omkörning får inte skapa en ny canonical händelse eller slå ihop två avsiktligt lika kommandon.

En giltig övergång som förlorar föräldrakonkurrensen behöver rätt konflikthantering och nytt underlag för den nya föräldern. Dess proofarbete, väntan och omförsök är verklig livscykelkostnad. Beviset får inte flyttas till en annan förälder genom att bara ändra publiceringsmetadata.

## Vad millisekundmålet faktiskt kan omfatta

Exakt semantik ger inte automatiskt en liten förändringsmängd. En global regeländring kan påverka många objekt och en uttryckligen efterfrågad stor rapport kostar minst dess produktion/överföring. Millisekundmålet måste därför knytas till deklarerade begränsade operationer, populations-/historikprofiler och åtkomstvillkor; långsamma fall får inte döljas eller få försvagad semantik.

Underhållna index och giltighet kan minska återkommande arbete. Obegränsade godtyckliga queries kan däremot inte lovas samma kostnad bara genom att kalla dem inkrementella. Om tillräckliga vyer/vittnen saknas behövs korrekt fullare arbete eller en uttrycklig resurs-/profilgräns, inte ett felaktigt snabbt svar.

För den starka profilen ska hela väggklockan fortfarande omfatta autentiserade läsningar, vittnen, K, alla proofsteg, slutkontroll, serialisering, konfliktkostnad och beständig publicering. Nya mottagare och kall återstart ska redovisa faktisk materialladdning och etablering av giltighetsgrund. Föreslagen tidsbudget är en grind som måste visas med kompletta mätningar, inte en egenskap som följer av moduldiagrammet.

## Byggbeslut och återstående grindar

1. Behåll det matematiska giltighetsarbetet och den befintliga Core-semantiken som referens. Krymp inte språket tyst för att få ett snabbt testcase.
2. Välj uttryckligt finalitets-/tillitskontrakt och kryptografisk säkerhetsprofil innan en produktlösning utses. Dagens prover etablerar ingen säkerhetsekvivalent vinnare.
3. Bygg vidare på en bevisprofil för den starka vägen först när den klarar det lilla verkliga autentiserade fallet med ordentlig marginal, inte bara identitet. De avslutade identitetsförsöken ger inte sådan marginal; ingen profil väljs för denna fulla utbyggnad nu.
4. Etablera riktig K och faktisk motsvarighet, därefter init→två övergångar→ny oberoende mottagare med de obligatoriska felkontrollerna. Cap2-facit ersätter inte originalets 1000/1001-gräns och övrig språk-/livscykeltäckning.
5. Godkänn först efter full beständig kedja och kompletta mätningar för deklarerade scenarier. Om ingen profil klarar detta kvarstår Rework. Ett annat kontrakt, annan hårdvara eller annan kryptografisk konstruktion blir ett nytt redovisat beslut.

Det vi kan rekommendera nu är ansvarsfördelningen och dessa grindar. En fullständig snabb och certifierad Core är ännu inte etablerad.
