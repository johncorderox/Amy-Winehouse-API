import React, { Component } from 'react';


class App extends Component {

  state = {
    name: "John"
  }

  changeMe = (e) => {

    this.setState({
      name: e.target.value
    });
  }

 doForm = (e) => {

   e.preventDefault();
 }

  render() {
    return (
          <div>
            <nav class="navbar navbar-dark bg-dark">
              <span class="navbar-brand mb-0 h1">Beach House API</span>
            </nav>
          </div>
    );
  }
}

export default App
