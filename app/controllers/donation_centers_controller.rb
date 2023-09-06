class DonationCentersController < ApplicationController
    class DonationCentersController < ApplicationController
        skip_before_action :authorize
        skip_before_action :verify_authenticity_token
        before_action :set_donation_center, only: [:show, :update, :destroy]
      
        def index
          donation_centers = DonationCenter.all
          render json: donation_centers
        end
      
        def show
          render json: @donation_center
        end
      
        def create
          donation_center = DonationCenter.new(donation_center_params)
          if donation_center.save
            render json: donation_center, status: :created
          else
            render json: donation_center.errors, status: :unprocessable_entity
          end
        end
      
        def update
          if @donation_center.update(donation_center_params)
            render json: @donation_center
          else
            render json: @donation_center.errors, status: :unprocessable_entity
          end
        end
      
        def destroy
          @donation_center.destroy
          head :no_content
        end
      
        private
      
        def set_donation_center
          @donation_center = DonationCenter.find(params[:id])
        end
      
        def donation_center_params
          params.require(:donation_center).permit(:name, :location, :contact, :operating_hours)
        end
      end