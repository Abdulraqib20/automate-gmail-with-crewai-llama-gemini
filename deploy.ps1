# DEPLOY.ps1 - One-Click GitHub Deployment
param(
    [string]$RepoName,
    [string]$Description = "Gmail Automation Using CrewAI and Gemini and Llama AI models"
)

# 1. GitHub Connection
$GitHubUser = "Abdulraqib20"
git remote set-url origin "https://github.com/$GitHubUser/$RepoName.git"

# 2. Commit Changes
git add --all
git commit -m "🚀 Deploy: $RepoName"

# 3. Force Push
git push -u origin main --force

Write-Host "✅ Deployment Successful: https://github.com/$GitHubUser/$RepoName" -ForegroundColor Green


#------------------------------------
# Steps to Deploy
#------------------------------------

# 1. Remove git repository
# rm -Recurse -Force .git OR Remove-Item -Recurse -Force .git

# 2. initialize with Main Branch
# git init -b main

# 3. Show current branch
# git branch --show-current  # Should output "main"

# 4. Set remote URL
# git remote add origin https://github.com/Abdulraqib20/automate-gmail-with-crewai-llama-gemini

# 5. Run the below in PowerShell:
# ./deploy.ps1 -RepoName "automate-gmail-with-crewai-llama-gemini" -Description "Automating Emails using CrewAI and Gemini and Llama AI models."

# Credential Caching (One-Time Setup):
# git config --global credential.helper wincred


