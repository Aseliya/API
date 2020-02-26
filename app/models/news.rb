# frozen_string_literal: true

class News < ApplicationRecord
  belongs_to :user
  scope :published, -> { where(publication: true) }
  scope :unpublished, -> { where(publication: false) }
  has_and_belongs_to_many :users
end
