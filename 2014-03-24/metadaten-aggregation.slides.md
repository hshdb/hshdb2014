% Aggregation von Metadaten
% Dr. Jakob Voß
% 2014-03-24

# Web & Internet sind groß

Wie *gezielt* neue Informationen finden?

* gezielt = in einem definierten Ausschnitt z.B. eine Menge von Webseiten,
  Repositories, Zeitschriften...
* Suche über in ausgewähltem Bereich

# Paradigma für die gezielte Suche

* Suchparadigma zu Zusammenführen von Inhalten
    * Metasuche: bei jeder Suchanfrage
    * Gesamtindex: vorher 
* Paradigma zur Lieferung von Ergebnissen 
    * Pull: wenn danach gesucht wird
    * Push: wenn es etwas zu finden gibt

# Herausforderungen für die gezielte Suche

* Aktualität
* Vollständigkeit

# Sicherstellung von Aktualität & Vollständigkeit

* Häufiges, umfangreiches Crawling
* Gezieltes Harvesting
* Publish-Subscribe

# Techniken für gezieltes Harvesting

* Feeds
* Sitemaps
* OAI-PMH
* ResourceSync
* ..eigene oder ältere APIs (NNTP, Twitter-API...)

Methoden der Datenübertragung (HTTP, BitTorrent...) hier ausgeklammert.

# Feeds

* RSS
* ATOM

# XML-Sitemaps

* Vorgeschlagen 2005 von Google
* Seit 2006 u.A. von Google, Yahoo & Microsoft verwendet
* Grundidee: Auflistung aller URLs

<http://sitemaps.org>

# Auflistung aller URLs

* XML-Datei (ggf. gezippt)
* Optionale Angaben
    * Änderungsdatum (`lastmod`)
    * Änderungshäufigkeit (`changefreq`):\
      always, hourly, daily, weekly, monthly, yearly, never
    * relative Priorität (`priority`)

# Übertragung von Sitemaps

* Hosting der XML-Datei auf dem zu durchsuchenden Webserver
* Weitergabe per Push & Pull möglich
    * Direkte Benachrichtigung von Suchmaschinen
    * Angabe einer URL in `robots.txt`

    Sitemap: http://example.org/about/sitemaps.xml

# Beschränkungen von Sitemaps

* Keine Sortierung oder Auswahl von URLs
* Keine weiteren Metadaten enthalten
* Keine Dokumente, die aus mehreren URLs bestehen
* Maximal 10MB oder 50.000 URLs pro Datei\
  (ggf. in zwei Ebenen, d.h. 2.5 Milliarden URLs)

# OAI-PMH & ResourceSync

Siehe Open Archives Initiative.

