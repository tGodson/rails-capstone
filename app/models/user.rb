class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  has_many :groups
  #has_many :transactions
  has_many :created_transactions, class_name: 'Transaction', foreign_key: :user_id
end
