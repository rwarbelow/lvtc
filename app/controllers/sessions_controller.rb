class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
  	@user = User.where(:username => params[:user][:username].downcase).first
  	if @user && @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
      # @user.login_counter += 1
      # @user.password = params[:identity][:password]
      # @user.save
      redirect_to user_path(@user.id)
    else
      @user = User.new
      flash[:errors] = "Invalid Login. Please try again."
      render 'sessions/new'
    end
  end

  def destroy
   session.clear
   flash[:notice] = "Logout Successful."
   redirect_to root_path
 end

end
