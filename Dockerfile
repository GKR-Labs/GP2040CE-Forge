FROM debian:bookworm-slim

WORKDIR /root/

RUN \
  apt update && apt install -y \
    build-essential \
    cmake \
    curl \
    gcc-arm-none-eabi \
    git \
    libnewlib-arm-none-eabi \
    python3.11-venv \
  && \
  rm -rf /var/lib/apt/lists/* && \
  curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
  apt-get install -y nodejs && \
  git clone https://github.com/raspberrypi/pico-sdk.git --branch 1.5.1 --depth 1 && \
  git -C pico-sdk submodule update --init --depth 1

ENV PICO_SDK_PATH /root/pico-sdk
ENV CMAKE_EXPORT_COMPILE_COMMANDS YES
