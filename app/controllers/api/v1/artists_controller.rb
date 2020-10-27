class Api::V1::ArtistsController < ActionController::API
  before_action :set_artist, only: [:show]

  def index
    artists = Artist.where(group_id: params[:group_id])
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
