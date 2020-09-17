require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  before :each do
    @user = User.create(Username: 'user1')
  end

  it 'Should Signup' do
    visit signup_path
    fill_in 'Username', with: 'newuser1'
    click_button 'Sign Up'
    expect(page).to have_content('Logged in!')
  end

  scenario 'signup page user already taken' do
    visit '/signup'
    fill_in 'Username', with: user.Username
    click_button 'Sign Up'
    expect(page).to have_content('')
  end

  it 'Should Login' do
    visit root_path
    fill_in 'Username', with: 'user1'
    click_button 'Log In'
    expect(page).to have_content('My Transactions')
    expect(page).to have_content('All Transactions')
  end

  it 'Should Logout' do
    visit root_path
    fill_in 'Username', with: 'user1'
    click_button 'Log In'
    expect(page).to have_content('My Transactions')
    expect(page).to have_content('All Transactions')
    click_on 'LOGOUT'
    expect(page).to have_content('Logged out!')
  end
end
