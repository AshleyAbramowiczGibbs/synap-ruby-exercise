json.array! @organizations.each do |organization|
  json.id organization.id
  json.name organization.name
end