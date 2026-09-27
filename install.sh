#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://raw.githubusercontent.com/rahmaglobalnur-boop/apple-design-skills/main/SKILL.md"
TARGET="${1:-.claude/skills/apple-design/SKILL.md}"

mkdir -p "$(dirname "$TARGET")"
curl --fail --location --silent --show-error "$REPO_URL" --output "$TARGET"
printf 'Installed Apple Design Skill at %s\n' "$TARGET"
