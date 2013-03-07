require 'spec_helper'

describe SessionsController do
  let!(:user) {FactoryGirl.create :user, password: 'password'}
  
  it 'does not log in without a valid credentials' do
    post :create, user: {email: 'fail', password: 'fail'}

    json = JSON.parse(response.body)
    json['errors'].should include('Invalid credentials')
  end

  context 'logs in with valid credentials' do
    before do
      user.sessions.count.should == 0
      post :create, user: {email: user.email, password: 'password'}
      @json = JSON.parse(response.body)
    end

    it 'does not have any errors' do
      @json['errors'].should_not be
    end

    it 'returns a token' do
      @json['token'].should be
    end

    it 'returns a user id' do
      @json['user_id'].should be
    end

    it 'returned user id matches user id' do
      @json['user_id'].should == user.id.to_s
    end

    it 'user has a session' do
      user.sessions.count.should == 1
    end
  end
end
