class Api::V1::QuotesController < ActionController::API
  before_action :find_song, only: [:show]

  def index
    quotes = Quote.all
    render json: quotes, adapter: :json, status: :ok
  end

  def show
    render json: @quote, adapter: :json, status: :ok
  end

  private

  def find_label
    @quote = Quote.find_by_id params[:id]
    render body: nil, status: :not_found unless @quote.present?
  end
end
