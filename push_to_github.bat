@echo off
echo ============================================================
echo Push Chinese Flashcard App to GitHub
echo ============================================================
echo.

REM Check if git is available
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo Step 1: Checking git status...
git status

echo.
echo Step 2: Ready to push to GitHub
echo.
echo IMPORTANT: You need to create the repository on GitHub first!
echo.
echo Option A - Create via GitHub website:
echo   1. Go to: https://github.com/new
echo   2. Repository name: chinese-flashcard-app
echo   3. Choose Public or Private
echo   4. DO NOT initialize with README
echo   5. Click "Create repository"
echo.
echo Option B - Create via GitHub CLI (if installed):
echo   gh repo create chinese-flashcard-app --public --source=. --remote=origin --push
echo.
set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/USERNAME/chinese-flashcard-app.git): "

if "%repo_url%"=="" (
    echo No URL provided. Exiting.
    pause
    exit /b 1
)

echo.
echo Step 3: Adding remote origin...
git remote remove origin 2>nul
git remote add origin %repo_url%

echo.
echo Step 4: Renaming branch to main...
git branch -M main

echo.
echo Step 5: Pushing to GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================
    echo SUCCESS! Flashcard app pushed to GitHub!
    echo ============================================================
    echo.
    echo Your repository is available at:
    echo %repo_url%
) else (
    echo.
    echo ERROR: Failed to push to GitHub
    echo.
    echo Possible issues:
    echo - Authentication required (use Personal Access Token as password)
    echo - Repository doesn't exist yet (create it first on GitHub)
    echo - Network connectivity issues
    echo.
    echo You can try pushing manually:
    echo   git push -u origin main
)

echo.
pause

