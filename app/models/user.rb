class User < ApplicationRecord
  has_many :news
  has_secure_password
end
