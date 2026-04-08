@echo off
echo ========================================
echo   Portfolio GitHub Deployment Script
echo ========================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Git is installed. Proceeding with deployment...
echo.

REM Check if this is first time setup
if not exist ".git" (
    echo Setting up Git repository for the first time...
    echo.
    
    set /p username="Enter your GitHub username: "
    set /p reponame="Enter repository name (default: portfolio): "
    if "%reponame%"=="" set reponame=portfolio
    
    echo.
    echo Initializing Git repository...
    git init
    
    echo Adding remote repository...
    git remote add origin https://github.com/%username%/%reponame%.git
    
    echo Creating main branch...
    git branch -M main
) else (
    echo Git repository already exists. Updating...
    echo.
)

echo Adding all files...
git add .

echo.
set /p message="Enter commit message (default: Update portfolio): "
if "%message%"=="" set message=Update portfolio

echo Committing changes...
git commit -m "%message%"

echo Pushing to GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERROR: Failed to push to GitHub
    echo Please check:
    echo 1. Your internet connection
    echo 2. GitHub repository exists and is accessible
    echo 3. Your GitHub credentials are correct
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Deployment Successful! 🎉
echo ========================================
echo.
echo Your portfolio will be available at:
echo https://%username%.github.io/%reponame%/
echo.
echo Note: It may take 2-3 minutes for changes to appear online.
echo.
pause