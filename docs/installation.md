# Guide d'installation

## Prérequis

- **Claude Code CLI** installé et configuré
- **Python 3.8+** avec pip (optionnel, pour l'analyse visuelle via Playwright)
- **Git** pour le clonage (optionnel)

## Installation rapide

### Via le script d'installation (recommandé)

```bash
chmod +x install.sh
./install.sh
```

Le script copie automatiquement les skills et agents dans `~/.claude/` et affiche un résumé de l'installation.

### Copie manuelle

```bash
# Copier les skills
cp -r skills/* ~/.claude/skills/

# Copier les agents
cp -r agents/* ~/.claude/agents/
```

## Installation détaillée

### 1. Copier chaque composant

```bash
# Orchestrateur principal
mkdir -p ~/.claude/skills/seo/references
cp skills/seo/SKILL.md ~/.claude/skills/seo/
cp skills/seo/references/* ~/.claude/skills/seo/references/

# Sous-skills
for skill in seo-audit seo-competitor-pages seo-content seo-geo seo-hreflang seo-images seo-page seo-plan seo-programmatic seo-schema seo-sitemap seo-technical; do
  mkdir -p ~/.claude/skills/$skill
  cp -r skills/$skill/* ~/.claude/skills/$skill/
done

# Agents
mkdir -p ~/.claude/agents
cp agents/seo-*.md ~/.claude/agents/
```

### 2. Installer Playwright (optionnel, pour l'analyse visuelle)

```bash
pip install playwright
playwright install chromium
```

## Vérification de l'installation

1. Lancer Claude Code :
```bash
claude
```

2. Tester le skill :
```
/seo
```

## Chemins d'installation

| Composant | Chemin |
|-----------|--------|
| Skill principal | `~/.claude/skills/seo/` |
| Sous-skills | `~/.claude/skills/seo-*/` |
| Sous-agents | `~/.claude/agents/seo-*.md` |
| Références | `~/.claude/skills/seo/references/` |
| Templates industrie | `~/.claude/skills/seo-plan/assets/` |

## Désinstallation

```bash
rm -rf ~/.claude/skills/seo
rm -rf ~/.claude/skills/seo-audit
rm -rf ~/.claude/skills/seo-competitor-pages
rm -rf ~/.claude/skills/seo-content
rm -rf ~/.claude/skills/seo-geo
rm -rf ~/.claude/skills/seo-hreflang
rm -rf ~/.claude/skills/seo-images
rm -rf ~/.claude/skills/seo-page
rm -rf ~/.claude/skills/seo-plan
rm -rf ~/.claude/skills/seo-programmatic
rm -rf ~/.claude/skills/seo-schema
rm -rf ~/.claude/skills/seo-sitemap
rm -rf ~/.claude/skills/seo-technical
rm -f ~/.claude/agents/seo-*.md
```
