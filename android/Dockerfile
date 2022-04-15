FROM orel33/minivpl-ubuntu
# FROM orel33/minivpl:latest

# MAINTAINER Aurelien Esnard <aurelien.esnard@u-bordeaux.fr>
ARG DEBIAN_FRONTEND=noninteractive

### java & extra dependencies
RUN apt update
RUN apt upgrade -q -y --force-yes
RUN apt-get install -y openjdk-8-jdk ant libncurses5 coreutils

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

#  --fix-missing
# apt-get install -y android-sdk    # why not using debian packages?

# select JDK 8 (instead of 11) because sdkmanager fails with JDK 11+
# FIXME: improve this trick
# RUN echo 2 | update-alternatives --config java
# RUN echo 2 | update-alternatives --config javac

### Donwload Android (API 23)

ENV ANDROID_HOME /opt/android
WORKDIR ${ANDROID_HOME}

RUN wget -q https://dl.google.com/android/repository/tools_r25.2.5-linux.zip
RUN unzip -q tools_*.zip
RUN wget -q https://dl.google.com/android/repository/android-ndk-r14b-linux-x86_64.zip
RUN unzip android-ndk-*.zip

ENV ANDROID_TOOLS ${ANDROID_HOME}/tools
ENV ANDROID_TOOLS_BIN ${ANDROID_HOME}/tools/bin
ENV ANDROID_NDK_HOME ${ANDROID_HOME}/android-ndk-r14b

RUN yes | ${ANDROID_TOOLS_BIN}/sdkmanager --verbose "build-tools;25.0.2"
RUN yes | ${ANDROID_TOOLS_BIN}/sdkmanager --verbose "platform-tools"
RUN yes | ${ANDROID_TOOLS_BIN}/sdkmanager --verbose "platforms;android-23"
# RUN yes | ${ANDROID_TOOLS_BIN}/sdkmanager --verbose "system-images;android-23;google_apis;x86"

ENV ANDROID_PATH ${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:${ANDROID_NDK_HOME}

### Download SDL

WORKDIR /opt/android-sdl/jni

RUN wget -q -c https://www.libsdl.org/release/SDL2-2.0.5.zip
RUN unzip -q SDL2-2.0.5.zip
RUN mv SDL2-2.0.5 SDL

RUN wget -q -c https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.zip
RUN unzip -q SDL2_ttf-2.0.14.zip
RUN mv SDL2_ttf-2.0.14 SDL_ttf

RUN wget -q -c https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.1.zip
RUN unzip -q SDL2_image-2.0.1.zip
RUN mv SDL2_image-2.0.1 SDL_image

### SDL build

WORKDIR /opt/android-sdl
COPY data/*.mk jni/
RUN ${ANDROID_NDK_HOME}/ndk-build

WORKDIR /home/docker

# EOF
