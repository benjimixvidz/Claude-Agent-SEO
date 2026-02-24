# Claude SEO — Configuration Expert SEO pour Claude Code

Suite complète de skills, agents et références pour transformer Claude Code en consultant SEO professionnel. 13 skills spécialisés, 6 sous-agents parallèles, à jour avec les standards de février 2026.

---

## Installation

### Installation rapide (Linux / macOS)

```bash
curl -fsSL https://raw.githubusercontent.com/benjimixvidz/Claude-Agent-SEO/main/install.sh | bash
```

### Installation manuelle

```bash
git clone https://github.com/benjimixvidz/Claude-Agent-SEO.git
cd Claude-Agent-SEO
chmod +x install.sh
./install.sh
```

---

## Démarrage rapide

```bash
# Lancer Claude Code
claude

# Audit SEO complet d'un site
/seo audit https://example.com

# Analyser une seule page
/seo page https://example.com/a-propos

# Vérifier les données structurées
/seo schema https://example.com

# Générer un sitemap
/seo sitemap generate

# Optimiser pour la recherche IA
/seo geo https://example.com
```

---

## Commandes

| Commande | Description |
|----------|-------------|
| `/seo audit <url>` | Audit complet du site avec délégation parallèle à 6 sous-agents |
| `/seo page <url>` | Analyse approfondie d'une seule page |
| `/seo technical <url>` | Audit SEO technique (8 catégories) |
| `/seo content <url>` | Analyse E-E-A-T et qualité du contenu |
| `/seo schema <url>` | Détection, validation et génération Schema.org |
| `/seo sitemap <url>` | Analyse du sitemap XML existant |
| `/seo sitemap generate` | Génération d'un nouveau sitemap avec templates industrie |
| `/seo images <url>` | Audit d'optimisation des images |
| `/seo geo <url>` | Optimisation AI Overviews / Generative Engine Optimization |
| `/seo plan <type>` | Planification stratégique SEO (saas, local, ecommerce, publisher, agency) |
| `/seo programmatic <url>` | Analyse et planification SEO programmatique |
| `/seo competitor <url>` | Génération de pages de comparaison concurrentielles |
| `/seo hreflang <url>` | Audit et génération hreflang / SEO international |

---

### `/seo programmatic [url|plan]`

**SEO programmatique — Analyse et planification**

Créez des pages SEO à grande échelle à partir de sources de données avec des garde-fous qualité.

- Analyse des pages programmatiques existantes pour le contenu mince et la cannibalisation
- Planification de patterns d'URL et de structures de templates pour les pages data-driven
- Automatisation du maillage interne entre les pages générées
- Stratégie canonique et prévention du bloat d'index
- Garde-fous qualité : ⚠️ AVERTISSEMENT à 100+ pages, 🛑 ARRÊT à 500+ sans audit

---

### `/seo competitor [url|generate]`

**Générateur de pages de comparaison concurrentielles**

Créez des pages "X vs Y" et "alternatives à X" optimisées pour la conversion.

- Tableaux de comparaison structurés avec matrices de fonctionnalités
- Balisage Product schema avec AggregateRating
- Layouts optimisés pour la conversion avec placement CTA
- Ciblage de mots-clés pour les requêtes d'intention de comparaison
- Règles d'équité pour une représentation honnête des concurrents

---

### `/seo hreflang [url]`

**Audit et génération hreflang / SEO international**

Validez et générez des balises hreflang pour les sites multilingues.

- Génération de balises hreflang (HTML, en-têtes HTTP ou sitemap XML)
- Validation des balises auto-référentes, balises retour, x-default
- Détection des erreurs courantes (retours manquants, codes invalides, HTTP/HTTPS mismatch)
- Support hreflang cross-domain
- Validation des codes langue/région (ISO 639-1 + ISO 3166-1)

---

## Fonctionnalités

### Core Web Vitals (métriques actuelles)

| Métrique | Bon | À améliorer | Mauvais |
|----------|-----|-------------|---------|
| **LCP** (Largest Contentful Paint) | ≤ 2,5s | 2,5s – 4,0s | > 4,0s |
| **INP** (Interaction to Next Paint) | ≤ 200ms | 200ms – 500ms | > 500ms |
| **CLS** (Cumulative Layout Shift) | ≤ 0,1 | 0,1 – 0,25 | > 0,25 |

> INP a remplacé FID le 12 mars 2024. FID a été entièrement retiré des outils Chrome le 9 septembre 2024.

### Analyse E-E-A-T

Mis à jour selon les Quality Rater Guidelines de septembre 2025 :

