import React from "react";
import Album from "../components/Album"

import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

export class AlbumInfoContainer extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      album: []
    };
  }

  componentDidMount() {
    const api_key = process.env.REACT_APP_AMY_API_KEY

    fetch("/api/v1/artists/", {
      method: 'GET',
      headers: {
        'X-Api-Key': api_key,
        'Accept': 'application/json'
      }
    })
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          album: a,
        });
      })
      .catch((error) => console.log(error));
  }

  render() {
    const API_URL = "https://amy-winehouse-api.com/api/v1/";
    let albums = this.state.album;
    return (
      <div>
        <Navbar />
        <br /> <br />
        <h2>Example API GET request:</h2>
        <a href={API_URL+"api/v1/artists/1/albums"}>{API_URL+"api/v1/artists/1/albums"}</a>
        <div className="row">
          {albums.map((a) => (
            <Album info={a} />
          ))}
        </div>
        <Footer />
      </div>
    );
  }
}
export default AlbumInfoContainer;
