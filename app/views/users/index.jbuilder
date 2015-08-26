json.array! @users do |user|
  json.id user.id
  json.email user.email
  json.first_name user.first_name
  json.last_name user.last_name
  json.phone user.phone
  json.age user.occupation
  json.gender user.gender
  json.is_smoker user.is_smoker
  json.have_kids user.have_kids
  json.have_pet user.have_pet
  json.description user.description
end