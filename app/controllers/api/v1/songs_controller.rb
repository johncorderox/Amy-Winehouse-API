class Api::V1::SongsController < ActionController::API
  before_action :find_song, only: [:show]

  def index
    songs = Song.all
    render json: {results: songs}.to_json, status: :ok
  end

  def show
    render json: @song, adapter: :json
  end

  private

  def find_song
    @song = Song.find_by_id params[:id]
    render body: nil, status: :not_found unless @song.present?
  end
end
