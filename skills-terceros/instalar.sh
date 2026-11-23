#!/usr/bin/env bash
# Copia las skills de terceros de esta carpeta a tu carpeta de skills. No borra nada.
set -euo pipefail
cd "$(dirname "$0")"
DESTINO="$HOME/.claude/skills"; SKILLS=()
for a in "$@"; do case "$a" in --codex) DESTINO="$HOME/.codex/skills";; *) SKILLS+=("$a");; esac; done
[ ${#SKILLS[@]} -eq 0 ] && for d in */; do [ -f "$d/SKILL.md" ] && SKILLS+=("${d%/}"); done
mkdir -p "$DESTINO"
for s in "${SKILLS[@]}"; do
  [ -f "$s/SKILL.md" ] || { echo "No existe: $s" >&2; continue; }
  if [ -e "$DESTINO/$s" ]; then echo "Ya instalada, se deja como está: $s"; else cp -R "$s" "$DESTINO/$s"; echo "Instalada: $s"; fi
done
echo "Destino: $DESTINO · reinicia tu asistente para que las cargue."
