# frozen_string_literal: true

class Transaction < ApplicationRecord
  validates :name, :amount, presence: true
  belongs_to :user
  belongs_to :group
end
