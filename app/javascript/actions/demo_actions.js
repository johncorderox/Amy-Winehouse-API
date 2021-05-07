export const GET_ARTIST = "GET_ARTIST";

{
  type: GET_ARTIST,
  console.log("Action called");
  payload: {
    description: 'Get the Artist of id: 1'
  }
}

export function getArtist() {
  return { type: GET_ARTIST, artist: a }
}
