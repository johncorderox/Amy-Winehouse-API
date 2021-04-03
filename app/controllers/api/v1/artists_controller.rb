class Api::V1::ArtistsController < ActionController::API
  before_action :set_artist, only: [:show, :destroy]

  def index
    artists = Artist.where(group_id: params[:group_id])
    render json: artists, adapter: :json, status: :ok
  end

  def create
    artist = Artist.create!(artist_params)
    render json: artist, status: :created
  end

  def show
    render json: @artist, adapter: :json, status: :ok
  end

  def destroy
    @artist.destroy
  end

  private

  def set_artist
    @artist = Artist.find params[:id]
  end

  def artist_params
    params.permit(:name, :position, :active_member)
  end
end
