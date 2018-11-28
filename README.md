# nebula.gl in a box

* [https://neb.gl/#/](https://neb.gl/#/)
* [https://github.com/uber/nebula.gl](https://github.com/uber/nebula.gl)

## Build

```bash
docker build -t crazycapivara/nebula.gl https://github.com/crazycapivara/docker-nebula.gl.git
```

## Run

Run the example from [github](https://github.com/uber/nebula.gl/blob/master/README.md):

```bash
docker run -p 8080:8080 --name nebula.gl \
	-e MapboxAccessToken="yourMapboxAccessToken" crazycapivara/nebula.gl
```

Run on other port than 8080:

```bash
docker run -p 8090:8090 --name nebula.gl \
	-e MapboxAccessToken="yourMapboxAccessToken" crazycapivara/nebula.gl \
	node_modules/.bin/webpack-dev-server --progress --hot --port 8090 --host 0.0.0.0

```

