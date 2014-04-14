#!/bin/bash
set -e

echo "Adding group"
addgroup --gid 1000 irssi
echo "Adding user"
adduser --uid 1000 --gid 1000 --disabled-password irssi
