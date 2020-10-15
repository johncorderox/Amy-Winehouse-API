class Api::V1::AlbumsController < ActionController::API
  before_action :set_album, only: [:show]

  def index
    albums = Album.all
    render json: {results: albums}.to_json, status: :ok
  end

  def show
    render json: @album, adapter: :json
  end

  private

  def set_album
    @album = Album.find params[:id]
  end
end
