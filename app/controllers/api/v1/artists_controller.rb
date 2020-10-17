class Api::V1::ArtistsController < ActionController::API
  before_action :set_group, only: [:show]

  def index
    artists = Artist.all
    render json: artists, adapter: :json, status: :ok
  end

  def show
    render json: @artist, adapter: :json, status: :ok
  end

  private

  def set_artist
    @artist = Artist.find params[:id]
  end
end
