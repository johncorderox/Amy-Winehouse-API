module Api
  module V1
    class RecordLabelsController < ApplicationController
      include Errors
      include ApiTokenValidator

      def index
        render json: labels, status: :ok
      end

      def show
        redner json: label, status: :ok
      end

      private

      def labels
        @labels ||= RecordLabel.all
      end
    end
  end
end
