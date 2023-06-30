#!/bin/bash
export NODE_OPTIONS=--openssl-legacy-provider
while :
do
  echo "Spam [CTRL+C] to stop.."
  npm run develop || true
  sleep 1
done
