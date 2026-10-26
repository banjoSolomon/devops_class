# Day 3 - Git & Version Control

## Topics
- Why version control matters in DevOps
- Git vs other VCS (SVN, Mercurial)
- Core Git concepts: repository, commit, branch, merge, remote

## Git Workflow
```
Working Directory → Staging Area → Local Repo → Remote Repo
     (edit)           (git add)    (git commit)  (git push)
```

## Essential Git Commands
```bash
# Setup
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Start a repo
git init
git clone <url>

# Daily workflow
git status
git add .
git add <file>
git commit -m "meaningful message"
git push origin main
git pull

# Branching
git branch
git branch feature/my-feature
git checkout feature/my-feature
git checkout -b feature/my-feature   # create + switch
git merge feature/my-feature
git branch -d feature/my-feature

# History & diff
git log --oneline
git diff
git diff HEAD~1
```

## Branching Strategies
- **Git Flow**: main, develop, feature/*, release/*, hotfix/*
- **Trunk-Based Development**: everyone commits to main frequently
- **GitHub Flow**: main + feature branches + pull requests

## Hands-on Lab
1. Create a new repo on GitHub
2. Clone it locally
3. Create a feature branch
4. Add a file, commit, and push
5. Open a Pull Request

## .gitignore Example
```
# OS files
.DS_Store
Thumbs.db

# Secrets
.env
*.key
*.pem

# Dependencies
node_modules/
__pycache__/
*.pyc

# Build output
dist/
build/
*.log
```
