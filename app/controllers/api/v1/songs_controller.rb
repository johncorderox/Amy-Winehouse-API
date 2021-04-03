class Api::V1::SongsController < ActionController::API
  before_action :set_song, only: [:show, :destroy]

  def index
    songs = Song.where(group_id: params[:group_id], album_id: params[:album_id])
    render json: songs, adapter: :json, status: :ok
  end

  def create
    song = Song.create!(song_params)
    render json: song, status: :created
  end

  def show
    render json: @song, adapter: :json, status: :ok
  end

  def destroy
    @song.destroy
  end

  private

  def set_song
    @song = Song.find_by_id params[:id]
    render body: nil, status: :not_found unless @song.present?
  end

  def song_params
    params.permit(:name, :length)
  end
end
