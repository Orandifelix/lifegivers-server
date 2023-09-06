class CreateDonationCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :donation_centers do |t|
      t.string :name
      t.string :location
      t.string :contact
      t.string :operating_hours

      t.timestamps
    end
  end
end
