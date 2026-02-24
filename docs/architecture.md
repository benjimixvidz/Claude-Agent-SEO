# Architecture

## Vue d'ensemble

Claude SEO suit la spécification officielle des skills Claude Code d'Anthropic avec une architecture modulaire multi-skills.

## Structure des répertoires

```
~/.claude/
├── skills/
│   ├── seo/                  # Skill orchestrateur principal
│   │   ├── SKILL.md              # Point d'entrée avec logique de routage
│   │   └── references/           # Fichiers de référence chargés à la demande
│   │       ├── cwv-thresholds.md
│   │       ├── schema-types.md
│   │       ├── eeat-framework.md
│   │       └── quality-gates.md
│   │
│   ├── seo-audit/            # Audit complet du site
│   ├── seo-competitor-pages/ # Pages de comparaison concurrentielles
│   ├── seo-content/          # Analyse E-E-A-T
│   ├── seo-geo/              # Optimisation pour la recherche IA
│   ├── seo-hreflang/         # SEO international / hreflang
│   ├── seo-images/           # Optimisation des images
│   ├── seo-page/             # Analyse d'une seule page
│   ├── seo-plan/             # Planification stratégique
│   │   └── assets/           # Templates par industrie
│   ├── seo-programmatic/     # SEO programmatique
│   ├── seo-schema/           # Données structurées
│   ├── seo-sitemap/          # Analyse et génération de sitemaps
│   └── seo-technical/        # SEO technique
│
└── agents/
    ├── seo-technical.md      # Spécialiste SEO technique
    ├── seo-content.md        # Évaluateur de qualité de contenu
    ├── seo-schema.md         # Expert données structurées
    ├── seo-sitemap.md        # Architecte sitemap
    ├── seo-performance.md    # Analyste performance
    └── seo-visual.md         # Analyste visuel
```

## Flux d'orchestration

### Audit complet

```
Requête utilisateur → seo (orchestrateur) → Détection du type d'activité
                                           → Lancement des sous-agents en parallèle :
                                             ├── seo-technical
                                             ├── seo-content
                                             ├── seo-schema
                                             ├── seo-sitemap
                                             ├── seo-performance
                                             └── seo-visual
                                           → Agrégation des résultats
                                           → Génération du rapport
```

### Commande individuelle

```
Requête utilisateur (ex: /seo page) → seo (orchestrateur) → seo-page (sous-skill)
```

## Principes de conception

1. **Divulgation progressive** — Le SKILL.md principal est concis (<200 lignes), les fichiers de référence sont chargés à la demande
2. **Traitement parallèle** — Les sous-agents s'exécutent simultanément pendant les audits
3. **Garde-fous qualité** — Des seuils intégrés empêchent les mauvaises recommandations
4. **Conscience sectorielle** — Templates adaptés aux différents types d'activité

## Points d'extension

### Ajouter un nouveau sous-skill
1. Créer `skills/seo-nouveau/SKILL.md`
2. Ajouter le frontmatter YAML avec nom et description
3. Mettre à jour le `seo/SKILL.md` principal pour router vers le nouveau skill

### Ajouter un nouveau sous-agent
1. Créer `agents/seo-nouveau.md`
2. Ajouter le frontmatter YAML avec nom, description, outils
3. Référencer depuis les skills concernés
