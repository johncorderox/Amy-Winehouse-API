class Api::V1::LabelsController < ActionController::API
  before_action :set_label, only: [:show, :destroy]

  def index
    labels = Label.all
    render json: labels, adapter: :json
  end

  def create
    label = Label.create!(label_params)
    render json: label, status: :created
  end

  def show
    render json: @label, adapter: :json
  end

  def destroy
    @label.destroy
  end

  private

  def set_label
    @label = Label.find_by_id params[:id]
    render body: nil, status: :not_found unless @label.present?
  end

  def label_params
    params.permit(:name, :location)
  end
end
