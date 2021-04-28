import React from "react";

export class Songs extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      songs: [],
      name: "",
      length: 0.0,
      album_id: null,
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

    fetch("api/v1/artists/1/albums/1/songs/" + id, {
      method: "DELETE",
      headers: {
        "X-Api-Key": api_key,
        "X-CSRF-Token": token,
        Accept: "application/json",
      },
    })
      .then((a) => {
        var freshSongs = this.state.songs.filter((song) => {
          return song.id != id;
        });

        this.setState({ songs: freshSongs });
      })
      .catch((error) => console.log(error));
  };

  update(field) {
    return (e) =>
      this.setState({
        [field]: e.currentTarget.value,
      });
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log(this.state.name);
    console.log(this.state.length);
  }

  render() {
    return (
      <div>
        {this.state.songs.map((obj) => (
          <ul>
            <li key={obj.id}>
              {obj.name}{" "}
              <button
                className="btn btn-warning"
                onClick={() => this.handleDelete(obj.id)}
              >
                Delete
              </button>
            </li>
          </ul>
        ))}
        <h1>New Song</h1>
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            placeholder="Name"
            value={this.state.name}
            onChange={this.update("name")}
          />{" "}
          <br />
          <input
            type="number"
            placeholder="Song Length"
            value={this.state.length}
            onChange={this.update("length")}
          />
          <br />
          <button type="submit" className="btn btn-info">
            Add New Song
          </button>
        </form>
      </div>
    );
  }
}
export default Songs;
