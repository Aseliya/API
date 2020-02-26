class UserReadNews < ApplicationRecord
  belongs_to :user
  belongs_to :news
end