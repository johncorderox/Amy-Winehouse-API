import React from "react";
import Tabs from "../components/Tabs";

export class ExampleContainer extends React.Component {
  constructor() {
    super();
}


  render() {
    return (
      <div>
        <div className="row">
          <div className="demo-container text-center col-md-12">
            <h2>Try it Out!</h2>
            <br /> <br />
            <Tabs />
          </div>
      </div>
    </div>
    );
  }
}
export default ExampleContainer;
