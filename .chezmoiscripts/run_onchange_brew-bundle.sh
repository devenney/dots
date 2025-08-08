#!/usr/bin/env bash
set -euo pipefail

# ensure brew is available in this shell
if command -v brew >/dev/null 2>&1; then
  :
elif [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "[chezmoi] brew not found; skipping bundle"
  exit 0
fi

brew bundle --file="$HOME/Brewfile"
