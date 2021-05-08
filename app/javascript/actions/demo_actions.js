export const GET_ARTIST = "GET_ARTIST";

{
  type: GET_ARTIST,
  payload: {
    description: 'Get the Artist'
  }
}

export function getArtist(a) {
  return { type: GET_ARTIST, artist: a }
}
