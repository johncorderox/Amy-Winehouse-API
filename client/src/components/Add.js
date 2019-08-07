import React, {
  Component
} from "react";
import axios from 'axios'

class Add extends Component {

  constructor(props) {
    super();
    this.state = {
      form: false
    };

  }

  showForm = (e) => {
    this.setState({form: true});
  }

  addAlbum = (e) => {
    // axios.post('http://localhost:3001/api/v1/albums',
    //  {
    //    album: {
    //     name: 'test',
    //     album_cover: 'cool',
    //     release_date: 'today',
    //     group_id: 1
    //    }
    //
    // })
    console.log( e.target.name.value);

  }

  render() {
    return (
      <div>
      <br />
      <div className="row">
      <div className="col-sm-6 offset-md-2">
      <button className="btn btn-info" onClick={this.showForm}>Add New Album</button>
      {this.state.form &&
        <form>
        Name: <input type="text" className="form-control" name="name"/>
        Album Cover URL: <input type="text" className="form-control" name="album[album_cover]"/>
        <button type="button" className="btn btn-info" onClick={this.addAlbum}>Add</button>
        </form>
      }
        </div>
    </div>
      </div>
    );
  }



}

export default Add;
