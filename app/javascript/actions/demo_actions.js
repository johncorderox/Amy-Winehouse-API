export const GET_ARTIST = "GET_ARTIST";

export function getArtist(a) {
  return { type: GET_ARTIST, artist: a }
}
