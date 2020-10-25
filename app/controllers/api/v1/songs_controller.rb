class Api::V1::SongsController < ActionController::API
  before_action :find_song, only: [:show]

  def index
    songs = Song.all
    render json: songs, adapter: :json, status: :ok
  end

  def show
    render json: @song, adapter: :json, status: :ok
  end

  private

  def find_song
    @song = Song.find_by_id params[:id]
    render body: nil, status: :not_found unless @song.present?
  end
end
