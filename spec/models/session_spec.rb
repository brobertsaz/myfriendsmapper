require 'spec_helper'

describe Session do
  let!(:user) {FactoryGirl.create :user, password: 'password'}

  it 'authenticates a user with a password and email' do
    Session.authenticate(user.email, 'password').should be
  end

  it 'does not authenticate a user without a valid a password and email' do
    Session.authenticate(user.email, 'pass').should_not be
  end

  context 'with a session' do
    let!(:session) {Session.authenticate(user.email, 'password')}

    it{session.class.should == Session}
    it{session.token.should be}
    it{session.user_id.should be}
    it{user.sessions.should include(session)}
  end
end
