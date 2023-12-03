class LoginController < ApplicationController
  def index
      if logged_in?
        redirect_to '/dashboard'
      elsif
        render :index
      end

  end

  def login
    session_params = params.permit(:email, :password)
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else
      flash[:notice] = "Login is invalid!"
      redirect_to "/login"
    end
  end

  def logout

  end

  def destroy
    session[:user_id] = nil

    redirect_to '/'
  end
end
