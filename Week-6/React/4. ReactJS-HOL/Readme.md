# BlogApp - React Component Lifecycle Overview

## 📘 Overview

This repository, **BlogApp**, demonstrates the practical use of React’s **component lifecycle methods** in class-based components. It highlights the need for lifecycle hooks, their benefits, and how they control the behavior of components during their existence in the DOM.

---

## 🎯 Objectives

- **Explain the Need and Benefits of Component Lifecycle**
  - Understand why lifecycle methods are essential for managing component behavior such as data loading, DOM manipulation, and cleanup.
  - Learn how lifecycle hooks improve code structure, readability, and reliability in large-scale React applications.

- **Identify Various Lifecycle Hook Methods**
  - Explore key lifecycle hooks such as:
    - `constructor()`
    - `componentDidMount()`
    - `render()`
    - `componentDidCatch()`
    - (and others like `shouldComponentUpdate()`, `componentWillUnmount()` in more advanced cases)

- **List the Sequence of Steps in Rendering a Component**
  - Understand the flow: Initialization → Mounting → Updating → Unmounting → Error handling

---

## 🧪 Hands-On Focus

In this lab, the following lifecycle concepts are implemented in a real-world scenario:

- Creating a blog-style React application (`BlogApp`) using class components.
- Initializing component state with post data.
- Fetching posts from an external API using the **`componentDidMount()`** lifecycle hook.
- Displaying fetched data using `render()` with proper JSX.
- Catching and handling runtime errors gracefully using the **`componentDidCatch()`** method.

---

## 🧰 Prerequisites

Before working on this lab, ensure the following tools are installed:

- Node.js  
- NPM  
- Visual Studio Code  

---

## ⏱️ Estimated Time

**60 minutes**

---

## 📄 License

This project is provided for educational purposes and is licensed under the [MIT License](LICENSE).

---
