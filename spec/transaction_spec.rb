# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validation test' do
    it 'should validate username' do
      transaction = Transaction.new(name: 'goody', amount: '10').save
      expect(transaction).to eq(false)
    end
  end
end
