# Samma riktiga prefix med kompakt vittne och mindre segment

Separat uppföljning 2026-11-10 av [minnesfelet i det föregående försöket](../core-prefix-proof-20261110/README.md).
Detta är en ändrad försöksprofil med egen deklarerad budget, inte en förlängning
av det avslutade försöket. [Plan](PLAN.md) och [protokoll](protocol.json) föregår
bevisproduktionen. **Utfall: inget certifikat inom tidsgränsen 900 s.**
Försöket stoppades efter 900,203 s med `WallLimit`, exit−9; se
[hela kvittot](results/assessment-001.json). Minnesfelet återkom inte före
tidsstoppet. Bygg- och exekveringsframgång är inte certifiering.

Vittnesindatan minskade från 138 425 till 852 byte; gästcyklerna från 13 927 133
till 6 336 621. Hela den förväntade 5378-bytejournalen var oförändrad och matchade
gästens exekvering. [Jämförelse](results/execution-comparison.json).
Två variabler ändrades; inga isolerade komponentbidrag eller kvantiler hävdas.

Största observerade RSS för den externa producenten i 30-sekundersstickprov
var 2 475 945 984 bytes, virtuell adressrymd 3 245 080 576 bytes. Dessa är inte
exakta toppvärden. [Resursbedömningen](results/resource-assessment.json)
skiljer dem uttryckligen från det missvisande låga direktbarnsvärdet i
processkvittot. Ingen färdig prefixkonsument kunde köras, eftersom inget
färdigt prefixbevis finns. Det är `NotRun`, inte ett passerat test.

[De avgränsade kodgrindarna](results/code-checks-001/assessment.json) passerar:
sex tester, formattering utan följning av äldre path-importer samt Clippy
för alla targets i den nya fristående värd-craten med varningar som fel.
Detta är inte hela repositoryts produktgrindar.

Två [separata negativa konsumentkontroller](results/unrelated-control-assessment.json)
passerar med faktisk Landlock-/seccomp-isolering. Ett riktigt tidigare
identitetsbevis med rätt gammalt image-ID passerar SDK:s kryptografiska kontroll
men avvisas för fel fullständig journal. Samma bevis med det nya image-ID:t
avvisas av den kryptografiska kontrollen. Dessa avvisningar bevisar inte att
ett riktigt nytt prefixcertifikat finns; de hindrar att det gamla certifikatet
felaktigt fyller den luckan. Kontrollerna kördes inom den ursprungliga
1800-sekundersramen för det nya scenariot, utan nytt bevisförsök.

## Vad som faktiskt ändras

Den oförändrade lokala K:n kontrollerar fortfarande initialisering `{a:1}`,
create b och set a från1 till3. Båda 256-nivåers SHA-träden, typade nycklar,
count-/positivitets-/täckningsmetadata, utfall och hela slutjournalen bevaras.
Gästen kontrollerar fortfarande varje steg. Värden från producenten får inte
ersätta `ValidBasis` eller en kontroll.

Vittnet transporterar en bit per syskon. Noll betyder det deterministiska
tomma syskonet för just träd och djup; ett betyder att samtliga 42 bytes för
digest, count, positivitet och täckning följer. Avkodaren rekonstruerar de
ursprungliga 256 syskonen innan K anropas. Explicit överföring av det kanoniska
tomma syskonet avvisas. Denna transportkomprimering ändrar inte trädformat,
rotidentitet eller verifieringsskyldighet. Även felaktiga icke-tomma metadata
bevaras till K och får inte repareras till något giltigt.

Övriga fält är begränsade och taggade. Högst två öppningar och 64 UTF-8-bytes per
ID tillåts i just försöket; hela ramen är högst 262144 bytes. Utfall överförs
med den tidigare typade JSON-avkodningen, högst 16384 bytes. Okända taggar,
felaktiga booleska värden, trunkering och efterföljande bytes avvisas.
Transportfilerna heter `proposal-0.json` och `proposal-1.json` av kompatibilitet
med testdrivaren men innehåller här **CK01-binärdata**.

