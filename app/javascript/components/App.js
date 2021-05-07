import React, { Component } from "react";
import { Route, Switch, BrowserRouter } from "react-router-dom";
import { withRouter } from "react-router";

import DemoContainer from "../containers/DemoContainer";
import AlbumInfoContainer from "../containers/AlbumInfoContainer";

const dotenv = require("dotenv").config();

class App extends Component {
  render() {
    return (
      <div>
        <BrowserRouter>
          <Switch>
            <Route exact path="/">
              <DemoContainer />
            </Route>
            <Route
              path="/data"
              exact
              component={AlbumInfoContainer}
             />
          </Switch>
        </BrowserRouter>
      </div>
    );
  }
}

export default withRouter(App);
