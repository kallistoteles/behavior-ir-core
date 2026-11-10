# Core: arbete med de fyra återstående delarna

2026-11-10. Begäran omfattar full Core-semantik, formell faktisk kodmotsvarighet, kryptografiskt historikbevis och beständig publicering. **Alla fyra slutmål är fortfarande inte etablerade.** Den lokala millisekundprövningen var en sluten profil, och slutmålen får inte reduceras till den profilen.

## Vad som nu faktiskt har slutförts

En separat [implementation och reproducerbar körning](../../../experiments/core-completion-20261110/README.md) har lagt till:

- **Hela observationsrapporter för de sex referensfallen.** De kompletta DecisionRecord återskapades exakt från stöd och recept på revisionsvägen. Det omfattar nu också de fält som den tidigare lokala K-projektionen inte producerade. 24 kontroller av saknat eller felaktigt revisionsstöd passerade. Full Core-evaluering används här enbart för revision, aldrig för att ge en saknad K eller ett saknat historikbevis acceptansauktoritet.
- **En bro från faktisk Rust-källa till en formell publiceringspolicy.** Lean parsar den verkliga källfilens bytes och kontrollerar dess explicita delmängdssemantik för alla 32 booleska indata. Ny kernel-replay och axiomgranskning passerade; endast `propext` behövs i de två redovisade teoremen. Den kompilerade funktionen kördes också för alla 32 indata. Detta är en riktig men liten del av kodmotsvarigheten, inte ett bevis av hela K.
- **Beständiga lokala transaktioner och återhämtning.** 19 kontroller kördes mot faktisk SQLite WAL/FULL och den körbara K:n. De omfattar create-once-init, originalsvaret efter återförsök vid ett senare huvud, ID-konflikter, föräldrakonkurrens, avslag, dubbla kommandon och verklig SIGKILL före, inne i och efter commit för både init och execute. Förlust eller korruption av stöd ger ett uttryckligt fel. Ingen av dessa lokala kvittenser får utges för att vara en kryptografiskt certifierad Core-kvittens.

Körning004 slutfördes på 227,45 s inklusive bygge och ny kernel-replay; det är en korrekthetskörning och ingen latenskvantil. [Maskinläsbart körkvitto](../../../experiments/core-completion-20261110/results/scenario-004.json), [publiceringskontroller](../../../experiments/core-completion-20261110/results/storage-004/artifacts/receipt.json), [source-teorem](../../../experiments/core-completion-20261110/results/policy-004/artifacts/actual.lean) och [full revisionsjämförelse](../../../experiments/core-completion-20261110/results/audit-004/artifacts/receipt.json).

En arkiveringsbugg i körning003 fångades: databasanslutningar stängdes efter hashningen och ändrade WAL/DB-filer. Den körningens arkivbindning underkändes och finns kvar som felunderlag. Körning004 stänger först alla anslutningar; samtliga 60 arkiverade filbindningar kontrollerades efter processavslut. Felunderlag skrivs inte om till godkänt.

## Var gränsen för slutsatserna går

| Slutmål | Vad dagens evidens täcker | Vad som fortfarande måste etableras |
| --- | --- | --- |
| Full Core-semantik | Sluten positiv-x/count/livstidsprofil och sex fulla observationsrekonstruktioner | Hela språkets uttryck, queries, typer, övergångar, felordning och observerbara beteenden samt deras korrekta K-motsvarighet |
| Formell kodmotsvarighet | Faktisk liten Rust-publiceringsgrind, dess parser/denotation och ny kernel-replay | Hela K, initialisering, codecs, hashbytes, rendering och verklig krets/guest-adapter mot semantiken |
| Kryptografiskt historikbevis | Faktisk init→create→set-gäst gav rätt journal utan bevis; certifieringsförsöket stoppades av minnesfel | Ett färdigt faktiskt prefixbevis med rätt slutkonsument och alla återstående semantik-/säkerhetsbroar; senare generell historik/komposition |
| Beständig publicering | Faktisk lokal K och SQLite med 19 process-/transaktionskontroller | Full certifierad publicering med rätt prefixbevis, kanoniska identiteter, fortsättning och kompletta livscykel-/latensprov |

Det tidigare scope-registret innehåller 831 poster: 764 uttryckligt uppskjutna och67 markerade som omfattade av den begränsade G1-prövningen. ”Omfattad” betyder inte bevisad. Full Core inkluderar därmed mycket mer än att komplettera tre actions eller köra ytterligare några exempel. Även den ursprungliga G1-profilens samtliga admission-, codec-, observations- och fysisk-exekveringsbroar är ännu inte slutna.

## Den faktiska prefixprövningen

[Den nya kryptografiska prövningen](../../../experiments/core-prefix-proof-20261110/README.md) använder de oförändrade lokala K-/autentiseringskällorna och en explicit SHA-adapter. Den kontrollerar verklig start, create och set i gästen. Det är ett annat subjekt än den tidigare identitetsgästen. Det ersätter fortfarande inte full Core-semantik eller den öppna Native-K-till-F-motsvarigheten.

**Försöket producerade inget certifikat.** Efter 766,507 s misslyckades en allokering på 1,728 GB under det deklarerade 8 GiB-adressrymdstaket. En separat exekveringsdiagnos slutfördes på cirka1,340 s inne i anropet, med rätt 5 378-bytejournal, 13 927 133 användarcykler och16 segment. Diagnosen är inte ett bevis. Konsument- och avvisningskontrollerna för detta prefix står kvar som NotRun, eftersom ett färdigt certifikat saknas. [Resursbedömning och exakta begränsningar](../../../experiments/core-prefix-proof-20261110/results/resource-assessment-001.json).

Enskilda observationer och ett resursfel etablerar varken latenskvantiler eller en omöjlighetssats. De ger däremot inget stöd för att bygga ut denna profil som färdig synkron millisekundlösning. Att välja större minne, annan segmentering, annan witness-codec eller ett nytt kryptografiskt system behöver en separat redovisad prövning; det ändrar inte dagens utfall.

[Primärkällsgranskningen](history-completion-audit-20261110.md) förklarar varför signerade huvuden, hashkedjor, orelaterade identitetskvitton eller villkorade kompositionsbevis inte får användas som genväg till det starka kontraktet. Inget mätunderlag etablerar ännu färdig synkron historikcertifiering inom millisekundbudgeten.

Den starka publiceringsvägen ger därför `UnavailablePrefixCertificate` när underlaget saknas. Den gör inte en lokal transaktion certifierad genom att byta namn på kvittot. Alternativa produktprofiler med separat lokal kontroll och senare certifiering kräver ett uttryckligt beslut; de är inte aktiverade här.

**Arbetet har alltså stängt avgränsade konkreta luckor, men det vore fel att rapportera alla fyra slutmål eller hela G1 som klara.**
