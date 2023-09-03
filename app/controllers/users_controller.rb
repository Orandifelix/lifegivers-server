class UsersController < ApplicationController
    # Registration action
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        # Log in the user after registration
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Registration successful!'
      else
        render :new
      end
    end
  
    # Login action
    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Login successful!'
      else
        flash.now[:alert] = 'Invalid username or password'
        render :login
      end
    end
  
    # Logout action
    def logout
      session[:user_id] = nil
      redirect_to root_path, notice: 'Logged out successfully!'
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :password, :name, :gender, :age, :weight, :email, :contact_number, :profile_picture, :medical_history, :address)
    end
  end
  