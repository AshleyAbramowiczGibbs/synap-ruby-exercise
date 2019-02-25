json.array! @organizations.each do |organization|
  json.partial! "organization.json.jbuilder", organization: organization
end