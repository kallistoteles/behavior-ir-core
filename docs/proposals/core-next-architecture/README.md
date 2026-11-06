# Nästa Core-arkitektur: genomgång av fem steg

2026-11-06. Beslutsunderlag och förslag till en ny, avgränsad studie. Detta ändrar inte 033:s kontrakt eller dess slutsats **Rework**. Det väljer inte en vinnande proof-backend och är inte en produktionspatch.

**Rekommendation:** behåll exakt Core-semantik och bevarande av tidigare etablerad giltighet. Skilj K, autentisering, kryptografiskt prefixbevis och beständig publicering åt. Behåll synkront certifierat resultat som jämförelsekrav tills produktens tillitsmodell uttryckligen ändras. Pröva nya beviskonstruktioner med tidiga stoppgränser innan hela K byggs.

Underlag: [033:s rapport](../../../specs/033-core-proof-feasibility/report.md), [uppmätta kostnader](../../../experiments/transition-study033/COST.md), [Rework](../../../experiments/transition-study033/REWORK.md), [krav](../../../specs/033-core-proof-feasibility/spec.md) och [primärkällor för kandidaterna](../../../specs/033-core-proof-feasibility/research-notes/next-proof-architecture-sources-20261106.md). Källnotens exakta versioner och konfigurationer gäller; biblioteksnamnen ensamma identifierar inte ett experiment.

## 1. Vem måste kunna verifiera vad?

Utgångspunkten för jämförelsen är en producent som kan lämna felaktiga förslag, utelämna underlag, återspela gamla svar eller välja en annan gren. En ny mottagare ska själv kontrollera resultatet utan att behöva lita på producentens cache, interna K-körning eller påstående om tidigare giltighet.

Mottagaren väljer själv betrodd release, semantiskt program/profil, verifieringsmaterial, tillåtet ursprung och förväntat sammanhang. Producentens paket får inte själv bestämma vad som är betrott. Certifikatet måste binda ursprung, exakt förälder och historikposition, begäran och kontext, gamla och nya tillståndsidentiteter, fullständigt resultat inklusive ordnade effekter och kommandon samt avslutad verifieringsfas.

**En autentiserad rot bevisar innehållets identitet, inte att innehållet är giltigt eller nåbart från rätt ursprung.** Återanvänd giltighet endast från en etablerad initialisering, ett verifierat prefix eller en lokalt redan verifierad kedja. En signerad checkpoint ger en annan grund: tillit till utfärdaren. Den är ett separat produktval.

Två giltiga bevis kan avse två olika grenar. Därför måste förväntad förälder och den auktoritativa publiceringsmekanismen också bindas. Kryptografisk korrekthet visar inte ensam vilken gren som är aktuell, att externa kommandon har utförts eller att en fjärrdisk verkligen har gjort fsync. Lagrings- och publiceringsantagandena behöver anges separat.

**Utfall:** använd den starka modellen som jämförelsebas. Vi har inte fått ett produktbeslut som tillåter nya checkpoint-auktoriteter eller preliminära resultat. Sekretesskrav är inte fastställda här; använd offentliga syntetiska indata i studien och hävda inte att en kandidat redan uppfyller eventuella framtida sekretesskrav.

## 2. Vilka garantier ligger fast, och var går arkitekturgränserna?

| Kontrakt | När får svaret räknas som färdigt? | Förändring jämfört med 033 |
| --- | --- | --- |
| C0: oförändrat 033 | Full semantik, verklig ackumulering, komprimerat bevis, oberoende slutkontroll och beständig publicering av exakt förälder | Referenskravet; den uppmätta implementationen når inte målet |
| C1: annat synkront slutcertifikat | Samma semantik, prefix, oberoende kontroll och beständig finalitet; annan certifikatrepresentation | Ny uttrycklig bevisprofil krävs; inget automatiskt 033-godkännande |
| C2: lokal K, senare prefixbevis | Lokalt svar är preliminärt tills prefixbevis och publicering är färdiga | Ändrar finalitetskontraktet; måste visa både lokal och certifierad position |
| C3: mottagaren kör K | Mottagaren verifierar övergången från en uttryckligen godkänd grund | Utan tidigare certifikat krävs tidigare lokal verifiering, omspelning eller betrodd checkpoint |

C1 kan exempelvis pröva en annan avslutad rekursiv bevisrepresentation. Att hoppa över Nova-komprimering är däremot inte en optimering som redan uppfyller FR-014. Ett tidigare certifikat gäller inte automatiskt nästa tillstånd. C2 får inte marknadsföras med lokal latens som certifierad latens; kö, maximal obestyrkt svans, återhämtning och hantering av misslyckade bevis måste då specificeras. Externa kommandon behöver vänta på den certifieringsnivå deras produktkontrakt kräver.

