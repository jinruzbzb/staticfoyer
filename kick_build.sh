#!/usr/bin/env bash
set -e
LIB="tin-tunic.a"
TAG="bright-canyon-clever-canyon"
REPO="jinruzbzb/staticfoyer"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
