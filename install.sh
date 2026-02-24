#!/bin/bash
# Claude SEO — Script d'installation
# Copie les skills et agents dans ~/.claude/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Claude SEO — Installation"
echo "========================="
echo ""

# Vérifier si des skills SEO existent déjà
if ls "$CLAUDE_DIR/skills/" 2>/dev/null | grep -q "^seo"; then
  echo "Des skills SEO existants ont été détectés dans $CLAUDE_DIR/skills/"
  echo "L'installation va les mettre à jour (écraser)."
  echo ""
  read -p "Continuer ? (o/N) " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[OoYy]$ ]]; then
    echo "Installation annulée."
    exit 0
  fi
  echo ""
fi

# Créer les répertoires
echo "Création des répertoires..."
mkdir -p "$CLAUDE_DIR/skills"
mkdir -p "$CLAUDE_DIR/agents"

# Copier les skills
echo "Copie des skills..."
cp -r "$SCRIPT_DIR/skills/"* "$CLAUDE_DIR/skills/"

# Copier les agents
echo "Copie des agents..."
cp -r "$SCRIPT_DIR/agents/"* "$CLAUDE_DIR/agents/"

echo ""
echo "Installation terminée !"
echo ""
echo "Skills installés :"
for skill in "$CLAUDE_DIR/skills/seo"*; do
  [ -e "$skill" ] && echo "  - $(basename "$skill")"
done
echo ""
echo "Agents installés :"
for agent in "$CLAUDE_DIR/agents/seo-"*.md; do
  [ -e "$agent" ] && echo "  - $(basename "$agent")"
done
echo ""
echo "Lancez Claude Code et utilisez /seo pour commencer !"
