#!/bin/bash

echo "-------------------------------------------"
echo "🚀 Git Hands-On Lab: Cleanup and Push to Remote"
echo "-------------------------------------------"

# Step 1: Verify inside a Git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: This is not a Git repository."
    echo "💡 Please navigate to your project directory with 'cd <path>' and try again."
    exit 1
fi

# Step 2: Check current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "📍 Current branch: $CURRENT_BRANCH"

# Step 3: Verify clean state
echo "🔍 Checking if working directory is clean..."
if [ -n "$(git status --porcelain)" ]; then
    echo "⚠️  Working directory has uncommitted changes."
    git status
    echo "💡 Please commit or stash your changes before continuing."
    exit 1
else
    echo "✅ Working directory is clean."
fi

# Step 4: List all branches
echo "📜 Listing all branches (local & remote):"
git branch -a

# Step 5: Pull from remote
REMOTE_NAME="origin"
echo "⬇️  Pulling latest changes from remote '$REMOTE_NAME'..."
git pull $REMOTE_NAME $CURRENT_BRANCH

# Step 6: Push pending changes
echo "⬆️  Pushing local commits to remote '$REMOTE_NAME'..."
git push $REMOTE_NAME $CURRENT_BRANCH

# Step 7: Confirm remote update
echo "✅ Push complete. Verifying remote changes..."
echo "💡 Please check your remote repository on GitHub or GitLab to confirm."

echo "🎉 Cleanup and push lab complete!"
