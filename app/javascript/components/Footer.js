import React from "react";

export class Footer extends React.Component {
  render() {
    return (
      <div>
        <footer className="bg-light text-center text-lg-start">
          <div className="text-center p-3 footer-text">
            This RESTful API is an Open Source Project. Check out our <a href="https://github.com/johncorderox/Amy-Winehouse-API">Github &hearts;</a>.<br /><br />
          © 2021 Copyright: John Cordero
        </div>
        </footer>
      </div>
    );
  }
}
export default Footer;
