# Git Hands-On Lab: Merge Conflict Resolution

This repository is part of a hands-on lab to help developers understand how to handle and resolve merge conflicts in Git.

## 🔍 Overview

In this lab, you'll learn how to:

- Create a merge conflict scenario between a branch and `master`
- Inspect changes using CLI and P4Merge
- Use Git's 3-way merge tool to resolve conflicts
- Update `.gitignore` to exclude backup files after merge

## 📋 Prerequisites

- Existing Git repository in a clean state
- P4Merge installed for visual conflict resolution ([Download P4Merge](https://www.perforce.com/downloads/visual-merge-tool))
- Git Bash or compatible terminal

> ⚠️ Do **not** use corporate credentials for GitHub login.

## 🛠️ Key Concepts

- **Merge Conflict**: Occurs when two branches modify the same part of a file differently
- **3-Way Merge Tool**: Helps resolve conflicts by comparing base, local, and incoming changes
- **`.gitignore`**: Used to exclude unwanted files from version control

## 🧪 Lab Tasks

1. **Setup**
   - Verify `master` is clean
   - Create branch: `GitWork`
   - Add `hello.xml` with content
   - Commit the file

2. **Conflict Creation**
   - Switch to `master`
   - Create `hello.xml` with *different* content
   - Commit the file

3. **Conflict Detection**
   - View history:  
     ```bash
     git log --oneline --graph --decorate --all
     ```
   - Compare changes via CLI: `git diff`
   - Compare changes via P4Merge

4. **Conflict Resolution**
   - Merge `GitWork` into `master` (expect conflict)
   - Use a 3-way merge tool to resolve
   - Commit the resolved changes

5. **Post-Merge**
   - Add backup files to `.gitignore`
   - Commit `.gitignore`
   - Delete merged branch
   - View commit history graph

## ⏱️ Estimated Time

~30 minutes

## 📄 License

This lab is intended for educational purposes only.

---

