import React from "react";

export class Album extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <br /> <br />
          <div className="card" key={this.props.info.id}>
            <img className="card-img-top" src={this.props.info.album_cover} />
            <div className="card-body">
              <p className="card-text">{this.props.info.name}</p>
              <p className="card-text">
                <b>Released: </b>
                {this.props.info.release_date}
              </p>
            </div>
          </div>
      </div>
    );
  }
}
export default Album;
