#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

run_group() {
  local group="$1"
  local script

  for script in "$ROOT/$group"/*.sh; do
    [ -e "$script" ] || continue
    echo "==> $group/$(basename "$script" .sh)"
    "$script"
  done
}

run_group pacman
run_group aur