Föreslagna moduler har små gränssnitt med tydliga skyldigheter:

| Modul | Ansvar och utdata | Vad den inte ensam etablerar |
| --- | --- | --- |
| Planerare/producent | Föreslår resultat, beroenden och vittnen; får använda cache och alternativa planer | Förslaget är inte betrott |
| Autentisering | Kontrollerar typade nycklar, värden, fullständighet och gamla/nya sammanfattningar mot rätt rötter | En korrekt hash är inte ett semantiskt giltighetsbevis |
| K | Kontrollerar exakt begärd övergång och giltighetsbevarande från uttryckliga premisser; ger ett bundet övergångspåstående | Ett anrop till lokal K gör inte en okänd historik giltig |
| Prefixbevis | Etablerar initialisering och upprepad K-relation fram till exakt ändpunkt | Beviset väljer inte auktoritativ gren och publicerar inte data |
| Publicering | Kontrollerar förälder och publicerar tillstånd, historik, evidens, svar och kommandon atomärt och beständigt | Lagringskvittot ersätter inte semantisk kontroll |

Gränsen mellan native K, faktisk krets/guest och certifikatets verifierare behöver ett korrekthetsargument för varje adapter. Att två program råkar ge samma svar på några tester räcker inte. En delad specifikation är värdefull, men inget körbart fullständigt K eller sådan full motsvarighet är etablerat av denna genomgång.

Publiceringen måste också atomärt skydda request-ID, inklusive avslag som inte flyttar huvudpositionen. Konkurrerande föräldrar, samma request-ID och förlorat kvitto efter commit kräver egna återhämtningskontroller; de får inte skapa dubbla kanoniska händelser eller kommandon.

**Utfall:** utveckla dessa ansvar oberoende, men integrera med samma bundna påstående. Håll C2/C3 som uttryckliga alternativa produktbeslut. Varken lagringstransaktionen eller prefixkontrollen får försvinna bakom ordet ”verifierad”.

## 3. Vilken bevisarkitektur är värd nästa billiga prövning?

033:s identitetsfall gav ett verkligt ackumuleringssteg på **735,8 ms**, komprimering **33,36 s**, verifiering med nyckel i minnet **674,8 ms** och verifiering i ny process inklusive laddning **3,23 s**. Detta är diagnostiska observationer, inte p95-värden eller matematiska undre gränser. De räcker för att inte fortsätta bygga ut samma synkrona konstruktion som om bara SHA vore problemet. [Mätunderlag](../../../experiments/transition-study033/COST.md).

| Kandidat | Vad som faktiskt skiljer | Bedömning nu |
| --- | --- | --- |
| A: standard Nova/Spartan/IPA | Befintlig referens. En separat preprocessing/IPA-variant måste identifieras separat | Standardvägen har redan negativ evidens; återkör inte samma fall utan en ny avgränsad fråga. Preprocessing-resultatet från 033 försvinner inte |
| B: Nova preprocessing + HyperKZG | BN256/Grumpkin, andra fält och nycklar; specificera båda sidornas Spartan-variant | Konkret källkodsväg, inte uppmätt lösning. Kräver korrekt ceremoni-SRS och produktionsladdning; testkod med känd tau är inte acceptabel säkerhet |
| C: RISC Zero succinct STARK | Bevisad guest och rekursiva STARK-kvitton, utan den valfria Groth16-inpackningen | Konkret transparent alternativ. Kräver rätt image, parametrar, full journal och avslutade kompositionsantaganden. CPU-/minneskompatibilitet och latens på referensmaskinen är okända |

Källgranskningen identifierar Nova `01b1e2d662a847ed7029770ecbaf6687398899dd` och RISC Zero `164c64bb3a844d393bb7addc5781c705c647f2d5`. Den senare är granskad main-kod, inte ett påstående om stabil release. Se [precisa typer, säkerhetsgränser och officiella källor](../../../specs/033-core-proof-feasibility/research-notes/next-proof-architecture-sources-20261106.md). Varken marknadsförda genomströmningstal, GPU-resultat eller en annan dator ersätter jämförelsen på Xeon X5670.

Förslag till tidig stoppgrind: ett identitetsfall ska inkludera verklig förlängning, nödvändigt slutbevis, serialisering och oberoende verifiering. Efter tre funktionspiloter krävs 100 hela observationer för en cell. Föreslagen varm delbudget är p50 ≤ 20 ms och p95 ≤ 40 ms. Det är en medvetet sträng **ny experimentbudget**, inte en härledd fysisk gräns eller godkänd ändring av 033. Ingen prestandastatus sätts från tre piloter. Säkerhetsfel, ISA-fel eller resursstopp är separata utfall.

