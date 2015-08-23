class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string   :bulding_no
      t.string   :building_street_name
      t.string   :building_district_name
      t.string   :building_type
      t.boolean  :building_have_elevator?
      t.string   :property_floor
      t.integer  :property_no_rooms
      t.integer  :property_no_bathrooms
      t.boolean  :property_can_smoke?
      t.boolean  :property_have_wifi?
      t.boolean  :property_allow_pets?
      t.integer  :room_rent_amount
      t.datetime :room_date_available
      t.string   :room_preference
      t.integer  :room_no_beds
      t.string   :room_type_bed
      t.boolean  :room_is_furnished?
      t.string   :room_bathroom
      t.text     :room_description
      t.timestamps null: false
    end
  end
end
