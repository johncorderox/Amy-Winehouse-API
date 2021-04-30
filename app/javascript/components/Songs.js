import React from "react";

export class Songs extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: [],
      text: "",
      uid: 1
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    const api_key = process.env.REACT_APP_AMY_API_KEY;

    fetch("messages", {
      method: "GET",
      headers: {
        "X-Api-Key": api_key,
        Accept: "application/json",
      },
    })
      .then((resp) => resp.json())
      .then((a) => {
        this.setState({
          messages: a,
        });
      })
      .catch((error) => console.log(error));
  }

  handleDelete = (id) => {
    const api_key = process.env.REACT_APP_AMY_API_KEY;
    const token = document.querySelector('meta[name="csrf-token"]').content;

    fetch("messages/" + id, {
      method: "DELETE",
      headers: {
        "X-Api-Key": api_key,
        "X-CSRF-Token": token,
        Accept: "application/json",
      },
    })
      .then((a) => {
        var freshMessages = this.state.messages.filter((mess) => {
          return mess.id != id;
        });

        this.setState({ messages: freshMessages });
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

    const api_key = process.env.REACT_APP_AMY_API_KEY;
    const token = document.querySelector('meta[name="csrf-token"]').content;

    var text = this.state.text;
    var uid = this.state.uid;
    console.log(text);
    console.log(uid);

    fetch("/messages", {
      method: "POST",
      headers: {
        "X-Api-Key": api_key,
        "Content-Type": "application/json",
        "X-CSRF-Token": token,
      },
      body: JSON.stringify({ "message": {
        "text" : text,
        "user_id" : uid
      }}),
    })
      .then((resp) => resp.json())
      .then((b) => {
        var newState = this.state.messages.concat(b);
        this.setState({ messages: newState })
        console.log(b);
        this.state.text = "";
      })
      .catch((error) => console.log(error));

  }


  render() {
    return (
      <div>
        {this.state.messages.map((obj) => (
          <ul>
            <li key={obj.id}>
              {obj.text}{" "}
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
            placeholder="text"
            value={this.state.text}
            onChange={this.update("text")}
          />{" "}
          <br />
          <br />
          <button type="submit" className="btn btn-info">
            Add New Song
          </button>
          <button onClick={this.handleEdit}>Edit</button>
        </form>
      </div>
    );
  }
}
export default Songs;
