require 'spec_helper'

describe SessionsController do
  let!(:user) {FactoryGirl.create :user}
  
  it 'does not log in without a valid credentials' do
    post :create, user: {email: 'fail', password: 'fail'}

    json = JSON.parse(response.body)
    json['errors'].should include('Invalid credentials')
  end

  it 'logs in with valid credentials'
  it 'returns a token'
end
