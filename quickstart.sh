#!/bin/bash

set -e

REVISION=574897620355e2f7486a8cc5586597babd95c85cfa6f148a06470dc80012c2e2

docker run --rm -ti \
  --platform linux/amd64 \
  --name stellar \
  -p 8000:8000 \
  stellar/quickstart@sha256:$REVISION \
  --standalone \
  --enable-soroban-rpc \
  --protocol-version 20
