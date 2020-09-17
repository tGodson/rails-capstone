class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  has_many :created_groups, class_name: 'Group', foreign_key: :user_id
  has_many :created_transactions, class_name: 'Transaction', foreign_key: :user_id
end
