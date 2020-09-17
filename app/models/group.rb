class Group < ApplicationRecord
  has_one_attached :icon, dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :icon, presence: true
  # content_type: { in: %w[image/jpeg image/gif image/png],
  # message: "must be a valid image format" },
  # size:
  # { less_than: 5.megabytes,
  # message:
  # "should be less than 5MB" }
end
