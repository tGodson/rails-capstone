require 'rails_helper'

RSpec.feature 'Transaction', type: :feature do
  before :each do
    @user = User.create(Username: 'Godson')
    @user = User.create(Username: 'Rumbi')
    Transaction.create(User: @user.id, Text: 'salad')
  end

  it 'Should create a transaction' do
    visit root_path
    fill_in 'Username', with: 'Godson'
    click_button 'Log In'
    fill_in 'transaction[Text]', with: 'food'
    click_button 'Create Transaction'
    expect(page).to have_content('All Transactions')
  end
end
