export const fetchAlbums = (key) => {
  fetch("/api/v1/artists/1/albums", {
    method: 'GET',
    headers: {
      'X-Api-Key': key,
      'Accept': 'application/json'
    }
  })
}

export const fetchArtist = (key) => {
  fetch("/api/v1/artists/1", {
    method: 'GET',
    headers: {
      'X-Api-Key': key,
      'Accept': 'application/json'
    }
  })
}
