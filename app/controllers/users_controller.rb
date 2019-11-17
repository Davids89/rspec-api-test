class UsersController < ApplicationController
  before_action :authenticate!

  def index
    users = User.all

    render json: {data: users}
  end
end
