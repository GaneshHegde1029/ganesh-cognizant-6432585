#!/bin/bash

echo "-------------------------------------------"
echo "🚀 Git Hands-On Lab: Merge Conflict Resolution"
echo "-------------------------------------------"

# Step 1: Ensure a clean repo
if [ ! -d ".git" ]; then
    echo "⚠️  No Git repository found in this directory."
    echo "📦 Initializing new repository..."
    git init
    echo "Initial master content" > master.txt
    git add master.txt
    git commit -m "Initial commit: master.txt"
fi

if [ -n "$(git status --porcelain)" ]; then
    echo "⚠️  Working directory is not clean. Please commit or stash changes before running this script."
    exit 1
fi

# Step 2: Create GitWork branch and hello.xml
BRANCH_NAME="GitWork"
echo "🌱 Creating branch: $BRANCH_NAME"
git checkout -b $BRANCH_NAME

echo "📄 Creating hello.xml in $BRANCH_NAME..."
echo "<message>Hello from GitWork branch</message>" > hello.xml
git add hello.xml
git commit -m "Added hello.xml in $BRANCH_NAME branch"

# Step 3: Switch to master and create conflicting hello.xml
echo "🔄 Switching back to master..."
git checkout master

echo "📄 Creating conflicting hello.xml in master..."
echo "<message>Hello from master branch</message>" > hello.xml
git add hello.xml
git commit -m "Added hello.xml in master branch (conflicting content)"

# Step 4: View history before merge
echo "📜 Commit history (before merge):"
git log --oneline --graph --decorate --all

# Step 5: Compare differences
echo "🔍 CLI diff between master and $BRANCH_NAME:"
git diff master $BRANCH_NAME

if command -v p4merge >/dev/null; then
    echo "🖥️  Opening P4Merge for visual diff..."
    p4merge master hello.xml $BRANCH_NAME hello.xml
else
    echo "⚠️  P4Merge not found. Skipping visual diff."
fi

# Step 6: Attempt merge to trigger conflict
echo "🔀 Merging $BRANCH_NAME into master (expecting conflict)..."
git merge $BRANCH_NAME || true

echo "⚠️  Merge conflict detected. Use your merge tool to resolve it."
echo "💡 Opening hello.xml for manual conflict resolution..."
if command -v notepad++ >/dev/null; then
    notepad++ hello.xml
else
    nano hello.xml
fi

# Step 7: Stage and commit resolved file
echo "➕ Adding resolved hello.xml..."
git add hello.xml
git commit -m "Resolved merge conflict between master and $BRANCH_NAME"

# Step 8: Add backup files to .gitignore
echo "📝 Adding backup files to .gitignore..."
echo "*~" >> .gitignore
git add .gitignore
git commit -m "Updated .gitignore to ignore backup files"

# Step 9: Delete merged branch
echo "🗑️  Deleting merged branch: $BRANCH_NAME"
git branch -d $BRANCH_NAME

# Step 10: Final history
echo "📜 Commit history (after merge):"
git log --oneline --graph --decorate

echo "🎉 Merge conflict resolution lab complete!"
