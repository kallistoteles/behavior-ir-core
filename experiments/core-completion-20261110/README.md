# Arbete mot de fyra återstående Core-delarna, 2026-11-10

Detta är fortsatt forskningsarbete med full Core-semantik, faktisk kodmotsvarighet, historikbevis och beständig publicering som mål. **Alla fyra är ännu inte etablerade.** [Completion-ledger](completion-ledger.json) skiljer slutmålen från de kontroller som faktiskt slutförts. Original033 och den frysta lokala K-studien har inte ändrats.

## Godkänd avgränsad körning: 004

[Scenario004](results/scenario-004.json) slutförde bygge, Lean-kontroll, ny kernel-replay, 19 SQLite-kontroller och sex hela rapportrekonstruktioner på 227,45 s. [Indata](results/input-freeze-004.json), [verktyg/källidentiteter](results/tools-004.json) och [körda binärer](results/binaries-004.json) är bundna med hashvärden. Detta är korrekthetskontroller, inte 100 mätningar av certifierad beständig latens.

### Faktisk Rust-källkod och en bevisad publiceringspolicy

[gate.rs](gate.rs) är funktionen som faktiskt används inne i publiceringstransaktionen. [Lean-parsern](PolicyParser.lean) läser dess kompletta källbytes i en explicit Rust-delmängd: fem booleska parametrar, villkor och u32-konstanter0–4. Den avvisar oexaminerad efterföljande Rust-kod. Teoremen visar att den parsade, denoterade funktionen följer policyn för samtliga 32 indata: originalresultat eller ID-konflikt före föräldrajämförelse; därefter föräldrakonflikt och saknat obligatoriskt bevis.

[Den verkliga källan med teorem](results/policy-004/artifacts/actual.lean), [axiomlistan](results/policy-004/artifacts/actual.stdout.txt) och [ny kernel-replay](results/policy-004/artifacts/fresh-kernel-receipt.json) är bevarade. De två teoremen använder endast `propext` bland de redovisade axiomen. Ändrat ID-reuse-resultat och efterföljande Rust-kod underkändes i samma kontrollväg. Den kompilerade Rust-funktionen kördes dessutom för alla 32 booleska kombinationer.

Detta gäller **en liten faktisk källfunktion**, inte hela K, codec, SHA, SQL-implementationen eller någon krets/guest. Parserns explicita delmängdssemantik och vanlig Rust-kompilering/artefaktbindning ingår i den deklarerade kedjan; ingen verifierad Rust-kompilator hävdas. Ett source-hashvärde ensamt används inte som semantiskt teorem.

### Faktisk beständig lokal publicering

[store.rs](store.rs) kör den tidigare lokala K-koden utan att ändra den. Initialisering kontrollerar inventariet. Kandidater kontrolleras av verklig K före transaktionen. SQLite publicerar stödobjekt, request-resultat, tillstånd/huvud, händelse och två separata kommandoordningar atomärt. Avslag lagrar request-resultat men flyttar inte huvud/händelse/outbox. Samma ursprungliga begäran återlämnar sitt ursprungliga svar även efter att huvudet gått vidare; olika digest för samma ID ger `IdReuse`. Ursprunglig init-identitet är create-once och återförsök återställer inte ett gammalt huvud.

Profilen är uttryckligen **LocalResearch**, inte certifierad finalitet. `strong` ger `UnavailablePrefixCertificate`; okända scope-värden avvisas. En producent kan inte lämna en boolesk flagga som skapar certifiering. Det finns inget nytt accepterat produktkontrakt här.

Varje anslutning kontrollerar WAL, FULL, foreign_keys=ON, page_size4096, wal_autocheckpoint1000, busy_timeout1000 samt faktisk SQLite-version/käll-ID. Låst rusqlite0.41.1/libsqlite3-sys0.39.1 innehåller SQLite **3.54.1**, käll-ID `2026-10-16 14:45:20 555e07ef33f69a0957d24d8e555b702464a131d6f1607f4c3c1e4551e8e6ca76`. Källan jämfördes byte för byte med det Cargo-arkiv vars checksumma finns i Cargo.lock. Detta är en ny daterad profil, inte uppfyllande av original033:s nominella 3.54.0-krav.

