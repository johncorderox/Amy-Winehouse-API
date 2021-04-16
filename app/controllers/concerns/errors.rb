module Errors
  extend ActiveSupport::Concern
  included do
    include ActiveSupport::Rescuable

    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_create
  end

  private

  def render_invalid_create(exception)
    hash = {
      "status" => 422,
      "message" => "Resource could not be created.",
      "errors" => [exception.record.errors],

    }
    render json: hash, status: :unprocessable_entity
  end
end
