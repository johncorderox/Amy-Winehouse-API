class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, with: :render_not_found
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActionController::ParameterMissing, with: :render_parameter_missing

  private

  def after_sign_up_path_for(resource)
    return edit_user_registration_path
  end

  def after_sign_in_path_for(resource)
    return edit_user_registration_path
  end

  helper_method :amy_cache, :small_cache, :big_cache

  def amy_cache(time)
    if session[:user_id].nil?
      headers['Cache-Control'] = "max-age=#{time}, public"
  end

  def small_cache
    amy_cache(60.seconds)
  end

  def big_cache
    amy_cache(60.minutes)
  end

  def render_not_found
    hash = {
      "status" => 404,
      "message" => "The requested resource could not be found.",
      "documentation_url" => "https://github.com/johncorderox/Amy-Winehouse-API"
    }
    render json: hash, status: :not_found
  end

  def render_parameter_missing
    hash = {
      "status" => 400,
      "message" => "The resource is missing a parameter or attribute",
      "documentation_url" => "https://github.com/johncorderox/Amy-Winehouse-API"
    }
    render json: hash, status: :bad_request
  end
end
