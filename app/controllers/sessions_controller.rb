class SessionsController < ApplicationController
  def create
    session = Session.authenticate(params[:user][:email], params[:user][:password])
    if session
      render json: session.to_json
    else
      render json: {errors: ['Invalid credentials']}.to_json
    end
  end
end
