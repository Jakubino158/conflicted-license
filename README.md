# conflicted-license
Cieľom projektu je vytvoriť nástroj pomocou ktorého užívateľ získa informácie o node balíkoch z package.json. 
Ide hlavne o získanie tabuľky so zoznamom použitých balíkov a ich licencií spolu so zjednodušenými právami ktoré pre používateľa z týchto licencií vyplývajú.
Neskorším cieľom je rozšíriť túto funkcionalitu aj na balíky, na ktorých sú pôvodné balíky závisle (teda balíky z package-lock.json) a z týchto informácií vytvoriť prehľadnú hierarchickú tabuľku po vzore pôvodnej tabuľky.

Tento nástroj je realizovaný v jazyku typescript a bude akceptovať súbory package.json, package-lock.json. Výstupom  bude .md alebo .html súbor obsahujúci tabuľku.