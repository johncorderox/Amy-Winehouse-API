module Api
  module V1
    class MessagesController < ApplicationController
      def index
        Message.all
      end
    end
  end
end
