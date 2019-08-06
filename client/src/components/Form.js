import React, { Component } from "react";
import axios from 'axios'
import Output from './Output';

class Form extends Component {

  constructor(props) {
  super();
  this.state = {
    suffix: "",
    lists: []
  };


}

componentDidMount() {
    axios.get('http://localhost:3001/api/v1/songs.json')
    .then(response => {
        this.setState({
            lists: response.data
        })
    })
    .catch(error => console.log(error))
}

  handleChange = (e) => {
  this.setState({suffix: e.target.value});
  }

  handleSubmit = () => {
    axios.get(`http://localhost:3001/api/v1/${this.state.suffix}.json`)
    .then(response => {
        console.log(response)
        this.setState({
            lists: response.data
        })
    })
    .catch(error => console.log(error));
}




  render() {
    return (
      <div>
      <div className="row">
      <div className="col-md-10 offset-md-2">
      <div className="input-group mb-3">
      <div className="input-group-prepend">
        <span className="input-group-text" id="basic-addon3">https://beachhouse-api.com/api/v2/</span>
      </div>
      <input
        type="text"
        className="form-control"
        aria-describedby="basic-addon3"
        value={this.state.suffix}
        onChange={this.handleChange}
         autoFocus={true}
       />
      <button className="btn btn-primary" onClick={this.handleSubmit}>Submit</button>
      <br />
      </div>
      </div>
      </div>
      <div className="json">
      {this.state.lists &&
          <Output output={this.state.lists}/>
        }
        </div>
     </div>
    );
  }
}

export default Form;
