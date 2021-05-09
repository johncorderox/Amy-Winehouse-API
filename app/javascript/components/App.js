import React, { Component } from "react";
import { Route, Switch, BrowserRouter } from "react-router-dom";

import {Provider} from "react-redux"
import configureStore from '../store/store';

import DemoContainer from "../containers/DemoContainer";
import Data from "./Data";

const dotenv = require("dotenv").config();
const store = configureStore();

class App extends Component {
  render() {
    return (
      <div>
        <Provider store={store}>
          <BrowserRouter>
            <Switch>
              <Route exact path="/">
                <DemoContainer />
              </Route>
              <Route path="/data" exact component={Data} />
            </Switch>
          </BrowserRouter>
        </Provider>
      </div>
    );
  }
}

export default App;
