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

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
