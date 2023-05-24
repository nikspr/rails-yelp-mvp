# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :categry, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
