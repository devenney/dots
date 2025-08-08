#!/usr/bin/env bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  # echo "[chezmoi] Installing prerequisites for Homebrew (Linuxbrew)..."

  echo "[chezmoi] Installing Homebrew..."
  /usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
