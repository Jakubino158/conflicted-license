# conflicted-license
Cieľom projektu je vytvoriť nástroj, pomocou ktorého užívateľ získa informácie o node balíkoch z package.json. 
Ide hlavne o získanie tabuľky so zoznamom použitých balíkov a ich licencií spolu so zjednodušenými právami, ktoré pre používateľa z týchto licencií vyplývajú.
Neskorším cieľom je rozšíriť túto funkcionalitu aj na balíky, na ktorých sú pôvodné balíky závisle (teda balíky z package-lock.json) a z týchto informácií vytvoriť prehľadnú hierarchickú tabuľku po vzore pôvodnej tabuľky.

Tento nástroj je realizovaný v jazyku typescript a bude akceptovať súbory package.json, package-lock.json. Výstupom  bude .md alebo .html súbor obsahujúci tabuľku.

-- ako instalovat

-- usage guide
Walk users through how to use your project. Include code examples

Použitie:
- `-o`/`--output` 
	- definujú súbor alebo priečinok, do ktorého sa uloží výstupný súbor.
	- prednastavený je priečinok z ktorého užívateľ spustí nástroj
- Prednastavene sa užívateľovi vygeneruje .md súbor. Toto správanie je možné zmeniť pomocou prepínačna `--html`
- `--html`
	- definuje html formát súboru, do ktorého sa uloží získaná tabuľka
- Za prepínačmi nasleduje cesta k package.json a/alebo cesta k package-lock.json, poprípade nič, kedy program bude hľadať package.json/package-lock.json priamo v priečinku, v ktorom bol spustený.

Výstup