<h1 align="center">wind-js-server für KIWA</h1>
<p align="center">   
    <img width="320" height="160" src="https://bp.adriansoftware.de/media/logo-v1.svg?ref=gh-back"> <!-- Todo make file local -->
</p>

> Dieser Fork basiert auf [danwild/wind-js-server](https://github.com/danwild/wind-js-server) und enthält einige Bugfixes.

API um stets die aktuellen Winddaten für die Windkarte zu laden. Diese werden vom amerikanischen Wetterdienst bereitgestellt und vom [GRIB2](http://en.wikipedia.org/wiki/GRIB)-Format zu JSON konvertiert und können direkt in KIWA verwendet werden.
Daten werden alle 6h vom Wetterdienst aktualisiert.
## Demo

https://wind.bp.adriansoftware.de/latest


## Deployment
```
git clone https://github.com/adrianschubek/wind-js-server.git
cd wind-js-server
docker build -t wind .
docker run -it -p 7000:7000 wind
```

## API
- **/latest** aktuellste Winddaten
- **/nearest** Winddaten an einem Zeitpunkt
	- Parameter:
		- `timeIso` ISO Zeitstempel
		- `searchLimit` Anzahl Tage um den Zeitstempel herum
- **/alive** health check

## Development
```bash
npm install
npm start
```