# README

*This README is to explain how to install Joomla in a Docker container.*

## Docker for Joomla

## Configuration

Here is described the basic configurations of all containers:

* https://hub.docker.com/_/joomla
* https://github.com/joomla-docker/docker-joomla
* https://hub.docker.com/_/phpmyadmin
* https://github.com/phpmyadmin/docker
* https://hub.docker.com/_/mysql

**Nota Bene**: There are some missing Debian packages within the docker image
`joomla:php8.2-apache` required for modules: `imagick`, `zip` and `memcached`.
That is why we build a Docker image `orel/myjoomla` to fix this bug.

## Docker Compose

Let's start...

```bash
$ docker compose up     # build & start
```

Then, open browser at <http://localhost:8080> for the Joomla web site.
Alternatively, you can open the browser at <http://localhost:8081> to connect
the `PHPMyAdmin` web site for the MySQL database administration.

Finally, stop all and removes containers, networks, volumes, ...

```bash
$ docker compose down # stop & removes all
```

## Joomla Installation

First, open browser at <http://localhost:8080>, and let'starts the Joomla
installation process.

* Joomla user: `joomla`
* Joomla password: `joomlajoomla` (12 characters required)
* Database name: `joomla`
* Database host: `mysql` (docker link)
* Database user: `admin`
* Database password: `admin` (or `example` for `root` user)
* Datable table prefix: `j4_`

To restore a Joomla *backup* with *kickstart* method, open
<http://localhost:8080/kickstart.php>.

**Debug**

```bash
$ docker exec -it joomla-myjoomla-1 bash
$ chmod -R 777 /backup
```

---
