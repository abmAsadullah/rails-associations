class UserController < ApplicationController
  def new
  end

  def create
  end

  def show
  	@events = current_user.events.all

  end
end
