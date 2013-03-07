class SessionsController < ApplicationController
  def create
    render json: {errors: ['baller']}.to_json
  end
end
