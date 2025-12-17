# Deploy Chinese Flashcard App to Render.com - Complete Guide

## 🎯 Your Personal Webpage Hosting

Render.com provides **free hosting** for your Chinese flashcard app. Your app will have its own URL that you can share with anyone!

## 📋 Prerequisites

✅ Your code is already on GitHub: https://github.com/hongyunhan12/chinese-flashcard-app
✅ All files are ready (Procfile, requirements.txt)
✅ Excel database included (`Chinese_words_list.xlsx`)

## 🚀 Step-by-Step Deployment

### Step 1: Create Render Account

1. Go to: **https://render.com**
2. Click **"Get Started for Free"**
3. **Sign up with GitHub** (recommended - one click!)
   - Or sign up with email

### Step 2: Create New Web Service

1. After logging in, click **"New +"** button (top right)
2. Select **"Web Service"**

### Step 3: Connect Your GitHub Repository

1. If GitHub not connected:
   - Click **"Connect account"**
   - Authorize Render to access your repositories
2. Find **"chinese-flashcard-app"** in the list
3. Click **"Connect"** next to it

### Step 4: Configure Your Service

Fill in these **exact settings**:

**Basic Settings:**
- **Name**: `chinese-flashcard-app` (or any name you like)
- **Region**: Choose closest to you (e.g., `Oregon (US West)`)
- **Branch**: `main`
- **Root Directory**: (leave empty - blank)

**Build & Deploy:**
- **Environment**: `Python 3`
- **Build Command**: 
  ```
  pip install -r requirements.txt
  ```
- **Start Command**: 
  ```
  uvicorn flashcard_app:app --host 0.0.0.0 --port $PORT
  ```

**Advanced Settings:**
- Leave everything else as default
- No environment variables needed

### Step 5: Deploy!

1. Scroll down
2. Click **"Create Web Service"**
3. **Wait 5-10 minutes** while Render:
   - Clones your repository
   - Installs dependencies
   - Builds your app
   - Starts the server

### Step 6: Your App is Live! 🎉

Once deployment completes, your app will be at:

**https://chinese-flashcard-app.onrender.com**

(Or whatever name you chose)

## 📱 Share Your App

Anyone can now access your Chinese flashcard app at your Render URL!

## ✅ What You Get

- ✅ **Free hosting** (no credit card needed)
- ✅ **HTTPS** (secure connection)
- ✅ **Custom URL** (your-app.onrender.com)
- ✅ **Auto-deploy** (pushes to GitHub auto-deploy)
- ✅ **Build logs** (see what's happening)

## ⚠️ Free Tier Notes

- **Spins down** after 15 minutes of inactivity
- **First load** after spin-down takes 30-60 seconds
- This is normal for free tier!

## 🆘 Troubleshooting

### Build Fails
- Check build logs in Render dashboard
- Verify `requirements.txt` has all dependencies
- Ensure all files are pushed to GitHub

### App Doesn't Start
- Check logs in Render dashboard
- Verify `Procfile` command is correct
- Ensure `flashcard_app.py` exists

### Excel File Not Found
- Make sure `Chinese_words_list.xlsx` is in GitHub repository
- Check file path in `flashcard_app.py`

## 🎯 Quick Checklist

Before deploying, make sure:
- [x] Code is on GitHub
- [x] `requirements.txt` exists
- [x] `Procfile` exists
- [x] `Chinese_words_list.xlsx` is in repository
- [x] `flashcard_app.py` exists
- [x] `templates/flashcard.html` exists

## 🚀 Ready to Deploy?

1. Go to: https://render.com
2. Follow steps above
3. Your app will be live in 5-10 minutes!

## 📞 Need Help?

- Check Render dashboard logs
- Review error messages
- All files are already prepared and ready!

