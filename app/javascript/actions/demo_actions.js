export const GET_ARTIST = "GET_ARTIST";
export const GET_ALL_ARTISTS = "GET_ALL_ARTISTS";
export const GET_ALBUMS = "GET_ALBUMS";

{
  type: GET_ARTIST,
  payload: {
    description: 'Get the Artist'
  }
}

{
  type: GET_ALL_ARTISTS,
  payload: {
    description: 'Get all Artists'
  }
}

export function getArtist(a) {
  return { type: GET_ARTIST, artist: a }
}

export function getAllArtists(b) {
  return { type: GET_ALL_ARTISTS, artist: b}
}
