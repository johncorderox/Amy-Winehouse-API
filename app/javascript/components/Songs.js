import React from "react";

export class Songs extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      songs: [],
    };
  }

  componentDidMount() {
    const api_key = process.env.REACT_APP_AMY_API_KEY;

    fetch("api/v1/artists/1/albums/1/songs", {
      method: "GET",
      headers: {
        "X-Api-Key": api_key,
        Accept: "application/json",
      },
    })
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          songs: a,
        });
      })
      .catch((error) => console.log(error));
  }

  handleDelete = (id) => {
    const api_key = process.env.REACT_APP_AMY_API_KEY;
    const token = document.querySelector('meta[name="csrf-token"]').content;

    fetch("api/v1/artists/1/albums/1/songs/"+id, {
      method: "DELETE",
      headers: {
        "X-Api-Key": api_key,
        "X-CSRF-Token": token,
        Accept: "application/json"
      },
    })
      .then((a) => {

        var freshSongs = this.state.songs.filter((song) => {
          return song.id != id;
        });

        this.setState({ songs: freshSongs });

      })
      .catch((error) => console.log(error));
  }

  render() {
    return <div>
       {this.state.songs.map(obj =>
         <ul>
          <li key={obj.id}>{obj.name} <button className="btn btn-warning" onClick={() => this.handleDelete(obj.id)}>Delete</button></li>
         </ul>
       )}
    </div>;
  }
}
export default Songs;
