#!/usr/bin/env bash
set -euo pipefail

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
docs_dir="$base_dir/docs"
templates_dir="$base_dir/templates"


usage() {
  cat <<USAGE
Usage:
  $0 [type] ["Title"]

Types: tip, problem, suggestion, correction
If omitted, you'll be prompted.
USAGE
}

slugify() {
  # lower-case, spaces/dots to hyphens, strip non-url chars
  echo "$1" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g'
}

type="${1:-}"
title="${2:-}"

if [[ -z "${type}" ]]; then
  read -rp "Type (tip/problem/suggestion/correction): " type
fi

case "$type" in
  tip|problem|suggestion|correction) ;;
  *) echo "Invalid type: $type"; usage; exit 1;;
esac

if [[ -z "${title}" ]]; then
  read -rp "Title: " title
fi

slug="$(slugify "$title")"
today="$(date +%F)"
reporter="${USER:-user}"

case "$type" in
  tip)
    target_dir="$docs_dir/tips"
    tmpl="$templates_dir/tip.md"
    ;;
  problem)
    target_dir="$docs_dir/problems"
    tmpl="$templates_dir/problem.md"
    ;;
  suggestion)
    target_dir="$docs_dir/suggestions"
    tmpl="$templates_dir/suggestion.md"
    ;;
  correction)
    target_dir="$docs_dir/corrections"
    tmpl="$templates_dir/correction.md"
    ;;
esac

mkdir -p "$target_dir"
target="$target_dir/$slug.md"

if [[ -e "$target" ]]; then
  echo "File already exists: $target"
  exit 1
fi

# Fill in the template front matter
awk -v d="$today" -v r="$reporter" '
  BEGIN{}
  {
    gsub(/YYYY-MM-DD/, d);
    gsub(/<name>/, r);
    print;
  }
' "$tmpl" > "$target"

echo "Created: $target"

