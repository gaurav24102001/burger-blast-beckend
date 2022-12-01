class Restaurant < ApplicationRecord
  has_many :burgers , as: :burgertable
end

