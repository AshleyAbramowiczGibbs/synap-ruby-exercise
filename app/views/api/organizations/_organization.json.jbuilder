  #partial for organization info
  json.id organization.id
  json.name organization.name
  json.phone organization.phone
  json.people_count organization.people_count
  #display each item from the address
  json.address do
    json.id organization.address.id
    json.street organization.address.street
    json.city organization.address.city
    json.state organization.address.state
    json.zip organization.address.zip
  end