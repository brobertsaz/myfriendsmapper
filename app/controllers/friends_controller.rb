class FriendsController < ApplicationController

  def index
    @json = Friend.all.to_gmaps4rails
  end

end
