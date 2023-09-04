class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :login]
  skip_before_action :verify_authenticity_token

  def index
    users = User.all
    render json: users
  end

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
    render json: user
  end

  def login
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
  end
  
  def logout
    session.delete :user_id
    head :no_content
  end
  
  private
  
  def user_params
    params.require(:user).permit(
      :username, :password, :name, :gender, :age, :weight,
      :email, :contact_number, :profile_picture, :medical_history, :address
    )
  end
  
end
  