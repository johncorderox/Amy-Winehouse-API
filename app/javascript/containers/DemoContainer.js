import React from "react";
import JSONPretty from "react-json-pretty";
import ApiInput from "../components/ApiInput";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Sig from '../images/signature.png'

import ApiInformation from "../components/ApiInformation";


export class DemoContainer extends React.Component {
  constructor() {
    super();
    this.state = {
      demoCall: [],
    };
  }

  render() {
    return (
      <div>
        <Navbar />
        <ApiInformation />
        <div className="amy-container">
          <div className="row">
            <div className="demo-container text-center col-md-12">
              <h2>Try it Out!</h2>
              <br /> <br />
              <ApiInput />
            </div>
          </div>
          <div className="text-center">
                  <img className="sig" src={Sig} alt="sig" />
          </div>
        </div>
        <Footer />
      </div>
    );
  }
}
export default DemoContainer;
