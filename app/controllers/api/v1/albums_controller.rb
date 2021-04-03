class Api::V1::AlbumsController < ActionController::API
  before_action :set_album, only: [:show]

  def index
    albums = Album.all
    render json: albums, adapter: :json, status: :ok
  end

  def create
    album = Album.create!(album_params)
    render json: album, status: :created
  end

  def show
    render json: @album, adapter: :json, status: :ok
  end

  def destroy
    album = Album.find params[:id]
    album.destroy
  end

  private

  def set_album
    @album = Album.find params[:id]
  end

  def album_params
    params.permit(:name, :release_date)
  end
end
