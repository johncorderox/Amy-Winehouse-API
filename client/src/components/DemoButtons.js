import React, { Component } from 'react';
import axios from 'axios';

class DemoButtons extends Component {

  state = {
    results: []
  }

  getSongs = async(e) => {

    e.preventDefault();
    this.setState({
      results: "Here are all Beach House Songs: "
    });

  }

  getAlbums = async() => {

    const api_call = await fetch('http://localhost:3000/api/v1/albums');

    const data = await api_call.json();

    this.setState({

      results: data

    });
    console.log("called");

  }

  render() {

    return (
      <div>
        <div class="btn-group" role="group" aria-label="Basic example">
          <button type="button" class="btn btn-secondary" onClick={this.getSongs}>GET All Songs</button>
          <button type="button" class="btn btn-secondary" onClick={this.getAlbums}>GET All Albums</button>
          <button type="button" class="btn btn-secondary">GET All Artists</button>
        </div>
        <div class="api-results" >
        <ul>
        {this.state.results.map(data=> <li>{data.name}</li>)}
        </ul>
        </div>
      </div>
    );
  }

}

export default DemoButtons;
