module Api
  module V1
    class SongsController < ApplicationController
      include Errors

      def index
        render json: songs, status: :ok
      end

      def show
        render json: song, status: :ok
      end

      private

      def song
        @song ||= Song.where params [:id]
      end

      def songs
        @songs ||= Song.where(artist_id: params[:artist_id], album_id: params[:album_id])
      end
    end
  end
end
