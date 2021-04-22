import React, { Component } from "react";

import Navbar from "./Navbar";
import ApiInformation from "./ApiInformation";
import Footer from "./Footer";

import AlbumInfoContainer from "../containers/AlbumInfoContainer";
import DemoContainer from "../containers/DemoContainer";

const dotenv = require('dotenv').config()

class App extends Component {
  render() {
    return (
      <div>
        <Navbar />
        <ApiInformation />
        <div className="amy-container">
          <DemoContainer />
          <AlbumInfoContainer />
        </div>
        <Footer />
      </div>
    );
  }
}

export default App;
