# Claude SEO — Configuration Expert SEO pour Claude Code

Suite complète de skills, agents et références pour transformer Claude Code en consultant SEO professionnel.

## Fonctionnalités

| Skill | Description |
|-------|-------------|
| **seo** | Orchestrateur principal — route vers les sous-skills |
| **seo-audit** | Audit SEO complet avec 6 agents parallèles |
| **seo-page** | Analyse approfondie d'une seule page |
| **seo-technical** | Audit technique (crawl, index, CWV, rendu JS) |
| **seo-content** | Analyse E-E-A-T et qualité du contenu |
| **seo-schema** | Détection, validation et génération de données structurées |
| **seo-sitemap** | Analyse et génération de sitemaps XML |
| **seo-images** | Optimisation des images (alt, taille, format, lazy loading) |
| **seo-hreflang** | SEO international / validation hreflang |
| **seo-geo** | Optimisation pour AI Overviews, ChatGPT, Perplexity (GEO) |
| **seo-plan** | Planification stratégique SEO avec templates par industrie |
| **seo-programmatic** | SEO programmatique à grande échelle |
| **seo-competitor-pages** | Pages de comparaison et alternatives |

## Structure

```
Claude-Agent-SEO/
├── install.sh                         # Script d'installation
├── skills/
│   ├── seo/                           # Orchestrateur principal
│   │   ├── SKILL.md
│   │   └── references/
│   │       ├── cwv-thresholds.md      # Seuils Core Web Vitals
│   │       ├── schema-types.md        # Statut des types Schema.org
│   │       ├── eeat-framework.md      # Framework E-E-A-T
│   │       └── quality-gates.md       # Seuils de qualité contenu
│   ├── seo-audit/SKILL.md
│   ├── seo-competitor-pages/SKILL.md
│   ├── seo-content/SKILL.md
│   ├── seo-geo/SKILL.md
│   ├── seo-hreflang/SKILL.md
│   ├── seo-images/SKILL.md
│   ├── seo-page/SKILL.md
│   ├── seo-plan/
│   │   ├── SKILL.md
│   │   └── assets/                    # Templates par industrie
│   │       ├── saas.md
│   │       ├── ecommerce.md
│   │       ├── local-service.md
│   │       ├── publisher.md
│   │       ├── agency.md
│   │       └── generic.md
│   ├── seo-programmatic/SKILL.md
│   ├── seo-schema/SKILL.md
│   ├── seo-sitemap/SKILL.md
│   └── seo-technical/SKILL.md
├── agents/
│   ├── seo-technical.md
│   ├── seo-content.md
│   ├── seo-schema.md
│   ├── seo-sitemap.md
│   ├── seo-performance.md
│   └── seo-visual.md
└── docs/
    ├── architecture.md
    ├── mcp-integration.md
    └── installation.md
```

## Installation rapide

```bash
# Via le script (recommandé)
chmod +x install.sh
./install.sh

# Ou manuellement
cp -r skills/* ~/.claude/skills/
cp -r agents/* ~/.claude/agents/
```

Voir `docs/installation.md` pour le guide complet, l'installation de Playwright (optionnel) et la désinstallation.

## Prérequis

- **Claude Code CLI** installé et configuré
- **Python 3.8+** avec pip (optionnel, pour l'analyse visuelle via Playwright)

## Utilisation

Dans Claude Code :

```
/seo audit https://example.com        # Audit complet
/seo page https://example.com/page    # Analyse d'une page
/seo technical https://example.com    # Audit technique
/seo content https://example.com      # Analyse E-E-A-T
/seo schema https://example.com       # Données structurées
/seo sitemap https://example.com      # Analyse sitemap
/seo images https://example.com       # Audit images
/seo hreflang https://example.com     # SEO international
/seo geo https://example.com          # Optimisation AI search
/seo plan                             # Plan stratégique SEO
/seo programmatic                     # SEO programmatique
/seo competitor                       # Pages de comparaison
```

## Intégrations MCP recommandées

| Outil | Type | Utilité |
|-------|------|---------|
| Semrush | Officiel (remote) | Mots-clés, domaine, backlinks |
| Ahrefs | Officiel | Backlinks, mots-clés, audit |
| Google Search Console | Communautaire | Performance organique, sitemaps |
| PageSpeed Insights | Communautaire | Core Web Vitals, Lighthouse |

Voir `docs/mcp-integration.md` pour la configuration détaillée.

## Ce qui est à jour (Février 2026)

- INP remplace FID (Mars 2024) — FID jamais mentionné
- HowTo obsolète (Sept 2023) — jamais recommandé
- FAQ restreint aux sites gov/santé (Août 2023)
- Helpful Content System fusionné dans le core algo (Mars 2024)
- Mobile-first indexing 100% (Juillet 2024)
- December 2025 Core Update — E-E-A-T étendu à toutes les requêtes
- Google AI Mode et optimisation GEO
- Scaled Content Abuse enforcement 2025
- JS SEO guidance December 2025
- RSL 1.0 et llms.txt standards

## Contribuer

Les contributions sont les bienvenues. Pour contribuer :

1. Forker le dépôt
2. Créer une branche pour votre fonctionnalité (`git checkout -b feature/ma-fonctionnalite`)
3. Commiter vos changements (`git commit -m "Ajout de ma fonctionnalité"`)
4. Pousser vers la branche (`git push origin feature/ma-fonctionnalite`)
5. Ouvrir une Pull Request

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## Crédits

Basé sur le projet [Claude SEO](https://github.com/AgriciDaniel/claude-seo) par AgriciDaniel.
