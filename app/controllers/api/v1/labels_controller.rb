class Api::V1::LabelsController < ActionController::API
  before_action :find_label, only: [:show]

  def index
    labels = Label.all
    render json: labels, status: :ok
  end

  def show
    render json: @label, adapter: :json
  end

  private

  def find_label
    @label = Label.find_by_id params[:id]
    render body: nil, status: :not_found unless @label.present?
  end
end
