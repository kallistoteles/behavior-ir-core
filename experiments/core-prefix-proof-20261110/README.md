# Kryptografisk prövning av faktiskt lokalt K-prefix, 2026-11-10

Korrekthetsprövning av en konkret bevisrelation som gör mer än identitet: kontrollerad initiering, create b och set a till3 genom den faktiskt körbara lokala K-koden. Detta är den slutna cap2-profilen från [lokala studien](../local-k-study-20261109/README.md), inte full Core eller ett godkänt produktionscertifikat.

[Protokollet](protocol.json) frystes före förberedelsen. Gästbygget slutfördes och dess [käll-/verktygsbindning](results/guest-build-input-001.json) samt [ELF-identitet](results/guest-binary-001.json) är bevarade. **Bevisförsöket stoppades av minnesallokeringsfel; inget certifikat producerades.** Ett byggt program eller framräknat image-ID är inte ett producerat bevis.

## Faktiskt utfall

| Del | Observation |
| --- | --- |
| Gästbygge | 283,638 s; nya gästkällor/manifest, gammal privat kompilator |
| Värdklientbygge | 20,296 s med återanvänd privat SDK-cache |
| Faktisk lokal bevisproduktion | 766,507 s, sedan allokeringsfel och exit1 |
| Misslyckad allokering | 1 728 053 248 byte under 8 GiB adressrymdstak per process |
| Separat exekvering utan bevis | 1,340 s inne i anropet; status `Halted(0)` |
| Användarcykler i exekveringsdiagnosen | 13 927 133 över 16 segment: 15 med po2=20, ett med po2=19 |
| Offentlig journal | 5 378 byte, exakt samma bytes som förväntat från den deklarerade lokala K-kedjan |
| Ny konsument och certifikatavvisningar | NotRunMissingCompletedPrefixProof |

[Bevisanropets råkvitto](results/actual-prefix-proof-001/receipt.json), [felutdata](results/actual-prefix-proof-001/stderr.txt), [exekveringsdiagnos](results/execution-diagnostic-result.json) och [samlad resursbedömning](results/resource-assessment-001.json). Diagnosen använder SDK:ns `ExternalProver::execute`, inte prove. Den är en observation av exekvering och **inget kryptografiskt certifikat**. Den kördes inom kvarvarande ursprunglig scenariotid; minnestaket höjdes inte och inget nytt proverförsök startades med återställd klocka.

Recordern rapporterar bara direkt avräknade barnprocessers rusage. Dess cirka12 MB för klienten är inte proverprocessens eller hela processträdets maxminne. Interaktiv ps-observation visade cirka6,17 GiB RSS för den externa provern under körningen; detta är en punktobservation, inte ett fullständigt peak-/aggregatmått. Allokeringsfelet under det ärvda hårda taket är det faktiska resursutfallet.

Detta är en misslyckad korrekthets-/resursprövning av certifieringen, inte ett semantiskt DENY, en statistisk p95-bedömning eller en undre gräns för alla framtida konstruktioner. Den faktiska deklarerade gästen kunde exekvera till rätt journal. Bevisimplementationen klarade inte denna konfiguration inom minnesramen. Den kan inte utses till färdig väg för hela den starka Core-kedjan.

## Exakt subjekt och tillitsgränser

[prefix_logic.rs](prefix_logic.rs) anropar verklig `Kernel::new(2)`, `initialize(a.x=1, used=[a])` och `check` två gånger. Den andra begäran konstrueras från den första kontrollerade ändpunkten. Begärandena är uttryckligen fasta: create b och set a från1 till3. Producenten levererar två begränsade JSON-vittnen. Gästen kontrollerar öppningar, regler, resultat och nya rötter själv; den accepterar inte ett uppgivet slutresultat eller en uppgiven boolesk giltighet. Planner används bara på värdsidan för att föreslå vittnen.

De tre gamla källmodulerna importeras med `#[path]` från sina oförändrade ursprungliga bytes. Gästens externa dependency heter `sha2` men pekar uttryckligen på [en adapter](sha-adapter/src/lib.rs) som återexporterar SDK:ns RustCrypto-kompatibla SHA-256. Det är en annan vald hashimplementation under samma anropsinterface. Fulla256-bitars rötter och alla256 nivåer kvarstår. Ingen global crates-io-patch, ingen host-hash bredvid ett orelaterat bevis och ingen unconstrained exekvering används. SDK:ns hash-/VM-implementation och kryptografiska soundness är tillitsantaganden, inte nya bevisade Core-teorem. [Officiella API-/källreferenser](../../docs/proposals/core-next-architecture/history-completion-audit-20261110.md).

