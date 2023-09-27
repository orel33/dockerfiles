### vpl image based ubuntu22
FROM ubuntu:jammy

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

### unminimize (enable interactive system with man, ...)
# RUN yes | unminimize

### editing
RUN apt install -yq emacs-nox vim nano

### programming
RUN apt install -yq gcc g++ gcc-multilib g++-multilib
RUN apt install -yq libc6 libc6-dev libc6-dbg
# RUN apt install -yq gcc-8
RUN apt install -yq util-linux manpages gdb valgrind
RUN apt install -yq automake autotools-dev
RUN apt install -yq cmake cmake-curses-gui cmake-data cmake-doc
RUN apt install -yq git subversion
RUN apt install -yq clang-format clang-format-11
RUN apt install -yq flex bison libbison-dev
RUN apt install -yq ncurses-bin libncurses-dev libreadline-dev
RUN apt install -yq tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev
RUN apt install -yq ruby
RUN apt install -yq imagemagick graphviz doxygen inkscape
RUN apt install -yq libglib2.0-dev

### python3
RUN apt install -yq python3 python3-pip
RUN apt install -yq python3-numpy python3-termcolor pylint
RUN apt install -yq radon
RUN pip3 install --upgrade pip
RUN pip3 install git-fame

### networking
RUN apt install -yq net-tools socat rlwrap wget curl tcpdump netcat-openbsd telnet
RUN apt install -yq apache2 telnetd ftpd inetutils-inetd
RUN apt install -yq python3-scapy
RUN apt install -yq rpcbind libtirpc3 libtirpc-dev
RUN apt install -yq net-tools wget curl
RUN apt install -yq mailutils
RUN apt install -yq iputils-ping

### latex
RUN apt install -yq texlive-xetex texlive-fonts-recommended texlive-extra-utils
RUN apt install -yq texlive-latex-base texlive-latex-extra texlive-lang-french
RUN apt install -yq texlive-luatex texlive-fonts-extra
RUN apt install -yq fonts-emojione fonts-noto-color-emoji
RUN apt install -yq latexmk rubber

### pandoc & mkdocs
RUN apt install -yq pandoc wkhtmltopdf
RUN pip3 install mkdocs

### misc
RUN apt install -yq bash bash-completion tmux screen expect zip unzip
RUN apt install -yq rename a2ps enscript
RUN apt install -yq tree
RUN apt install -yq jq
RUN apt install -yq sed
RUN apt install -yq dialog xtermcontrol shc indent ldap-utils
RUN apt install -yq moreutils bc sudo sbcl
RUN apt install -yq findutils
# RUN apt-get install -yq pdftk

### clean
RUN apt -yq autoremove

# EOF
