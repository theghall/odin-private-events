module ApplicationHelper
  def current_user
    @curent_user = User.find(cookies[:user_id])
  end
end
