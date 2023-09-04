class WelcomeController < ApplicationController
    skip_before_action :authorize
    def index
        render json: { message: "Welcome to Lifegivers Server!" }
    end
end
