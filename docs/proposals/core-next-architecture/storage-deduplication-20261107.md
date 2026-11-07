# Bevarade bytes med delad lagring, 2026-11-07

22 grupper med identiska kompilerade `.olean`-filer har fått gemensam fysisk lagring genom hårdlänkar. Alla 5 329 berörda filvägar finns kvar. Innehållet i varje tidigare separat inode verifierades med SHA-256 mot det befintliga förseglingsmanifestet före delning; varje färdig grupp kontrollerades efteråt. Ingen Lean-källkod, verifieringsnyckel, bevisrelation eller mätning ändrades.

Tillgängligt diskutrymme ökade från **9 666 469 888** till **21 723 504 640 byte**: cirka **11,23 GiB frigjordes**, till totalt **20,23 GiB ledigt** innan den nya byggmiljön skapades. Det passerar försöksförslagets startgräns 16 GiB. Utrymme som senare används av nya byggen mäts separat.

Detta bevarar innehåll och filvägar, men inte separata inoder eller individuella tidsstämplar. Hårdlänkade filer delar metadata. [Den oförändrade planen](storage-deduplication-plan-20261107.json) sparar ursprungliga inodegrupper och tidsstämplar per filväg; separata kopior och tidsstämplar kan återställas om det behövs. Dessa artefakter är oföränderliga forskningsutdata: framtida ändringar måste göras i nya filer eller efter att delningen brutits.

[Körkvittot](storage-deduplication-receipt-20261107.json) binder planens och förseglingsmanifestets hashvärden och redovisar kontrollerna per grupp. Manifestets bytes är oförändrade. [Underhållsprogrammet](deduplicate_compiled_files.py) avvisar innehållsavvikelser, symlänkar, ändrade metadata och öppna/mappade filer. En liten separat kontroll verifierade delning, avvisning av korrupta bytes och symlänkar samt hantering av redan delade filer före körningen.

Kontrollen gäller de valda gruppernas lagringsintegritet. Den är inte en ny fullständig omhashning av hela studien, ett matematiskt bevis eller en uppgradering av 033:s Rework-status. De historiska observationerna av diskutrymme i äldre kvitton ändras inte.

## Andra avgränsade omgången

Efter de nya parameter-/verktygshämtningarna och gästbygget var tillgängligt utrymme åter nära 16 GiB-gränsen. Samma verifierade metod användes därför på ytterligare 24 innehållsgrupper med 6 767 filvägar. [Plan 002](storage-deduplication-plan-20261107-002.json) och [kvitto 002](storage-deduplication-receipt-20261107-002.json) är separata och skriver inte över den första omgången.

Det observerade tillgängliga utrymmet ökade från **17 116 045 312** till **23 699 324 928 byte**, cirka **6,13 GiB**. Kontrollscope och metadataförbehåll är desamma: alla berörda bytes och filvägar bevaras, separata tidsstämplar finns i planen och delade filer får inte senare modifieras på plats.
