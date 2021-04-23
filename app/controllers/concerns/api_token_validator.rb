module ApiTokenValidator
  extend ActiveSupport::Concern

  included do
    before_action :validate_token!, only: %i[index show]
  end

  def validate_token!
    render_unauthorized unless valid_api_token?
  end

  def valid_api_token?
    api_key = request.headers["X-Api-Key"]
    @user = User.where(api_token: api_key).first.present?
  end

  def render_unauthorized
    hash = {
      "message" => "This action requires a valid API Token.",
      "solution" => "Register an Account to generate an API token. (401)",
      "documentation_url" => "https://github.com/johncorderox/Amy-Winehouse-API",
      "status" => 401
    }
    render json: hash, status: :unauthorized
  end
end
