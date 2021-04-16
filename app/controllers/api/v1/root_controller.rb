module Api
  module V1
    class RootController < ApplicationController
      def index
        information = {
          artist: "/api/v1/artists/(.:format(:id))",
          albums: "/api/v1/artists/:artist_id/albums(.:format(:id))",
          songs: "/api/v1/artists/:artist_id/albums/:album_id/songs(.:format(:id))",
          record_labels: "/api/v1/artists/:artist_id/albums/:album_id/record_labels",
        }
        render json: information, status: :ok
      end
    end
  end
end
