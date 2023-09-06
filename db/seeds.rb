# # Sample data for donation centers
# donation_centers_data = [
#   {
#     name: "St. Michael's Hospital Donation Center",
#     location: "123 Elm Street",
#     contact: "5551234567",
#     operating_hours: "8:00 AM - 6:00 PM"
#   },
#   {
#     name: "Mercy General Hospital Donation Center",
#     location: "456 Oak Avenue",
#     contact: "5552345678",
#     operating_hours: "9:00 AM - 7:00 PM"
#   },
#   {
#     name: "Grace Community Hospital Donation Center",
#     location: "789 Maple Road",
#     contact: "5553456789",
#     operating_hours: "7:30 AM - 5:30 PM"
#   },
#   {
#     name: "Hope Medical Center Donation Center",
#     location: "101 Pine Lane",
#     contact: "5554567890",
#     operating_hours: "8:30 AM - 6:30 PM"
#   },
#   {
#     name: "Unity Regional Hospital Donation Center",
#     location: "222 Cedar Street",
#     contact: "5555678901",
#     operating_hours: "10:00 AM - 8:00 PM"
#   },
#   {
#     name: "Sunrise Memorial Hospital Donation Center",
#     location: "333 Birch Avenue",
#     contact: "5556789012",
#     operating_hours: "7:00 AM - 5:00 PM"
#   }
# ]

# # Create donation centers
# donation_centers_data.each do |data|
#   DonationCenter.create(data)
# end

#Create donation types
DonationType.create(
  name: 'Tissues Donation',
  description: 'Tissues donation involves giving tissues such as skin, bone, tendons, and heart valves for transplantation or medical research.',
  eligibility_criteria: 'Eligibility for tissues donation depends on the specific type of tissue and the intended use.',
  donation_frequency: 'Tissues donation can occur posthumously or during certain medical procedures.',
  preparation_guidelines: 'In some cases, tissues can be donated posthumously. In others, surgical procedures are required.',
  risks_and_benefits: 'Tissues donation can enhance the lives of recipients, helping them regain mobility or improving their health.',
  post_donation_instructions: 'Posthumous tissue donation involves coordination with healthcare facilities and transplant organizations.',
  donation_duration: 'The duration varies depending on the type of tissues being donated and the specific procedure.',
  donor_impact_information: 'Tissues donation can provide life-changing benefits to recipients and contribute to medical research.',
  medical_considerations: 'Medical professionals and transplant coordinators are involved in the donation process.'
)

DonationType.create(
  name: 'Cord Blood Donation',
  description: 'Cord blood donation involves collecting blood from the umbilical cord and placenta after childbirth for stem cell transplantation.',
  eligibility_criteria: 'Cord blood can be donated during childbirth, and eligibility is determined by the cord blood bank.',
  donation_frequency: 'Cord blood is typically collected only once during childbirth, as its a unique opportunity.',
  preparation_guidelines: 'Cord blood collection occurs after the babys birth, and no special preparations are needed for the mother.',
  risks_and_benefits: 'Cord blood contains valuable stem cells that can treat various medical conditions. There are no risks to the mother or baby during collection.',
  post_donation_instructions: 'Cord blood is stored in a cord blood bank for potential future use in transplantation.',
  donation_duration: 'Cord blood collection is a quick process that takes about 10-15 minutes.',
  donor_impact_information: 'Cord blood donation can provide life-saving stem cells for individuals with blood disorders and immune diseases.',
  medical_considerations: 'Cord blood banking is an important option for families and individuals at risk of certain medical conditions.'
)

DonationType.create(
  name: 'Bone Marrow Donation',
  description: 'Bone marrow donation involves donating marrow or blood stem cells for patients with blood cancers or disorders.',
  eligibility_criteria: 'Eligibility for bone marrow donation depends on factors such as age and medical compatibility with the recipient.',
  donation_frequency: 'Bone marrow donation is typically a one-time procedure, although some donors may be asked to donate peripheral blood stem cells multiple times.',
  preparation_guidelines: 'Donors may receive injections to increase the number of stem cells in their bloodstream before donation.',
  risks_and_benefits: 'Bone marrow donation can be life-saving for recipients, but it involves anesthesia and some recovery time. Risks are minimal but may include temporary discomfort.',
  post_donation_instructions: 'After bone marrow donation, donors can expect some fatigue and discomfort but generally recover within a few days.',
  donation_duration: 'The duration of bone marrow donation depends on the method used (marrow or peripheral blood stem cells).',
  donor_impact_information: 'Your bone marrow donation can give hope to individuals with leukemia, lymphoma, and other blood disorders.',
  medical_considerations: 'Bone marrow donation requires compatibility testing and coordination with transplant centers.'
)
# puts "Seed data for donation centers created successfully."
