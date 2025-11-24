# Deploy Flashcard App to GitHub

## Quick Steps

### Option 1: Using GitHub Website (Easiest)

1. **Create repository on GitHub:**
   - Go to https://github.com/new
   - Repository name: `chinese-flashcard-app`
   - Description: "Interactive Chinese flashcard app with block selection"
   - Choose Public or Private
   - **DO NOT** initialize with README (we already have one)
   - Click "Create repository"

2. **Push code from command line:**
   ```bash
   cd flashcard-app
   git remote add origin https://github.com/YOUR_USERNAME/chinese-flashcard-app.git
   git branch -M main
   git push -u origin main
   ```

### Option 2: Using GitHub CLI

```bash
cd flashcard-app
gh repo create chinese-flashcard-app --public --source=. --remote=origin --push
```

### Option 3: Using Python Script (Requires Token)

1. **Set GitHub token:**
   ```bash
   set GITHUB_TOKEN=your_token_here
   ```

2. **Run script:**
   ```bash
   cd flashcard-app
   py ..\create_github_repo.py --repo-name chinese-flashcard-app
   ```

## After Deployment

Your repository will be available at:
`https://github.com/YOUR_USERNAME/chinese-flashcard-app`

## Next Steps: Deploy to Cloud

Once on GitHub, you can deploy to:
- **Render.com** (Free) - Auto-deploy from GitHub
- **Railway.app** (Free tier) - Connect GitHub repo
- **PythonAnywhere** - Upload from GitHub

See `FLASHCARD_DEPLOYMENT.md` for detailed cloud deployment instructions.

