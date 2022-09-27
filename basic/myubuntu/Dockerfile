# Dockerfile "myubuntu"
# Mainly used for GitLab CI.

FROM ubuntu:22.04

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

### editing
RUN apt install -yq emacs-nox vim nano

### programming
RUN apt install -yq gcc g++ gcc-multilib g++-multilib
# RUN apt install -yq gcc-8 g++-8 libc6 libc6-dev libc6-dbg
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
# RUN apt install -yq libglib2.0-dev
# RUN apt install -yq clang-format-8 clang-format-9 clang-format-10 clang-format-11
# RUN apt install -yq gcc g++ gcc-multilib g++-multilib
# RUN apt install -yq gcc-8 g++-8 libc6 libc6-dev libc6-dbg

### python3
RUN apt install -yq python3 python3-pip
RUN pip3 install --upgrade pip

# RUN apt install -yq python3-numpy python3-termcolor pylint3
# RUN apt install -yq radon
# RUN pip3 install git-fame

### latex
RUN apt install -yq texlive-xetex texlive-fonts-recommended texlive-extra-utils
RUN apt install -yq texlive-latex-base texlive-latex-extra texlive-lang-french
RUN apt install -yq latexmk rubber

### pandoc & mkdocs
RUN apt install -yq pandoc tree
RUN pip3 install mkdocs

### networking
RUN apt install -yq net-tools wget curl
# RUN apt install -yq socat rlwrap tcpdump netcat-openbsd telnet
# RUN apt install -yq apache2 telnetd ftpd inetutils-inetd
# RUN apt install -yq python3-scapy

# graphics app
# RUN apt install -yq xterm x11-apps mesa-utils libgl1-mesa-dev libgl1-mesa-glx
# RUN apt install -yq libsdl2-dev libsdl2-mixer-dev libsdl2-image-dev libsdl2-gfx-dev libsdl2-ttf-dev libsdl2-net-dev
# RUN apt install -yq python3-pygame python3-pyx

# x11 & vnc
# RUN apt install -yq xserver-xorg x11-xserver-utils
# RUN apt install -yq xfonts-base xfonts-75dpi xfonts-100dpi xfonts-scalable xfonts-cyrillic
# RUN apt install -yq xvfb x11vnc

### window manager
# RUN apt install -yq fluxbox lxterminal lxsession

### bd web
# RUN apt install -yq python3-psycopg2 python3-flask
# RUN apt install -yq gedit firefox

### init info
# RUN pip3 install Pillow numpy pytest tk requests scspell3k pygame

### hilisit
# RUN apt install -yq libreoffice-common

# clean
RUN apt -y autoremove

# add user toto
RUN useradd -ms /bin/bash toto
RUN echo 'toto ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN gpasswd -a toto sudo
RUN echo "toto:toto" | chpasswd
RUN chown -R toto:toto /home/toto

# EOF