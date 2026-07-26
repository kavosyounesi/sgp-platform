# ============================================
# SGP Platform Bootstrap Script
# Version: 1.0
# ============================================

Write-Host ""
Write-Host "==========================================="
Write-Host "   SGP Platform Bootstrap"
Write-Host "==========================================="
Write-Host ""

$folders = @(
".github",
".github/ISSUE_TEMPLATE",
".github/workflows",

"docs",
"docs/architecture",
"docs/adr",
"docs/database",
"docs/database/erd",
"docs/database/dictionary",
"docs/database/migrations",
"docs/database/seed",
"docs/database/standards",
"docs/api",
"docs/modules",
"docs/roadmap",

"backend",
"backend/src",
"backend/tests",

"android",
"android/app",

"admin",

"api",

"database",
"database/migrations",
"database/seeds",
"database/scripts",
"database/views",

"assets",

"logs",

"tools"
)

foreach ($folder in $folders) {

    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Force -Path $folder | Out-Null
        Write-Host "[Created] $folder"
    }

    $gitkeep = Join-Path $folder ".gitkeep"

    if (!(Test-Path $gitkeep)) {
        New-Item -ItemType File -Path $gitkeep | Out-Null
    }

}

# ----------------------------
# Root Files
# ----------------------------

$files = @(
"README.md",
"ROADMAP.md",
"CHANGELOG.md",
"LICENSE",
".gitignore"
)

foreach ($file in $files){

    if(!(Test-Path $file)){
        New-Item -ItemType File $file | Out-Null
        Write-Host "[Created] $file"
    }

}

Write-Host ""
Write-Host "==========================================="
Write-Host "SGP Bootstrap Completed Successfully"
Write-Host "==========================================="