class Organization < ApplicationRecord
  has_many :people
  has_one :address

  # def address
  #   Address.find_by(id: address_id)
  # end
end
