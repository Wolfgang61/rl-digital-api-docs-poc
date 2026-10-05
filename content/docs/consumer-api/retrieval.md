---
title: "Dokumentabruf"
weight: 10
---

# Dokumentabruf über eCAPI v2

```bash
curl "https://api.example.invalid/consumer/v2/products/PZN-12345678/documents?language=de-DE" \
  --header "Authorization: Bearer ${TOKEN}"
```

```json
{
  "productId": "PZN-12345678",
  "documents": [
    {
      "documentId": "doc-8d417a",
      "language": "de-DE",
      "version": "3.2",
      "publishedAt": "2026-10-01T15:00:00Z",
      "downloadUrl": "https://download.example.invalid/doc-8d417a"
    }
  ]
}
```

```mermaid
sequenceDiagram
    actor Client as Krankenversicherer
    participant EC as Consumer API v2
    participant IDX as Suchindex
    participant STORE as Dokumentenspeicher

    Client->>EC: GET /products/{productId}/documents
    EC->>IDX: Veröffentlichte Dokumente suchen
    IDX-->>EC: Dokumentmetadaten
    EC->>STORE: signierte Download-URL anfordern
    STORE-->>EC: temporäre URL
    EC-->>Client: 200 OK + Dokumentliste
```
