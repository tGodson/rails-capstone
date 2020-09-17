require 'rails_helper'

RSpec.feature 'Group', type: :feature do
  before :each do
    @user = User.create(name: 'Godson')
    Group.create(user: @user.id, Text: 'Food')
  end

  it 'Should create a group' do
    visit root_path
    fill_in 'username', with: 'Marshal'
    click_button 'Sign In'
    fill_in 'group[Text]', with: 'All Groups'
    click_button 'Create Group'
    expect(page).to have_content('Group Created')
  end
end
