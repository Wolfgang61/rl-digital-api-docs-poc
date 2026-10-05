# rl-digital-api-docs: Hugo/Docsy Windows PoC

Dieser PoC demonstriert für DIGIT-2604 eine zentrale Docs-as-Code-Lösung für:

- Author API (eAAPI)
- Consumer API (eCAPI) v1 und v2
- Portal API (PAPI)
- konkrete OpenAPI-3.0-Beispiele
- Mermaid-Sequenz-, Flowchart- und Zustandsdiagramme
- Suche, Markdown und Syntax-Highlighting

> Die Endpunkte, URLs und Beispieldaten sind repräsentative PoC-Inhalte und müssen vor produktiver Nutzung mit den echten Spezifikationen aus `rl-digital-backend` ersetzt oder synchronisiert werden.

## Windows-Voraussetzungen

```powershell
hugo version
git --version
go version
node --version
npm --version
```

Hugo muss als Extended-Ausgabe verfügbar sein.

## Installation

```powershell
cd C:\Projects\rl-digital-api-docs-windows-poc
Set-ExecutionPolicy -Scope Process Bypass
.\setup.ps1
```

## Lokal starten

```powershell
npm run start
```

Dann `http://localhost:1313/` öffnen.

## Produktions-Build

```powershell
npm run build
```

Die statische Site wird in `public\` erzeugt.

## Konkrete API-Beispiele

- `POST /author/v1/documents`
- `GET /author/v1/documents/{documentId}`
- `GET /consumer/v1/documents/{documentId}`
- `GET /consumer/v2/products/{productId}/documents`
- `POST /portal/v1/publication-jobs`
- `GET /portal/v1/publication-jobs/{jobId}`
=======
# rl-digital-api-docs-poc