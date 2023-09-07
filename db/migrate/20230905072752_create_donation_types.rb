class CreateDonationTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :donation_types do |t|
      t.string :name
      t.text :description
      t.text :eligibility_criteria
      t.string :donation_frequency
      t.text :preparation_guidelines
      t.text :risks_and_benefits
      t.text :post_donation_instructions
      t.string :donation_duration
      t.text :donor_impact_information
      t.text :medical_considerations

      t.timestamps
    end
  end
end
