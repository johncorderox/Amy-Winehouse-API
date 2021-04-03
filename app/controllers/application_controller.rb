class ApplicationController < ActionController::API
  include ActionController::Helpers

  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private

  def require_key
    user = User.find_by api_key: params[:api_key] if params[:key]
    if user.nil?
      render json: {error: "You need a valid API key to use this service. Please register for an account.", status: :unauthorized }
    end
  end

  def render_invalid
    hash =
    {
      'status' => 422,
      'message' => "Validation failed for given resource.",
      'errors' => [execption.record.errors]
    }
    render json: hash, status: :unprocessable_entity
  end

  def render_not_found
    hash =
      {
        'status' => 404,
        'message' => 'The requested resource could not be found.'
      }
    render json: hash, status: :not_found
  end
end