Journalsubjektet innehåller hela initiala giltighetsvyn, båda före/efter-vyerna, de bundna begärandena och resultaten inklusive kommandopayloads samt slutlig vy och antal övergångar. Värdens förväntade slutrötter jämförs med det tidigare oberoende referensfacit. Expected-journal och image-ID fryses före bevisproduktion. En ny verifierare måste kontrollera både riktig succinct-receipt, förväntat image-ID och **hela den förväntade journalen**.

Detta är ett konkret ändligt prefix för en deklarerad start och två operationer. Det är inte godtycklig tidigare historik, produktionens kanoniska EventId/OccurrenceId eller fulla Core-observationer. Handkodad K:s motsvarighet till hela matematiken/språket är fortfarande öppen. Ett framgångsrikt VM-bevis skulle visa just den deklarerade körbara relationen; det skulle inte ensamt fylla denna saknade semantikbro.

## Konstruktion och kostnadsram

SDK3.0.6 och gästkompilator r0.1.97.0 används med std, `lower-atomic`, deklarerade länkarflaggor och nya gäst-/låsfiler. Arc stöds av den faktiska gästtargeten. Hashadaptern använder standardmessage-SHA256 inklusive padding. Det gemensamma programmet har 2584 instrumenterade hash-anrop genom K:s konstruktion, init och de två kontrollerna; det är inget antaget tidsresultat.

Värdklienten är separat byggd med `client`/`disable-dev-mode`, utan `prove`/CUDA/Metal/Bonsai. En explicit lokal officiell `r0vm` är obetrodd bevisproducent. Native byggcache från förra prövningen återanvänds; inga kalla bygg-/parameterresultat hävdas. Den tidigare identitetsklientens körda bytes ska förbli oförändrade. Färdigt bevis måste vara `InnerReceipt::Succinct`, inga positiva Fake-/dev-resultat eller Groth16-inpackningar.

Gränserna är 900 s per process, 1800 s för förberedelse och separat1800 s för själva bevis-/konsumentscenariot, en CPU/arbetare, 8 GiB adressrymd per process och 16 GiB ledigt vid processstart. Tid för källförberedelse ingår i förberedelseklockan. Tider, stopp, materialstorlek och faktisk verifiering redovisas även vid negativt utfall. Detta är en korrekthetsprövning, inte en ny p50/p95-kampanj eller ett sätt att få originalG1 godkänt med höjda gränser.

## Oberoende konsument och avvisningar

Om ett komplett bevis produceras kopieras bara verifierarbinär, receipt, betrott image-ID och förväntad full journal till en separat temporär katalog. [Testverktyget](confine_verifier.c) använder Linux Landlock för att neka läsning av repositoryt, och seccomp för att neka sockets/connect/bind. Det testar faktiskt EACCES för en befintlig repositoryfil och EPERM för socket innan verifieraren körs. Nixbibliotek och konsumentmaterial tillåts. Verktyget ersätter inte certifikatets verifierare; det testar att denna kan fungera utan historik/repository och nätverk. [Linux Landlock](https://docs.kernel.org/userspace-api/landlock.html).

Samma väg används för fel fullständig ändpunkt, fel image-ID, avslutande bevisbyte, ändrad faktisk journal och ett välformat Fake-kvitto. Saknat stöd för isoleringen är `NotEstablished`, inte ett passerat test med försvagad isolering. Timeout, bygg-/VM-/ISA-fel är operativa utfall och aldrig korrekta semantiska avslag.

## Bevarad förberedelseavvikelse

Cargo-formattering från ett initialt2021-manifest följde path-importer och ändrade formatering i två äldre källfiler. Före någon prefixkompilering återställdes deras exakta HEAD-bytes efter jämförelse mot den ursprungliga frysta SHA256-bindningen. Alla17 gamla bindningar kontrollerades. [Avvikelse och återställning](results/source-format-correction.json) bevaras. Importföljande formatering togs bort och nya manifest deklarerar2024 liksom den ursprungliga K-koden. Inga tidigare mätningar/binärer ändrades. Detta får inte döljas genom att ändra deras ursprungliga manifest.

**Full Core, full native-/codec-/hashmotsvarighet, generell certifierad historik och beständig certifierad slutlatens är fortfarande separata återstående mål.** Ingen G1-pass sätts från denna prövning.
