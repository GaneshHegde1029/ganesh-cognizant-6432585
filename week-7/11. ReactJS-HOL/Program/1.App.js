import React, { Component } from 'react';
import CurrencyConvertor from './components/CurrencyConvertor';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0
    };
  }

  increment = () => {
    this.setState({ count: this.state.count + 1 });
    this.sayHello();
  };

  decrement = () => {
    this.setState({ count: this.state.count - 1 });
  };

  sayHello = () => {
    console.log("Hello! This is a static message.");
  };

  sayWelcome = (msg) => {
    alert(msg);
  };

  handleClick = (event) => {
    alert("I was clicked!");
    console.log("Synthetic Event Type: ", event.type);
  };

  render() {
    return (
      <div style={{ padding: '20px' }}>
        <h1>React Event Handling Example</h1>

        <h2>Counter: {this.state.count}</h2>
        <button onClick={this.increment}>Increment</button>
        <button onClick={this.decrement}>Decrement</button>

        <hr />

        <button onClick={() => this.sayWelcome("Welcome!")}>Say Welcome</button>

        <hr />

        <button onClick={this.handleClick}>Click Me (Synthetic Event)</button>

        <hr />

        <CurrencyConvertor />
      </div>
    );
  }
}

export default App;
