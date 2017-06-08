class UsersController < ApplicationController
  def login
    redirect_to dashboard_path
  end
end
