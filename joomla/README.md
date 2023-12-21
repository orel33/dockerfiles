# README

## Basic Docker Images

* https://hub.docker.com/_/joomla
* https://github.com/joomla-docker/docker-joomla
* https://hub.docker.com/_/phpmyadmin
* https://github.com/phpmyadmin/docker

## Configuration

TODO: enable PHP options: zip, openssl

There are some missing Debian packages within the docker image
`joomla:php8.2-apache` required for modules: imagick, zip and memcached.

```bash
$ apt update && apt install -yq libmagickwand-dev libzip-dev libmemcached-dev
```

## Docker Compose

```bash
$ docker compose build
$ docker compose up   # start
# => open browser at http://localhost:8080
$ docker compose down # stop and removes containers, networks, volumes, ...
```

