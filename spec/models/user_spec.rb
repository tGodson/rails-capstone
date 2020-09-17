require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(username: 'Rumbi') }

  describe 'validations' do
    it { should validate_presence_of(:username) }
  end

  describe 'associations' do
    it { should have_many(:created_transactions).with_foreign_key(:user_id).class_name('Transaction') }
    it { should have_many(:created_groups).with_foreign_key(:user_id).class_name('Group') }
  end

  context 'name should be valid' do
    it 'should require a name' do
      expect(FactoryBot.build(:user, username: '')).not_to be_valid
    end

    it 'should accept letters in name' do
      expect(FactoryBot.build(:user, username: 'Godson')).to be_valid
    end
  end
end
