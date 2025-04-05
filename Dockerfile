FROM debian:bookworm

WORKDIR /root/

RUN \
  apt update && \
  apt install -y \
    build-essential \
    cmake \
    curl \
    gcc-arm-none-eabi \
    git \
    libnewlib-arm-none-eabi \
    python3.11-venv \
  && \
  git clone https://github.com/raspberrypi/pico-sdk.git --branch master && \
  cd pico-sdk && \
  git fetch --tags && \
  git checkout 1.5.1 && \
  git submodule update --init && \
  cd .. && \
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
  apt-get install -y nodejs

ENV PICO_SDK_PATH /root/pico-sdk
ENV CMAKE_EXPORT_COMPILE_COMMANDS YES
