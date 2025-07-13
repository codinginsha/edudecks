# EduDECKS Deployment Guide

## 🚀 Quick Deployment Steps

### 1. GitHub Repository Setup

1. **Create Repository on GitHub:**
   - Go to: https://github.com/codinginsha
   - Click "+" → "New repository"
   - Repository name: `edudecks`
   - Description: "AI-powered PowerPoint generator with multi-language support"
   - Make it **Public**
   - **DO NOT** initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Push Code to GitHub:**
   ```bash
   # Run the automated script
   push_to_github.bat
   ```

### 2. Streamlit Cloud Deployment

1. **Deploy to Streamlit Cloud:**
   - Go to: https://streamlit.io/cloud
   - Sign in with GitHub
   - Click "New app"
   - Repository: `codinginsha/edudecks`
   - Branch: `main`
   - Main file path: `app.py`
   - Click "Deploy"

2. **Configure Environment Variables (if needed):**
   - In Streamlit Cloud dashboard, go to your app settings
   - Add any required API keys (Google Gemini, Unsplash, etc.)

### 3. Alternative Cloud Platforms

#### Heroku Deployment
```bash
# Create Procfile
echo "web: streamlit run app.py --server.port=\$PORT --server.address=0.0.0.0" > Procfile

# Deploy
heroku create edudecks-app
git push heroku main
```

#### Railway Deployment
- Connect your GitHub repository
- Railway will auto-detect and deploy

#### Render Deployment
- Connect your GitHub repository
- Build command: `pip install -r requirements.txt`
- Start command: `streamlit run app.py --server.port=8501 --server.address=0.0.0.0`

## 📁 Project Structure

```
edudecks/
├── app.py              # Streamlit web application
├── eduppt.py           # Core PowerPoint generation logic
├── requirements.txt    # Python dependencies
├── README.md          # Project documentation
├── .gitignore         # Git ignore rules
├── setup.bat          # Local setup script
├── deploy_to_github.bat    # GitHub setup helper
└── push_to_github.bat      # Automated push script
```

## 🔧 Environment Variables

If you need to set up API keys:

```bash
# Google Gemini API
GOOGLE_API_KEY=your_gemini_api_key

# Unsplash API (optional)
UNSPLASH_ACCESS_KEY=your_unsplash_key
```

## 🌐 Live Demo

Once deployed, your app will be available at:
- Streamlit Cloud: `https://your-app-name.streamlit.app`
- Heroku: `https://your-app-name.herokuapp.com`
- Railway: `https://your-app-name.railway.app`

## 📝 Troubleshooting

### Common Issues:

1. **Import Errors:**
   - Ensure all dependencies are in `requirements.txt`
   - Check for missing packages

2. **API Key Issues:**
   - Verify API keys are correctly set in environment variables
   - Check API quotas and limits

3. **Memory Issues:**
   - Optimize image processing
   - Reduce slide content if needed

### Support:
- GitHub Issues: Create an issue in your repository
- Streamlit Community: https://discuss.streamlit.io/

## 🎉 Success!

Your EduDECKS app is now live and ready to generate educational presentations! 