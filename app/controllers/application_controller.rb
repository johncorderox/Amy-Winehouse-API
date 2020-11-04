class ApplicationController < ActionController::API
  include ActionController::Helpers
  before_action :authorized


end
