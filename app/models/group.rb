# frozen_string_literal: true

class Group < ApplicationRecord
  mount_uploader :icon, AvatarUploader
  validates_presence_of :icon
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :transactions
end
