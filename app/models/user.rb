# frozen_string_literal: true

class User < ApplicationRecord
  has_many :news, dependent: :destroy
  validates :email, presence: true
  validates :password_digest, presence: true
  has_secure_password
  has_and_belongs_to_many :news
end
