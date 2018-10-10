import React, { Component } from 'react';

class DemoButtons extends Component {

  state = {
    results: undefined
  }

  getAlbums = async(e) => {

    e.preventDefault();
    this.setState({
      results: "done!"
    });

  }

  render() {

    return (
      <div>
        <div class="btn-group" role="group" aria-label="Basic example">
          <button type="button" class="btn btn-secondary" onClick={this.getAlbums}>GET All Songs</button>
          <button type="button" class="btn btn-secondary">GET All Albums</button>
          <button type="button" class="btn btn-secondary">GET All Artists</button>
        </div>
        <div class="api-results" >
        {this.state.results}
        </div>
      </div>
    );
  }

}

export default DemoButtons;
