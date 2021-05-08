import React from "react";
import JSONPretty from "react-json-pretty";

import { connect } from 'react-redux'
import { getArtist } from '../actions/demo_actions'


export class ApiResponse extends React.Component {
  constructor(props) {
    super(props);
  }

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
        this.props.dispatch(getArtist(a));
      })
      .catch((error) => console.log(error));
  }

  render() {
    const JSONPrettyMon = require('react-json-pretty/dist/acai');
    return (
      <div>
        <div className="form-group text-left">
          <JSONPretty
            id="json-pretty"
            data={this.props.artist}
            space="4"
            theme={JSONPrettyMon}
          ></JSONPretty>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    artist: state.artist
  }
}

export default connect(mapStateToProps)(ApiResponse)
