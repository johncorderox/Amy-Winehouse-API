class Api::V1::GroupsController < ActionController::API
  before_action :set_group, only: [:show]

  def index
    groups = Group.all
    render json: groups, adapter: :json, status: :ok
  end

  def show
    render json: @group, adapter: :json, status: :ok
  end

  private

  def set_group
    @group = Group.find params[:id]
  end
end
