# Git Hands-On Lab: Cleanup and Push to Remote

This repository is part of a hands-on lab to help developers understand how to ensure a clean working state, synchronize with a remote repository, and push local changes back to the remote.

## 🔍 Overview

In this lab, you'll learn how to:

- Verify that your working branch (`master`) is in a clean state
- List all available local and remote branches
- Pull the latest changes from the remote repository
- Push pending local changes to the remote
- Verify that the changes are reflected remotely

## 📋 Prerequisites

- Existing Git repository linked to a remote (GitHub or GitLab)
- All prior hands-on labs completed (especially **Git-T03-HOL_002**)
- Git Bash or a compatible terminal

> ⚠️ Do **not** use corporate credentials for GitHub login.

## 🛠️ Key Concepts

- **Clean State**: A repository with no uncommitted changes, ready for syncing
- **Pull**: Fetch and integrate changes from the remote to local
- **Push**: Upload committed local changes to the remote

## 🧪 Lab Tasks

1. Verify `master` is in a clean state:
   ```bash
   git status

2.List all available branches:
git branch -a

3.Pull from remote repository:
git pull origin master

4.Push pending changes to remote:
git push origin master

5.Confirm changes are visible in the remote repository (GitHub/GitLab UI).

⏱️ Estimated Time
~10 minutes

📄 License
This lab is intended for educational purposes only.
