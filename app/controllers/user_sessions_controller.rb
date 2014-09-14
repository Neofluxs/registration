class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       flash[:sucess] = "Signed in successfully"
    else
       render action: 'new'
       flash[:error] = "Login Unsucessful, please check your email and/or password"
    end
    end
end
