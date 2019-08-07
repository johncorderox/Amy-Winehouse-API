import React from 'react';
import './App.css';

import Information from './components/Information';
import Form from './components/Form';
import Add from './components/Add';

function App() {
  return (
    <div className="App">
    <style>
    @import url('https://fonts.googleapis.com/css?family=Bitter');
    </style>
    <div className="container">
      <Information />
      <hr />
      <Add />
      <Form />
    </div>
    </div>
  );
}

export default App;
