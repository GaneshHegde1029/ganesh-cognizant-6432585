# Git Hands-On Lab: Using `.gitignore`

This repository is part of a hands-on lab to help developers understand and apply `.gitignore` to manage unwanted files in a Git project.

## 🔍 Overview

In this lab, you'll learn how to:

- Understand the purpose and use of `.gitignore`
- Ignore specific files and folders (like `.log` files and `log/` directories)
- Verify `.gitignore` behavior using `git status`

## 📋 Prerequisites

- Git environment properly configured
- Notepad++ integrated as the default Git editor (optional)
- A local Git repository linked to a remote GitHub or GitLab repository

> ⚠️ Do **not** use corporate credentials for GitHub login.

## 🛠️ Key Concepts

- `.gitignore` allows you to prevent certain files/folders from being tracked by Git
- Common use cases include ignoring temporary logs, build outputs, and system files

## 🧪 Lab Tasks

1. Create a `.log` file and a `log/` directory inside your Git working directory
2. Add the following to your `.gitignore` file:
*.log
log/


3. Run `git status` to verify that the `.log` file and `log/` directory are ignored
4. Commit your changes (excluding ignored files) and push to your remote repo

## ⏱️ Estimated Time

~20 minutes

## 📄 License

This lab is intended for educational purposes only.

---
