class Restaurant < ApplicationRecord
  has_many :burgers 
  has_many :orders
end

