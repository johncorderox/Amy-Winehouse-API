module Api
  module V1
    class MessagesController < ApplicationController

      def index
        render json: messages, status: :ok
      end

      def create
        new_message = Message.create!(message_params)
        render json: new_message, status: :created
      end

      def destroy
        message = Message.find params[:id]
        message.destroy
        head 204
      end

      private

      def messages
        @messages ||= Message.all
      end

      def message_params
        params.require(:message).permit(:text)
      end
    end
  end
end
