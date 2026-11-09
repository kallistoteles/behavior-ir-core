# Lokal K: faktisk autentiserad övergång, 2026-11-09

En ny avgränsad forskningsimplementation kontrollerar lokala övergångar från en faktiskt kontrollerad start. Vid 8 192 objekt uppmättes **p95 1,484 ms** för producent, JSON-vittne, verifierare och accepterad uppdatering i minnet. K-delen tog p95 **0,649 ms**. Detta är inte en komplett Core-operation, en kryptografisk prefixcertifiering eller beständig publicering.

Underlag: [fryst protokoll](protocol.json), [frysta faktiska indata](results/input-freeze-001.json), [körda verktyg](results/tools-001.json), [binäridentitet](results/binary-001.json), [bedömning](results/assessment-001.json) och [hela försökets kvitto](results/scenario-001.json). Ingen källa eller evidens i original033 har ändrats. Originalets körbara checker är fortfarande `Unsupported`; denna studie ersätter den inte tyst.

## Vad som faktiskt implementerats

Det slutna programmet har E.x som Int64, tom padding, x>0, count≤deklarerad gräns, livstidsunika ID:n och två lika ordnade WorkIntent-payloads vid ALLOW. Det stöder create, set av ett existerande objekt med korrekt gammalt tillstånd och emit. Andra program, saknade set-mål och annan kontext än `{}` är utanför denna profil. Hela Core-språket, dess admission, Int64-aritmetik med mellanliggande overflow och fulla observationsrapporter är inte implementerade här.

Referensjämförelsen omfattar exakt resultat/reasons, changes, lifecycle och ordnade kommandopayloads. Den omfattar inte hela DecisionRecord, deklarations-/intenthashar, observationsfält, rapportformat eller gamla `data_version`-etiketter. Programmets fulla descriptorhash är däremot bunden: den fasta modulbeskrivningen från det äldre referensfallet, med uttryckligt varierad count-gräns. Dessa avgränsningar gör att ingen speedup mot den tidigare fulla Core-körningen kan räknas fram ur tabellen.

| Del | Implementerat interface |
| --- | --- |
| Giltighetsgrund | `Kernel::initialize(live, used)` kontrollerar alla initiala poster, positiva värden, dubbletter, live⊆used och gränser; beräknar rötter och ursprungsidentitet |
| Behörighet att återanvända giltighet | `ValidBasis` har privata fält och saknar Deserialize; endast initialization och accepterad K-kontroll skapar nästa giltighetsobjekt |
| Obetrodd producent | `Planner::propose` föreslår resultat, rötter och öppningar; dess persistenta nodstruktur är ingen acceptansauktoritet |
| Faktisk kontroll | `Kernel::check(basis, request, proposal)` binder program, ursprung, förälder, position och begäran; autentiserar uppgifter och räknar själv fram exakt förväntad förändring och resultatprojektion |
| Vittnesavkodning | `decode_proposal` begränsar JSON till 256 KiB och avvisar okända/dubbla strukturfält och avslutande skräp; kontrollen kräver rätt antal öppningar och exakt 256 syskon per stig |

Producentens påstående om ett giltigt tidigare tillstånd används inte. En mottagare måste själv ha etablerat startgrunden, redan ha kontrollerat den lokala kedjan eller senare få en annan uttryckligt verifierad grund. Den diagnostiska lokala kedjehashen är **inte Core:s kanoniska händelseidentitet eller ett historikcertifikat**. Förgrening, auktoritativ huvudposition, idempotenta request-ID:n och återstart kräver fortfarande publicerings-/certifieringsmodulerna.

Init använder samma trädkonstruktionskod som producenten, över det fullständiga kontrollerade inventariet. Den koden ingår därmed i init:s tillitsbas. Producentens separat levererade nodstruktur används däremot inte som giltighetsgrund. Den oberoende Python-kontrollen av rötterna är testtäckning och ersätter inte ett formellt korrekthetsargument för konstruktören.

## Autentisering och fysisk lagring

[auth.rs](auth.rs) använder samma fullständiga typade nycklar, SHA-256, nodtags, little-endian-fält och **256 nivåer** som originalets referensformat. Rötternas count/positive/complete_coverage hör till samma kontrollerade trädstruktur. Giltigheten hos gamla metadata ärvs från etablerad initialization och kontrollerade uppdateringar, inte en fristående producentflagga.

Den fysiska nodstrukturen sparar bara förgreningspunkter och löv och delar opåverkade delar med Arc. Tomma mellanliggande nivåer återskapas med det ursprungliga hashformatet. Vittnet har fortfarande alla 256 syskon. Lagringskomprimeringen byter alltså inte autentiseringsrelation. K:s kontroll går direkt över vittnet och får inget inventarium eller producentträd som argument.

För varje uppmätt set gjorde K exakt **518 SHA-256-anrop, 512 grennodberäkningar och en gammal öppningskontroll**, i alla tre populationerna. K läser ett autentiserat löv och dess syskon men får inget fullständigt inventarium att skanna. Det omfattar autentisering av gammal stig och framräkning av ny rot. Arbetsräknarna är instrumentering; korrektheten hos koden är inte maskinbevisad av att räknarna har dessa värden.

## Funktionella och oberoende kontroller

