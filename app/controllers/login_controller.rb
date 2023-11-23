class LoginController < ApplicationController
  def index

  end

  def login
    session_params = params.permit(:email, :password)
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to 'dashboard/home'
    else
      flash[:notice] = "Login is invalid!"
      render :index
    end
  end
end
