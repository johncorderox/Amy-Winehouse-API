  class MessagesController < ApplicationController

      def index
        render json: messages, status: :ok
      end

      def create
        new_message = Message.create!(message_params)
        render json: new_message, status: :created
      end

      def update
        mess = Message.find_by(id: params[:id])

        if mess.update(message_prams)
          render json: mess
        else
          render json: errors(mess), status: 422
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
        params.require(:message).permit(:text, :user_id)
      end

      def errors(record)
        { errors: record.errors.messages }
      end
    end
