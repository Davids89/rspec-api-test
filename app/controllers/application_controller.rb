class ApplicationController < ActionController::API
  include RailsJwtAuth::AuthenticableHelper

  rescue_from RailsJwtAuth::NotAuthorized, with: :render_401

  def render_401
    head 401
  end

  def render_422
    render json: {exception.param => 'is required'}, status: 422
  end
end
