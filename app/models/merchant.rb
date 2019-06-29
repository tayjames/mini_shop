class Merchant < ApplicationRecord
  #has_many :items  
  validates :address, :presence => true
end
