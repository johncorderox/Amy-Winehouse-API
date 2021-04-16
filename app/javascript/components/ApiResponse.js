import React from "react";
import JSONPretty from "react-json-pretty";

export class ApiResponse extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const JSONPrettyMon = require('react-json-pretty/dist/monikai');
    return (
      <div>
        <div className="form-group text-left">
          <JSONPretty
            id="json-pretty"
            data={this.props.api}
            space="4"
            theme={JSONPrettyMon}
          ></JSONPretty>
        </div>
      </div>
    );
  }
}
export default ApiResponse;
