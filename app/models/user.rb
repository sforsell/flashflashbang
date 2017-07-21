class User < ApplicationRecord
  # Remember to create a migration!
  validates :username, { presence: true, uniqueness: true }

  has_secure_password
end
