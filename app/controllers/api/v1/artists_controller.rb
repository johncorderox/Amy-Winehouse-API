class Api::V1::ArtistsController < ActionController::API
  def index
    artists = Artist.all
    render json: {results: artists}.to_json, status: :ok
  end
end
