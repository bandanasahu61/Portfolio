# Portfolio GitHub Deployment Script
# PowerShell version for better compatibility

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Portfolio GitHub Deployment Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ ERROR: Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if this is first time setup
if (-not (Test-Path ".git")) {
    Write-Host "Setting up Git repository for the first time..." -ForegroundColor Yellow
    Write-Host ""
    
    $username = Read-Host "Enter your GitHub username"
    $reponame = Read-Host "Enter repository name (default: portfolio)"
    if ([string]::IsNullOrEmpty($reponame)) { $reponame = "portfolio" }
    
    Write-Host ""
    Write-Host "Initializing Git repository..." -ForegroundColor Blue
    git init
    
    Write-Host "Adding remote repository..." -ForegroundColor Blue
    git remote add origin "https://github.com/$username/$reponame.git"
    
    Write-Host "Creating main branch..." -ForegroundColor Blue
    git branch -M main
} else {
    Write-Host "Git repository already exists. Updating..." -ForegroundColor Green
    Write-Host ""
}

Write-Host "Adding all files..." -ForegroundColor Blue
git add .

Write-Host ""
$message = Read-Host "Enter commit message (default: Update portfolio)"
if ([string]::IsNullOrEmpty($message)) { $message = "Update portfolio" }

Write-Host "Committing changes..." -ForegroundColor Blue
git commit -m $message

Write-Host "Pushing to GitHub..." -ForegroundColor Blue
$pushResult = git push -u origin main 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "✗ ERROR: Failed to push to GitHub" -ForegroundColor Red
    Write-Host "Please check:" -ForegroundColor Yellow
    Write-Host "1. Your internet connection" -ForegroundColor Yellow
    Write-Host "2. GitHub repository exists and is accessible" -ForegroundColor Yellow
    Write-Host "3. Your GitHub credentials are correct" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Error details: $pushResult" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "   Deployment Successful! 🎉" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Your portfolio will be available at:" -ForegroundColor Cyan
if ($username -and $reponame) {
    Write-Host "https://$username.github.io/$reponame/" -ForegroundColor White
} else {
    Write-Host "https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/" -ForegroundColor White
}
Write-Host ""
Write-Host "Note: It may take 2-3 minutes for changes to appear online." -ForegroundColor Yellow
Write-Host ""
Read-Host "Press Enter to exit"