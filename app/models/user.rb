# frozen_string_literal: true

class User < ApplicationRecord
  has_many :readed_news, class_name: "UserReadNews", dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :email, presence: true
  validates :password_digest, presence: true
  has_secure_password
end
