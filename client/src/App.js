import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

// Components
import Navbar from './components/Navbar';
import Info from './components/Info';

class App extends Component {
  render() {
    return (
      <div>
      <Navbar />
      <Info />
      </div>
    );
  }
}

export default App;
