# 🏏 Cricket App - React + ES6 Hands-on Lab

This project is a simple React application named `cricketapp` developed to demonstrate ES6 features in the context of displaying cricket player data. The app showcases functionalities such as `map()`, `arrow functions`, destructuring, and array merging using real-world data manipulation examples.

---

## 🚀 Objectives

Through this project, you will:

- List the features of **ES6**
- Learn the use of `let`, `const`, and the difference from `var`
- Understand **ES6 classes** and **inheritance**
- Use **arrow functions**
- Work with **Set()** and **Map()**
- Implement destructuring and merging arrays

---

## 🧪 Lab Highlights

### 1. `ListofPlayers` Component

- Declares an array of 11 players with their **names** and **scores**.
- Uses the **`map()`** function to iterate and render the list.
- Filters and displays players with scores **less than 70** using **arrow functions**.

### 2. `IndianPlayers` Component

- Splits an array of Indian players into **odd** and **even** indexed players using **destructuring**.
- Declares two separate arrays: `T20Players` and `RanjiTrophyPlayers`, and merges them using **ES6 spread operator**.
- Displays all players using appropriate subcomponents.

---

## 🖥️ Output Logic

```js
var flag = true;
if(flag === true){
  // Render ListofPlayers component and Scorebelow70 filter
} else {
  // Render IndianPlayers: Odd/Even teams and merged array
}


✅ When flag = true:
List of All Players

List of Players having Score < 70

✅ When flag = false:
Odd and Even Indexed Players from Indian Team

Merged List of T20 and Ranji Trophy Players

🧰 Prerequisites
Make sure you have the following installed:

*Node.js
*NPM
*Visual Studio Code
