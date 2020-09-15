class Group < ApplicationRecord
  has_one_attached :icon
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :transactions
end
