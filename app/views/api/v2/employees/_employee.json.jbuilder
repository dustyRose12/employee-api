  json.id employee.id
  json.full_name employee.full_name 
  json.birthday employee.birthdate
  json.email employee.email
  json.addresses employee.addresses.each do |address|
      json.id address.id
      json.address_1 address.address_1
      json.address_2 address.address_2
      json.city address.city
      json.state address.state
      json.zip address.zip
  end