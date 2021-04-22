module Api
  module V1
    class ArtistsController < ApplicationController
      include Errors
      include ApiTokenValidator
      
      def index
        render json: artists, status: :ok
      end

      def show
        render json: artist, status: :ok
      end

      private

      def artist
        @artist ||= Artist.find params[:id]
      end

      def artists
        @artists ||= Artist.all
      end
    end
  end
end