| Facteur | Poids | Signaux |
|---------|-------|---------|
| **Expérience** | 20% | Signaux de vécu, contenu original, études de cas |
| **Expertise** | 25% | Références de l'auteur, profondeur technique |
| **Autorité** | 25% | Reconnaissance du secteur, citations |
| **Fiabilité** | 30% | Coordonnées, sécurité, transparence |

### Données structurées Schema.org

- **Détection** : JSON-LD (préféré), Microdata, RDFa
- **Validation** contre les types supportés par Google
- **Génération** avec templates prêts à l'emploi
- **Conscience des obsolescences** :
  - HowTo : obsolète (sept. 2023)
  - FAQ : restreint aux sites gov/santé (août 2023)
  - SpecialAnnouncement : obsolète (juil. 2025)

### Vidéo et Live Schema

Types de schéma additionnels pour le contenu vidéo, le streaming live et les moments clés :

| Type | Utilisation |
|------|-------------|
| **VideoObject** | Balisage de page vidéo avec miniature, durée, date d'upload |
| **BroadcastEvent** | Badge LIVE pour le contenu en streaming |
| **Clip** | Moments clés / chapitres dans les vidéos |
| **SeekToAction** | Navigation dans les résultats enrichis vidéo |
| **SoftwareSourceCode** | Pages de dépôts de code open source |

### Optimisation recherche IA (GEO)

Optimisez votre contenu pour les nouveaux moteurs de recherche IA :

| Plateforme | Sources de citations principales |
|------------|----------------------------------|
| **Google AI Overviews** | Pages top-10 (92%), passages optimisés |
| **ChatGPT** | Wikipedia (47,9%), Reddit (11,3%) |
| **Perplexity** | Reddit (46,7%), Wikipedia |
| **Bing Copilot** | Index Bing, sites faisant autorité |

> **Statistique clé** : Les mentions de marque corrèlent **3x plus fortement** avec la visibilité IA que les backlinks (étude Ahrefs déc. 2025).

### Garde-fous qualité

- ⚠️ Avertissement à partir de 30+ pages de localisation
- 🛑 Arrêt à partir de 50+ pages de localisation
- Détection de contenu mince par type de page
- Prévention des pages satellites (doorway pages)

---

## Architecture

```
~/.claude/skills/seo/         # Skill principal (orchestrateur)
~/.claude/skills/seo-*/       # Sous-skills (12 au total)
~/.claude/agents/seo-*.md     # Sous-agents (6 au total)
```

L'orchestrateur principal (`/seo`) détecte automatiquement le type d'activité (E-commerce, SaaS, Local, Publisher, Agency) et charge le template industrie correspondant. Lors d'un audit complet, 6 sous-agents s'exécutent en parallèle pour analyser les différents aspects SEO.

Voir `docs/architecture.md` pour le détail du flux d'orchestration.

---

## Ce qui est à jour (Février 2026)

- INP remplace FID (mars 2024) — FID jamais mentionné
- HowTo obsolète (sept. 2023) — jamais recommandé
- FAQ restreint aux sites gov/santé (août 2023)
- Helpful Content System fusionné dans le core algo (mars 2024)
- Mobile-first indexing 100% (juillet 2024)
- December 2025 Core Update — E-E-A-T étendu à toutes les requêtes
- Google AI Mode et optimisation GEO
- Scaled Content Abuse enforcement 2025
- JS SEO guidance (décembre 2025)
- RSL 1.0 et llms.txt standards

---

## Prérequis

- **Claude Code CLI** installé et configuré
- **Python 3.8+** (optionnel, pour les captures d'écran via Playwright)

---

## Désinstallation

```bash
rm -rf ~/.claude/skills/seo ~/.claude/skills/seo-*
rm -f ~/.claude/agents/seo-*.md
```

---

## Intégrations MCP

S'intègre avec les serveurs MCP pour des données SEO en temps réel — y compris les serveurs officiels d'Ahrefs (`@ahrefs/mcp`) et Semrush, ainsi que les serveurs communautaires pour Google Search Console, PageSpeed Insights et DataForSEO.

Voir le [guide d'intégration MCP](docs/mcp-integration.md) pour la configuration.

---

## Documentation

- [Guide d'installation](docs/installation.md)
- [Architecture](docs/architecture.md)
- [Intégration MCP](docs/mcp-integration.md)

---

## Contribuer

Les contributions sont les bienvenues. Pour contribuer :

1. Forker le dépôt
2. Créer une branche (`git checkout -b feature/ma-fonctionnalite`)
3. Commiter vos changements
4. Pousser et ouvrir une Pull Request

---

## Licence

MIT License — voir [LICENSE](LICENSE) pour les détails.

## Crédits

Basé sur le projet [Claude SEO](https://github.com/AgriciDaniel/claude-seo) par AgriciDaniel.
