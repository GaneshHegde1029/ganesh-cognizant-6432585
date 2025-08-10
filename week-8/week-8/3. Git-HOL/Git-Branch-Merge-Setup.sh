#!/bin/bash

echo "-------------------------------------------"
echo "🚀 Git Hands-On Lab: Branching and Merging"
echo "-------------------------------------------"

# Step 1: Confirm Git repo
if [ ! -d ".git" ]; then
    echo "⚠️  No Git repository found in this directory."
    echo "📦 Initializing Git repository..."
    git init
    echo "This is the master branch file." > master.txt
    git add master.txt
    git commit -m "Initial commit: Added master.txt"
fi

# Step 2: Create new branch
BRANCH_NAME="GitNewBranch"
echo "🌱 Creating new branch: $BRANCH_NAME"
git branch $BRANCH_NAME

echo "📜 Listing branches:"
git branch -a

# Step 3: Switch to new branch
echo "🔄 Switching to $BRANCH_NAME..."
git checkout $BRANCH_NAME

# Step 4: Add and commit changes in new branch
echo "📝 Creating a new file in branch..."
echo "This is a file in $BRANCH_NAME branch." > branch_file.txt
git add branch_file.txt
git commit -m "Added branch_file.txt in $BRANCH_NAME"

echo "📊 Status in $BRANCH_NAME:"
git status

# Step 5: Switch back to master
echo "🔄 Switching back to master..."
git checkout master

# Step 6: Compare differences (CLI)
echo "🔍 Differences between master and $BRANCH_NAME (CLI):"
git diff master $BRANCH_NAME

# Step 7: Compare differences (P4Merge if available)
if command -v p4merge >/dev/null; then
    echo "🖥️  Opening P4Merge for visual comparison..."
    p4merge master branch_file.txt
else
    echo "⚠️  P4Merge not found. Skipping visual diff."
fi

# Step 8: Merge branch into master
echo "🔀 Merging $BRANCH_NAME into master..."
git merge $BRANCH_NAME --no-ff -m "Merged $BRANCH_NAME into master"

# Step 9: View commit history graph
echo "📜 Commit history (graph view):"
git log --oneline --graph --decorate

# Step 10: Delete branch
echo "🗑️  Deleting branch: $BRANCH_NAME"
git branch -d $BRANCH_NAME

# Step 11: Final status
echo "✅ Final git status:"
git status

echo "🎉 Branching and merging lab complete!"
