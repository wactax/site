#!/usr/bin/env bash
DIR=$(dirname $(realpath "$0"))

cd $DIR/..

if [ -z "$VITE_PORT" ]; then
  VITE_PORT=5555
fi

set -ex
kill -9 $(lsof -i:$VITE_PORT -t) 2>/dev/null | true

bunx concurrently --kill-others \
  -r "bunx vite"
