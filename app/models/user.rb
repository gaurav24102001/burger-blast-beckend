class User < ApplicationRecord
  has_secure_password
  has_many :burgers, as: :burgertable
end
