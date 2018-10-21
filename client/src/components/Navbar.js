import React, { Component } from 'react';

// Components
import Container from './Container';


class App extends Component {

  getSongs = async() => {

    const api_call = await fetch('http://localhost:3000/api/v1/songs');
    const data = await api_call.json();


  }


  render() {
    return (
          <div>
            <nav class="navbar navbar-light bg-light">
              <span class="navbar-brand mb-0 h1">Beach House API</span>
              <button class="btn btn-outline-primary" type="button">GET Artists</button>
              <button class="btn btn-outline-primary" type="button">GET Albums</button>
              <button class="btn btn-outline-primary" type="button">GET Songs</button>
            </nav>
            <Container results={data}/>
          </div>
    );
  }
}

export default App
