# Render an SVG asset to a PNG for a quick local preview.
# Usage:  ./preview.ps1 header.svg
param(
    [Parameter(Mandatory = $true)]
    [string]$Svg
)

$chrome = Join-Path $env:ProgramFiles "Google\Chrome\Application\chrome.exe"
if (-not (Test-Path $chrome)) { throw "Chrome not found at $chrome" }

$out = [System.IO.Path]::ChangeExtension($Svg, ".preview.png")
& $chrome --headless=new --disable-gpu --force-device-scale-factor=2 `
    --window-size=900,300 --default-background-color=00000000 `
    --screenshot="$out" (Resolve-Path $Svg).Path

Write-Host "Saved preview -> $out"
