# Reproduktion av035

Den publicerade körningen är stängd. Läs `evidence/campaign-001/input-manifest.json`, de två slutna indexen, `report.md` och `assessment.json` före en ny körning. Alla CLI-utdata skapas en gång. Skriv aldrig i den publicerade kampanjen eller äldre arkiv.

Verktygen är exakt hashbundna i `experiments/reuse-study035/toolchain.json`: Rust 1.98.1, Python 3.13.15, Lean/leanchecker 4.30.0, den registrerade Nix-startaren och Ruff. `input-manifest.json` registrerar faktisk CPU/kernel, cachevillkor och samma monotona start/boot. En aktiv tung process, en CPU och 8 GiB adressrymd används. OS-cache och exklusiv värd är inte etablerade. Beroendekällor var installerade/kopierade offline; detta är ingen kall installation.

Core 63a8c164523275e06ac1d7dc5330db4a899c9d99 och Safety 8c0849fb82343ddf5a4dd99b5070ee985f8ebff0 är låsta. Den egna Core-exporten innehåller 1634 käll-/grindfiler, egen Git-root och korrekt index. `sources.py` och `gate-inputs.json` hämtar bara valda Git-objekt. Hela den historiska checkouten ska inte materialiseras. Alla ändringar finns som ordnade patchar i experimentet; produktionsträdet är oförändrat. Oracle använder opatchad Core. Faktiska beroendegrafer och de fem slutligt byggda körbara filerna finns i bootstrap-rollen; den vanliga kandidat-CLI:n är bevarad i kvalitetsrollen.

För ett nytt uttryckligen separat reproduktionsförsök, på ett förberett ägt layout med de låsta offlineberoendena och minst 16 GiB ledig disk:

```sh
python3 experiments/reuse-study035/study.py prepare-sources --out experiments/reuse-study035/private/core
python3 experiments/reuse-study035/study.py freeze --profile experiments/reuse-study035/profiles/diagnostic.json --out specs/035-verified-work-reuse/evidence/campaign-reproduction-001
```

`prepare-sources` används bara när exporten saknas och vägrar skriva över en befintlig. För en befintlig oförändrad export verifierar freeze alla deklarerade byte och dess egna index. Native bygg-/arbetscache är disponibel. Final bootstrap gör faktiska låsta offlinebyggen och binder binärer innan prepared skapas. Ingen framtida output-hash behöver antas.

Kör `run-case --manifest .../campaign-reproduction-001/input-manifest.json --case CASE` i ordningen bootstrap, proofs, conformance, treatments, quality, growth-D1, growth-D2, growth-D3, growth-D4, growth-D5. Supervisor väljer fasta binärer, kontrollerar förutsättningar och klipper alla barn till originalklockan och 600 sekunders slutreserv. Matrisen är (2,8),(64,8),(256,8),(2,32),(2,128), D=1, fyra varianter, tre timing-prov följda av ett work-prov och direkta fortsättningar. Ingen full korsprodukt eller ersättningsprov tillkommer.

```sh
python3 experiments/reuse-study035/study.py collect --manifest specs/035-verified-work-reuse/evidence/campaign-reproduction-001/input-manifest.json --out specs/035-verified-work-reuse/evidence/campaign-reproduction-001/assessment
python3 experiments/reuse-study035/validate.py --manifest specs/035-verified-work-reuse/evidence/campaign-reproduction-001/input-manifest.json --assessment specs/035-verified-work-reuse/evidence/campaign-reproduction-001/assessment --out specs/035-verified-work-reuse/evidence/validation-reproduction-001
```

En korrigering INOM det ursprungliga försöket använder en annan revision och `freeze --inherit-clock-from .../campaign-001/input-manifest.json`: samma start/boot/gränser och alla gamla fel måste behållas. Det är ingen ny budget eller automatisk retry. En ny självständig reproduktion är ett annat försök och får inte blandas in i den publicerade matrisen.

I detta försök klarade scoped format/Clippy,60 Python-tester, native originaljämförelser och samtliga modellrötter sina grindar. Den oförändrade kanoniska `scripts/gates.sh` stoppades av 2 GiB-cachegränsen under testbyggnad efter format/Clippy. Det är blockerad integration, inte en passerad full grind. Arbetet fortsatte bara under det fördeklarerade resursundantaget. Ägda target-cachefiler rensades först efter tomt processträd; alla mätbinärer, kandidat-CLI, källor och kvitton behölls.

Råa heltalsnanosekunder, direkta cykler och fulla originaldokument finns under varje grupp. Faserna har exklusiv aritmetik; nästlade invoke/commit-tider ska inte adderas igen. Insamlingen räknar median/range enbart från timing-läget. Initialt programbevis, upprepad grund/vy-etablering och eftergranskning ligger i egna intervall. Separat vyseed- och återhämtningslatens saknas med explicit orsak; allocator-/relokeringsbyte och exakt gemensamt minnesmaximum är otillgängliga. Inga tre observationer blir p50/p95. Fil-fsync är ingen Q6-garanti.

Den separata valideringen bytekontrollerade det slutna arkivet, bygg-/mekanismkontext och hela originalresultat, räknade om bedömningen, körde opatchad oracle för alla fem fall och kompilerade/kernelkontrollerade tolv rötter på nytt. `preservation.json` kontrollerar fyra valda äldre manifest och 185 indata, utan helarkivscan. Native Rust-projektion/kodare/hostkoppling är fortsatt villkorad; ingen produktion, ny tillitsmodell, kryptografisk beviskedja eller finalitet antas.
