json.array! @flats do |flat|
  json.id flat.id
  json.building_street_name flat.building_street_name
  json.building_district_name flat.building_district_name
  json.building_type flat.building_type
  json.building_have_elevator flat.building_have_elevator
  json.property_floor flat.property_floor
  json.property_nbr_of_rooms flat.property_nbr_of_rooms
  json.property_nbr_of_bathrooms flat.property_nbr_of_bathrooms
  json.property_can_smoke flat.property_can_smoke
  json.property_have_wifi flat.property_have_wifi
  json.are_pets_allowed flat.are_pets_allowed
  json.room_rent_amount flat.room_rent_amount
  json.room_date_available flat.room_date_available
  json.room_preference flat.room_preference
  json.room_no_beds flat.room_no_beds
  json.room_type_bed flat.room_type_bed
  json.is_room_furnished flat.is_room_furnished
  json.room_bathroom flat.room_bathroom
  json.room_description flat.room_description
  json.user_id flat.user_id
  json.user flat.user
  json.image flat.image
end