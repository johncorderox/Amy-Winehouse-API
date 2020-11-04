class Api::V1::LabelsController < ActionController::API
  before_action :set_label, only: [:show]

  def index
    labels = Label.all
    render json: labels, adapter: :json
  end

  def show
    render json: @label, adapter: :json
  end

  private

  def set_label
    @label = Label.find_by_id params[:id]
    render body: nil, status: :not_found unless @label.present?
  end
end
