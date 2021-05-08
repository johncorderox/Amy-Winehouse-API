import React from "react";

export class Album extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <br /> <br />
        <div className="text-center">
          {this.props.info.name}

          {this.props.info.date_of_birth}

          <img src={this.props.info.press_photo} />
        </div>
      </div>
    );
  }
}
export default Album;
