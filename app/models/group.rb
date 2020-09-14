class Group < ApplicationRecord
  mount_uploader :icon, AvatarUploader
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :transactions
end
