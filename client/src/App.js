import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

// Components
import Navbar from './components/Navbar';
import Container from './components/Container';

class App extends Component {

  render() {
    return (
      <div>
      <Navbar />
      </div>
    );
  }
}

export default App;
