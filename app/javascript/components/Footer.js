import React from "react";

export class Footer extends React.Component {
  render() {
    return (
      <div>
        <footer className="bg-light text-center text-lg-start">
          <div className="container p-4">
            <div className="row">
              <div className="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 className="text-uppercase">Amy Winehouse API</h5>

                <p>
                This API is open source! <a href="https://github.com/johncorderox/Amy-Winehouse-API">Github &hearts;</a>
                </p>
              </div>

              <div className="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 className="text-uppercase">Links</h5>

                <ul className="list-unstyled mb-0">
                  <li>
                    <a href="#!" className="text-dark">
                      About
                    </a>
                  </li>
                  <li>
                    <a href="#!" className="text-dark">
                      Sign Up
                    </a>
                  </li>
                  <li>
                    <a href="#!" className="text-dark">
                      Sign In
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div className="text-center p-3 footer-text">
          © 2021 Copyright: John Cordero
        </div>


        </footer>
      </div>
    );
  }
}
export default Footer;
