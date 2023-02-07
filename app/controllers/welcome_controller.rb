class WelcomeController < ApplicationController
  def index
    @user = session[:userinfo]
  end
end
