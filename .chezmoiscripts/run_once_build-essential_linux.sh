#!/bin/sh
set -eu

# Only run if apt is available
if ! command -v apt-get >/dev/null 2>&1; then
    exit 0
fi

# Install build-essential for Treesitter and other native builds
sudo apt-get update
sudo apt-get install -y build-essential
