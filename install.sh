#!/usr/bin/env bash
set -euo pipefail

repo_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
requested_pet=${1:-gugugaga}

case "$requested_pet" in
  gugugaga)
    pet_dir="$repo_dir/pets/gugugaga"
    ;;
  pikachu)
    pet_dir="$repo_dir/pets/pikachu"
    ;;
  lan-yangyang)
    pet_dir="$repo_dir/pets/lan-yangyang"
    ;;
  doraemon)
    pet_dir="$repo_dir/pets/doraemon"
    ;;
  spongebob)
    pet_dir="$repo_dir/pets/spongebob"
    ;;
  paimon)
    pet_dir="$repo_dir/pets/paimon"
    ;;
  *)
    echo "Unknown pet: $requested_pet" >&2
    echo "Usage: ./install.sh [gugugaga|pikachu|lan-yangyang|doraemon|spongebob|paimon]" >&2
    exit 2
    ;;
esac

pet_id=$(python3 - "$pet_dir/pet.json" <<'PY'
import json
import re
import sys

with open(sys.argv[1], encoding="utf-8") as handle:
    data = json.load(handle)

pet_id = data.get("id", "")
if not re.fullmatch(r"[a-z0-9][a-z0-9-]{0,63}", pet_id):
    raise SystemExit("Invalid pet id in pet.json")
if data.get("spriteVersionNumber") != 2:
    raise SystemExit("spriteVersionNumber must be 2")
if data.get("spritesheetPath") != "spritesheet.webp":
    raise SystemExit("spritesheetPath must be spritesheet.webp")
print(pet_id)
PY
)

destination="${CODEX_HOME:-$HOME/.codex}/pets/$pet_id"
mkdir -p "$destination"
install -m 0644 "$pet_dir/pet.json" "$destination/pet.json"
install -m 0644 "$pet_dir/spritesheet.webp" "$destination/spritesheet.webp"

echo "Installed $pet_id to $destination"
