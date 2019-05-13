import React, { Component } from "react";

class Form extends Component {
  render() {
    return (
      <div>
      <div className="row">
      <div className="col-md-10 offset-md-2">
      <label for="basic-url">Your vanity URL</label>
      <div className="input-group mb-3">
      <div className="input-group-prepend">
        <span className="input-group-text" id="basic-addon3">https://beachhouse-api.com/api/v2/</span>
      </div>
      <input type="text" className="form-control" id="basic-url" aria-describedby="basic-addon3" />
      <button className="btn btn-primary">Submit</button>
      </div>
        </div>
    </div>
      </div>
    );
  }
}

export default Form;