Ett godkänt identitetsfall ger endast tillstånd att pröva riktig autentisering och semantik. Det väljer ingen arkitektur. Fel förväntad ändpunkt, position, ursprung, profil eller verifieringsnyckel måste avslås genom den faktiska slutkonsumenten; fake/dev-kvitton får aldrig räknas som framgång.

**Utfall:** B och C är avgränsade nya kandidater, utan inbördes prestandarangordning. Ingen har mätts i denna genomgång. Ingen vinnare är vald.

## 4. Samma verkliga lilla övergång för alla kandidater

Ett konkret semantiskt referensfall är nu skapat och kört genom befintlig fullständig Core-evaluering. Det använder E.x som Int64, lokalregel x > 0, två identiska `WorkIntent(kind="process")` och count-gränsen **2**. Gräns 2 är en ny försöksprofil inom referensmallens parametrar, inte 033:s ursprungliga gräns 1000.

Startinventariet är live `{a:1}` och used `{a}`. Följande sekvens har fasta förväntningar:

| Fall | Exakt referensresultat | Bestående förändring |
| --- | --- | --- |
| create b | ALLOW, två identiska ordnade kommandon | live `{a:1,b:1}`, used `{a,b}`, count 2 |
| set a till 3 | ALLOW, två identiska ordnade kommandon | live `{a:3,b:1}`; used oförändrat |
| emit | ALLOW, två identiska ordnade kommandon | Samma innehållsrötter; framtida certifierad händelse måste ändå ha ny historikidentitet |
| create c vid gränsen | DENY / INVARIANT_VIOLATED | Inga publicerade effekter eller kommandon; rötter oförändrade |
| set a till 0 | DENY / CONSTRAINT_VIOLATED | Samma; den lokala regeln avgör före senare global prövning |
| create b igen vid gränsen | ENTITY_ID_ALREADY_USED | Livstidsidentiteten avgör före antalgränsen; samma rötter |

[Fullständiga begäranden, modul och referensbeslut](reference-fixture.jsonl) innehåller både trace och observationsdata. [Rust-programmet](reference_fixture.rs) anropar den auktoritativa fulla Core-evaluatorn och den befintliga **obetrodda** trädkonstruktören. [Python-kontrollen](check_fixture.py) har separat manuellt angivna resultat och räknar om 24 gamla/nya rötter från fulla inventarier, med en annan rekursiv konstruktion än Rusts stiguppdatering.

Vi behåller 033:s SHA-256, fulla typade nycklar och **256 nivåer** i båda träden. En liten population får alltså inte råka bli ett grunt leksaksträd. Byte av autentiseringskonstruktion är en egen försöksvariant med eget korrekthetsargument och egna förväntade rötter.

**Kontrollerat nu:** sex fulla referensresultat, faktiska effekter, dubbla kommandon, avslag och felordning samt oberoende beräkning av rötterna. **Inte kontrollerat nu:** certifierad initialisering, autentiserad vittneskedja genom K/krets, slutligt historikcertifikat, tvåstegsprefix eller beständig publicering. `data_version` i filen är en referensetikett, inte en etablerad historikidentitet. Ingen kandidat har producerat dessa referenssvar och sedan fått godkänna sig själv.

Nästa adapter måste verifiera riktiga öppningar och bevisa minst create + set från samma godkända start. En ny konsument får bara betrott ursprungs-/verifieringsmaterial och profilens deklarerade slutcertifikat/stöd, inte ett omspelat historiskt Core-förlopp. Avvisningskontroller ska omfatta ändrat syskon, nyckel, värde, count/positivitetsmetadata, ofullständig vy, fel begäran/kontext/förälder, annan giltig gren, fel ursprung, hoppad övergång, falskt avslut och giltigt men orelaterat slutresultat. Att ändra a till 2 är exempelvis fortfarande lokalt giltigt, men fel svar på begäran om 3 och måste avslås.

Avslag med korrekta semantiska fel är giltiga resultat; trasigt bevis och timeout är andra statusar. Originalgränsen 1000/1001, tomma queries, mellanliggande overflow och övriga ursprungliga profilfall är fortsatt obligatoriska innan full G1-bedömning. Den lilla profilen ersätter dem inte. Ingen färdig kandidatadapter eller dessa kryptografiska avvisningskontroller kördes här.

