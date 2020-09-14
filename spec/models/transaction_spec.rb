require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:group) }
  end
end
