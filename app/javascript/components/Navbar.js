import React from 'react';
import ReactDOM from 'react-dom';


class Navbar extends React.Component {
  render() {
    return (
      <div>
        <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
          <a className="navbar-brand" href="/">Amy Winehouse API 🎀</a>
          <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse" id="navbarText">
            <ul className="navbar-nav ml-auto">
              <li className="nav-item active">
                <a className="nav-link" href="#">Home <span className="sr-only">(current)</span></a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#">API Documentation</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="/users/sign_in">Sign In</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="/users/sign_up">Sign Up</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    )
  }

}
export default Navbar;
