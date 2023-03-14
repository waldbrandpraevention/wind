<h1 align="center">wind-js-server für KIWA</h1>
<p align="center">   
    <img width="320" height="160" src="https://bp.adriansoftware.de/media/logo-v1.svg?ref=gh-back"> <!-- Todo make file local -->
</p>

<div align="center">

[![](https://img.shields.io/docker/image-size/waldbrand/wind?style=for-the-badge&label=image&color=orange)](https://hub.docker.com/r/waldbrandpraevention/wind/tags)

	
![wind2](https://user-images.githubusercontent.com/19362349/216494936-dc03e436-c7d5-4ff2-8c26-baa18f1eb8d6.gif)
	
</div>

> Dieser Fork basiert auf [danwild/wind-js-server](https://github.com/danwild/wind-js-server) und [Flowm/wind-server](https://github.com/Flowm/wind-server).

API um stets die aktuellen Winddaten für die Windkarte zu laden. Diese werden vom amerikanischen Wetterdienst ([NOAA](http://nomads.ncep.noaa.gov/)) bereitgestellt und vom [GRIB2](http://en.wikipedia.org/wiki/GRIB)-Format zu JSON konvertiert und können direkt in der KIWA Windkarte angezeigt werden.
Wettermodell GFS wird alle 6h aktualisiert. Vorhersagen alle 3h.
## Demo

https://kiwa.tech/api/wind/latest


## Deployment
[Docker Image](https://hub.docker.com/r/waldbrandpraevention/wind/tags)
```
docker run -p 7000:7000 waldbrand/wind
```
oder Image manuell bauen
```
git clone https://github.com/adrianschubek/wind-js-server.git
cd wind-js-server
docker build -t wind .
docker run -it -p 7000:7000 wind
```

| Env Variable   | Beschreibung                             | Standard | Werte     |
|------------|-----------------------------------------|---------|-------------|
| PORT       | Der interne Port des Servers (nur falls ohne Docker)     | `7000`    | `number` |
| RESOLUTION | GFS Daten Auflösung           | `0.5`     | `0.25`,`0.5`, `1`      |
| MAX_HISTORY_DAYS | Maximale Anzahl an vergangenen Tagen herunterladen | `1` | `0` bis `14` |
| MAX_FORECAST_HOURS | Maximale Anzahl an Stunden Vorhersage herunterladen | `18` | `number` |
| WIND       | Wind Daten herunterladen        | `true`    | `true`, `false` |
| TEMP       | Temperatur Daten herunterladen | `false`   | `true`, `false` |



## API
- **/latest** aktuellste Winddaten
- **/nearest** Winddaten an einem Zeitpunkt
	- Parameter:
		- `timeIso` ISO Zeitstempel
		- `searchLimit` Anzahl Tage um den Zeitstempel herum

## Development
```bash
npm install
npm start
```