WAL/FULL:s lagringsgarantier förutsätter SQLite, operativsystem och VFS/lagring med angiven synkroniseringssemantik. Testerna gäller lokalt Linux-filsystem och processkrascher; de etablerar inte fysisk strömförlust eller nätverksfilsystem. Se [SQLite WAL](https://sqlite.org/wal.html) och [synchronous](https://sqlite.org/pragma.html#pragma_synchronous).

[Kontroller och fulla arkiverade databasartefakter](results/storage-004/artifacts/receipt.json) omfattar verklig SIGKILL före transaktion, inne i transaktionen och efter COMMIT före kvittens, för både init och execute. Två processer tävlar med samma/olika request-ID och samma förälder, inklusive ALLOW mot avslag. Återförsök, förlorad kvittens, tappade dubbelkommandon, ändrade stödbytes, saknat stöd och korrupt huvud kontrolleras genom det verkliga interfacet. [Råkommandon](results/storage-004/artifacts/commands.jsonl) behåller exitkoder och resultat.

Återställning etablerar init igen och kontrollerar den lokala historiken på nytt. Den kontrollerar stödhashar, resultat, rötter, huvud och kommandomultiplicitet. Detta är **omspelning**, inte den nya oberoende mottagarens replay-fria prefixverifiering eller en implementerad checkpoint. JSON och den lokala kedjeidentiteten är forskningsformat, inte Core:s kanoniska event-/occurrence-codec. Ingen fysisk kommandoleverans eller exactly-once-effekt hävdas.

### Hela observationsrapporter på revisionsvägen

[full_observation_audit.rs](full_observation_audit.rs) rekonstruerar fulla universum, fält, identiteter och bundet tillstånd från kvarhållet stöd och ett litet recept. Den anropar full Core-evaluering enbart för revision. Samtliga **sex kompletta DecisionRecord** överensstämde exakt med det historiska facit, inte bara den tidigare resultatprojektionen. Saknat stöd, fel staterot, fel request-bindning och ofullständigt inventarium avvisades: [24 kontroller och hela rapporterna](results/audit-004/artifacts/receipt.json).

Detta etablerar rekonstruktion för de sex slutna fallen. Det är inte en generell expansionsteorem, full språk-K eller full receptbindning till gamla Core-identiteter. `data_version` fångas som separat receptmetadata och ingår inte i den tidigare lokala K-begäran. Produktionsacceptansen får inte använda denna oracle för att fylla en saknad verifierare eller ett saknat historikbevis.

## Bevarade fel och korrigeringar

- Förberedelse001 för Lean stoppades av standardtrådar/stackar inom adressrymdstaket. Förberedelse002 stoppades av icke reducerbara String-operationer; parsern använder nu explicita ASCII-byte och normal kernel-reduktion, utan native-evaluation-axiom.
- Bygge001 stoppades av en saknad cache-checksummefil. Kontroll mot det låsta fulla Cargo-arkivet ersatte det felaktiga antagandet. Bygge002 visade att SQL-gränsen kräver explicita signed integer-typer. Dessa råutfall och dåvarande källsnapshots finns kvar.
- Körning003 klarade funktionella kontroller men **dess lagringsarkivering underkändes**: Python-contextmanagern stängde inte anslutningarna före hashningen, så efterföljande WAL-checkpoint ändrade filer. [Avvikelsen](results/storage-003-artifact-integrity-failure.json) bevarar de felaktiga hashbindningarna; de räknas inte som giltigt arkiv. Körning004 stänger samtliga anslutningar före arkivering och dess 60 arkiverade artefakter verifierades efter processavslut.

## Reproduktion och vad som återstår

```bash
python3 experiments/core-completion-20261110/run.py --attempt 005
```

Kräver den pinnade Nix-miljön och exakt Cargo.lock tillgänglig offline; verktygs-/registerförberedelse är separat. Nytt försöksnummer krävs. Taksättning: 900 s per process, 1800 s per scenario, 8 GiB adressrymd per process, en CPU/arbetare och 16 GiB ledigt startutrymme. Arkiven är syntetiska forskningsdata. De äldre 033-artefakterna och deras status lämnas orörda.

Full Core har ett tidigare register med 831 poster, där 764 var uppskjutna och67 markerade som omfattade av G1; ”omfattad” betyder inte bevisad. Att nu kalla den lilla K-profilen för full Core vore fel. Faktisk full native/codec/hash-motsvarighet, en konkret certifierad Core-historik, full stark publiceringsintegration och hela latensgrinden återstår. Se [historikgranskningen](../../docs/proposals/core-next-architecture/history-completion-audit-20261110.md). **Full G1 är fortfarande NotEstablished/Rework.**
