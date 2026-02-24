# Intégration MCP

## Intégrations disponibles

### Serveurs MCP SEO officiels (2025-2026)

| Outil | Package / Endpoint | Type | Notes |
|-------|-------------------|------|-------|
| Ahrefs | @ahrefs/mcp | Officiel | Lancé en juillet 2025. Backlinks, mots-clés, audit de site. |
| Semrush | https://mcp.semrush.com/v1/mcp | Officiel (remote) | Accès complet à l'API. Analyse de domaine, recherche de mots-clés. |
| Google Search Console | mcp-server-gsc | Communautaire | Par ahonn. Performance de recherche, inspection d'URL. |
| PageSpeed Insights | mcp-server-pagespeed | Communautaire | Par enemyrr. Audits Lighthouse, métriques CWV. |
| DataForSEO | dataforseo-mcp-server | Communautaire | Données SERP, mots-clés, backlinks. |
| kwrds.ai | kwrds MCP server | Communautaire | Recherche de mots-clés, volume de recherche. |

### Google Search Console

```json
{
  "mcpServers": {
    "google-search-console": {
      "command": "npx",
      "args": ["-y", "mcp-server-gsc"],
      "env": {
        "GOOGLE_CREDENTIALS_PATH": "/chemin/vers/credentials.json"
      }
    }
  }
}
```

### Serveur MCP PageSpeed Insights

```json
{
  "mcpServers": {
    "pagespeed": {
      "command": "npx",
      "args": ["-y", "mcp-server-pagespeed"],
      "env": {
        "PAGESPEED_API_KEY": "votre-clé-api"
      }
    }
  }
}
```

### API PageSpeed Insights (directe)

```bash
curl "https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=URL&key=VOTRE_CLÉ_API&strategy=mobile&category=performance&category=seo"
```

### API CrUX (données terrain)

```bash
curl -X POST "https://chromeuxreport.googleapis.com/v1/records:queryRecord?key=VOTRE_CLÉ_API" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com", "formFactor": "PHONE"}'
```

## Sans clés API

Claude SEO peut tout de même :
- Analyser le code source HTML pour détecter les problèmes potentiels
- Identifier les problèmes de performance courants
- Vérifier les ressources bloquant le rendu
- Évaluer les opportunités d'optimisation des images
- Détecter les implémentations lourdes en JavaScript

## Bonnes pratiques

- **Limitation de débit** : Respecter les quotas API (typiquement 25k requêtes/jour pour PageSpeed)
- **Cache** : Mettre en cache les résultats pour éviter les appels API redondants
- **Terrain vs Labo** : Privilégier les données terrain (CrUX) pour les signaux de classement
