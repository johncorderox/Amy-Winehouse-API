class Api::V1::SongsController < ActionController::API
  def index
    songs = Song.all
    render json: {results: songs}.to_json, status: :ok
  end
end
