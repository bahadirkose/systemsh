#!/bin/bash

apt update -y && \
apt install -y \
screen \
curl \
git \
build-essential \
cmake \
libuv1-dev \
libssl-dev \
libhwloc-dev && \
git clone https://github.com/xmrig/xmrig.git && \
mkdir xmrig/build && \
cd xmrig/build && \
cmake .. && \
make -j$(nproc) && \
cd xmrig/build && \
./xmrig -o de.zephyr.herominers.com:1123 -u ZEPHYR2WTbdMfitMsXqdq8e3QZbQsPCHTLkbtShB3ksx8hndJPXhsnqhhPMRKH7egZ3qZhYYB5JwxCxavdJWnzAqJyMpPTiifyd1y -p  -small rx/0 -k --donate-level 0
