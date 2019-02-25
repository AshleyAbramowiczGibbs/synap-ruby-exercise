class Organization < ApplicationRecord
  #model associations go here
  has_many :people
  has_one :address
end
