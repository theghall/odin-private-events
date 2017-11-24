module ApplicationHelper
  def current_user
    @curent_user = User.find(cookies[:user])
  end
end
