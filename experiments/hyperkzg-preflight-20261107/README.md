# Villkorad HyperKZG-prövning, 2026-11-07

Detta är en separat 43-ords identitetsdiagnostik, inte en fysisk Core-K, färdig Core-release eller positiv G1-bedömning. [Bedömningen](results/assessment.json) och [sammanställningen](../../docs/proposals/core-next-architecture/continuation-20261107.md) skiljer faktisk verifiering från statistisk/fullständig produktgenomförbarhet.

Konfiguration: BN256 med preprocessing Spartan/HyperKZG primärt, Grumpkin med standard Spartan/IPA sekundärt. Den är inte samma som preprocessing på båda sidor. [Frysta källor och material](identity-input-freeze.json) binder faktisk .rlib från det nya källbygget, körkällor, subject och prunad SRS. [Körfrysningen](results/identity-execution-freeze.json) binder de byggda binärerna och den avgränsade körplanen. Alla 43 förväntade ord jämförs av en ny konsument.

Kapacitetsupptäckten krävde 371 699 generatorer, minsta power19. Den fulla Hermez-filen hämtades från den i förväg valda officiella URL:en och matchade exakt det publicerade BLAKE2b-512-värdet. Den 604 062 872 byte stora transporten sparas lokalt i 64 MiB-delar under samma 512 MiB-gräns per fil som övriga försöksutdata; totalgränsen var i förväg 768 MiB. Inga kända-tau-parametrar genereras.

`prepare_srs.py` kontrollerar originalets fulla digest innan det publicerar ett godkänt transportkvitto. Därefter återkontrollerar det delarna och kopierar exakta råa sektioner till en tresektionsfil: originalheadern, 524 288 G1 och två G2. [Kopieringskvittot](artifacts/verified-pruned/receipt.json) binder original och derivat. `ppot_pruned_19.ptau` är ett uttryckligt byteidentiskt kompatibilitetsalias för Novas sökfunktion; det innebär aldrig att materialet omklassas till PSE0080. Ingen backend-källkod ändras. Novas faktiska loader gör format-/kurv-/subgruppskontroller för laddade punkter innan den lyckade beviskörningen.

**Tillitsgräns:** officiellt digestmatchat material har publisher-/transkriptbaserad proveniens. En ny fullständig ceremoniverifiering kördes inte. Minst en ärlig bidragsgivare, korrekt publicerad ceremoni/digest och korrekt kryptografisk implementation förblir antaganden. Säkerhetsekvivalens mot IPA/Pasta eller STARK är inte etablerad. Inga okvalificerade speedup- eller 128-bitarsanspråk följer av mätningen.

Rå stdout innehåller 124 fristående JSON-booleska rader. De kommer från `halo2curves0.9.0` där `exp_by_x` skriver den offentliga BN_X-konstantens bitar under G2-kontroller. De är inte Core-beslut eller misslyckade kontrollresultat. Händelserna är JSON-objekten; samtliga råa rader behålls.

Originalets SRS-delar är en externt reproducerbar, hashbunden indatahämtning och ligger lokalt utanför Git. Den faktiskt använda prunade filen, dess proveniens, båda aliasvägarna, proof/verifieringsmaterial och körloggar behålls i Git. Provernyckeln över Git-filgränsen har bitexakt delarkiv med genomförd återställningskontroll; råoriginalet finns också lokalt. Det är lagringsrepresentation, ingen statusuppgradering.
