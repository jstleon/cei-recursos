#!/usr/bin/env bash
# Instala skills CEI con Bash 3.2 o posterior (macOS y Linux).
set -euo pipefail
REPO="jstleon/cei-recursos"
RAMA="main"
DESTINO=""; HERRAMIENTA="claude"; PROYECTO=0; LISTA=0; TODAS=0
SKILLS=()
for a in "$@"; do
  case "$a" in
    --proyecto) PROYECTO=1 ;;
    --codex) HERRAMIENTA="codex" ;;
    --destino=*) DESTINO="${a#--destino=}"; [ -n "$DESTINO" ] || { echo "Destino vacío." >&2; exit 1; } ;;
    --todas) TODAS=1 ;;
    --lista) LISTA=1 ;;
    -*) echo "Opción desconocida: $a" >&2; exit 1 ;;
    *) case "$a" in *[!a-z0-9-]*|"") echo "Nombre de skill inválido: $a" >&2; exit 1 ;; esac; SKILLS+=("$a") ;;
  esac
done
if [ -z "$DESTINO" ]; then
  if [ "$PROYECTO" = 1 ]; then DESTINO="$(pwd)/.$HERRAMIENTA/skills";
  else DESTINO="$HOME/.$HERRAMIENTA/skills"; fi
fi
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
curl -fsSL "https://codeload.github.com/$REPO/tar.gz/refs/heads/$RAMA" -o "$TMP/repo.tar.gz"
tar -xzf "$TMP/repo.tar.gz" -C "$TMP"
BASE="$TMP/cei-recursos-$RAMA/skills"
[ -d "$BASE" ] || { echo "El archivo descargado carece de skills." >&2; exit 1; }
if [ "$LISTA" = 1 ]; then
  for archivo in "$BASE"/*/SKILL.md; do [ -f "$archivo" ] && basename "$(dirname "$archivo")"; done
  exit 0
fi
if [ "$TODAS" = 1 ]; then
  SKILLS=()
  for archivo in "$BASE"/*/SKILL.md; do [ -f "$archivo" ] && SKILLS+=("$(basename "$(dirname "$archivo")")"); done
fi
if [ "${#SKILLS[@]}" = 0 ]; then echo "Indica una skill, --todas o --lista." >&2; exit 1; fi
# Valida el lote completo antes de copiar. Conserva las instalaciones existentes.
for s in "${SKILLS[@]}"; do
  [ -f "$BASE/$s/SKILL.md" ] || { echo "No existe la skill «$s»." >&2; exit 1; }
  if [ -e "$DESTINO/$s" ] || [ -L "$DESTINO/$s" ]; then
    echo "Ya existe $DESTINO/$s. Conservada. Elige otro --destino para revisar la versión nueva." >&2
    exit 1
  fi
done
mkdir -p "$DESTINO"
for s in "${SKILLS[@]}"; do
  cp -R "$BASE/$s" "$DESTINO/$s"
  echo "Instalada «$s» en $DESTINO/$s"
done
echo "Listo. Reinicia la herramienta para que cargue las skills."
