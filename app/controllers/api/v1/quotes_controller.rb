class Api::V1::QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :update, :destroy]

  # GET /quotes
  def index
    @quotes = Quote.all

    render json: @quotes
  end

  # GET /quotes/1
  def show
    render json: @quote
  end

  # POST /quotes
  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      render json: @quote, status: :created, location: @quote
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  def update
    if @quote.update(quote_params)
      render json: @quote
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  def destroy
    @quote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quote_params
      params.fetch(:quote, {})
    end
end
