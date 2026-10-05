$ErrorActionPreference = "Stop"

Write-Host "== RL Digital API Docs PoC Setup ==" -ForegroundColor Cyan

$commands = @("hugo", "git", "go", "node", "npm")
foreach ($command in $commands) {
  if (-not (Get-Command $command -ErrorAction SilentlyContinue)) {
    throw "Erforderlicher Befehl nicht gefunden: $command"
  }
}

hugo version
git --version
go version
node --version
npm --version

Write-Host "Docsy-Modul aufloesen..." -ForegroundColor Cyan
hugo mod get github.com/google/docsy/theme@v0.17.0
hugo mod tidy

Write-Host "npm-Abhaengigkeiten installieren..." -ForegroundColor Cyan
npm install
hugo mod npm pack
npm install

Write-Host "Produktions-Build erstellen..." -ForegroundColor Cyan
npm run build

Write-Host "Fertig. Start: npm run start" -ForegroundColor Green
