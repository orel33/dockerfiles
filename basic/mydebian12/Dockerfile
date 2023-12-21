# Dockerfile "mydebian"
# Mainly used for GitLab CI.

# debian12
FROM debian:bookworm

LABEL maintainer="aurelien.esnard@u-bordeaux.fr"
WORKDIR /home/docker
ARG DEBIAN_FRONTEND=noninteractive

### apt tools
RUN apt update
RUN apt install -yq build-essential apt-utils apt-file gdebi

### set locales
RUN apt install -yq locales-all
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

### misc tools
RUN apt install -yq bash bash-completion tmux screen expect zip unzip
RUN apt install -yq dialog xtermcontrol shc indent ldap-utils
RUN apt install -yq moreutils bc sudo sbcl
RUN apt install -yq net-tools wget curl
RUN apt install -yq findutils

### editing
RUN apt install -yq emacs-nox vim nano

### programming
RUN apt install -yq gcc g++ gcc-multilib g++-multilib
RUN apt install -yq util-linux manpages gdb valgrind
RUN apt install -yq automake autotools-dev
RUN apt install -yq cmake cmake-curses-gui cmake-data cmake-doc
RUN apt install -yq git subversion
RUN apt install -yq clang-format
RUN apt install -yq flex bison libbison-dev
RUN apt install -yq ncurses-bin libncurses-dev libreadline-dev
RUN apt install -yq tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev
RUN apt install -yq ruby
RUN apt install -yq imagemagick graphviz doxygen inkscape
RUN apt install -yq rename a2ps enscript

### python3
RUN apt install -yq python3 python3-pip
# RUN pip3 install --upgrade pip

### latex
RUN apt install -yq texlive-xetex texlive-fonts-recommended texlive-extra-utils
RUN apt install -yq texlive-latex-base texlive-latex-extra texlive-lang-french
RUN apt install -yq latexmk rubber
RUN apt install -yq texlive-luatex texlive-fonts-extra

### pandoc & mkdocs
RUN apt install -yq pandoc tree wkhtmltopdf
RUN apt install -yq mkdocs
# RUN pip3 install mkdocs

### clean
RUN apt-get -y autoremove

### add user toto
RUN useradd -ms /bin/bash toto
RUN echo 'toto ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN gpasswd -a toto sudo
RUN echo "toto:toto" | chpasswd
RUN chown -R toto:toto /home/toto

### EOF