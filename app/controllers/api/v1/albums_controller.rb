module Api
  module V1
    class AlbumsController < ApplicationController
      include Errors

      def index
        render json: albums, status: :ok
      end

      def show
        render json: album, status: :ok
      end

      private

      def albums
        @albums ||= Album.order(id: :desc)
      end

      def album
        @album = Album.find params[:id]
      end
    end
  end
end
