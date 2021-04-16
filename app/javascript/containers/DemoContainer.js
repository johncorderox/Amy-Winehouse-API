import React from "react";
import JSONPretty from "react-json-pretty";
import ApiInput from "../components/ApiInput";

export class DemoContainer extends React.Component {
  constructor() {
    super();
    this.state = {
      demoCall: [],
    };
  }

  componentDidMount() {
    fetch("/api/v1/artists/1")
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          demoCall: a,
        });
      })
      .catch((error) => console.log(error));
  }

  render() {
    return (
      <div>
        <div className="row">
          <div className="demo-container text-center col-md-12">
            <h2>Try it Out!</h2>
            <br /> <br />
            <ApiInput />
          </div>
      </div>
    </div>
    );
  }
}
export default DemoContainer;
