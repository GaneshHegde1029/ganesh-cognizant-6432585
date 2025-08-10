import React, { Component } from 'react';

class CurrencyConvertor extends Component {
  constructor(props) {
    super(props);
    this.state = {
      inr: '',
      euro: null
    };
  }

  handleChange = (event) => {
    this.setState({ inr: event.target.value });
  };

  handleSubmit = () => {
    const conversionRate = 0.011; // 1 INR = 0.011 EUR (example rate)
    const euro = this.state.inr * conversionRate;
    this.setState({ euro });
  };

  render() {
    return (
      <div>
        <h2>Currency Converter (INR to EUR)</h2>
        <input
          type="number"
          placeholder="Enter amount in INR"
          value={this.state.inr}
          onChange={this.handleChange}
        />
        <button onClick={this.handleSubmit}>Convert</button>

        {this.state.euro !== null && (
          <h3>Equivalent in Euro: €{this.state.euro.toFixed(2)}</h3>
        )}
      </div>
    );
  }
}

export default CurrencyConvertor;
