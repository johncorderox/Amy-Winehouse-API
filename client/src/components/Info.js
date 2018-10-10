import React, { Component } from 'react';

// Components
import DemoButtons from '../components/DemoButtons';

class Info extends Component {

  render() {

    return (
      <div>
      <div class="card container mt-3">
        <div class="card-body">
        <center>
          <h1><b>Beach House API</b></h1>
          <h5>The RESTful Beach House API</h5>
          <DemoButtons />
          </center>
        </div>
        </div>
      </div>
    );
  }

}

export default Info;
