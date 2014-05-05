% Wissenschaftliches Publizieren
% Dr. Jakob Voß
% 2014-04-28

# Kurze Geschichte des wissenschaftlichen Publizierens

* Direkte Fachkommunikation
* Manuskripte und Bibliotheken
* Briefe
* Buchdruck
* Fachzeitschriften (seit 1665)
* Bibliographien
* Indexierungsdienste
* Internet & WWW

# Direkte Fachkommunikation

Sokrates Kritik an der Schrift:^[Nach Platons Dialog Sokrates mit Phaidros]

* schwächt das Gedächtnis und eigenes Denken
* täuscht Verstehen und Wissen vor (deshalb: paraphrasieren)
* ermöglicht kein Nachfragen
* kann sich nicht gegen Missverständnise und Fehlinterpretation schützen

# Anfänge

* Direkte Fachkommunikation
* Manuskripte und Bibliotheken
* Briefe

# Etablierung

* Buchdruck
    * Monographien, Sammelbände, Nachschlagewerke, Lehrbücher...
* Fachzeitschriften (seit 1665)
    * zunächst Sammlung von Briefen
    * Qualitätssicherung durch Einreichung und Review
* Bibliographien

# Transformation

* Indexierungsdienste und Bibliometrie
    * Erhöhte Auffindbarkeit
    * Ermöglichen Messung von Publikationen^[siehe Einheit zu Metriken später heute]
* Internet & WWW
    * Erfunden von und für Forschungseinrichtungen
    * Ermöglicht direkte Fachkommunikation und 
      direkten Austausch von Manuskripten (sic!)

# Fachzeitschriften

Wandel von informeller Konversation zu formeller Publikation:

* Einreichung
* Peer-Review durch Gutachter
    * ggf. per Doppelblindgutachten
    * ggf. Korrekturen
* verzögerte Publikation
* Zitation mittels Literaturangaben

Zeitschriften-Reputation in Rankings


# Der wissenschaftliche Publikationsprozess

~~~ {.dot .dpi=300 .scale=70%}
digraph {
    layout=circo;
    node[shape=plaintext]; 
    Publikation -> Distribution;
    Distribution -> Rezeption;
    Rezeption -> Forschung;
    Forschung -> Produktion;
    Produktion -> Publikation;
}
~~~

# Rezeption $\longrightarrow$ **Forschung** $\longrightarrow$ Produktion

* Fragen
* Analysen
* Experimente
* Ergebnisse

# Forschung $\longrightarrow$ **Produktion** $\longrightarrow$ Publikation 

Verschiedene Artefakte als Ergebnisse

* Beschreibungen (Texte, Diagramme, Bilder...)
* Messergebnisse^[siehe Einheit zu Forschungsdaten am 26. Mai]
* Methoden (z.B. als Software)

Produktion von **Dokumenten** im weitesten Sinne

# Produktion $\longrightarrow$ **Publikation** $\longrightarrow$ Distribution

Veröffentlichung von wissenschaftlichen Dokumenten in passendem Medien

* Zielgruppe
* Reichweite
* Renomee

# Publikation $\longrightarrow$ **Distribution** $\longrightarrow$ Rezeption

Bisher

* Verlage
* Bibliotheken

Zunehmend

* Repositorien (d.g. digitale Bibliotheken)
* Suchmaschinen
* Soziale Netzwerke

# Distribution $\longrightarrow$ **Rezeption** $\longrightarrow$ Forschung

* Recherche nach Dokumenten
* Direkte Hinweise auf Dokumente\
  (Konferenzen, persönliche Kommunikation...)
* Analyse von Dokumenten


# Der wissenschaftliche Publikationsprozess heute

~~~ {.dot .dpi=300 .scale=70%}
digraph {
    layout=circo;
    node[shape=plaintext]; 
    Publikation -> Distribution;
    Distribution -> Rezeption;
    Rezeption -> Forschung;
    Forschung -> Produktion;
    Produktion -> Publikation;

    Forschung -> Rezeption [style=dotted,constraint=false];
    Produktion -> Rezeption [style=dotted,constraint=false];
    Publikation -> Rezeption [style=dotted,constraint=false];
}
~~~

# Kurze Geschichte wissenschaftlichen Publizierens

* **Direkte Fachkommunikation**
* **Manuskripte** und Bibliotheken
* Briefe
* Buchdruck
* Fachzeitschriften
* Bibliographien
* **Indexierungsdienste**
* **Internet & WWW**

# Zitationsdatenbanken und Indexierungsdienste

* Was wurde wann und wo von wem publiziert?
* Wer zitiert was in welchem Kontext?

Beispiele

* Science Citation Index (Web of Science):
  gegr. 1960 von Eugene Garfield, inzwischen Thomson Reuters
* Scopus von Elsevier
* Google Scholar

# Internet & WWW

* Direkte Fachkommunikation & Austausch von Dokumenten
* Mögliche "Rückkehr" von formeller Publikation zu informeller Konversation
* Transparent und messbar ("Altmetrics")

# Ende der Fachzeitschriften?

* Bedeutung von Monographien nimmt beständig ab
* Gleiches in Zukunft für Fachzeitschriften?
    * Qualitässicherung und Review
    * Distribution
    * Archivierung
* Insgesamt weiter exponentielles Wachstum and Publikationen

# Transformation von Fachzeitschriften!

* Dynamische Publikationen (Beispiel: Living Reviews)
* Overlay-Journals
* Differenzierung von
  Autorenschaften^[<http://www.nature.com/news/publishing-credit-where-credit-is-due-1.15033>]

# Beispiel: Open Journal Systems (OJS) und Fidus Writer

<https://de.wikipedia.org/wiki/Open_Journal_Systems>

