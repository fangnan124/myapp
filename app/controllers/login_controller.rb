class LoginController < ApplicationController
  #before_action :set_user, only: [:login]

  def index
    @user = User.new
  end

  def login
    @result = User.find_by(username: params[:user][:username], password: params[:user][:password])
    if @result
      session[:status] = "login"
      session[:role] = @result[:roles]
      render "welcome/index"
      #format.html { render action 'welcome/index', notice: 'Login Successed.' }
    else
      render "welcome/index"
      #format.html { render action 'welcome/index', notice: 'Login failed.' }
    end
  end

  def my_page

  end

  def logout
    reset_session
    render "welcome/index"
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :password, :email, :roles, :info)
  end
end
