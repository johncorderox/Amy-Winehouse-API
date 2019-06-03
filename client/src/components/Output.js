import React, { Component } from "react";

class Output extends Component {
  render() {
    return (
      <div>
      <div className="row">
      <div className="col-md-10 offset-md-2">
      <textarea className="form-control" id="json"></textarea>
    </div>
    </div>
    </div>
    );
  }
}

export default Output;
