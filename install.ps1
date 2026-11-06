# Installs the Kite language definition for Notepad++ (current user).
#   powershell -ExecutionPolicy Bypass -File install.ps1
$ErrorActionPreference = "Stop"
$udl = Join-Path $env:APPDATA "Notepad++\userDefineLangs"
New-Item -ItemType Directory -Force -Path $udl | Out-Null
Copy-Item -Force (Join-Path $PSScriptRoot "Kite.xml") (Join-Path $udl "Kite.xml")
Write-Host "Installed $udl\Kite.xml"
$npp = @("$env:ProgramFiles\Notepad++", "${env:ProgramFiles(x86)}\Notepad++") | Where-Object { Test-Path $_ } | Select-Object -First 1
if ($npp) {
  try {
    New-Item -ItemType Directory -Force -Path (Join-Path $npp "autoCompletion") | Out-Null
    Copy-Item -Force (Join-Path $PSScriptRoot "autoCompletion.xml") (Join-Path $npp "autoCompletion\Kite.xml")
    Write-Host "Installed auto-completion into $npp\autoCompletion (needs administrator rights)"
  } catch { Write-Host "Skipped auto-completion (run PowerShell as administrator to install it)" -ForegroundColor Yellow }
}
Write-Host "Restart Notepad++, then open a .ki file (Language > Kite)."
