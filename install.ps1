#Requires -Version 5.1
<#
.SYNOPSIS
  Install Firebrand Agents into the current user's Cursor folders (all workspaces).

.DESCRIPTION
  Copies:
    agents\*.md     -> $env:USERPROFILE\.cursor\agents\
    skills\<name>\  -> $env:USERPROFILE\.cursor\skills\<name>\
    commands\*.md   -> $env:USERPROFILE\.cursor\commands\
    rules\*.mdc     -> $env:USERPROFILE\.cursor\rules\
#>
$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$Cursor = Join-Path $env:USERPROFILE ".cursor"

function Copy-Glob {
    param(
        [Parameter(Mandatory = $true)][string]$SourcePattern,
        [Parameter(Mandatory = $true)][string]$Destination,
        [string]$FilterLabel
    )
    New-Item -ItemType Directory -Force -Path $Destination | Out-Null
    $items = @(Get-Item -Path $SourcePattern -ErrorAction SilentlyContinue)
    if ($items.Count -eq 0) {
        Write-Warning "No files matched $SourcePattern"
        return
    }
    Copy-Item -Path $SourcePattern -Destination $Destination -Force
    Write-Host "  $FilterLabel -> $Destination ($($items.Count) file(s))"
}

Write-Host "Firebrand Agents install from $Root"
Write-Host ""

# Agents
Copy-Glob -SourcePattern (Join-Path $Root "agents\*.md") `
    -Destination (Join-Path $Cursor "agents") `
    -FilterLabel "agents"

# Skills (each folder -> ~/.cursor/skills/<name>/)
$skillsSrc = Join-Path $Root "skills"
$skillsDstRoot = Join-Path $Cursor "skills"
if (Test-Path $skillsSrc) {
    New-Item -ItemType Directory -Force -Path $skillsDstRoot | Out-Null
    $skillDirs = @(Get-ChildItem -Path $skillsSrc -Directory)
    foreach ($dir in $skillDirs) {
        $dst = Join-Path $skillsDstRoot $dir.Name
        New-Item -ItemType Directory -Force -Path $dst | Out-Null
        Copy-Item -Path (Join-Path $dir.FullName "*") -Destination $dst -Recurse -Force
        Write-Host "  skills\$($dir.Name) -> $dst"
    }
    if ($skillDirs.Count -eq 0) {
        Write-Warning "No skill folders under $skillsSrc"
    }
}
else {
    Write-Warning "Missing $skillsSrc"
}

# Commands
Copy-Glob -SourcePattern (Join-Path $Root "commands\*.md") `
    -Destination (Join-Path $Cursor "commands") `
    -FilterLabel "commands"

# Rules (user-level alwaysApply workflow)
Copy-Glob -SourcePattern (Join-Path $Root "rules\*.mdc") `
    -Destination (Join-Path $Cursor "rules") `
    -FilterLabel "rules"

Write-Host ""
Write-Host "Installed. Restart Cursor or start a new Agent chat if agents/skills do not appear."
Write-Host "  Agents:   $(Join-Path $Cursor 'agents')"
Write-Host "  Skills:   $(Join-Path $Cursor 'skills')"
Write-Host "  Commands: $(Join-Path $Cursor 'commands')"
Write-Host "  Rules:    $(Join-Path $Cursor 'rules')"
