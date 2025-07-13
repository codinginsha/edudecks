@echo off
echo ========================================
echo Pushing EduDECKS to GitHub
echo ========================================
echo.

echo Adding remote origin...
git remote add origin https://github.com/codinginsha/edudecks.git

echo Renaming branch to main...
git branch -M main

echo Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo Success! Your code is now on GitHub
echo ========================================
echo.
echo Next steps:
echo 1. Go to https://streamlit.io/cloud
echo 2. Sign in with GitHub
echo 3. Deploy your app
echo.
pause 