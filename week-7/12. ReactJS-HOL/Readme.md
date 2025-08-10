# ✈️ Ticket Booking App (React Conditional Rendering Lab)

This project, named **`ticketbookingapp`**, is a simple React application built to demonstrate the use of **conditional rendering** based on user login status. It uses React component logic to toggle between a **Guest View** and a **User View**, and dynamically displays either a **Login** or **Logout** button.

---

## 🎯 Objectives

- Explain **conditional rendering** in React
- Define and use **element variables**
- Show how to **prevent components from rendering**
- Understand how React decides what to display based on state or props

---

## 🧪 Lab Summary

In this hands-on lab, you will:

- Create a UI with two views:
  - **Guest View**: Visible when not logged in; shows flight browsing only
  - **User View**: Visible after logging in; allows booking tickets
- Display either a **Login** or **Logout** button based on authentication state
- Render a different greeting and functionality based on login state

### Components in Use:

- **LoginButton** – visible when user is not logged in
- **LogoutButton** – visible when user is logged in
- **Greeting** – renders either `UserGreeting` or `GuestGreeting` based on login status

---

## ⚙️ Technologies Used

- React.js (JSX)
- Functional Components
- Conditional Rendering (`if/else`)
- Event handling (`onClick`)

---

## 📦 Prerequisites

- Node.js
- NPM
- Visual Studio Code

---

## 🏁 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/ticketbookingapp.git
cd ticketbookingapp


2. Install Dependencies
npm install

3. Start the Development Server
npm start
