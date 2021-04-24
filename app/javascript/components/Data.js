import React, { Component } from "react";

import Navbar from "./Navbar";
import Songs from "./Songs";
import Footer from "./Footer";

const dotenv = require('dotenv').config()

class Data extends Component {
  render() {
    return (
      <div>
        <Navbar />
        <div className="amy-container">
        <Songs />
        </div>
        <Footer />
      </div>
    );
  }
}

export default Data;
