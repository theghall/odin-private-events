class UserController < ApplicationController
  include ApplicationHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      remember(@user)

      @events = @user.events

      render 'show'
    else
      render 'new'
    end

  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end
