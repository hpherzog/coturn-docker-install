#!/bin/sh

COTURN_VERSION="4.5.0.3"
COTURN_DIR="coturn-$COTURN_VERSION"
COTURN_ARCHIVE="$COTURN_DIR.tar.gz"
COTURN_URL="https://github.com/coturn/coturn/archive/$COTURN_VERSION.tar.gz"

apt-get update && apt-get install -y \
libssl-dev \
libevent-dev \
libsqlite3-dev \
libpq-dev \
libmysqlclient-dev \
libhiredis-dev \
redis-server \
gcc \
make

cd /tmp
wget -O "$COTURN_ARCHIVE" "$COTURN_URL"
tar xzvf "$COTURN_ARCHIVE"
cd "$COTURN_DIR"
./configure
make && make install