Den andra variabeln är SDK:s `segment_limit_po2(18)`, mot föregående faktiskt
observerade 20. SDK beskriver mindre segment som ett sätt att sänka minnesbehov;
det garanterar inte kortare total bevisproduktion. Eftersom två variabler
ändras tillsammans får skillnader i total kostnad inte tillskrivas bara en av
dem. Ingen isolerad komponenteffekt eller latensfördelning hävdas.

## Kontroller och reproduktion

Tre avsiktligt röda transporttester kördes mot `NotImplemented` före
implementationen. De passerade efter implementationen. Sex slutliga tester
omfattar jämförelse av hela det typade förslaget, alla trunkerade prefix, felaktiga
ramar, metadata utan reparation, explicit tomt syskon, riktig K-avvisning av
förfalskat syskon samt hela den tidigare 5378-bytejournalen. Rå testloggar finns
i `results/codec-*.{stdout,stderr}.txt`. Dessa är konkreta korrekthetskontroller,
inte ett formellt bevis av avkodarens Rust-semantik.

Bygg med den befintliga privata, låsta SDK-/gästkompilatormiljön:

```sh
nix-shell experiments/transition-study033/shell.nix --run \
  'python3 experiments/core-prefix-compact-20261110/prepare.py'
python3 experiments/proof-backend-screen-20261107/run_bounded_precise.py \
  --out experiments/core-prefix-compact-20261110/results/guest-build-001 \
  --wall-seconds 900 --stack-mib 64 \
  nix-shell experiments/transition-study033/shell.nix --run \
  'python3 experiments/core-prefix-compact-20261110/build.py guest --attempt 001'
python3 experiments/core-prefix-compact-20261110/run_proof.py
nix-shell experiments/transition-study033/shell.nix --run \
  'python3 experiments/core-prefix-compact-20261110/check_code.py'
python3 experiments/core-prefix-compact-20261110/check_unrelated.py
```

Utdata är create-once: reproduktion kräver en ny daterad utmatningsplats och
ett eget protokoll; skriv inte över redan frysta resultat. Privata byggcachear
och verktyg krävs enligt föregående prövnings proveniens. Byggtiderna är inte
kalla installationstider. Gästens separata målkatalog och värdens unika
binärnamn skyddar tidigare frysta körbara filer.

Drivaren jämför först hela förväntade journalen med föregående försöks bytes,
kör sedan faktisk gästexekvering och därefter högst ett 900-sekunders försök
att skapa ett riktigt succinct-bevis. Alla steg har samma 8 GiB-gräns och en CPU.
En exekveringsdiagnos är uttryckligen inte ett certifikat. Vid färdigt bevis
körs ny verifierarprocess med Landlock/seccomp och samma fullständiga
journal-/image-/trailing-/Fake-kontroller som i det föregående protokollet.

Minnesvärden från processkvittots `RUSAGE_CHILDREN` täcker bara direkta barn
och ska inte tolkas som bevisproducentens samlade toppminne. Minnesgränsen
ärvs däremot även av producenten. Tidsstopp eller resursfel är operativa
utfall och får inte bli semantiska avslag eller ett godkänt bevis.

## Gränser för slutsatsen

Även ett komplett bevis gäller bara den namngivna tvåstegskedjan och den
faktiskt körda lokala K-relationen. Full Core, formell motsvarighet för hela
K/codec/hash, godtycklig historik, kanoniska Core-identiteter och beständig
certifierad publicering kräver fortfarande egna etablerade resultat.
Kryptografisk säkerhetsekvivalens mot andra profiler är inte etablerad.
Ingen G1-pass, millisekundfinalitet eller ändring av produktens starka
slutgaranti får härledas enbart från denna prövning.
