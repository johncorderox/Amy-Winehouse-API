class Api::V1::LyricsController < ApplicationController
  before_action :set_lyric, only: [:show, :update, :destroy]

  # GET /lyrics
  def index
    @lyrics = Lyric.all

    render json: @lyrics
  end

  # GET /lyrics/1
  def show
    render json: @lyric
  end

  # POST /lyrics
  def create
    @lyric = Lyric.new(lyric_params)

    if @lyric.save
      render json: @lyric, status: :created, location: @lyric
    else
      render json: @lyric.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lyrics/1
  def update
    if @lyric.update(lyric_params)
      render json: @lyric
    else
      render json: @lyric.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lyrics/1
  def destroy
    @lyric.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lyric
      @lyric = Lyric.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lyric_params
      params.fetch(:lyric, {})
    end
end
