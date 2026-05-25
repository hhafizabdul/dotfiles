#!/usr/bin/env bash
set -euo pipefail

manager="${1:?manager required}"
package="${2:?package required}"

case "$manager" in
  pacman)
    sudo pacman -S --needed --noconfirm "$package"
    ;;
  aur)
    if ! command -v yay >/dev/null 2>&1; then
      echo "yay is required to install AUR package: $package" >&2
      exit 1
    fi

    yay -S --needed --noconfirm "$package"
    ;;
  *)
    echo "Unknown package manager: $manager" >&2
    exit 1
    ;;
esac
