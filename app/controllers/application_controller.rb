class ApplicationController < ActionController::Base
  include ActionController::Cookies
  before_action :authorize
  skip_before_action :authorize, only: [:not_found]

  def not_found
    render json: { error: "Route does not exist" }, status: :not_found
  end

  private

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
