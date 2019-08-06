import React from 'react';
import './App.css';

import Information from './components/Information';
import Form from './components/Form';

function App() {
  return (
    <div className="App">
    <style>
    @import url('https://fonts.googleapis.com/css?family=Bitter');
    </style>
    <div className="container">
      <Information />
      <hr />
      <Form />
    </div>
    </div>
  );
}

export default App;
