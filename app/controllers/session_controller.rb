class SessionController < ApplicationController
  def new
  end

  def create

    user = User.find_by(name: session_params[:name])

    if user
      cookies.permanent[:user] = user.id

      @user = User.find(user.id)
      @events = @user.events

      render 'user/show'
    else
      render 'new'
    end

  end

  private

    def session_params
      params.require(:session).permit(:name)
    end
end
