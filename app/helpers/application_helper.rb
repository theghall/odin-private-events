module ApplicationHelper
  def current_user
    @curent_user = User.find(cookies[:user])
  end

  def remember(user)
      cookies.permanent[:user] = user.id
  end
end
