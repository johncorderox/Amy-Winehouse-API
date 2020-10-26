class Api::V1::SongsController < ActionController::API
  before_action :find_song, only: [:show]
  before_action :find_group!
  before_action :find_album!

  def index
    songs = @group.albums.songs
    render json: songs.to_json, status: :ok
  end

  def show
    render json: @song, adapter: :json
  end

  private

  def find_song
    @song = Song.find_by_id params[:id]
    render body: nil, status: :not_found unless @song.present?
  end

  def find_album!
    album = Album.find_by_id(params[:id])
  end

  def find_group!
    @group = Group.find_by_id(params[:id])
  end
end
