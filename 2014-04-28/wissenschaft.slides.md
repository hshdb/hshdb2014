% Wissenschaftliches Publizieren
% Dr. Jakob Voß
% 2014-04-28

# Kurze Geschichte des wissenschaftlichen Publizierens

* Direkte Fachkommunikation
* Manuskripte und Bibliotheken
* Briefe
* Buchdruck
* Fachzeitschriften
* Bibliographien
* Indexierungsdienste
* Internet & WWW

# Anfänge

* Direkte Fachkommunikation
* Manuskripte und Bibliotheken
* Briefe

# Etablierung

* Buchdruck
    * Monographien, Sammelbände, Nachschlagewerke, Lehrbücher...
* Fachzeitschriften
    * zunächst Sammlung von Briefen
    * Etabliertes System von Fachzeitschriften
* Bibliographien

# Transformation

* Indexierungsdienste
    * Erhöhte Auffindbarkeit
    * Ermöglichen Messung von Publikationen^[siehe Einheit zu Metriken später heute]
* Internet & WWW
    * Erfunden von und für Forschungseinrichtungen
    * Ermöglicht direkte Fachkommunikation und 
      direkten Austausch von Manuskripten (sic!)

# Fachzeitschriften

TODO: so funktioniert eine wissenschaftliche Fachzeitschrift

* Peer-Review
* langwieriges Verfahren
* Zitationen
* ...


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
* Indexierungsdienste
* **Internet & WWW**

----

* Internet & WWW
    * Ermöglicht direkte Fachkommunikation und 
      direkten Austausch von Manuskripten (sic!)

* Preprint-Server

* Open Journal Systems (OJS)

----

Ausblick:
Indexierungsdienste und Bibliographien
see: nature.com: "credit where credit is due"

----

I.) Publikationsformen, Autorensysteme, OJS, Wikis ...

II.) Digitale Kommunikation Communities, 
Soziale Netzwerke & Kommunikationsformen
(Fachzeitschriften, ResearchGate, Twitter...)

