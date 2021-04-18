import React from "react";
import ApiResponse from "./ApiResponse";

export class ApiInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      demoCall: [],

    };
  }

  componentDidMount() {
    fetch("/api/v1/artists/1/")
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          demoCall: a,
        });
      })
      .catch((error) => console.log(error));
  }

  render() {
    const API_URL = "https://amy-winehouse-api.com/api/v1/";
    return (
      <div>
        <div className="col-md-7 api-call">
          <div className="input-group mb-3">
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
            />
            <div className="input-group-append">
              <button className="btn btn-info" type="button">
                Submit
              </button>
            </div>
          </div>
          <p>
            Open API endpoints:
            <button type="button" className="btn btn-link">
              /artists
            </button>
            <button type="button" className="btn btn-link">
              /albums/2
            </button>
            <button type="button" className="btn btn-link">
              /artists/1/albums/3/
            </button>
            <button type="button" className="btn btn-link">
              /quotes
            </button>
          </p>
          <ApiResponse api={this.state.demoCall} />
        </div>
      </div>
    );
  }
}
export default ApiInput;
