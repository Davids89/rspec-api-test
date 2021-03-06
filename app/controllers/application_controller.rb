class ApplicationController < ActionController::API
  include RailsJwtAuth::AuthenticableHelper
  include Pundit

  rescue_from RailsJwtAuth::NotAuthorized, with: :render_401
  rescue_from Pundit::NotAuthorizedError, with: :render_403

  def render_401
    head 401
  end

  def render_403
    head 403
  end

  def render_422
    render json: {exception.param => 'is required'}, status: 422
  end
end
