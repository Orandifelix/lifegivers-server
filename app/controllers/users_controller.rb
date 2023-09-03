class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
  def login
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
        # redirect_to root_path, notice: 'Login successful!'
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
  end
  
  def logout
      session[:user_id] = nil
      redirect_to root_path, notice: 'Logged out successfully!'
  end
  
  private
  
  def user_params
      params.require(:user).permit(:username, :password, :name, :gender, :age, :weight, :email, :contact_number, :profile_picture, :medical_history, :address)
  end
end
  