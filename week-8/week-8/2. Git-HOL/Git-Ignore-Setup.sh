#!/bin/bash

echo "-------------------------------------------"
echo "🚀 Git Hands-On Lab: .gitignore Demonstration"
echo "-------------------------------------------"

# Step 1: Confirm Git repo
if [ ! -d ".git" ]; then
    echo "⚠️  No Git repository found in this directory."
    echo "📦 Initializing Git repository..."
    git init
fi

# Step 2: Create sample unwanted files/folders
echo "📄 Creating sample unwanted files..."
echo "This is a log file that should be ignored." > debug.log
mkdir -p log
echo "This is a log folder file." > log/system.log

# Step 3: Create or update .gitignore
echo "📝 Updating .gitignore rules..."
{
    echo "*.log"
    echo "log/"
} >> .gitignore

# Step 4: Check Git status
echo "🔍 Checking git status..."
git status

# Step 5: Stage and commit changes (only .gitignore will be tracked)
echo "➕ Adding .gitignore to staging..."
git add .gitignore

echo "📝 Committing..."
git commit -m "Added .gitignore to ignore .log files and log folder"

# Step 6: Final status
echo "✅ Final git status (log files ignored):"
git status

echo "🎉 .gitignore lab complete!"
