import React from 'react'

export class AlbumInfoContainer extends React.Component {

  constructor(props) {
     super(props);
     this.state = {
       album: [],
       tracks: []
     };
   }

  componentDidMount(){
    fetch("/api/v1/artists/1/albums")
    .then(resp => resp.json())
    .then(a => {
      this.setState({
        album: a
      })
    })
    .catch(error => console.log(error))

  }

  getSongs = (id) => {
    fetch("/api/v1/artists/1/albums/"+id+"/songs")
    .then(resp => resp.json())
    .then(songs => {
      this.setState({
        tracks: songs
      });
    })
    .catch(error => console.log(error))
  }

  render() {
    let albums = this.state.album;
    return (
      <div>
        <div className="row">
          {albums.map(a =>
            <div className="card" key={a.id}>
            <img className="card-img-top" src={a.album_cover} onClick={() => this.getSongs(a.id)} />
            <div className="card-body">
              <p className="card-text">{a.name}</p>
              <p className="card-text"><b>Released: </b>{a.release_date}</p>
            </div>
          </div>
         )
        }
        </div>
      </div>
  )
}

}
export default AlbumInfoContainer;
