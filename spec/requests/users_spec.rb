require 'spec_helper'

describe "Users" do
  
  it 'registers with facebook'
  it 'registers with twitter'
  it 'registers with google'
  it 'registers with facebook'
  it 'registers new user' do
    # visit root_path
    # click_link 'Register'
    # fill_in 'Email',                  with: 'new_user@example.com'
    # fill_in 'Password',               with: 'password'
    # fill_in 'Password confirmation',  with: 'password'
    # click_link 'Register'
    # page.should have_content 'Successfully Registered'
  end

  it 'requires email and password'
  it 'does not register with invalid password'


  context 'with a registered user' do
    it 'logs in registered user'
    it 'edits user email'
    it 'edit user password'
    it 'deletes user'

  end
end
