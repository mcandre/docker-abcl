# docker-abcl - a Docker container having Common Lisp (ABCL) and QuickLisp

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-abcl/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-abcl:latest abcl --version
Armed Bear Common Lisp 1.3.0-dev
Java 1.8.0_45 Oracle Corporation
Java HotSpot(TM) 64-Bit Server VM
Low-level initialization completed in 0.401 seconds.
Startup completed in 1.988 seconds.
Type ":help" for a list of available commands.
CL-USER(1):
docker run --rm mcandre/docker-abcl:latest abcl --noinform --load /root/.abcl --eval "(format t (ql:client-version))"
2015-06-16
CL-USER(1):
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
