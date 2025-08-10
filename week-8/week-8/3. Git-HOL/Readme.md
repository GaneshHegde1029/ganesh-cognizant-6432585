# Git Hands-On Lab: Branching and Merging

This repository is part of a hands-on lab to help developers understand Git branching, merging, and how to visualize changes using P4Merge.

## 🔍 Overview

In this lab, you'll learn how to:

- Create and switch between branches in Git
- Add and commit changes in a separate branch
- Compare branch differences with both CLI and P4Merge
- Merge a feature branch into the `master` (or `main`) branch
- Delete branches after merging

## 📋 Prerequisites

- Git environment properly configured
- **P4Merge** installed for visual diff/merge comparisons ([Download P4Merge](https://www.perforce.com/downloads/visual-merge-tool))
- Local Git repository linked to a remote GitHub or GitLab repository

> ⚠️ Do **not** use corporate credentials for GitHub login.

## 🛠️ Key Concepts

- **Branching**: Allows you to work on features independently without affecting the main codebase
- **Merging**: Combines changes from one branch into another
- **P4Merge**: A visual tool to inspect and resolve differences between branches

## 🧪 Lab Tasks

1. **Branching**
   - Create a branch: `GitNewBranch`
   - List all branches (local & remote)
   - Switch to the new branch
   - Add and commit changes

2. **Merging**
   - Switch back to `master` (or `main`)
   - Compare differences:
     - CLI: `git diff`
     - Visual: P4Merge
   - Merge `GitNewBranch` into `master`
   - View commit history:  
     ```bash
     git log --oneline --graph --decorate
     ```
   - Delete the branch after merging

## ⏱️ Estimated Time

~30 minutes

## 📄 License

This lab is intended for educational purposes only.

---


