# Diskstädning 2026-11-06

På användarens begäran rensades 49 återskapningsbara Cargo-cachekataloger: `deps`, `incremental`, `build` och `.fingerprint` under äldre debug-/release-byggen samt enbart `incremental` i den aktuella 033-byggmiljön. Kataloger kontrollerades mot öppna filer, körbara processer och minnesmappningar före borttagning. Ingen behövde hoppas över som aktiv.

Tillgängligt utrymme på `/data` ökade från **1 791 930 368 byte (1,67 GiB)** till **9 668 440 064 byte (9,00 GiB)**. Skillnaden är **7 876 509 696 byte (7,34 GiB)**. Det är filsystemets observerade förändring, inte en summering av filstorlekar som kan dubbelräkna hårdlänkar.

Källkod, bevarade experimentresultat, loggar, nycklar, certifikat och 033:s förseglade filer togs inte bort. Äldre kataloger med blandat innehåll tömdes inte; enbart de identifierade kompilatorcachekatalogerna rensades. Den aktuella 033-katalogens övriga byggfiler, inklusive biblioteket och dess beroenden som referensprogrammet länkades mot, behölls. Äldre mellanprodukter behöver kompileras om vid nästa användning.

[Maskinläsbar logg](storage-cleanup-20261106.json) anger varje borttagen katalog, dess tidigare filantal och allokerade filstorlek. Kataloger inom 033 kontrollerades dessutom mot Git och det befintliga förseglingsmanifestet före rensningen. Referensfallet och dess registrerade hashvärden kontrolleras efteråt. Detta är en avgränsad städkontroll, inte en ny fullständig omverifiering av hela forskningsunderlaget.

**Kvarstående begränsning:** 9 GiB är mindre än kampanjens föreslagna 16 GiB vid start. Ingen ny kryptografisk kampanj startades och tidigare `NotRun`-status ändras inte. Den stora återstående posten är det bevarade forskningsunderlaget; att radera det ingick inte i denna städning.
