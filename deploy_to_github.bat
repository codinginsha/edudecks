@echo off
echo ========================================
echo EduDECKS GitHub Deployment Helper
echo ========================================
echo.
echo Step 1: Create GitHub Repository
echo ----------------------------------------
echo 1. Go to: https://github.com/codinginsha
echo 2. Click the "+" button (top right)
echo 3. Select "New repository"
echo 4. Repository name: edudecks
echo 5. Description: AI-powered PowerPoint generator with multi-language support
echo 6. Make it Public
echo 7. DO NOT initialize with README, .gitignore, or license
echo 8. Click "Create repository"
echo.
echo Step 2: Copy the repository URL
echo ----------------------------------------
echo Copy the URL shown (should be: https://github.com/codinginsha/edudecks.git)
echo.
echo Step 3: Run the push commands
echo ----------------------------------------
echo After creating the repository, run these commands:
echo.
echo git remote add origin https://github.com/codinginsha/edudecks.git
echo git branch -M main
echo git push -u origin main
echo.
echo Step 4: Deploy to Streamlit Cloud
echo ----------------------------------------
echo 1. Go to: https://streamlit.io/cloud
echo 2. Sign in with GitHub
echo 3. Click "New app"
echo 4. Select repository: codinginsha/edudecks
echo 5. Branch: main
echo 6. Main file path: app.py
echo 7. Click "Deploy"
echo.
pause 