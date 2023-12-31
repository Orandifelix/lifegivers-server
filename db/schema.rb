# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_06_094824) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "donor_name"
    t.bigint "donation_type_id", null: false
    t.binary "donation_photo"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donation_type_id"], name: "index_articles_on_donation_type_id"
  end

  create_table "donation_centers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "contact"
    t.string "operating_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donation_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "eligibility_criteria"
    t.string "donation_frequency"
    t.text "preparation_guidelines"
    t.text "risks_and_benefits"
    t.text "post_donation_instructions"
    t.string "donation_duration"
    t.text "donor_impact_information"
    t.text "medical_considerations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "donation_type_id", null: false
    t.date "donation_date"
    t.time "donation_time"
    t.string "donation_status"
    t.string "donation_transaction_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donation_type_id"], name: "index_donations_on_donation_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.float "weight"
    t.string "profile_picture"
    t.text "medical_history"
    t.string "address"
    t.string "email"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "articles", "donation_types"
  add_foreign_key "donations", "donation_types"
end
