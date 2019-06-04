import React, { Component } from "react";
import axios from 'axios';

class Output extends Component {

  constructor(props){
    super(props)
    this.state = {
        lists: []
      }
}
    componentDidMount() {
        axios.get('http://localhost:3001/api/v1/songs.json')
        .then(response => {
            console.log(response)
            this.setState({
                lists: response.data
            })
        })
        .catch(error => console.log(error))
    }

  render() {
    return (
      <div>
      <div className="row">
      <div className="col-md-10 offset-md-2">
      <textarea className="form-control" id="json"></textarea>
      {this.state.lists.map(obj => <li>{obj.name}</li>)}
    </div>
    </div>
    </div>
    );
  }
}

export default Output;
