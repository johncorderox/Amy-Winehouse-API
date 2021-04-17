module Api
  module V1
    class QuotesController < ApplicationController
      include Errors

      def index
        render json: quotes, status: :ok
      end

      def show
        render json: quote, status: :ok
      end

      private

      def quotes
        @quotes ||= Quote.where(artist_id: params[:artist_id])
      end

      def quote
        @quote ||= Quote.where(id: params[:id], artist_id: params[:artist_id])
      end
    end
  end
end
