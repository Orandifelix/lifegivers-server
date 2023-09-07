class DonationTypesController < ApplicationController
    def index
        donation_types = DonationType.all 
        render json: donation_types
    end

    def show
        donation_type = DonationType.find(params[:id])
        render json: donation_type
    end
end