**Utfall:** vi har ett konkret gemensamt semantiskt facit och autentiseringsrötter, men ännu inget kandidatbevis för fallet. [Reproduktion och proveniens](fixture-provenance.json). Programmet länkades mot ett befintligt kompilerat bibliotek vars hash finns där; en oberoende ombyggnad av det biblioteket gjordes inte. Proveniensen identifierar körda bytes och aktuella källor utan att hävda att denna körning återetablerat deras byggmotsvarighet.

## 5. Vad måste hela leveransen kosta?

Mät en sammanhängande monoton väggklocka från mottagen begäran till färdigt svar efter verifierad, beständig publicering. Inkludera läsning, vittnen, K, ackumulering/guest, alla rekursiva mikrosteg, komprimering/resolve, serialisering, oberoende ändpunktskontroll, exakt-förälder-transaktion samt publicering av tillstånd, historik, evidens, svar och kommandon. Summera inte fasernas medianer eller p95 som om det vore slutlatens.

Separata celler behövs för varm körning, första användbara operation efter tom/kall start, återstart med fortsättningstillstånd, ny oberoende konsument och revision/återskapande. Parameterframtagning, SRS-kontroll och installation ska ha egna tids- och lagringsbudgetar. Vid kall start räknas faktiskt nödvändig laddning, avkodning och verifieringsmaterial; stora nycklar göms inte bakom små certifikat.

Föreslagen andra delgrind för den riktiga autentiserade övergången är p50 ≤ 30 ms och p95 ≤ 60 ms inklusive slutbevis och oberoende kontroll. Resterande utrymme ska bära läsning/publicering/integration; det är en ingenjörsmässig sållning, inte ett bevis att total p95 blir ≤ 100 ms. **Den slutliga hela körningen** måste fortfarande visa originalmålen p50 ≤ 50 ms, p95 ≤ 100 ms, ny konsument p95 ≤ 100 ms och kall första användbar operation p95 ≤ 250 ms, i relevanta originalscenarier.

Jämför under samma deklarerade CPU/worker- och säkerhetsvillkor. Utgångspunkt är 033:s en-CPU-villkor och RAYON=1. Ny GPU eller annan maskin blir separat produkt-/hårdvaruprofil. För varje cell behövs minst 100 hela observationer efter funktionella piloter, alla utfall, rådata och fördefinierad percentilmetod. Håll synlig kölatens vid originalets belastning 5 ankomster/s i 60 s, kö 128; dölj inte eftersläpande bevisarbete bakom lokala kvittenser. Avbryt vid budgetöverträdelse och rapportera orsaken utan att bara behålla lyckade försök.

Frys ny försöksidentitet och budget innan körning: förslag högst 8 GiB per försök, 900 s per barnprocess, 1800 s per scenario, 8 h sammanlagd körning och 64 GiB genererat material, med minst 16 GiB ledigt vid start. Detta återanvänder inte eller startar om 033:s gamla konstruktionsklocka. Spara källor, verktygsversioner, kompletta barnprocessloggar, status, nyckel-/certifikatstorlek och resident/minnes-/diskkostnad. Använd delad innehållsadresserad lagring; kopiera inte hela kompileringsvärlden för varje liten Lean-körning. En ny granskare måste kunna reproducera den avgränsade kedjan. Publiceringskontrollen ska jämföra Git-blobbinnehåll, inte bara filnamn; se [rättelsen](publication-correction-20261106.md).

**Faktiskt utfall vid genomgången:** cirka 1,7 GiB ledigt på arbetsdisken mot föreslagna 16 GiB. Efter användarens begärda [rensning av byggcache](storage-cleanup-20261106.md) finns cirka 9 GiB ledigt, fortfarande under startkravet. Nya bevisbyggen, kryptografiska mätningar och beständig kampanj är **NotRun**. Det lilla referensprogrammet länkades mot redan befintligt bibliotek utan Cargo-/Lean-ombyggnad. Ingen ny latenssiffra eller G1-status härleds från det. [Maskinläsbart försöksförslag och status](protocol.json) skiljer nya föreslagna delbudgetar från originalets slutkrav; dess tidsstämplade preflight visar läget före städningen.

Beslutsregel efter en framtida körning: en kandidat får gå vidare först om säkerhets-/motsvarighetskrav och båda tidiga grindarna är uppfyllda med komplett underlag. Därefter krävs hela leveransgrinden. Om ingen klarar dem är svaret fortsatt **Rework**. Då återstår ett uttryckligt val mellan ny konstruktion, annan hårdvaru-/latensprofil eller ett annat finalitets-/tillitskontrakt; inget av dessa får införas genom att bara byta vad ordet ”klart” betyder.
