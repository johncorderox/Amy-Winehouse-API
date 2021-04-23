import React from "react";

class Tabs extends React.Component {
  render() {
    return (
      <div>
        <ul className="nav nav-tabs tabs mt-5">
          <li className="nav-item">
            <a className="nav-link active" aria-current="page" href="#">
              Example Album request
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" href="#">
              Example Artist Bio Page
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" href="#">
              Song Data
            </a>
          </li>
        </ul>
      </div>
    );
  }
}
export default Tabs;
