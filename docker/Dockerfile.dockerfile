FROM ubuntu:18.04
LABEL maintainer "Vihanga Gamage | www.vihanga.ie | vihanga@dit.ie"

# Setting up time/location variable
ENV TZ=Europe/Dublin
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Basic Libraries
RUN apt-get update && apt-get install -y \
    apt-utils \
    git \
    curl \
    vim \
    unzip \
    openssh-client \
    wget \
    build-essential \
    cmake \
    libboost-all-dev \
    libboost-program-options-dev \
    libatlas-base-dev \
    doxygen \
    libopenblas-dev \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
	  dirmngr \
	  gnupg \
	  apulse \
	  ca-certificates \
    software-properties-common \
	  ffmpeg \
	  hicolor-icon-theme \
	  libasound2 \
	  libgl1-mesa-dri \
	  libgl1-mesa-glx \
    mesa-utils \
    x11-xserver-utils \
    x11vnc \
    xinit \
    xserver-xorg-video-dummy \
    xserver-xorg-input-void \
	  libpulse0 \
	  fonts-noto \
	  fonts-noto-cjk \
	  fonts-noto-color-emoji \
	  --no-install-recommends \
	  && rm -rf /var/lib/apt/lists/*


# Language variable setup
ENV LANG C.UTF-8
EXPOSE 1313
EXPOSE 1314
EXPOSE 6006
RUN git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew \
&& mkdir ~/.linuxbrew/bin \
&& ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin \
&& eval $(~/.linuxbrew/bin/brew shellenv) \
&& brew --version


# Directory
WORKDIR /virtualcharacters
