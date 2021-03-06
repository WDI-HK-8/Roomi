class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string   :building_number
      t.string   :building_street_name
      t.string   :building_district_name
      t.string   :building_type
      t.boolean  :building_have_elevator
      t.string   :property_floor
      t.integer  :property_nbr_of_rooms
      t.integer  :property_nbr_of_bathrooms
      t.boolean  :property_can_smoke
      t.boolean  :property_have_wifi
      t.boolean  :are_pets_allowed
      t.integer  :room_rent_amount
      t.datetime :room_date_available
      t.string   :room_preference
      t.integer  :room_no_beds
      t.string   :room_type_bed
      t.boolean  :is_room_furnished
      t.string   :room_bathroom
      t.text     :room_description
      t.timestamps null: false
    end
  end
end
