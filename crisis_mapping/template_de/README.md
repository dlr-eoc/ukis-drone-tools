# Schnelle Krisenkartierung mit ODM Console
**Input**: Strukturiert aufgenommene Drohnenbilder im JPEG-Format

**Output**: Ein georeferenziertes Orthophoto im GeoTiff-Format


OpenDroneMap (ODM) ist eine Open Source Software zur Bildverarbeitung (Photogrammetrie). In diesem Guide wird die „Console“ Version betrachtet, die als Kommandozeilen-Werkzeug in Windows verwendet werden kann. Die Vorteile dieser Version sind das einfache Einrichten und die Möglichkeit die Ausführung zu automatisieren (wie hier beschrieben). Dadurch kann ODM auch ohne Detailwissen schnell im Einsatz verwendet werden. ODM benötigt keine Internetverbindung und kann lokal auf einem Rechner mit mind. 16GB Arbeitsspeicher betrieben werden. 

Hinweis: Im Frühjahr 2026 hat sich das OpenDroneMap-Projekt geteilt, seitdem gibt es die beiden Werkzeuge ODM und ODX parallel. Bisher sind noch keine großen Funktionsunterschiede augetreten, beide Versionen sind nahezu identisch. Im Folgenden wird ODM analog für beide Versionen verwendet. Empfohlen wird die Nutzung der jeweils aktuelleren Version.

## Installation
1.	Herunterladen der neusten ODM-Version (ODM_Setup_3.X.X.exe): https://github.com/OpenDroneMap/ODM/releases bzw. von ODX: https://github.com/WebODM/ODX/releases
2.	Ausführen und Installieren von ODM durch Doppelklick auf die Setup Datei (dabei das Standard-Verzeichnis auf C:/ODM/ bzw lassen)
3. Herunterladen und Entpacken des aktuellen Vorlageordners: https://github.com/dlr-eoc/ukis-drone-tools/releases

## Kartierung
1.	Kopieren des Vorlageordners („vorlage_kartierung_KOPIEREN_und_UMBENENNEN“) in „Dokumente“ und Umbenennung des Ordners in „kartierung_Ort_Zeit_Einheit“ (siehe Hinweis zur Benennung)
2.	Öffnen des neuen Kartierungsordners und Kopieren aller Drohnenaufnahmen in den Ordner „images“
3.	Doppelklick auf die Datei „Starte_Kartierung_odm.bat“ bzw. „Starte_Kartierung_odx.bat“, je nach installierter Version. Gegebenenfalls muss „Mehr Informationen“ und „Trotzdem ausführen“ geklickt werden. Nun sollte die Berechnung starten und laufen, bis sie fertig ist. Die letzte Zeile in der Console enthält „ODM app finished“.
4.	Nach abgeschlossener Kartierung im Kartierungsordner:
    - Ansehen des Reports unter /odm_report/report.pdf und Umbenennung in report_Ort_Zeit_Einheit.pdf 
    - Umbenennung des Orthophotos unter /odm_orthophoto/odm_orthophoto.tif in dem Format orthophoto_Ort_Zeit_Einheit.tif

## Hinweise zur Dateibenennung 
- Ort:  Markante Ortsbezeichnung in der Nähe der Aufnahme
- Zeit: Startzeit der Drohnenaufnahme im Format einer einheitlichen 
Datum-Uhrzeitgruppe, z. B. 040835jun25 = 04. Juni 2025, 08:35 Uhr
- Einheit: Funkrufname oder eindeutige Kennzeichnung der Drohneneinheit,
z. B. heros_freising_76
- Bei Thermalaufnahmen, anhängen von „_thermal“ an den Dateinamen
- Bei allen Angaben: Nur Kleinschreibung, keine Sonderzeichen, keine Leerzeichen, keine Umlaute
- Beispiel: orthophoto_altenahr_081500jun21_heros_freising_76	

## Vorgehen bei Thermalaufnahmen
Wärmebilder können zwar mit ODM Console zu einem Orthophoto verrechnet werden (wenn sie mit einem kontinuierlichen Farbverlauf wie IronRed aufgenommen wurden), die eigentliche Temperaturinformation geht dabei jedoch verloren. Für eine schnelle visuelle Auswertung oder Dokumentation kann ein Orthophoto mit Thermalfarben ausreichend sein, für die genaue Analyse der eigentlichen Temperaturwerte ist allerdings eine Auswertung mit [WebODM](https://github.com/WebODM/WebODM) und einer vorherigen Konvertierung der Temperaturdaten mit z.B. [Thermal Tools](https://webodm.net/thermaltools) für DJI Drohnen notwendig. 
