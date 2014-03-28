% Suchmaschinen
% Dr. Jakob Voß
% 2014-03-31

# Eingangsfrage: Wie funktioniert Google?

# Eingangsfrage: Wie funktioniert Google?

* Google kocht auch nur mit Wasser: Information Retrieval
* Etablierte Konzepte und Verfahren, versteckt hinter Optimierung, 
  Marketing & Desinteresse

# Google kocht auch nur mit Wasser

* Hochdruckkochtöpfe
* Meerwasserentsalzunganlagen
* Schwerwasser-Kernfusionsreaktoren
* ...

<http://research.google.com/>


# Kernbestandteile einer Suchmaschine

* Datenquellen/bestand
* **Index**
* **Anfragesprache**
* Suchoberfläche

# Funktionsweise eine Suche (indexbasiert)

1. Interpretation der Anfrage
2. **Ermittlung & Ranking oder Ergebnisse**
3. Darstellung der Ergebnisse

# Ermittlung & Ranking der Ergebnisse

* Boolesche Algebra und Relationen
* Ähnlichkeitsfunktion

# Zwei verschiedene Suchparadigmen

**Paradigma**

* Vorherrschende Denkweise und Denkmuster
* akzeptierte / nicht hinterfragte Grundannahmen
* Mentales Modell^[vgl. [@Christensen2012] zu bibliothekarischen mentalen
  Modellen (OPAC) vs. Nutzer-Modellen (Discovery-Interface)]

Menschliche Sichtweisen ändern sich langsam. Sehr langsam.

# Zwei verschiedene Suchparadigmen

* "Datenbank" (z.B. OPAC, Wikidata..)
* "Discovery-Interface" (z.B. VuFind, Google...)

*Achtung: Suche $\neq$ Datenbestand!*

# Zwei verschiedene Suchparadigmen

 Boolesche Anfrage                               Ranking
----------------------------------------------- -------------------------------------
präzise Suchanfrage in spezieller Syntax        beliebige, einfache Suchanfragen
Erlernen notwendig                              intuitiv benutzbar
exakte Treffer                                  möglichst passende Treffer
geringe Fehlertoleranz ("0 Treffer")            fehlertolerant aber falsch-positive
Treffer unsortiert oder nach klarem Kriterium   Treffer nach "Relevanz" sortiert
Szenario: "bekannte" Dokumente finden           Szenario: Dokumente "entdecken"
Mathematik sichtbar (Boolesche Algebra)         Mathematik versteht (Vektorraum)
----------------------------------------------- -------------------------------------

# Ranking?

...TODO: Definition...

* Rankingverfahren
    * PageRank, HITS
    * Tf-idf u.A. Vektorraummodell
    * ...

# Möglichkeiten zur Beeinflussing des Rankings

* Indexanreicherung (Strategie SEO)
* Anfrageexpansion (Strategie Werbung)

# Möglichkeiten zur Beinflussing des Rankings

* Möglichst viele verschiedene Dokumenteigenschaften
    * Inhalt, Herkunft, Bewertung, ...
    * Reichhaltige Metadaten und Volltexte
* Möglichst verschiedene Eigenschaften der Anfrage
    * Unterschiedliche Interpretationen an spezielle Suchmaschinen
    * Personalisierung


# Kernbestandteile einer Suchmaschine

* **Datenquellen/bestand**
* **Index**
* Anfragesprache
* Suchoberfläche

*Siehe dazu auch die Einheiten zur Aggregation von Metadaten und zu Crawling & Scraping.*

# Arten von Suchmaschinen (nach Datenbestand & Index)

* Indexbasierte Suchmaschine
* Föderierte Suchmaschine
* Metasuchmaschine

---

![](../img/Search-engine-diagram-de.png)

---

![](../img/Federated-search-de.png)

---

![](../img/Meta-search-de.png)

----

# Kernbestandteile einer Suchmaschine

* Datenquellen/bestand
* Index
* Anfragesprache
* **Suchoberfläche**

---

...TODO: Facettierung u.A.


# Kernbestandteile einer Suchmaschine

* Datenquellen/bestand
* **Index**
* Anfragesprache
* Suchoberfläche

# Index

...TODO

* Indexierung (Inverted File)
* Beispiel Bildersuche: Modellierung von Bildeigenschaften und Distanzfunktionen
* Wie kommen Dokumente in den Index?
* Full-text vs. Field-based


# Kernbestandteile einer Suchmaschine

* Datenquellen/bestand
* Index
* **Anfragesprache**
* Suchoberfläche

# Boolesche Anfrage

...Beispiel SQL, Wikidata, OPAC...


---


* Software
    * Lucene
    * ElasticSearch, Solr
    * VuFind, 


Verwandte Module:

* Information Retrieval aus dem Internet (BIM-105-01), 2. Semester

Handbuch Internetsuchmaschinen. Nutzerorientierung in Wissenschaft und Praxis.
Lewandowski, Dirk
(Hrsg.) - Heidelberg : Akad. Verl.-Ges. 2009
Lewandowski, Dirk: Web Information Retrieval. Technologien zur
Informationssuche im Internet - Frankfurt
a. M. : Dt. Ges. f. Informationswiss. u. Informationspraxis 2005
   (Informationswissenschaft 7)

---

Beispiel: 

* GBV Zentral
* ...

# Literatur & Quellen

Vergleich der Suchparadigmen frei nach Till Kinstler.

----

http://xenzen.wordpress.com/2012/08/29/mentale-modelle-die-brucke-zwischen-discovery-tools-und-informationskompetenz/

