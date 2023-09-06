class DonationCentersController < ApplicationController
    def index
        donation_centers = DonationCenter.all 
        render json: donation_centers
    end

    def show
        donation_centers = DonationCenter.find(params[:id])
        render json: donation_centers
    end
end
