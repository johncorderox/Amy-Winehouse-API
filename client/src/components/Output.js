import React, { Component } from "react";
import axios from 'axios';

class Output extends Component {

  constructor(props){
    super(props)

}


  render(output) {
    return (
      <div>
      <div className="row">
      <div className="col-md-10 offset-md-2">
      <pre>
        { JSON.stringify(this.props.output, null, 4) }
        </pre>
    </div>
    </div>
    </div>
    );
  }
}

export default Output;
