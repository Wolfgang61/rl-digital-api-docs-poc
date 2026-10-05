---
title: "Author API (eAAPI)"
linkTitle: "Author API"
weight: 10
---

# Author API (eAAPI) v1

Die Author API nimmt Gebrauchsinformationen von Pharmaunternehmen oder deren Dienstleistern entgegen.

## Konkrete Endpunkte

- `POST /author/v1/documents` erstellt eine Einlieferung.
- `GET /author/v1/documents/{documentId}` liefert Status und Metadaten.

## OpenAPI

[OpenAPI-Spezifikation herunterladen](/openapi/eaapi-v1.yaml)

## Beispiel: Dokument einliefern

```bash
curl --request POST "https://api.example.invalid/author/v1/documents" \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "externalId": "GI-2026-00471",
    "productId": "PZN-12345678",
    "language": "de-DE",
    "contentUrl": "https://partner.example.invalid/files/GI-2026-00471.pdf"
  }'
```

```json
{
  "documentId": "doc-8d417a",
  "status": "RECEIVED",
  "receivedAt": "2026-10-01T14:30:00Z"
}
```
