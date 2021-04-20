import React from "react";
import Logo from '../images/logo.png'

export class ApiInformation extends React.Component {

  render() {
    return (
      <div>
        <div className="row api-information text-center alert alert-secondary">
          <div className="col-md-12">
            <img className="logo" src={Logo} alt="logo" />
            <br />
            <h2>The RESTful Amy Winehouse API.</h2>
            <h2>All the JSON data you need in one place.</h2><br />
            <p>
              This API is able to make public API calls to retrieve certain
              information about the artist. <a href="#">Sign Up</a> for an API
              key and start making requests!
            </p>
          </div>
        </div>
      </div>
    );
  }
}
export default ApiInformation;
