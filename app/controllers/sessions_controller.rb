class SessionsController < ApplicationController
  def create
    session[:user] = request.env['omniauth.auth'].uid
    redirect_to root_path, notice: "Signed In"
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Signed Out'
  end

end
