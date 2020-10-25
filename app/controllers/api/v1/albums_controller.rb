class Api::V1::AlbumsController < ActionController::API
  before_action :set_album, only: [:show]

  def index
    albums = Album.all
    render json: albums, adapter: :json, status: :ok
  end

  def show
    render json: @album, adapter: :json, status: :ok
  end

  private

  def set_album
    @album = Album.find params[:id]
  end
end
