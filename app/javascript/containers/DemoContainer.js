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

  componentDidMount() {
    const api_key = process.env.REACT_APP_AMY_API_KEY;

    fetch("/api/v1/artists/1/", {
      method: "GET",
      headers: {
        "X-Api-Key": api_key,
        Accept: "application/json",
      },
    })
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
