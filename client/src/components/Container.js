import React, { Component } from 'react';


class Container extends Component {
  render() {
    return (
      <div>
      <div class="card container mt-3">
        <div class="card-body">
        {this.props.results.map(data)}
        </div>
        </div>
      </div>
    );
  }
}

export default Container;

  //
  // state = {
  //   results: []
  // }
  //
  // getSongs = async(e) => {
  //
  //   e.preventDefault();
  //   this.setState({
  //     results: "Here are all Beach House Songs: "
  //   });
  //
  // }
  //
  // getAlbums = async() => {
  //
  //   const api_call = await fetch('http://localhost:3000/api/v1/albums');
  //
  //   const data = await api_call.json();
  //
  //   this.setState({
  //
  //     results: data
  //
  //   });
  //
  // }
  //
  // getSongs = async() => {
  //
  //   const api_call = await fetch('http://localhost:3000/api/v1/songs');
  //   const data = await api_call.json();
  //   this.setState({
  //
  //     results: data
  //
  //   });
  //
  // }
  //
  // getArtists = async() => {
  //
  //   const api_call = await fetch('http://localhost:3000/api/v1/artists');
  //   const data = await api_call.json();
  //   this.setState({
  //
  //     results: data
  //
  //   });
  //
  // }
