class Organization < ApplicationRecord

  def address
    Address.find_by(id: address_id)
  end
end
