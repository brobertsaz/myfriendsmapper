class UsersController < ApplicationController
  before_filter :force_token, except: [:create, :new]
  before_filter :require_user, except: [:create, :new]



private
  def find_user
    @user = User.find(params[:id])
  end
end
