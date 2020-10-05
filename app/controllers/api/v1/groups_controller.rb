class Api::V1::GroupsController < ActionController::API
  def index
    groups = Group.all
    render json: { results: groups }.to_json, status: :ok
  end
end
