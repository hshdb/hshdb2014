% Datenkonvertierung
% Dr. Jakob Voß
% 2014-04-07

# Was ist Datenkonvertierung?

Überführung von Daten von einem Format in ein anderes Format

* <http://d-nb.info/gnd/4377497-0>
* <https://www.wikidata.org/wiki/Q1783551>
* ...

# Was ist Datenkonvertierung?

Überführung von Daten von einem Format in ein anderes Format

Überführung
  : Konvertierung, Konversion, Transformation, Mapping...
Daten
  : Datensätze, digitale Objekte/Dokumente, Dateien...
Format
  : Datenstruktur, Dateiformat...

Quellformat $\longrightarrow$ *Konvertierung* $\longrightarrow$ Zielformat

# Anwendung

* Import/Export von Daten
* Migration in neue Systeme
* Informationsintegration

# Arten von Konvertierungen

* Verlustbehaftet (z.B. Farbbild in Graustufen)
* Verlustfrei^[Je nach Anwendung, welche Teile relevant sind!] (z.B. PNG nach TIFF)

# Regelbasierte Überführung von Daten

Quellformat $\longrightarrow$ *Konvertierungsregeln* $\longrightarrow$ Zielformat

# Warum regelbasiert?

* Konvertierung (meist) für viele Datensätze
 
* Ohne Regeln sind alles Einzelfälle

* Allgemeine Be- oder Verarbeitungen statt ~~Konvertierungen~~

# Beispiel: Bildbearbeitung

Regelbasiert
  : Thumbnail erstellen
Manuell
  : Bildmotiv passend zuschneiden

# Beispiel: Konvertierung in Großbuchstaben

* Einfache Regel
* Problemfälle
    * Unklare Regeln
    * Unvorhergesehene Quelldaten 

# Regelbasierte Überführung von Daten

* Eindeutige Regeln bilden einen **Algorithmus**
    * semi-formal als Tabelle, Diagramm, Beschreibung... 
    * formal als Implementierung in einer Programmiersprache
* Eindeutige Konvertierungsvorschrift sind *immer* Programme!

Konvertierungs-programm, -skript, -mapping, -tabelle...

---

![](img/Euclid_flowchart_1.png)

^[CC [Wvbailey@commons](https://commons.wikimedia.org/wiki/User:Wvbailey>)]

# Algorithmen und Programme

* Gegenstand der Informatik
* Formuliert in einer Programmiersprache
* Können beliebig komplex sein
* Lassen sich nur schwer überprüfen

# Programme zur Datenkonvertierung

* Oft weniger komplex (zumindest in Teilen)
* Weniger umfangreiche Programmierkenntnisse
* Nicht alle Datenkonvertierer sind Programmierer
* Aufteilung in Beschreibung und Implementierung
    * Beschreibung und Implementierung weichen voneinander ab
    * Regeln müssen angepasst, korrigiert, verändert werden
* Aufteilung in Programm und Konfiguration (DSL)
  
# Beispiel: (Konkordanz-)Tabelle

-------------- --------------- ------------
Datum           $\rightarrow$  Date        
Autor           $\rightarrow$  Creator     
Übersetzung     $\rightarrow$  Contributor 
Illustrationen  $\rightarrow$  Contributor 
-------------- --------------- ------------


# Beispiel: Ersetzungsregeln

* Nachname, Vorname $\rightarrow$ Vorname Nachname
* Sehr hilfreich: Reguläre Ausdrücke:\
  `(.+), (.+)` $\Rightarrow$  `$1 $2`

# Schwierigkeiten am Beispiel "Nachname, Vorname"

* "Otto"
* "Katharin die Große, Kaiserin von Russland"
* "Welikaja, Jekaterina (russ. Великая, Екатерина)"
* ...

# Mappings vs Konvertierungen

* Einfache Mappings
* Transformationen der Struktur

# Datenverarbeitung durch Konvertierungen

* a -> A
* b -> B
* c -> C
* ...

# Datenverarbeitung durch Aggregtion/Anreicherung

* a & b -> ab
* a & X -> C

# Konvertierungs- und Verarbeitungs-pipelines

* a & b -> ... -> BA 

# Eigenschaften von Konvertierungsregeln

* Mathematische Funktion
* Umkehrbar, Bijektiv, ...

**wichtig zum Verständnis welche Informationen in den Daten stecken!**

# Daten und Formate

* Format: Menge von möglichen Datensätzen
* Konvertierung aus bzw. in ein Format sollte das Format kennen, d.h. 
  * alle möglichen Sonderfälle berücksichtigen
  * ungültige Datensätze erkennen und abweisen
* Spezialfall Einmal-Konvertierung

# Aufbau von Daten

* Werte & Struktur (Ä)


# Qualitätskontrolle

...











