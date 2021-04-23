import React from "react";
import ApiResponse from "./ApiResponse";

export class ApiInput extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      demoCall: [],
      apiInput: "artists/1",
    };
  }

  apiCall = (url) => {
    const api_key = process.env.REACT_APP_AMY_API_KEY

    fetch("/api/v1/"+url, {
      method: 'GET',
      headers: {
        'X-Api-Key': api_key,
        'Accept': 'application/json'
      }
    })
      .then((resp) => resp.json())
      .then((b) => {
        this.setState({
          demoCall: b,
        });
      })
      .catch((error) => console.log(error));
  };

  componentDidMount() {
    const api_key = process.env.REACT_APP_AMY_API_KEY

    fetch("/api/v1/artists/1", {
      method: 'GET',
      headers: {
        'X-Api-Key': api_key,
        'Accept': 'application/json'
      }
    })
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          demoCall: a,
        });
      })
      .catch((error) => console.log(error));
  }

  changeInput = (option) => {
    var endpoint;

    switch (option) {
      case 0:
        endpoint = "artists/1/albums";
        break;
      case 1:
        endpoint = "artists/1/albums/3/songs";
        break;
      case 2:
        endpoint = "artists/1/quotes";
        break;
      default:
        "artists/1";
    }
    this.apiCall(endpoint);
    this.appendInput(endpoint);
  };

  appendInput = (endpoint) => {
    this.setState({
      apiInput: endpoint
    })

  };

  handleChange = (event) => {
    this.setState({
      apiInput: event.target.value
    })
  };

  handleSubmit = (event) => {
    event.preventDefault();
    this.apiCall(this.state.apiInput);
  }

  render() {
    const API_URL = "https://amy-winehouse-api.com/api/v1/";
    return (
      <div>
        <div className="col-md-7 api-call">
          <div className="input-group mb-3">
            <form onSubmit={this.handleSubmit} className="form-inline">
              <div className="form-group">
            <div className="input-group-prepend">
              <span className="input-group-text" id="basic-addon3">
                {API_URL}
              </span>
            </div>
            <input
              type="text"
              className="form-control"
              id="basic-url"
              aria-describedby="basic-addon3"
              value={this.state.apiInput}
              onChange={this.handleChange}
            />
            <div className="input-group-append">
              <button className="btn btn-primary" type="submit">
                Submit
              </button>
            </div>
            </div>
            </form>
          </div>
          <p className="text-left">
            Open API endpoints:
            <button
              type="button"
              className="btn btn-link"
              onClick={() => this.changeInput(0)}
            >
              /artists/1/albums
            </button>
            <button
              type="button"
              className="btn btn-link"
              onClick={() => this.changeInput(1)}
            >
              /artists/1/albums/3/songs
            </button>
            <button
              type="button"
              className="btn btn-link"
              onClick={() => this.changeInput(2)}
            >
              /artists/1/quotes
            </button>
          </p>
          <p className="text-left">Direct link to results: <a href={API_URL+this.state.apiInput}>{API_URL+this.state.apiInput}</a></p>



          <ApiResponse api={this.state.demoCall} />
        </div>
      </div>
    );
  }
}
export default ApiInput;
