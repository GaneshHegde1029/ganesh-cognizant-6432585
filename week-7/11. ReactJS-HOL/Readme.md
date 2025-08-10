# ⚙️ Event Examples App (React Event Handling Lab)

This React project named **`eventexamplesapp`** is built to demonstrate how to handle various types of events in React applications using **synthetic events**, the **`this` keyword**, and **event handler functions**. The app includes buttons for counter control, message printing, and a currency converter from INR to Euro.

---

## 🎯 Objectives

- Understand **React events**
- Use **event handlers** in React
- Define and apply **synthetic events**
- Follow **React event naming conventions**

---

## 🧪 Lab Summary

This app covers:

### 1. Counter with Event Handling

- Two buttons: **Increment** and **Decrement**
- The **Increment** button:
  - Increases the counter value
  - Displays a static message via another method
- The **Decrement** button reduces the counter

### 2. Button with Argument

- A button labeled **Say Welcome**
- Triggers a function with `"welcome"` as an argument

### 3. Synthetic Event Demo

- A button with an `onClick` event
- On press, displays the message: `"I was clicked"`  
- Uses **Synthetic Event** from React

### 4. Currency Converter

- A component named **CurrencyConvertor**
- Accepts INR input and converts it to **Euros**
- Uses `onClick` event to trigger conversion via `handleSubmit` method

---

## ⚙️ Technologies Used

- React.js (with JSX)
- Synthetic Events
- Functional and Class Components
- Inline and external event handlers

---

## 🧰 Prerequisites

- Node.js
- NPM
- Visual Studio Code

---

## ⏱️ Estimated Time

**90 minutes**

---

## 📁 Project Structure
eventexamplesapp/
├── src/
│ ├── components/
│ │ └── CurrencyConvertor.js
│ ├── App.js
│ └── index.css
├── package.json
└── README.md
