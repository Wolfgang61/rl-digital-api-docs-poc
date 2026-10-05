---
title: "Consumer API (eCAPI)"
linkTitle: "Consumer API"
weight: 20
---

# Consumer API (eCAPI)

Die Consumer API stellt veröffentlichte Gebrauchsinformationen für Krankenversicherer und deren Dienstleister bereit.

## Versionen

- **v1:** direkter Abruf über Dokument-ID
- **v2:** produktorientierte Suche mit Metadaten und Sprachfilter

## Konkrete Endpunkte

- `GET /consumer/v1/documents/{documentId}`
- `GET /consumer/v2/products/{productId}/documents?language=de-DE`

- [OpenAPI v1](/openapi/ecapi-v1.yaml)
- [OpenAPI v2](/openapi/ecapi-v2.yaml)
