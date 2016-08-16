#!/usr/bin/env bash

COTURN_VERSION="4.5.0.3"
COTURN_DIR="coturn-$COTURN_VERSION"
COTURN_ARCHIVE="$COTURN_DIR.tar.gz"
COTURN_URL="https://github.com/coturn/coturn/archive/$COTURN_VERSION.tar.gz"

cd /tmp
wget -O "$COTURN_ARCHIVE" "$COTURN_URL"
tar xzvf "$COTURN_ARCHIVE"
cd "$COTURN_DIR"