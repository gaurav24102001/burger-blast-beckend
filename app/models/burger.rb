class Burger < ApplicationRecord
  belongs_to :burgertable, polymorphic: true
  
end
