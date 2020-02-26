# frozen_string_literal: true

class UserReadNews < ApplicationRecord
  belongs_to :user
  belongs_to :news
end
