class ActionsController < ApplicationController
  def show
    @action = Action.find(params[:id])
  end

  def user
    puts current_user.nil?
  end
end