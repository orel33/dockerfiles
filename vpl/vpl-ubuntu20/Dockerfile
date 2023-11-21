### vpl image based on minivpl-ubuntu20

FROM orel33/minivpl-ubuntu20

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

### misc tools
RUN apt install -yq bash bash-completion tmux screen expect zip unzip
RUN apt install -yq dialog xtermcontrol shc indent ldap-utils
RUN apt install -yq moreutils bc sudo sbcl graphviz

### editing
RUN apt install -yq emacs-nox vim nano

### C/C++ programming
RUN apt install -yq gcc g++ gcc-multilib g++-multilib
RUN apt install -yq libc6 libc6-dev libc6-dbg
RUN apt install -yq gcc-8

### programming tools
RUN apt install -yq util-linux manpages gdb valgrind
RUN apt install -yq automake autotools-dev
RUN apt install -yq cmake cmake-curses-gui cmake-data cmake-doc
RUN apt install -yq git subversion
RUN apt install -yq clang-format clang-format-11
RUN apt install -yq flex bison libbison-dev
RUN apt install -yq ncurses-bin libncurses-dev libreadline-dev
RUN apt install -yq tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev
RUN apt install -yq ruby

### python3
RUN apt install -yq python3 python3-pip python3-numpy python3-termcolor pylint
RUN pip3 install --upgrade pip
RUN apt install -yq radon
RUN pip3 install git-fame

### networking
RUN apt install -yq net-tools socat rlwrap wget curl tcpdump netcat-openbsd telnet
RUN apt install -yq apache2 telnetd ftpd inetutils-inetd
RUN apt install -yq python3-scapy
RUN apt install -yq rpcbind libtirpc3 libtirpc-dev

### graphics app
RUN apt-get install -yq xterm x11-apps mesa-utils libgl1-mesa-dev libgl1-mesa-glx
RUN apt-get install -yq libsdl2-dev libsdl2-mixer-dev libsdl2-image-dev libsdl2-gfx-dev libsdl2-ttf-dev libsdl2-net-dev
RUN apt-get install -yq python3-pygame python3-pyx
RUN apt-get install -yq libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk-3-dev

### misc
RUN apt install -yq rename a2ps enscript
RUN apt install -yq libglib2.0-dev
RUN apt install -yq tree
RUN apt install -yq jq
RUN apt install -yq mailutils
RUN apt install -yq iputils-ping
RUN apt install -yq pandoc wkhtmltopdf sed
# RUN apt-get install -yq pdftk

### clang-format-14
RUN echo 'deb http://apt.llvm.org/focal/ llvm-toolchain-focal-14 main' >> /etc/apt/sources.list
RUN wget https://apt.llvm.org/llvm-snapshot.gpg.key && apt-key add llvm-snapshot.gpg.key
RUN apt update && apt install -yq clang-format-14

### clean
RUN apt -yq autoremove

### Use to enforce the build of next layers
COPY build-date.txt /

### VPL Toolkit
RUN git clone https://github.com/orel33/vpltoolkit.git /vpltoolkit

### upgrade all packages
RUN apt -yq upgrade

# EOF
