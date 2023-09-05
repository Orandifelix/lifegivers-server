class DonationsController < ApplicationController
    before_action :set_donation, only: [:show, :edit, :update, :destroy]
    
    # Index action to list all donations
    def index
      @donations = Donation.all
      render json: @donations
    end
  
    # Show action to display a specific donation
    def show
      render json: @donation
    end
  
    # New action to create a new donation
    def new
      @donation = Donation.new
    end
  
    # Create action to save a new donation
    def create
      @donation = Donation.new(donation_params)
      if @donation.save
        render json: @donation, status: :created
      else
        render json: { errors: @donation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Edit action to edit a specific donation
    def edit
    end
  
    # Update action to update a specific donation
    def update
      if @donation.update(donation_params)
        render json: @donation, status: :ok
      else
        render json: { errors: @donation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Destroy action to delete a specific donation
    def destroy
      @donation.destroy
      render json: { message: 'Donation was successfully destroyed' }, status: :ok
    end
  
    private
  
    def set_donation
      @donation = Donation.find(params[:id])
    end
  
    def donation_params
      params.require(:donation).permit(
        :user_id,
        :donation_center_id,
        :donation_type_id,
        :donation_photo
      )
    end
end
  