- Sex historiska referensresultat jämfördes genom den verkliga K-kontrollen; alla 24 före/efter-rötter överensstämmer med facit.
- 43 kontroller omfattar falska syskon/hashar/count/positivity/coverage, fel lövnyckel/värde, saknade/extra nivåer och öppningar, fel program/ursprung/förälder/position/begäran, falska resultat, tappat dubbelkommando, gammalt tillstånd och ett faktiskt giltigt men orelaterat resultat.
- Start med ogiltig positivitet, saknad livstidsidentitet, dubbletter eller överskriden gräns avvisades. Tomt tillstånd, emit utan tillståndsändring, pensionerat ID och den ursprungliga gränsen **999→1000→1001** kördes.
- JSON med okända eller dubbla strukturfält, avslutande skräp och överskriden bytegräns avvisades.
- [Den separata Python-kontrollen](verify_results.py) rekonstruerade **36 rötter från fulla inventarier** med den tidigare oberoende rekursiva konstruktionen. Den använder inte producentens träd eller stigar. Alla rötter och resultatprojektioner stämde.

Kontrollerna finns i [funktionella rådata](results/functional-001/artifacts/functional.jsonl), [referensjämförelsen](results/functional-001/artifacts/reference-comparison.jsonl), [inventarierna](results/functional-001/artifacts/inventories.jsonl) och [verifieringskvittot](results/verify-001/receipt.json). Ett korrekt semantiskt avslag och ett trasigt vittne är olika utfall. Timeout, krasch eller `Unsupported` räknas inte som en godkänd semantisk kontroll.

## Uppmätt lokal kostnad

En arbetstråd, CPU-affinitet till CPU0 på Xeon X5670, Rust1.98.1, `target-cpu=x86-64`, SHA2 0.10.9 och exakt Cargo.lock. Mätprofilens count-gräns är **10 000**; de funktionella cap2- och 1000/1001-kontrollerna är separata. En uppvärmning följdes av **100 hela observationer per population**. Samma befintliga objekt ändras mellan två positiva värden; detta är inte ett test av alla möjliga lokala eller globala operationer och inte en mätning av slumpmässig lagringsåtkomst.

| Population | Hela lokala kedjan p50 | Hela lokala kedjan p95 | K p95 | Kontrollerad initialization, en observation |
| --- | ---: | ---: | ---: | ---: |
| 1 | 1,462 ms | 1,536 ms | 0,682 ms | 0,638 ms |
| 1 000 | 1,260 ms | 1,295 ms | 0,564 ms | 1,080 s |
| 8 192 | 1,461 ms | 1,484 ms | 0,649 ms | 7,972 s |

Hela den lokala klockan börjar före producentens vittnes-/uppdateringsarbete och slutar efter avkodning, faktisk K-kontroll och accepterad uppdatering av producent/giltighetsobjekt i minnet. Request-konstruktion sker före klockan. Råloggning och frisläppning av vissa tillfälliga wire/proposal-buffertar sker efter klockan. Ingen disk, nätverkstjänst, full observationsrekonstruktion, kryptografisk bevisproduktion, ny process eller återstart ingår. Fasernas kvantiler summeras inte till slutlatens.

Vittnet är **46 407–46 474 byte**, cirka 45,3–45,4 KiB; JSON innehåller hela stigen. Kompaktare encoding har inte prövats. Alla 303 observationer, inklusive uppvärmningarna, finns i [samples.jsonl](results/cost-001/artifacts/samples.jsonl). Bedömningen använder nearest rank för de 100 mätobservationerna och filtrerar inte bort långsamma prover.

Initialiseringens hela inventariumsarbete redovisas separat i [setup.jsonl](results/cost-001/artifacts/setup.jsonl). Vid 8 192 objekt läste init 16 384 live/used-poster och gjorde 7 052 775 hashberäkningar. Producentens separata nodbygge tog ytterligare 7,530 s. Studien bygger därmed två nodstrukturer i uppstarten: init släpper sin temporära struktur och producenten bygger sin. Framtida återanvändning av dessa noder behöver inte ge producenten acceptansauktoritet, men någon sådan uppstartsvinst är inte uppmätt här. Uppstarten uppfyller inte det tidigare kalla millisekundmålet från tom grund.

## Reproduktion och bevisstatus

```bash
nix-shell experiments/transition-study033/shell.nix --run \
  'cargo fmt --check --manifest-path experiments/local-k-study-20261109/Cargo.toml'
python3 experiments/local-k-study-20261109/run_study.py --attempt 002
```

Välj ett nytt försöksnummer: tidigare frysta körningar skrivs inte över. En ny arbetskatalog behöver först hämta exakt låsta Cargo-beroenden; studiens bygge använder `--offline --locked`. Nixverktyg och registercache förbereddes före den registrerade körningen; de 125,18 sekunderna i scenariokvittot är inte en mätning av full installation från tom dator. Privat target-katalog, 900 s per process, 1800 s scenario, 8 GiB adressrymd per process och 16 GiB startgolv gäller. Försök001 innehåller inga avbrutna eller korrigerade mätserier. Binären är återbyggbar från källor/låsfil; körda hashvärden finns i kvittona.

Det logiska bevarandeargumentet finns i [arkitekturfortsättningen](../../docs/proposals/core-next-architecture/local-k-20261109.md). Det är inte ett Lean-bevis av denna Rust-kod, en source/matrix/guest-motsvarighet, ett bevis av hela Core eller en oberoende andra persons fulla reproduktion. Rust, kompilator, standardbibliotek, SHA2-implementation och hashbindningsantagandet ingår i tillitsbasen för denna lokala prövning. **Full G1 är fortfarande NotEstablished/Rework.**
