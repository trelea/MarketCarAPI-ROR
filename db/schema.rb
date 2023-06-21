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

ActiveRecord::Schema[7.0].define(version: 2023_06_21_100344) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "cars", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "mark", null: false
    t.string "model", null: false
    t.integer "year", null: false
    t.integer "price", null: false
    t.string "bodytype"
    t.integer "mileage", null: false
    t.boolean "used", null: false
    t.integer "volume", null: false
    t.integer "power", null: false
    t.string "fuel", null: false
    t.string "transmission", null: false
    t.string "drivetrain"
    t.string "color"
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
