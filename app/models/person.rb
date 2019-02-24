class Person < ApplicationRecord
  # has_one :address
  belongs_to :organization

  # def address
  #   Address.find_by(id: address_id)
  # end

  # def organization
  #   Organization.find_by(id: organization_id)
  # end

  
end
