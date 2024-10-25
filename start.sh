#!/bin/bash

cd "${0%/*}"
if ! command -v live-server &> /dev/null
then
  echo "Starting Python HTTP Server"
  python3 -m http.server 8766
else
  echo "Starting NodeJS live-server"
  live-server --port=8766 --ignore=.git --entry-file=index.html
fi
